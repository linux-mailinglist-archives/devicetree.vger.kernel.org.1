Return-Path: <devicetree+bounces-154975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF00A55217
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 18:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8F467A8C41
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D29225D52C;
	Thu,  6 Mar 2025 16:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SUGWgPKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3433225A338
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 16:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741280271; cv=none; b=ORqnAmAXKJSRHCi3v1ez/5Bfma0HwJUnszgCTChxowuWTanLfVjD+d+iY+YJsL2vJoH55bZMNFyzA+eqEW3JltV/uT5wEiNarFZDihX/mN6Cdf1Kjk7nYES9RLB0XZG8UUrPiWPMu5vxwX7QLz9gpPr3Vrm2J/Ms6WRC8HQtuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741280271; c=relaxed/simple;
	bh=FVLp7JQN6EA1ZahX8/bhjFj8HmQHSEfgKYsu84WvCcc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V8rsdOu36vDcNRiAgXQadJ14BvjVYpUDEkg8FAONi61wcppEoYhybhrVyef+2rsonevb7nUNFnHnbyl9TqaOUuA/iSqmkgrOSd+A7Rsqv8zvglNIfSgxRLrUIQQcqlVDY+aTO+lgDw45vwfilOB65+Sy+D/1KWukzirOTH8wmkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SUGWgPKP; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22423adf751so7309555ad.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 08:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741280267; x=1741885067; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MTMiYHneXp94DLeHXQsW830wBQws5W30d/JjL49grQE=;
        b=SUGWgPKPiAHm+tAqiwF0riTkxFCIlZyW3MMNWhlWmZIfpfv2znQTe0M21oi6X4LFMH
         t+bVj9I4RZgf6c8wr3m6tLahN2nL8mp57upAO2cgJ4V/wzE+4hJxzqSuFFyXk/M8cmNC
         cFgK96jw9XDUI6o7WN85P1ifL2iteIOvYFq5AmJEgYzswwydvJwFIevJa5xxmRbQ3wT3
         TqmBoxpi4tHppnKJbQx7pJ1YzG3jVGrpWh0pmosajmkrqLs2jBYVK8nD3ZwGOeWR0gRh
         WiFiivgZP3UWJaRgL8zDW2djPJBzHq/Pch9XJkVIBvzK9ZoUqXEEsAGpLN31Jk2fzdCx
         yoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741280267; x=1741885067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MTMiYHneXp94DLeHXQsW830wBQws5W30d/JjL49grQE=;
        b=FCP8Tjmnf9b6U0abAjsPFTsvC/jcHAdzIeZzNDi/GqiEzy5AoClYfyrPdUHqWCEwE8
         bJ7cHoZprvRXWMtIiwDsVJ61tRTlEiXVlDR0wkFvUgvlW0t9zlrscWmkyKifv5xFOeCk
         YYF3YmXVPhfAPahNZ/wAXmWFvaVseV0CaxKDIxXZVDwx9NHxlVzSzi7VEsUfoDKMaY+f
         bXOYzGzUWI//Qf8rwnY17AI6ZID7cYiRpxGyIHz//jMxU733WyGCvzPROug7RBD10hRT
         3yluCrAIZBCWEyCw024CRMkaJaBgKr1WQr3qgbkjwKlI4RafVa/sX1i/QxMuuuCjF5M+
         G9jw==
X-Forwarded-Encrypted: i=1; AJvYcCVVJa6Bu/+ASNagvVss3/8LTvWj2v7Rx57OOcBf5SheqK3MnCXqmynBTsCUU1pVcVPCtV9I2zMUDxN7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy06YhZEbk43MfQi576MupXGZtmEuH0316QvvrlM4vee9AI8g/D
	GLX+H8nNlnsS8zFOuoGlZSSjL5KbFoEmLl8oEdvG+/ksrKAJqWptzvM5bbAuI0zSdwLK2atRrpO
	j6l7wYmBtLtAOoHwtxJ5DxQBkQEzr8s6cFZNOew==
X-Gm-Gg: ASbGncvaVufjD72G/YXhM5Ka4CHuGr/Lo0NtPflB7mBxR2NYHegmSpjfDogBH5zmTIS
	jbtthWe++X5eMk39hiJVbyaUAXuetEaEMcVvq0l5CJBCCRX1/8+hkHui7pHwR53TtXciJVuA8LQ
	KlgZTP16J61kb7WOmZHxcSRQd5Wpg=
X-Google-Smtp-Source: AGHT+IFSILdL9gbquB4cJiTN2WJfhWPVNdAcHWiK58AOk52WrMFPjK/+cifJuWBrga9oy5DCzHOlrArOLOW8Kf0BBPo=
X-Received: by 2002:aa7:81c9:0:b0:736:9e40:13b1 with SMTP id
 d2e1a72fcca58-7369e401d84mr2472384b3a.23.1741280267339; Thu, 06 Mar 2025
 08:57:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227092640.2666894-1-quic_songchai@quicinc.com> <20250227092640.2666894-3-quic_songchai@quicinc.com>
In-Reply-To: <20250227092640.2666894-3-quic_songchai@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 6 Mar 2025 16:57:35 +0000
X-Gm-Features: AQ5f1JqTdlROGkZvhS3goiHemEI-Ou9K5R8l6YZoCNZ_BnPwM7nXi9j3dLITMbQ
Message-ID: <CAJ9a7Vip6Dda1q7R_LoQjB4696Yi3iDv6512Vsy6aqdpiPTWgw@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] coresight: Add coresight TGU driver
To: songchai <quic_songchai@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, 27 Feb 2025 at 09:27, songchai <quic_songchai@quicinc.com> wrote:
>
> From: Songwei Chai <quic_songchai@quicinc.com>
>
> Add driver to support Coresight device TGU (Trigger Generation Unit).
> TGU is a Data Engine which can be utilized to sense a plurality of
> signals and create a trigger into the CTI or generate interrupts to
> processors. Add probe/enable/disable functions for tgu.
>
> Signed-off-by: Songwei Chai <quic_songchai@quicinc.com>
> Signed-off-by: songchai <quic_songchai@quicinc.com>
> ---
>  .../testing/sysfs-bus-coresight-devices-tgu   |   9 +
>  drivers/hwtracing/coresight/Kconfig           |  11 +
>  drivers/hwtracing/coresight/Makefile          |   1 +
>  drivers/hwtracing/coresight/coresight-tgu.c   | 218 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-tgu.h   |  36 +++
>  5 files changed, 275 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
>  create mode 100644 drivers/hwtracing/coresight/coresight-tgu.c
>  create mode 100644 drivers/hwtracing/coresight/coresight-tgu.h
>
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
> new file mode 100644
> index 000000000000..741bc9fd9df5
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
> @@ -0,0 +1,9 @@
> +What:          /sys/bus/coresight/devices/<tgu-name>/enable_tgu
> +Date:          February 2025
> +KernelVersion  6.15
> +Contact:       Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Sam Chai (QUIC) <quic_songchai@quicinc.com>
> +Description:
> +               (RW) Set/Get the enable/disable status of TGU
> +               Accepts only one of the 2 values -  0 or 1.
> +               0 : disable TGU.
> +               1 : enable TGU.
> diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
> index 06f0a7594169..3fe59c745dd4 100644
> --- a/drivers/hwtracing/coresight/Kconfig
> +++ b/drivers/hwtracing/coresight/Kconfig
> @@ -247,4 +247,15 @@ config CORESIGHT_DUMMY
>
>           To compile this driver as a module, choose M here: the module will be
>           called coresight-dummy.
> +
> +config CORESIGHT_TGU
> +       tristate "CoreSight Trigger Generation Unit driver"
> +       help
> +         This driver provides support for Trigger Generation Unit that is
> +         used to detect patterns or sequences on a given set of signals.
> +         TGU is used to monitor a particular bus within a given region to
> +         detect illegal transaction sequences or slave responses. It is also
> +         used to monitor a data stream to detect protocol violations and to
> +         provide a trigger point for centering data around a specific event
> +         within the trace data buffer.
>  endif
> diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
> index 4ba478211b31..7c2b9e9cf1cd 100644
> --- a/drivers/hwtracing/coresight/Makefile
> +++ b/drivers/hwtracing/coresight/Makefile
> @@ -51,3 +51,4 @@ coresight-cti-y := coresight-cti-core.o       coresight-cti-platform.o \
>                    coresight-cti-sysfs.o
>  obj-$(CONFIG_ULTRASOC_SMB) += ultrasoc-smb.o
>  obj-$(CONFIG_CORESIGHT_DUMMY) += coresight-dummy.o
> +obj-$(CONFIG_CORESIGHT_TGU) += coresight-tgu.o
> diff --git a/drivers/hwtracing/coresight/coresight-tgu.c b/drivers/hwtracing/coresight/coresight-tgu.c
> new file mode 100644
> index 000000000000..da4c04ac1097
> --- /dev/null
> +++ b/drivers/hwtracing/coresight/coresight-tgu.c
> @@ -0,0 +1,218 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/amba/bus.h>
> +#include <linux/coresight.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +
> +#include "coresight-priv.h"
> +#include "coresight-tgu.h"
> +
> +DEFINE_CORESIGHT_DEVLIST(tgu_devs, "tgu");
> +
> +static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
> +{
> +       CS_UNLOCK(drvdata->base);
> +       /* Enable TGU to program the triggers */
> +       tgu_writel(drvdata, 1, TGU_CONTROL);
> +       CS_LOCK(drvdata->base);
> +}
> +
> +static int tgu_enable(struct coresight_device *csdev, enum cs_mode mode,
> +                     void *data)
> +{
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +
> +       spin_lock(&drvdata->spinlock);
> +
> +       if (drvdata->enable) {
> +               spin_unlock(&drvdata->spinlock);
> +               return -EBUSY;
> +       }
> +       tgu_write_all_hw_regs(drvdata);
> +       drvdata->enable = true;
> +
> +       spin_unlock(&drvdata->spinlock);
> +       return 0;
> +}
> +
> +static int tgu_disable(struct coresight_device *csdev, void *data)
> +{
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
> +
> +       spin_lock(&drvdata->spinlock);
> +
> +       if (!drvdata->enable) {

Could simplify by changing logic here -
if (enable) { do disable stuff }

and have a single return point

> +               spin_unlock(&drvdata->spinlock);
> +               return 0;
> +       }
> +
> +       CS_UNLOCK(drvdata->base);
> +       tgu_writel(drvdata, 0, TGU_CONTROL);
> +       CS_LOCK(drvdata->base);
> +
> +       drvdata->enable = false;
> +       spin_unlock(&drvdata->spinlock);
> +       return 0;
> +}
> +
> +static ssize_t enable_tgu_show(struct device *dev,
> +                              struct device_attribute *attr, char *buf)
> +{
> +       bool enabled;
> +
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +
> +       spin_lock(&drvdata->spinlock);
> +       enabled = drvdata->enable;
> +       spin_unlock(&drvdata->spinlock);
> +
> +       return sprintf(buf, "%d\n", enabled);

sysfs_emit() should be used here.

> +}
> +
> +/* enable_tgu_store - Configure Trace and Gating Unit (TGU) triggers. */
> +static ssize_t enable_tgu_store(struct device *dev,
> +                               struct device_attribute *attr, const char *buf,
> +                               size_t size)
> +{
> +       int ret = 0;
> +       unsigned long val;
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +
> +       ret = kstrtoul(buf, 0, &val);
> +       if (ret)
> +               return ret;
> +
> +       if (val) {
> +               ret = pm_runtime_resume_and_get(dev->parent);
> +               if (ret)
> +                       return ret;
> +               ret = tgu_enable(drvdata->csdev, CS_MODE_SYSFS, NULL);
> +               if (ret)
> +                       pm_runtime_put(dev->parent);
> +       } else {
> +               ret = tgu_disable(drvdata->csdev, NULL);
> +               if (!ret)


redundant - tgu_disable always returns 0.

> +                       pm_runtime_put(dev->parent);
> +       }
> +
> +       if (ret)
> +               return ret;
> +       return size;
> +}
> +static DEVICE_ATTR_RW(enable_tgu);
> +
> +static const struct coresight_ops_helper tgu_helper_ops = {
> +       .enable = tgu_enable,
> +       .disable = tgu_disable,
> +};
> +
> +static const struct coresight_ops tgu_ops = {
> +       .helper_ops = &tgu_helper_ops,
> +};
> +
> +static struct attribute *tgu_common_attrs[] = {
> +       &dev_attr_enable_tgu.attr,
> +       NULL,
> +};
> +
> +static const struct attribute_group tgu_common_grp = {
> +       .attrs = tgu_common_attrs,
> +       NULL,
> +};
> +
> +static const struct attribute_group *tgu_attr_groups[] = {
> +       &tgu_common_grp,
> +       NULL,
> +};
> +
> +static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
> +{
> +       int ret = 0;
> +       struct device *dev = &adev->dev;
> +       struct coresight_desc desc = { 0 };
> +       struct coresight_platform_data *pdata;
> +       struct tgu_drvdata *drvdata;
> +
> +       desc.name = coresight_alloc_device_name(&tgu_devs, dev);
> +       if (!desc.name)
> +               return -ENOMEM;
> +
> +       pdata = coresight_get_platform_data(dev);
> +       if (IS_ERR(pdata))
> +               return PTR_ERR(pdata);
> +
> +       adev->dev.platform_data = pdata;
> +
> +       drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> +       if (!drvdata)
> +               return -ENOMEM;
> +
> +       drvdata->dev = &adev->dev;
> +       dev_set_drvdata(dev, drvdata);
> +
> +       drvdata->base = devm_ioremap_resource(dev, &adev->res);
> +       if (!drvdata->base)
> +               return -ENOMEM;
> +
> +       spin_lock_init(&drvdata->spinlock);
> +
> +       drvdata->enable = false;
> +       desc.type = CORESIGHT_DEV_TYPE_HELPER;
> +       desc.pdata = adev->dev.platform_data;
> +       desc.dev = &adev->dev;
> +       desc.ops = &tgu_ops;
> +       desc.groups = tgu_attr_groups;
> +
> +       drvdata->csdev = coresight_register(&desc);
> +       if (IS_ERR(drvdata->csdev)) {
> +               ret = PTR_ERR(drvdata->csdev);
> +               goto err;
> +       }
> +
> +       pm_runtime_put(&adev->dev);
> +       return 0;
> +err:
> +       pm_runtime_put(&adev->dev);
> +       return ret;
> +}
> +
> +static void tgu_remove(struct amba_device *adev)
> +{
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(&adev->dev);
> +
> +       coresight_unregister(drvdata->csdev);
> +}
> +
> +static const struct amba_id tgu_ids[] = {
> +       {
> +               .id = 0x000f0e00,
> +               .mask = 0x000fffff,
> +               .data = "TGU",
> +       },
> +       { 0, 0, NULL },
> +};
> +
> +MODULE_DEVICE_TABLE(amba, tgu_ids);
> +
> +static struct amba_driver tgu_driver = {
> +       .drv = {
> +               .name = "coresight-tgu",
> +               .suppress_bind_attrs = true,
> +       },
> +       .probe  = tgu_probe,
> +       .remove = tgu_remove,
> +       .id_table       = tgu_ids,
> +};
> +
> +module_amba_driver(tgu_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("CoreSight TGU driver");
> diff --git a/drivers/hwtracing/coresight/coresight-tgu.h b/drivers/hwtracing/coresight/coresight-tgu.h
> new file mode 100644
> index 000000000000..380686f94130
> --- /dev/null
> +++ b/drivers/hwtracing/coresight/coresight-tgu.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef _CORESIGHT_TGU_H
> +#define _CORESIGHT_TGU_H
> +
> +/* Register addresses */
> +#define TGU_CONTROL 0x0000
> +
> +/* Register read/write */
> +#define tgu_writel(drvdata, val, off) __raw_writel((val), drvdata->base + off)
> +#define tgu_readl(drvdata, off) __raw_readl(drvdata->base + off)
> +
> +/**
> + * struct tgu_drvdata - Data structure for a TGU (Trigger Generator Unit) device
> + * @base: Memory-mapped base address of the TGU device
> + * @dev: Pointer to the associated device structure
> + * @csdev: Pointer to the associated coresight device
> + * @spinlock: Spinlock for handling concurrent access
> + * @enable: Flag indicating whether the TGU device is enabled
> + *
> + * This structure defines the data associated with a TGU device, including its base
> + * address, device pointers, clock, spinlock for synchronization, trigger data pointers,

I don't see any trigger data pointers or limits here. Comment on what
is there, if more is added later, expand the comment later.

> + * maximum limits for various trigger-related parameters, and enable status.
> + */
> +struct tgu_drvdata {
> +       void __iomem *base;
> +       struct device *dev;
> +       struct coresight_device *csdev;
> +       spinlock_t spinlock;
> +       bool enable;
> +};
> +
> +#endif
>

Regards

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

