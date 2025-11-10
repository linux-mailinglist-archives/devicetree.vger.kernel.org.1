Return-Path: <devicetree+bounces-236792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7963C477C7
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E12118832DB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259E231B101;
	Mon, 10 Nov 2025 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t9Of1YLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29C93128BF
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762787708; cv=none; b=atvMCT9rkj9Q02Qfoek03RQU1fV4/Sy6Uc1kk7UnYJhwQlIcKw11gcqk6apC82/hvwG5wRicRPgKKL9COZiP6y9YTyA17tr6y2lSZnRrkxrLEKuFGRYtVQV8kqNOMUw5GOHgbF3remwFAjAihPtjqjvT70pdCeTu0vIB/15hIuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762787708; c=relaxed/simple;
	bh=lhjELXmZSS3q6E2+rnaT59zCj87rpxz5eWYDWSZrjfo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hWKXqDJA+vX9oXFMNMKdDyZyG/0hGC2jims7xC5N9yFLGnI1uj5FCtSqsgHodwTXwZty/mapFLDU0DPRKvvy90OOQIJYxYq4mSPoIBZ/yWpjUrxjEcKBnw1/VfLs+vbRKqlsshUCOwOKar43ViH2xu4m+PDTYAlzd7jcjDv6Dw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t9Of1YLS; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64165cd689eso2697308a12.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762787704; x=1763392504; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tO2FkW94sB9AYPaQQFnYI79pge/7kyoIm3imhrG5Wd8=;
        b=t9Of1YLS6U+pcaO1lkopLQkFhBLmH9l0uWwSzAO37O9OwEKWoVAk0T7b7V/5ceAfc0
         eV/F6BPLuR/PVPNOpLDaCsvSmSNvFDEwdIRCEdtNacm6lr30BZNB73YmFn8JSMdb2iAx
         2ICuvW4Kiimf2fQQTNXMd/lXOlkL80kv0DcdEvg6P6Ih56OQtFbeLkjgc7u3DZqERBV0
         QiChfp3ux1mpfdu6dpRnDoHhqPhK5cquQWB/jZLnyVdGH8Hi7eM0pOK4bW+sOkn/ZU3I
         jqQo8oBX7b/SHOHuh40Sr43KAOnh/qSUZ2pjUXwnf9E21wLy/64qoCSt9+xusxqYwRFA
         dJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762787704; x=1763392504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tO2FkW94sB9AYPaQQFnYI79pge/7kyoIm3imhrG5Wd8=;
        b=ZaXFbxud2rwvNF7lnhmWBvWkv0aCnhjzRrbVyAoIIqpZ3HOeiZXOZnEicNaWIMdD0R
         KErS1CyOqS4oQXUj80K4kPl6dCLYV1bjDaVonE9xR+1mAXlnhJIO1Te4iR1aej3/Z+Mj
         Iyu6pKXmXwepsJlMGk7CdFSefssqL/+rIyg1eCrCkW0e8skv+msc1oD75yhFYPSLXpaJ
         Wuwh6pOAeR5ic6kLQ/2H7nkLFb0ifoqvimWglN0fBvSoOAWH3UehHqHvlp/gkJquyYbF
         gUTRsQEFueES+SoMYlK+ODf6enpGalJBV/lARyOjCXC95Ks6PXocwF/YIlFbt7ahhY0n
         U0OA==
X-Forwarded-Encrypted: i=1; AJvYcCX5H+//6PiXjPuHfinICrjTlTwZdRwl06CFajXRHxxa6NjXk2XqKraWqjeZyRZiQ8DRG4h2tXnLLXZo@vger.kernel.org
X-Gm-Message-State: AOJu0YzrIUf7L3gGqcfw9SGBexxkQLGErk59P0GvKb1MVVXr3u49+Cdd
	mXeePTCrBkSafOiId3zKiskXgANoM6OIIr/Bcy2DU0f3tNmuHbcaayUX14hMdnhB7hiikRxYCtS
	LmHyuv2mxu42vNFtEnQ/SYeShQcmLm8R9OmliUy6Iwg==
X-Gm-Gg: ASbGncvxTAVCvU5Pg/df67Fsd3VbIWpbbFOLZ6ueMauXvaIaowTJR+Rv8LZjj/1xhq0
	ZOQmomc1isxmfMcsQ7TAyiO2B0QDhVU4g9dmBe7EpLrDL62pyqwbHNyFYKBqsKe75EKtGG3aqoK
	aRrBTXeWYvceKWemuzxu3H8cEuWl+oRwg0MPd5HyUD5SCadJWxFlvh+i+7/3dgy+YvHNDUZmlHA
	6E36x4xgaaZ152K9hKoafK7oexvRpVsTIawed7rgBe/b4cAzE84FR0LDS14aJC/Uic6Tyrd2CJ6
	xfmCpTQp/Vf118Gk77Gr5U4XbKsgvALGugdAMg==
X-Google-Smtp-Source: AGHT+IF0JiR17k2tNdQIY29GGeZp6tuwfTPaU+/ksYYCINL8GaZCSCzoJNug8wrqVngyVxyRmshkBrZF3f3+WWM6Cjg=
X-Received: by 2002:a17:907:9408:b0:afa:1d2c:bbd1 with SMTP id
 a640c23a62f3a-b72dff5f6b2mr1002486166b.30.1762787704214; Mon, 10 Nov 2025
 07:15:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-5-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-5-46e085bca4cc@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Mon, 10 Nov 2025 16:14:53 +0100
X-Gm-Features: AWmQ_bnHJgzy3SDXUbMU9BaI_OynoJofd0BXy7gUevgAAiWJJ2om5cI31VC5pf4
Message-ID: <CACMJSesMK37D7Qy+rVq7w6bUt6bYGXykUid6bUKXvh7M9mntZA@mail.gmail.com>
Subject: Re: [PATCH v17 05/12] power: reset: reboot-mode: Expose sysfs for
 registered reboot_modes
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Souvik Chakravarty <Souvik.Chakravarty@arm.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Moritz Fischer <moritz.fischer@ettus.com>, John Stultz <john.stultz@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	Andre Draszik <andre.draszik@linaro.org>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	Elliot Berman <quic_eberman@quicinc.com>, Xin Liu <xin.liu@oss.qualcomm.com>, 
	Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, 9 Nov 2025 at 15:38, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
>
> Currently, there is no standardized mechanism for userspace to
> discover which reboot-modes are supported on a given platform.
> This limitation forces tools and scripts to rely on hardcoded
> assumptions about the supported reboot-modes.
>
> Create a class 'reboot-mode' and a device under it to expose a
> sysfs interface to show the available reboot mode arguments to
> userspace. Use the driver_name field of the struct
> reboot_mode_driver to create the device. For device-based
> drivers, configure the device driver name as driver_name.
>
> This results in the creation of:
>   /sys/class/reboot-mode/<driver>/reboot_modes
>
> This read-only sysfs file will exposes the list of supported
> reboot modes arguments provided by the driver, enabling userspace
> to query the list of arguments.
>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/reboot-mode.c | 62 ++++++++++++++++++++++++++++++++++++++-
>  include/linux/reboot-mode.h       |  2 ++
>  2 files changed, 63 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index 873ac45cd7659b214b7c21958f580ca381e0a63d..582aa7f8ed7fa485c5a67877558c9b15d3600ef4 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -6,6 +6,7 @@
>  #define pr_fmt(fmt)    "reboot-mode: " fmt
>
>  #include <linux/device.h>
> +#include <linux/err.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
>  #include <linux/list.h>
> @@ -23,6 +24,8 @@ struct mode_info {
>         struct list_head list;
>  };
>
> +static struct class *rb_class;
> +

I know C is a spartan language but the rb_ prefix makes me think of
the red-black tree. Please call it reboot_mode_class.

>  static u64 get_reboot_mode_magic(struct reboot_mode_driver *reboot, const char *cmd)
>  {
>         const char *normal = "normal";
> @@ -65,6 +68,51 @@ static int reboot_mode_notify(struct notifier_block *this,
>         return NOTIFY_DONE;
>  }
>
> +static ssize_t reboot_modes_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       struct reboot_mode_driver *reboot;
> +       struct mode_info *info;
> +       ssize_t size = 0;
> +
> +       reboot = (struct reboot_mode_driver *)dev_get_drvdata(dev);

No need for the cast.

> +       if (!reboot)
> +               return -ENODATA;
> +
> +       list_for_each_entry(info, &reboot->head, list)
> +               size += sysfs_emit_at(buf, size, "%s ", info->mode);
> +
> +       if (size) {
> +               size += sysfs_emit_at(buf, size - 1, "\n");
> +               return size;
> +       }

This is a weird logic inversion. Just do:

if (!size)
    return -ENODATA;

return size + sysfs_emit_at(buf, size - 1, "\n");

> +
> +       return -ENODATA;
> +}
> +static DEVICE_ATTR_RO(reboot_modes);
> +
> +static int create_reboot_mode_device(struct reboot_mode_driver *reboot)
> +{
> +       int ret = 0;
> +
> +       if (!rb_class) {
> +               rb_class = class_create("reboot-mode");
> +               if (IS_ERR(rb_class))
> +                       return PTR_ERR(rb_class);
> +       }

Why the lazy initialization here? Is there any reason you can't
statically define the class? Don't you need synchronization here if
multiple drivers try to do this?

Bart

