Return-Path: <devicetree+bounces-227140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2ABDF0DD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:32:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 48E55357DA7
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3819127FD4B;
	Wed, 15 Oct 2025 14:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I11VRqau"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20E26F44D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538737; cv=none; b=BXVlnMTwCJdCehEzn9hEWqG4y67sXar66vUv7224QDAVprvbBYl0zV2xuru8j9BR2jK6/7XT5yYOtGaD3EkU64jlfYeLTG97aqB+146qF5+myC9vUO0w4gaTrJ/25vei5Ku0kqktGQsg8InF9eq6juTi8O5/oa+nTNRMFQC2Utg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538737; c=relaxed/simple;
	bh=zgjScSg8gxQVegmaLTY1qc+sG3oeDoXkbobmP8U+jSQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ze4OiGLEaksZcnAyGUCvlLxDhxcrNiU/2o07G0VLo9VShsdYwKEBp9MRh6e7hiIpr2BdsbUNS0POGLZo+N66blVko5Qi0h3yXwHBGF8p3V0V//bhtidLDlfoDQ4/geAVXoxJahLpdtVl8ctFdXO8Do4Moyonid9bU/KMgrCOdLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I11VRqau; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b4c89df6145so1118894366b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760538732; x=1761143532; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/GGPPAy1fHT4f0hgkyN0lKffg2M7YAAILDfIXtiBKFM=;
        b=I11VRqauvz2Md9yzxVKhi/ql4GEIbHYh68mXiqzbEUpeacbu6x9biKT1X45i9OkPia
         WQP+kNhDx22Yq0SxvtFyyI2nUVjA9mQT4/lWSXkz4sm4DRIMPaXX1BpJcB5VJ4fWakhF
         k1pwi7zoOxyLLZY1nqGemhzvD3mdgVFoIP1MmFRBm2ePgnB+N8JGuaP3cWOOLPx8klwl
         as2Ox4LQQy02EuCw6nS6PFveJ8+a3SRAH1D4PY7EhA1Pu6Qy4iYxtYwUFmTyJYnzWpZq
         b86gi50olKDJzNmieFJjSC9YmCZ5IONirampH5uQMR4LOLiPYNv46ckKbVhL7FLa2j16
         QY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760538732; x=1761143532;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/GGPPAy1fHT4f0hgkyN0lKffg2M7YAAILDfIXtiBKFM=;
        b=tXYALO7gQy+kq+ngx4z/CF0xE4XvgBUfiqJbwv0hL1IzLIVCxLAqZJIUz6k7cj9qMB
         Ua4apb/Kut5Oj/sYW8yoN3II1X4aiEuldrd0+7tMucwP0Prqcmn6xYiZzYQNKqBa0P5/
         TsryvfDJ5NVOO+p9YlkUipnZCSmkmZGNGrWLIwdwfxevsqXdsalLvDBo7Q3UtX38bFnE
         6LGPGLHlYZbJx+ML152qAL9oiQqudeWaS9dI68N2ZE7qdrA0Szn8kjNtZs/QuWkztRld
         3RgOKqR4YrH1B4zN/hUpHcmJE+V3WlHw4YR75OOVysJN0pKxmecWusEJWbzDZUy2b5IL
         mmeA==
X-Forwarded-Encrypted: i=1; AJvYcCXxz5KxjhhhwiV4GYatoQaJgvy1iJdeC4jwVHiYi/9NpjUJdDdMr1cn/KrfDM+/rV9YniIHYP3tra92@vger.kernel.org
X-Gm-Message-State: AOJu0YyeCvHROeY1b+of/8Q1hSX5n1W03RMWjqZtlSE+Ah5n8JfOGndz
	XOQBECPjhgwlqnOJw+d7eFcvjNrSrdRQwUZtw/AewIIM4iOIWnXL7QFsdFz4bBpMfSL9fL+JS11
	qhUBsOfmMR5mc8uF0neJY6uhwICT5oOWgVUdVLzwC6w==
X-Gm-Gg: ASbGncvVOFeV6R1uKqTftDYT8NNnWX/kWm5eVbrl979dHsRSsVkY1UdZby8ZeqJfPd5
	mQN9TELOYh550eVWpLaU8LEgzB5ShltDdT/aZDIOR5l+iQyzTvZ8a5oVks35r+O8WwnZ3h3Owx+
	9nmG52FM/Tr3UJdh6qZx+LDjKz4xVHB7/rP8OxtCARua1/It/yIi8Rr8rH11FcA3ccF2Pa6Xn0h
	JMGIwRyRFUGLhpvnRlNj8tcJ43QM2GClhWFYmP/BkZefnQ8Elqe/5trwvD3ICzQXSVvnQJH
X-Google-Smtp-Source: AGHT+IGvbF9vBWEbG0yxHrHoIRF115LWGGkIrcNil1qvyPeGnU0jWQdwZ6i5CqfPgqW4PnBPT+plyU0IoAr45ong62E=
X-Received: by 2002:a17:907:9448:b0:b40:a71b:151f with SMTP id
 a640c23a62f3a-b50ac1c4e7cmr3318624966b.30.1760538732189; Wed, 15 Oct 2025
 07:32:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-1-b98aedaa23ee@oss.qualcomm.com>
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-1-b98aedaa23ee@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Wed, 15 Oct 2025 16:32:01 +0200
X-Gm-Features: AS18NWDYlSPyX3_l7fQSeSlc4Ni_BqTNtU4UYXiSbDcs8VqP7UVRqIDp11dg6gU
Message-ID: <CACMJSeu_Y2Rra8x22kWN0B38jKZEwq7=B9C75zH18QdjDHAWqg@mail.gmail.com>
Subject: Re: [PATCH v16 01/14] power: reset: reboot-mode: Synchronize list traversal
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
	Elliot Berman <quic_eberman@quicinc.com>, Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Oct 2025 at 06:38, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
>
> List traversals must be synchronized to prevent race conditions
> and data corruption. The reboot-mode list is not protected by a
> lock currently, which can lead to concurrent access and race.
>
> Introduce a mutex lock to guard all operations on the reboot-mode
> list and ensure thread-safe access. The change prevents unsafe
> concurrent access on reboot-mode list.
>
> Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
> Fixes: ca3d2ea52314 ("power: reset: reboot-mode: better compatibility with DT (replace ' ,/')")
>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/reboot-mode.c | 96 +++++++++++++++++++++------------------
>  include/linux/reboot-mode.h       |  4 ++
>  2 files changed, 57 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index fba53f638da04655e756b5f8b7d2d666d1379535..8fc3e14638ea757c8dc3808c240ff569cbd74786 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -29,9 +29,11 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
>         if (!cmd)
>                 cmd = normal;
>
> -       list_for_each_entry(info, &reboot->head, list)
> -               if (!strcmp(info->mode, cmd))
> -                       return info->magic;
> +       scoped_guard(mutex, &reboot->rb_lock) {
> +               list_for_each_entry(info, &reboot->head, list)
> +                       if (!strcmp(info->mode, cmd))
> +                               return info->magic;
> +       }
>
>         /* try to match again, replacing characters impossible in DT */
>         if (strscpy(cmd_, cmd, sizeof(cmd_)) == -E2BIG)
> @@ -41,9 +43,11 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
>         strreplace(cmd_, ',', '-');
>         strreplace(cmd_, '/', '-');
>
> -       list_for_each_entry(info, &reboot->head, list)
> -               if (!strcmp(info->mode, cmd_))
> -                       return info->magic;
> +       scoped_guard(mutex, &reboot->rb_lock) {
> +               list_for_each_entry(info, &reboot->head, list)
> +                       if (!strcmp(info->mode, cmd_))
> +                               return info->magic;
> +       }
>
>         return 0;
>  }
> @@ -78,46 +82,50 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>
>         INIT_LIST_HEAD(&reboot->head);
>
> -       for_each_property_of_node(np, prop) {
> -               if (strncmp(prop->name, PREFIX, len))
> -                       continue;
> -
> -               info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
> -               if (!info) {
> -                       ret = -ENOMEM;
> -                       goto error;
> -               }
> -
> -               if (of_property_read_u32(np, prop->name, &info->magic)) {
> -                       dev_err(reboot->dev, "reboot mode %s without magic number\n",
> -                               info->mode);
> -                       devm_kfree(reboot->dev, info);
> -                       continue;
> -               }
> -
> -               info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
> -               if (!info->mode) {
> -                       ret =  -ENOMEM;
> -                       goto error;
> -               } else if (info->mode[0] == '\0') {
> -                       kfree_const(info->mode);
> -                       ret = -EINVAL;
> -                       dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
> -                               prop->name);
> -                       goto error;
> +       mutex_init(&reboot->rb_lock);
> +
> +       scoped_guard(mutex, &reboot->rb_lock) {
> +               for_each_property_of_node(np, prop) {
> +                       if (strncmp(prop->name, PREFIX, len))
> +                               continue;
> +
> +                       info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
> +                       if (!info) {
> +                               ret = -ENOMEM;
> +                               goto error;
> +                       }
> +
> +                       if (of_property_read_u32(np, prop->name, &info->magic)) {
> +                               dev_err(reboot->dev, "reboot mode %s without magic number\n",
> +                                       info->mode);
> +                               devm_kfree(reboot->dev, info);
> +                               continue;
> +                       }
> +
> +                       info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
> +                       if (!info->mode) {
> +                               ret =  -ENOMEM;
> +                               goto error;
> +                       } else if (info->mode[0] == '\0') {
> +                               kfree_const(info->mode);
> +                               ret = -EINVAL;
> +                               dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
> +                                       prop->name);
> +                               goto error;
> +                       }
> +
> +                       list_add_tail(&info->list, &reboot->head);

This seems to be the only call that actually needs synchronization.
All of the above can be run outside the critical section.

>                 }
>
> -               list_add_tail(&info->list, &reboot->head);
> -       }
> -
> -       reboot->reboot_notifier.notifier_call = reboot_mode_notify;
> -       register_reboot_notifier(&reboot->reboot_notifier);
> +               reboot->reboot_notifier.notifier_call = reboot_mode_notify;
> +               register_reboot_notifier(&reboot->reboot_notifier);
>
> -       return 0;
> +               return 0;
>
>  error:
> -       list_for_each_entry(info, &reboot->head, list)
> -               kfree_const(info->mode);
> +               list_for_each_entry(info, &reboot->head, list)
> +                       kfree_const(info->mode);
> +       }
>
>         return ret;
>  }
> @@ -133,8 +141,10 @@ int reboot_mode_unregister(struct reboot_mode_driver *reboot)
>
>         unregister_reboot_notifier(&reboot->reboot_notifier);
>
> -       list_for_each_entry(info, &reboot->head, list)
> -               kfree_const(info->mode);
> +       scoped_guard(mutex, &reboot->rb_lock) {
> +               list_for_each_entry(info, &reboot->head, list)
> +                       kfree_const(info->mode);
> +       }

Please destroy the mutex here.

Bart

>
>         return 0;
>  }
> diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
> index 4a2abb38d1d612ec0fdf05eb18c98b210f631b7f..b73f80708197677db8dc2e43affc519782b7146e 100644
> --- a/include/linux/reboot-mode.h
> +++ b/include/linux/reboot-mode.h
> @@ -2,11 +2,15 @@
>  #ifndef __REBOOT_MODE_H__
>  #define __REBOOT_MODE_H__
>
> +#include <linux/mutex.h>
> +
>  struct reboot_mode_driver {
>         struct device *dev;
>         struct list_head head;
>         int (*write)(struct reboot_mode_driver *reboot, unsigned int magic);
>         struct notifier_block reboot_notifier;
> +       /*Protects access to reboot mode list*/
> +       struct mutex rb_lock;
>  };
>
>  int reboot_mode_register(struct reboot_mode_driver *reboot);
>
> --
> 2.34.1
>

