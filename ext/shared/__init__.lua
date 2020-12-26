
Events:Subscribe('Partition:Loaded', function(partition)

    for _, instance in pairs(partition.instances) do

       if instance:Is('CameraData') then
         local cameraData = CameraData(instance)

         cameraData:MakeWritable()
         cameraData.shakeFactor = 0;
       end

       if instance:Is('HudCameraShakeData') then
         print('Found a HudCameraShakeData component!')
         local cameraShakeData = HudCameraShakeData(instance)


         cameraShakeData:MakeWritable()
         cameraShakeData.cameraShakeMinAngle = 0;
         cameraShakeData.cameraShakeMaxAngle = 0;
         cameraShakeData.cameraShakeScale = 0;
         cameraShakeData.maxDisplacement = 0;
       end

    end

  end)
