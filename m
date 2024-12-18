Return-Path: <devicetree+bounces-132201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC8E9F626B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DBD418947E0
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD051993BD;
	Wed, 18 Dec 2024 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oXf5y6MM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5702318A922
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734516746; cv=none; b=rxtBxr2Imzr9wCkcRoOoGfeLPxEQv3GSQOb4DXihkTlkTt/4fTkVgruMPTGgc38J2Sx7UgPZwmifT9JxIGHeCoIb644I+1NURNlvjatCWhjCtJfjUMuiV5hKzHVROlDvvIB4NPQu1xfO9K9UGU2gKXOHl+0QRtR8reJhO5n3OJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734516746; c=relaxed/simple;
	bh=mO0MW2A6xJIDCxQrZqqzgqCAyY+doYkSObDredfEHH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LO1E3f1MYQjas0bAfCZL2/pei/YeZr2bS7b2fUV8X+OquzXeSd5pinPz/ZlLAEsOX8bk7Rl5/6dbYPPA4i3vefuju6Xd9xsh/bdZsOQAYMemn1KKunCaRY/IA4SJoNmjKBoKcVne6JF1dCsBJX53rUr21X1HWEdnePBH75kYnvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oXf5y6MM; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-8019338c2b2so4050504a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 02:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734516743; x=1735121543; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HVHcm9pauC3GhK5+Y9PUhjKsCgNwGsAmTgrtAcTlGQE=;
        b=oXf5y6MMMFxrXoAIrGw81rP3ynFldm5vfzoH/3xFbv2OWW1KbWlwrqcp74yDbUWmOs
         +Fk24/99hJ7hHdfxu28AnUWO2jowdTJW664+il8kh3ElybYQwDLLAGvvsNgCa4uEMBGn
         bvCF3htkEdIjpA9wMYd6Z+2O07SoBYUiuJ3Nd8urk/J2wxhMYC4DrZluN+J9uLAoIUhi
         UiEMQfxgsU20crnhbR3GWcuv40co7WhKIuv4egItz+NI2KckSr/PiNvW3wz1jQuYjhms
         vphUlHWHqoLikb/YaAEbqNJ0LepOntEKxjYCGFOvOOq6KuC2rsrJSFyLwF3czpLfd6cx
         dujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734516743; x=1735121543;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HVHcm9pauC3GhK5+Y9PUhjKsCgNwGsAmTgrtAcTlGQE=;
        b=DWyC/+gpNBk4/xJmpY7tYIcLghHDCsHol2SHSxMIMZUlHU0RPCpzskDKFC/95y1dJe
         +nblEry4yEWHdaF/9tCm2AZVv/zLTEhGFo8y5XMa/uyuSx11CTwqRyXnB6o6XtGqp3vl
         X2TebwkWELj5bcsXvt6LI717vdSunDQD6frfUIoCO7qEGjRcGe8c9+pUY5VpkMQAv8S1
         i49iRuXr8jIib4afAosxOS0LdQfbn7dDmBbuEr5KD8MWKy8ksR5zyeL3oUzxaiSftdkb
         CaXRU3qG7D9tgb8AjSo8NQXzQxjL2Gz+vwInYi/Y0gqrfQcyv5iBOYyWYPHWgkoLShbz
         dt/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXEE7kqAqMgSHnDvKBoL2wG0pyf7jU++wB14Ns77EaLbBZqoI4NiVN1jXMy/snhZygmn8dzA1iYZudF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrs1xr9BElq/5q9Yus+PsKw5xeUd/tUA1JP30N7guRrqmNirzZ
	IgupSR3KexakyCeWHOsRqtB67dWMoEjkJHMS3V4DrvtAvlXy7Kl1gjPy1UrhoPJ65OA1XKCfi85
	PcGeU8caftcxUTPQ+8MWaf7+OziKmTi68Q6yBaA==
X-Gm-Gg: ASbGncsYrlfgqFvvk74ahdhu15nUzLAFRoKpxt3Zp9oDVtiv6RrwkoAmRkBwMH34v0Z
	FsFPtPI45wQajVyp84oj3Y+kRUGAs9sQ18KIUJUc=
X-Google-Smtp-Source: AGHT+IGCS/12iXVQImv5VzwIKtHSK1STA1CqvbkzaVeJurm2ZhL/a0FzlOc63mIq8E3wtYzMzC2DjfMhljG616CLMWI=
X-Received: by 2002:a17:90b:4c0e:b0:2ee:49c4:4a7c with SMTP id
 98e67ed59e1d1-2f2e91feea3mr3241058a91.18.1734516743666; Wed, 18 Dec 2024
 02:12:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217063324.33781-1-quic_jinlmao@quicinc.com>
 <20241217063324.33781-3-quic_jinlmao@quicinc.com> <985d234c-e088-469d-b9dc-7904fcf5a91c@arm.com>
 <f1c6da16-fbfd-40aa-a158-36ab713ce541@quicinc.com>
In-Reply-To: <f1c6da16-fbfd-40aa-a158-36ab713ce541@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 18 Dec 2024 10:12:12 +0000
Message-ID: <CAJ9a7Vh6EZij9ZTMOj4601QbUZ3S6mqh7USod=uXMrJsXawkkQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] coresight: Add label sysfs node support
To: Jinlong Mao <quic_jinlmao@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi

On Wed, 18 Dec 2024 at 09:57, Jinlong Mao <quic_jinlmao@quicinc.com> wrote:
>
>
>
> On 2024/12/18 17:38, Suzuki K Poulose wrote:
> > On 17/12/2024 06:33, Mao Jinlong wrote:
> >> For some coresight components like CTI and TPDM, there could be
> >> numerous of them. From the node name, we can only get the type and
> >> register address of the component. We can't identify the HW or the
> >> system the component belongs to. Add label sysfs node support for
> >> showing the intuitive name of the device.
> >>
> >> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> >> ---
> >>   .../testing/sysfs-bus-coresight-devices-cti   |  6 ++++
> >>   .../sysfs-bus-coresight-devices-funnel        |  6 ++++
> >>   .../testing/sysfs-bus-coresight-devices-tpdm  |  6 ++++
> >>   drivers/hwtracing/coresight/coresight-sysfs.c | 32 +++++++++++++++++++
> >>   4 files changed, 50 insertions(+)
> >
> > Do you think we need to name the devices using the label ? Or is this
> > enough ?
> >
> > Suzuki
> Hi Suzuki,
>
> In my opinion, we should use label as the device name.
>
> It will be easier to identify the component with the folder name in
> /sys/bus/coresight/devices/
>
>

Please see the my comments from v4 of this patchset that explains why
this should not be done- re uniqueness and allowing scripting to
work:-

https://lists.linaro.org/archives/list/coresight@lists.linaro.org/message/Y65RKVUJUQGNARMWCOLSD636K7LROLYA/

Mike


> Thanks
> Jinlong Mao
>
> >
> >
> >>
> >> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >> b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >> index bf2869c413e7..909670e0451a 100644
> >> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >> @@ -239,3 +239,9 @@ Date:        March 2020
> >>   KernelVersion    5.7
> >>   Contact:    Mike Leach or Mathieu Poirier
> >>   Description:    (Write) Clear all channel / trigger programming.
> >> +
> >> +What:           /sys/bus/coresight/devices/<cti-name>/label
> >> +Date:           Dec 2024
> >> +KernelVersion   6.14
> >> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >> +Description:    (Read) Show hardware context information of device.
> >> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-
> >> funnel b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >> index d75acda5e1b3..944aad879aeb 100644
> >> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >> @@ -10,3 +10,9 @@ Date:        November 2014
> >>   KernelVersion:    3.19
> >>   Contact:    Mathieu Poirier <mathieu.poirier@linaro.org>
> >>   Description:    (RW) Defines input port priority order.
> >> +
> >> +What:           /sys/bus/coresight/devices/<memory_map>.funnel/label
> >> +Date:           Dec 2024
> >> +KernelVersion   6.14
> >> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >> +Description:    (Read) Show hardware context information of device.
> >> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-
> >> tpdm b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >> index bf710ea6e0ef..309802246398 100644
> >> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >> @@ -257,3 +257,9 @@ Contact:    Jinlong Mao (QUIC)
> >> <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_t
> >>   Description:
> >>           (RW) Set/Get the MSR(mux select register) for the CMB subunit
> >>           TPDM.
> >> +
> >> +What:           /sys/bus/coresight/devices/<tpdm-name>/label
> >> +Date:           Dec 2024
> >> +KernelVersion   6.14
> >> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >> +Description:    (Read) Show hardware context information of device.
> >> diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c b/drivers/
> >> hwtracing/coresight/coresight-sysfs.c
> >> index a01c9e54e2ed..4af40cd7d75a 100644
> >> --- a/drivers/hwtracing/coresight/coresight-sysfs.c
> >> +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> >> @@ -7,6 +7,7 @@
> >>   #include <linux/device.h>
> >>   #include <linux/idr.h>
> >>   #include <linux/kernel.h>
> >> +#include <linux/property.h>
> >>   #include "coresight-priv.h"
> >>   #include "coresight-trace-id.h"
> >> @@ -366,18 +367,47 @@ static ssize_t enable_source_store(struct device
> >> *dev,
> >>   }
> >>   static DEVICE_ATTR_RW(enable_source);
> >> +static ssize_t label_show(struct device *dev,
> >> +        struct device_attribute *attr, char *buf)
> >> +{
> >> +
> >> +    const char *str;
> >> +    int ret = 0;
> >> +
> >> +    ret = fwnode_property_read_string(dev_fwnode(dev), "label", &str);
> >> +    if (ret == 0)
> >> +        return scnprintf(buf, PAGE_SIZE, "%s\n", str);
> >> +    else
> >> +        return ret;
> >> +}
> >> +static DEVICE_ATTR_RO(label);
> >> +
> >>   static struct attribute *coresight_sink_attrs[] = {
> >>       &dev_attr_enable_sink.attr,
> >> +    &dev_attr_label.attr,
> >>       NULL,
> >>   };
> >>   ATTRIBUTE_GROUPS(coresight_sink);
> >>   static struct attribute *coresight_source_attrs[] = {
> >>       &dev_attr_enable_source.attr,
> >> +    &dev_attr_label.attr,
> >>       NULL,
> >>   };
> >>   ATTRIBUTE_GROUPS(coresight_source);
> >> +static struct attribute *coresight_link_attrs[] = {
> >> +    &dev_attr_label.attr,
> >> +    NULL,
> >> +};
> >> +ATTRIBUTE_GROUPS(coresight_link);
> >> +
> >> +static struct attribute *coresight_helper_attrs[] = {
> >> +    &dev_attr_label.attr,
> >> +    NULL,
> >> +};
> >> +ATTRIBUTE_GROUPS(coresight_helper);
> >> +
> >>   const struct device_type coresight_dev_type[] = {
> >>       [CORESIGHT_DEV_TYPE_SINK] = {
> >>           .name = "sink",
> >> @@ -385,6 +415,7 @@ const struct device_type coresight_dev_type[] = {
> >>       },
> >>       [CORESIGHT_DEV_TYPE_LINK] = {
> >>           .name = "link",
> >> +        .groups = coresight_link_groups,
> >>       },
> >>       [CORESIGHT_DEV_TYPE_LINKSINK] = {
> >>           .name = "linksink",
> >> @@ -396,6 +427,7 @@ const struct device_type coresight_dev_type[] = {
> >>       },
> >>       [CORESIGHT_DEV_TYPE_HELPER] = {
> >>           .name = "helper",
> >> +        .groups = coresight_helper_groups,
> >>       }
> >>   };
> >>   /* Ensure the enum matches the names and groups */
> >
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

