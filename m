Return-Path: <devicetree+bounces-155404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AECF9A56904
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 14:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA33216EDC2
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 13:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3504721885D;
	Fri,  7 Mar 2025 13:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OctnpHNx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8659E156F5D
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 13:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741354432; cv=none; b=B441pHwE+2nusB/uQ+manKN68KiXNlUjNsO1wvZWFBWlhy5cZYM044jR8IFLAfckcBZP3q/9m/tEQ2ujN+AKiOfj+q8Qd4vGeYpCp7+CDKZfVbKu2HAc9D1ybQfVzzyHCeqe7fO4N51zNIv/WpJFFSc0WVkm0v2kVdmkfsgAH5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741354432; c=relaxed/simple;
	bh=c0EbQhriH0yeVpmDPzQfirvruWs73sJAmiu3cWiAa8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T+TdEfbMFVoAgRc84u3IDdvX4lRXdHbMVSC6NdjFQQMIqGCxeD82XypdRGKDjdQhJaitcQxwkihwVrn4XGIiEOK3P2q1YDVPrajKqy5LxSEzMH1ldeBXbrjWIMrT6hl80YIMJ43jG1nqbjKyLIhcvy5cKBRGBA1M9jgHY3Puutk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OctnpHNx; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-224171d6826so5380975ad.3
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 05:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741354430; x=1741959230; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qefuz4/zXGnZQBriDiq772OSKh+NBl3pjLrowf6tFto=;
        b=OctnpHNx9gK9klkiJ9lLMk6wQEP9uyXV1//csgJbE+3FSKjDbugcUElD5WdaUHaG1x
         bY8kuFzFDvFBT+OoVuPhBfyHpIByajdw9qh2uzUbJI+hPeNQOxM+t3fasgD4vKj4wZnx
         Bwmn4z3gX95/VbbdqbPLSi36h8XVB84TcR7KfLHRd9AlAxidSZbst4l/1GhqpJEkbJAM
         ALFOyCU4ImH+vETAtZ0C+90Uei15gNPjwW3p/8Sq0x0Une8QjUGRzSYBRSMXZXmDaog7
         O+IOo2vaseth6n5oM3uZRBClibinWQiYzi3o5Gi884Kx7J9SpxNr3fqn4PZxgkjDxDq5
         NuyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741354430; x=1741959230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qefuz4/zXGnZQBriDiq772OSKh+NBl3pjLrowf6tFto=;
        b=wUbyD96vpZ/0NPdzMFu/YVnzS9HnKtj/1NGX+mkHJn5tOTM5ReXDxX826++lx+1pyd
         8j1LYsYwyIspvlFRudtzlPuTtMs2ns1ZrT4JBzfMZshKnAHhku5hSqSwh1toWe8VxK74
         wMaDShfqyg0IKdhfdl65/mWkeVg+sQ83dYXRubLQIZcuEHITzfRW3EV3gbo1BnuQU+Ve
         dxcVSI1BTznZZaTq/Qdk8cm4fENzDhIVjP19c5FonemUco6xxXgAvlaykgELFl1TjnCN
         hAZzwxkp9M4gb0M/vWnEGKoj/U/d+zSF/MVzeIy7PCukYuRnZinkWAApHnV59dUo3HyV
         CRSA==
X-Forwarded-Encrypted: i=1; AJvYcCX7x2I9dX14iIJ7iY+hzFduWuxVdKRrfguTjJA2siw01KNPptXOSmNR5gaubw6VBXm4kap3pSZ5qjjY@vger.kernel.org
X-Gm-Message-State: AOJu0YwSRVi44Ttiyjj9PbPP3XR75KDpQL7PAnw7d0iZLuzhcq9xyDnf
	+9CWO0fFBPX2WyFxq+qbK0cg/QydXQr2blIjuiq0gQdD5WmsH+o9hEatvbSqSFJ1IbrihicWYix
	9eU9e/c8wKhbgigdGrbJeuk6+CGNek8cWNDK+8w==
X-Gm-Gg: ASbGnctJK/rNf7KpMeYGobwbDWCincwgmDa881voMMkKK+/wc9DbbSmWFx66sVUq+S4
	K1Bnt9jtMqve7C7vSqFRqmZ8FkU053yDrfy4iGGykmq8WWoKtc7lC9+M+eMembMtq4/C4S79yb0
	x3OBVOSmNTfUZg3/kf9Klyd5I1B1E=
X-Google-Smtp-Source: AGHT+IHRGxC49ANZft/8x4Umwrvd3CXrktB6JJunoqMwcMyPwq3u1UK1JigVlbNzMjMBwBcmwlqKciC3HjjxVzAjDN0=
X-Received: by 2002:a05:6a20:4322:b0:1f1:a608:230b with SMTP id
 adf61e73a8af0-1f544c6869emr6393060637.26.1741354429780; Fri, 07 Mar 2025
 05:33:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227092640.2666894-1-quic_songchai@quicinc.com> <20250227092640.2666894-8-quic_songchai@quicinc.com>
In-Reply-To: <20250227092640.2666894-8-quic_songchai@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 7 Mar 2025 13:33:38 +0000
X-Gm-Features: AQ5f1JrIaweQlcl4Gi_z5MPaMgCPO4piq25c6LCh0NkwnAfTW-agNeURPRb-cXk
Message-ID: <CAJ9a7Vh4OTZdbEygtwc7BxRJSLgkALoaNRPEiQLJQgZvFtnTtw@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] coresight-tgu: add reset node to initialize
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
> Add reset node to initialize the value of
> priority/condition_decode/condition_select/timer/counter nodes
>
> Signed-off-by: Songwei Chai <quic_songchai@quicinc.com>
> Signed-off-by: songchai <quic_songchai@quicinc.com>
> ---
>  .../testing/sysfs-bus-coresight-devices-tgu   |  7 ++
>  drivers/hwtracing/coresight/coresight-tgu.c   | 79 +++++++++++++++++++
>  2 files changed, 86 insertions(+)
>
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
> index d88d05fbff43..8fb5afd7c655 100644
> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
> @@ -42,3 +42,10 @@ KernelVersion   6.15
>  Contact:        Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Sam Chai (QUIC) <quic_songchai@quicinc.com>
>  Description:
>                  (RW) Set/Get the counter value with specific step for TGU.
> +
> +What:           /sys/bus/coresight/devices/<tgu-name>/reset_tgu
> +Date:           February 2025
> +KernelVersion   6.15
> +Contact:        Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Sam Chai (QUIC) <quic_songchai@quicinc.com>
> +Description:
> +                (Write) Reset the dataset for TGU.

Document the value needed to initiate the reset.

> diff --git a/drivers/hwtracing/coresight/coresight-tgu.c b/drivers/hwtracing/coresight/coresight-tgu.c
> index 693d632fb079..b36ced761c0d 100644
> --- a/drivers/hwtracing/coresight/coresight-tgu.c
> +++ b/drivers/hwtracing/coresight/coresight-tgu.c
> @@ -343,6 +343,84 @@ static ssize_t enable_tgu_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(enable_tgu);
>
> +/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
> +static ssize_t reset_tgu_store(struct device *dev,
> +                              struct device_attribute *attr, const char *buf,
> +                              size_t size)
> +{
> +       unsigned long value;
> +       struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +       int i, j, ret;
> +
> +       if (kstrtoul(buf, 0, &value))
> +               return -EINVAL;
> +

Check "value" here and bail out with an error code if 0.

> +       if (!drvdata->enable) {
> +               ret = pm_runtime_get_sync(drvdata->dev);
> +               if (ret < 0) {
> +                       pm_runtime_put(drvdata->dev);
> +                       return ret;
> +               }
> +       }
> +
> +       spin_lock(&drvdata->spinlock);
> +       CS_UNLOCK(drvdata->base);
> +
> +       if (value) {
drop this line

> +               tgu_writel(drvdata, 0, TGU_CONTROL);
> +
> +               if (drvdata->value_table->priority)
> +                       memset(drvdata->value_table->priority, 0,
> +                              MAX_PRIORITY * drvdata->max_step *
> +                                      drvdata->max_reg * sizeof(unsigned int));
> +
> +               if (drvdata->value_table->condition_decode)
> +                       memset(drvdata->value_table->condition_decode, 0,
> +                              drvdata->max_condition_decode * drvdata->max_step *
> +                                      sizeof(unsigned int));
> +
> +               /* Initialize all condition registers to NOT(value=0x1000000) */
> +               for (i = 0; i < drvdata->max_step; i++) {
> +                       for (j = 0; j < drvdata->max_condition_decode; j++) {
> +                               drvdata->value_table
> +                                       ->condition_decode[calculate_array_location(
> +                                               drvdata, i, TGU_CONDITION_DECODE, j)] =
> +                                       0x1000000;
> +                       }
> +               }
> +
> +               if (drvdata->value_table->condition_select)
> +                       memset(drvdata->value_table->condition_select, 0,
> +                              drvdata->max_condition_select * drvdata->max_step *
> +                                      sizeof(unsigned int));
> +
> +               if (drvdata->value_table->timer)
> +                       memset(drvdata->value_table->timer, 0,
> +                              (drvdata->max_step) *
> +                                      (drvdata->max_timer_counter) *
> +                                      sizeof(unsigned int));
> +
> +               if (drvdata->value_table->counter)
> +                       memset(drvdata->value_table->counter, 0,
> +                              (drvdata->max_step) *
> +                                      (drvdata->max_timer_counter) *
> +                                      sizeof(unsigned int));
> +
> +               dev_dbg(dev, "Coresight-TGU reset complete\n");
> +       } else {
> +               dev_dbg(dev, "Coresight-TGU invalid input\n");

not needed if early exit on input errror

> +       }
> +
> +       CS_LOCK(drvdata->base);
> +
> +       drvdata->enable = false;
> +       spin_unlock(&drvdata->spinlock);
> +       pm_runtime_put(drvdata->dev);
> +
> +       return size;
> +}
> +static DEVICE_ATTR_WO(reset_tgu);
> +
>  static const struct coresight_ops_helper tgu_helper_ops = {
>         .enable = tgu_enable,
>         .disable = tgu_disable,
> @@ -354,6 +432,7 @@ static const struct coresight_ops tgu_ops = {
>
>  static struct attribute *tgu_common_attrs[] = {
>         &dev_attr_enable_tgu.attr,
> +       &dev_attr_reset_tgu.attr,
>         NULL,
>  };
>
>


Regards

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

