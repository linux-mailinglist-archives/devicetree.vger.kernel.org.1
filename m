Return-Path: <devicetree+bounces-132627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 315649F7A36
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03F6318941B6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB9B223C6F;
	Thu, 19 Dec 2024 11:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQS6yLRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661FC222563
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734607091; cv=none; b=ZBWhSJ7VMqGEJC2JOpWb+s9SyXZ7ltrw8YAn7eelpJu+hMp50zttnDKvrDAdfi+sdj7rhUuO/WNo8PKINLUue0yWfHovCQd3jAsMEVLP8mM3I4Zzt4jNKDlgK0asiKDmUNtgwzHb4xAl47Un6fePNiQb3Ex4rc/HvyeEDr5y7VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734607091; c=relaxed/simple;
	bh=5p/bjpAbtFjkgekgKREdkY95f/TuOnixW4hAEk2EXJY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NFQy9HEnakfJg8fklyL9rJgBLprtZ4AI65wTmYXUVMEEnKeKZQiMQ3dEcMViJ6aCpmtfgkrcqkERRFGKLp7R1Rfh+m35hNb8O8KnDj+3vXp1OCUiHXJXSlw1/VOhaWhLnDD0Hk3kELnG1TU1ZmeCT8SQa7qLAc2E0vQOtXkHaDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQS6yLRP; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2f441791e40so504494a91.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 03:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734607088; x=1735211888; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p9m80RBkLlIyVih+tGTy7G66Yn/eg+6sg6d3WyVh4JM=;
        b=zQS6yLRPGplPkC9OCe4ZKACxdiPo7D1TAm1fH2he484H/d1lQJ6Ph8A2J5xKWL2MS9
         X7anoYxwHc0T4K7v1FODmh0juPUxMbLQzqG8zXQBeEk3t9Xvj91N/E0xGjJVS6uscZfA
         ZITOmfrLG/hFjhxs95x7Piw5+HJNu48qr1OhX2d9k0WeOX1FdwAdlwmSWhBRfJNOLNKE
         HNlxhVZgob7MN/tSaB2Od7TcYWgFvld4FK3HuCaJXMsBsAmQFjSj4GZ0sXuZjHIOx/sy
         ocCesyCE8Ic0VmSRXJqtFZHBgrDmGVyjg9AFI2soU/m39QlX2ThGeK4TPt5ChkK6kAm4
         KpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734607088; x=1735211888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p9m80RBkLlIyVih+tGTy7G66Yn/eg+6sg6d3WyVh4JM=;
        b=CEhpawrWCn4nYAzzhkvQzdv+WC4bfvA+qj/7EbPCppvofNNwzod4oFKERgxB6f8TiR
         kxx8bivH0GckwTNri45imOXWm5tCUoorT0Ud8ndStvLbbHm3t6K8aJwhd0GKhih9iky1
         O972X6S3AiBMvwLwnzpUnmSUjw4eZPUZ+ASt55aT7I7byy+Wg2O4Mi3kpg8tI5oToK7U
         8FcP4dR7JZESRl0EVAu0H1mO4S//ta+p0X7fZq1RwXKFxdd70hX24oLheipzezOM2kkh
         qivVakqJ+ExhPi9eLMTJYoX93lF9LHraE9mTLNA3yZ++HyUkX7CmjfPSAI+eI8dqAKZw
         mvZw==
X-Forwarded-Encrypted: i=1; AJvYcCXv6T/bYrTwCJEJuy1R+/oe4QyTwMLwr253V6G2/rR62l8E8ZWDlxW8+LPJtXyulqOzYcRurE3Xpzty@vger.kernel.org
X-Gm-Message-State: AOJu0YxrKnZKguHy0MhrqXlbcmAOKqhupCHgHgMFNccXWlvBFdYStzNA
	ft1oZkcOoepSFjSyD6OM/zc5RSRoOPJu4ATCHVS1JBGrd7wXORLO1bRetySX4j/uLjdtPQbQWYw
	fkMTn+KnHydP7W3YQoZM/t2kN7GVairbhq1A8HA==
X-Gm-Gg: ASbGncuyc0RDByddVfk2tVyH6gKAaF6GtxH6qoYDISfi8enUBlHDYFVJkOpVO1PSaER
	kcoiD8XbGYtZ22Lf7pAD4FjjL8MppSzDiE5YDPEw=
X-Google-Smtp-Source: AGHT+IE2XfBAsxGuH9shdOU2Tv13L+bY+D6gYw0FRiJfoudzX1LkWtV41Ix0GCCr0IC+PxnNkPEmk5Ja2luVww300+o=
X-Received: by 2002:a17:90b:2dcc:b0:2ee:a4f2:b311 with SMTP id
 98e67ed59e1d1-2f2e91a8c16mr9358009a91.8.1734607088488; Thu, 19 Dec 2024
 03:18:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217063324.33781-1-quic_jinlmao@quicinc.com>
 <20241217063324.33781-3-quic_jinlmao@quicinc.com> <985d234c-e088-469d-b9dc-7904fcf5a91c@arm.com>
 <PAVPR08MB967401DC65384CBA26B6829C8C052@PAVPR08MB9674.eurprd08.prod.outlook.com>
 <53354e84-73c0-403b-bbc0-af619196596d@arm.com>
In-Reply-To: <53354e84-73c0-403b-bbc0-af619196596d@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 19 Dec 2024 11:17:57 +0000
Message-ID: <CAJ9a7VhWZkNcYWUfUkU8+OuQK-Cnu6kp6x23M4s5jHLa3_TpJQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] coresight: Add label sysfs node support
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <Mike.Leach@arm.com>, Mao Jinlong <quic_jinlmao@quicinc.com>, 
	James Clark <James.Clark@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, 
	"coresight@lists.linaro.org" <coresight@lists.linaro.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, 18 Dec 2024 at 18:16, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mike
>
> On 18/12/2024 09:56, Mike Leach wrote:
> > Hi
> >
> >> -----Original Message-----
> >> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> Sent: Wednesday, December 18, 2024 9:38 AM
> >> To: Mao Jinlong <quic_jinlmao@quicinc.com>; Mike Leach
> >> <mike.leach@linaro.org>; James Clark <James.Clark@arm.com>; Rob Herring
> >> <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> >> <conor+dt@kernel.org>; Mathieu Poirier <mathieu.poirier@linaro.org>; Bjorn
> >> Andersson <andersson@kernel.org>; Konrad Dybcio
> >> <konradybcio@kernel.org>
> >> Cc: coresight@lists.linaro.org; linux-arm-kernel@lists.infradead.org;
> >> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> >> msm@vger.kernel.org
> >> Subject: Re: [PATCH v6 2/2] coresight: Add label sysfs node support
> >>
> >> On 17/12/2024 06:33, Mao Jinlong wrote:
> >>> For some coresight components like CTI and TPDM, there could be
> >>> numerous of them. From the node name, we can only get the type and
> >>> register address of the component. We can't identify the HW or the
> >>> system the component belongs to. Add label sysfs node support for
> >>> showing the intuitive name of the device.
> >>>
> >>> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> >>> ---
> >>>    .../testing/sysfs-bus-coresight-devices-cti   |  6 ++++
> >>>    .../sysfs-bus-coresight-devices-funnel        |  6 ++++
> >>>    .../testing/sysfs-bus-coresight-devices-tpdm  |  6 ++++
> >>>    drivers/hwtracing/coresight/coresight-sysfs.c | 32
> >> +++++++++++++++++++
> >>>    4 files changed, 50 insertions(+)
> >>
> >> Do you think we need to name the devices using the label ?
> >>
> >
> > No - absolutely not. If we use label to name devices then we have to validate that the string is a correctly formed device name and that it has not been previously used.
>
> Anything that doesn't contain '/' can be a device name ? And it is very
> easy to find if the device name has been used in the coresight bus,
> after all these devices only appear there.
>
> It is as good as :
>
> bus_find_device_by_name(coresight_bus_type, NULL, name) == NULL
>
> Of course with coresight_mutex() held.
>
> Suzuki
>

DTS label property (DT spec 4.1.2) is a freeform string, specified to
be a human readable description of the device, e.g. :-

cti0@0x1000 {
reg = <0x1000>;
label = "main system CTI";
};

Arguably the label is completely unnecessary - as the @0x1000 tells
the knowledgeable user, with a hardware specification of the device
precisely what this CTI does and is related to.

The point of this patchset is to add context to the name@addr to make
the identification of the devices easier.

The DT compiler should ensure that the device tree is well formed.
Using driver selected names (cti_cpu0 ... etc) guarantees  that every
device found in the DT has a unique representation in sysfs.

Once a freeform string is used, then not only are duplicates possible,
illegal device names are possible, all of which can result in missing
nodes or worse. This requires handling / complications that are
unnecessary for the purpose.

Yes of course it is easy to look for duplicate names, reject bad ones,
emit errors - but that could end up with a partially working system
with missing components.

Why add potential for breakage when it is not necessary?

Regards

Mike

>
> >
> > Using the canonical driver selected names works best as we are guaranteed a unique name and the information label can be used to provide flexible context information that best matches the users requirements.
> >
> > Mike
> >
> >> Or is this enough ?
> >
> >> Suzuki
> >>
> >>
> >>>
> >>> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >>> b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >>> index bf2869c413e7..909670e0451a 100644
> >>> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >>> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >>> @@ -239,3 +239,9 @@ Date:           March 2020
> >>>    KernelVersion    5.7
> >>>    Contact: Mike Leach or Mathieu Poirier
> >>>    Description:     (Write) Clear all channel / trigger programming.
> >>> +
> >>> +What:           /sys/bus/coresight/devices/<cti-name>/label
> >>> +Date:           Dec 2024
> >>> +KernelVersion   6.14
> >>> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >>> +Description:    (Read) Show hardware context information of device.
> >>> diff --git
> >>> a/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >>> b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >>> index d75acda5e1b3..944aad879aeb 100644
> >>> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >>> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
> >>> @@ -10,3 +10,9 @@ Date:             November 2014
> >>>    KernelVersion:   3.19
> >>>    Contact: Mathieu Poirier <mathieu.poirier@linaro.org>
> >>>    Description:     (RW) Defines input port priority order.
> >>> +
> >>> +What:           /sys/bus/coresight/devices/<memory_map>.funnel/label
> >>> +Date:           Dec 2024
> >>> +KernelVersion   6.14
> >>> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >>> +Description:    (Read) Show hardware context information of device.
> >>> diff --git
> >>> a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >>> b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >>> index bf710ea6e0ef..309802246398 100644
> >>> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >>> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
> >>> @@ -257,3 +257,9 @@ Contact:        Jinlong Mao (QUIC)
> >> <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_t
> >>>    Description:
> >>>             (RW) Set/Get the MSR(mux select register) for the CMB
> >> subunit
> >>>             TPDM.
> >>> +
> >>> +What:           /sys/bus/coresight/devices/<tpdm-name>/label
> >>> +Date:           Dec 2024
> >>> +KernelVersion   6.14
> >>> +Contact:        Mao Jinlong <quic_jinlmao@quicinc.com>
> >>> +Description:    (Read) Show hardware context information of device.
> >>> diff --git a/drivers/hwtracing/coresight/coresight-sysfs.c
> >>> b/drivers/hwtracing/coresight/coresight-sysfs.c
> >>> index a01c9e54e2ed..4af40cd7d75a 100644
> >>> --- a/drivers/hwtracing/coresight/coresight-sysfs.c
> >>> +++ b/drivers/hwtracing/coresight/coresight-sysfs.c
> >>> @@ -7,6 +7,7 @@
> >>>    #include <linux/device.h>
> >>>    #include <linux/idr.h>
> >>>    #include <linux/kernel.h>
> >>> +#include <linux/property.h>
> >>>
> >>>    #include "coresight-priv.h"
> >>>    #include "coresight-trace-id.h"
> >>> @@ -366,18 +367,47 @@ static ssize_t enable_source_store(struct device
> >> *dev,
> >>>    }
> >>>    static DEVICE_ATTR_RW(enable_source);
> >>>
> >>> +static ssize_t label_show(struct device *dev,
> >>> +           struct device_attribute *attr, char *buf) {
> >>> +
> >>> +   const char *str;
> >>> +   int ret = 0;
> >>> +
> >>> +   ret = fwnode_property_read_string(dev_fwnode(dev), "label", &str);
> >>> +   if (ret == 0)
> >>> +           return scnprintf(buf, PAGE_SIZE, "%s\n", str);
> >>> +   else
> >>> +           return ret;
> >>> +}
> >>> +static DEVICE_ATTR_RO(label);
> >>> +
> >>>    static struct attribute *coresight_sink_attrs[] = {
> >>>     &dev_attr_enable_sink.attr,
> >>> +   &dev_attr_label.attr,
> >>>     NULL,
> >>>    };
> >>>    ATTRIBUTE_GROUPS(coresight_sink);
> >>>
> >>>    static struct attribute *coresight_source_attrs[] = {
> >>>     &dev_attr_enable_source.attr,
> >>> +   &dev_attr_label.attr,
> >>>     NULL,
> >>>    };
> >>>    ATTRIBUTE_GROUPS(coresight_source);
> >>>
> >>> +static struct attribute *coresight_link_attrs[] = {
> >>> +   &dev_attr_label.attr,
> >>> +   NULL,
> >>> +};
> >>> +ATTRIBUTE_GROUPS(coresight_link);
> >>> +
> >>> +static struct attribute *coresight_helper_attrs[] = {
> >>> +   &dev_attr_label.attr,
> >>> +   NULL,
> >>> +};
> >>> +ATTRIBUTE_GROUPS(coresight_helper);
> >>> +
> >>>    const struct device_type coresight_dev_type[] = {
> >>>     [CORESIGHT_DEV_TYPE_SINK] = {
> >>>             .name = "sink",
> >>> @@ -385,6 +415,7 @@ const struct device_type coresight_dev_type[] = {
> >>>     },
> >>>     [CORESIGHT_DEV_TYPE_LINK] = {
> >>>             .name = "link",
> >>> +           .groups = coresight_link_groups,
> >>>     },
> >>>     [CORESIGHT_DEV_TYPE_LINKSINK] = {
> >>>             .name = "linksink",
> >>> @@ -396,6 +427,7 @@ const struct device_type coresight_dev_type[] = {
> >>>     },
> >>>     [CORESIGHT_DEV_TYPE_HELPER] = {
> >>>             .name = "helper",
> >>> +           .groups = coresight_helper_groups,
> >>>     }
> >>>    };
> >>>    /* Ensure the enum matches the names and groups */
> >>
> >> _______________________________________________
> >> CoreSight mailing list -- coresight@lists.linaro.org To unsubscribe send an
> >> email to coresight-leave@lists.linaro.org
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

