Return-Path: <devicetree+bounces-115174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCE59AE546
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 14:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93AE1B22DEB
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 12:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB311CFEDB;
	Thu, 24 Oct 2024 12:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l43A4B7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1291B1E86E
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 12:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729773942; cv=none; b=N4xoqMoEKI6NWPu20EWpzHdjyKGV+7eqKYwHKk+TG4QT1nl2SoXH2VhDRLI9iaepP8Nv5brg8GKmYwH2yQULcYoqt04/dHSriqjyHA1IqCa52VgSGK8QtZ5m3/sF45cfE1wPDB2675HyAf0JMzh3OfUPy4nF05rE9anV3TF8DSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729773942; c=relaxed/simple;
	bh=95OTXlh8MWkRtmu6GobI58FLtGtGSC4sVT36R6dbObM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xlk5Y2Enu/TK+PCLSoUhoKAgLwuASRZoPj8FrTqZF0a3ZjMC0HbP83crpvgVq6Xf1ANeZJDtdjKRqn303hxfeqUkOTq09BGbnG4L+IYBb4XpHAjhNm3KQ/TvHl878XWbr9fvRVWN14oMGZadH0c9tPYIo5jL1IlIb04i6NJxqKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l43A4B7b; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7eb0bc007edso342743a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 05:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729773939; x=1730378739; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=49BR+Vn1lZ2yPsVgGV8fM4Apw3a0jqYsx9R52cWC0gk=;
        b=l43A4B7bLo9Dx81WJzR7VojnrcSfbp77nNDM+H5v5QLrB3gZ0IApBgniDDOesLrcFt
         2EZ6V/foKOY0rkfj7WNXts7Ryzj9bua3KCvJGPGzkBQP3WHOxOUAp2kkCNUH0JMGo1fh
         7FPDdVNbdBwZh6XXcMGmyfJkyOtWT/g6FYTSHUzBhN9r3XKzM1fOFl+LPR2BL4WqXcL0
         KMQguMh6uVpkfO0FcJg0d0NnzdjtLb+gkUXNuiZNgDWpz4nwCDtpE8rkWqFgPoxRB6+4
         JEJP3ei4NneuowivxRbw17sRueNEG/DO5sK0FxWqUKLzxzJ4d5J/XNBM7SdTuVGnIEGh
         OtAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729773939; x=1730378739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=49BR+Vn1lZ2yPsVgGV8fM4Apw3a0jqYsx9R52cWC0gk=;
        b=CLQY4QAYeaE4cZMQmu7OyPsMuAyT0L2c4u31vct/w6kyl6qsJiIAYtVoNlD2sKYe2z
         gRapjnbp2vr56EyZgoqIYPJzn1KuxCvM8yZu90+Yh8WT9StF5wrD+SKtObr4z1tFIlzW
         kxT6J2EM9WL1DagvlQOUsJ2Y66G5C6Bdlj5iZ5hxQYybY+hQwJIzziFPHzcvw0u46DQ1
         H8m0xlLgVIhcD2CZ1JIi450u+YzvMZziHsVA0Ew6qajZHoaVsFxCEKefBrcDbTaVEQEH
         Vu7pa5KXbjNC7dGUErzOJtJvdApFZbMj/vrnh0h4fyc95MeTOI4+O+2sug7Gkocyexrz
         CFRw==
X-Forwarded-Encrypted: i=1; AJvYcCUeNBYoUve1HuPNFA7SUsj812qfOpLv4KRe9aPf9OQbICaT+XcVvM7Vg1WISEQQzORjpykD2GgP2upY@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ4tISqU/zlWTcuw9F6M6JSA2ml+AoaN/WOtvMiT/tX7sfICIb
	i8p9qgtpNjvRsHOZYTr9kN3MNYFqwwvO89FjWL3zwKdKfFwin5OTSfEPAcKVMvEIAHey35Gz6SB
	8iPuXri54RKzIeGx2gV7QDuXYqkTNpuGCc9kNcA==
X-Google-Smtp-Source: AGHT+IFe+ta9STpkqwpAT33j7DGORkD4TFwOCBP77UQdvEM+lYJD0OgUJfn7cMV48jXyjJnegQj3vqocsAlLcFZQyuE=
X-Received: by 2002:a05:6a20:d805:b0:1d9:2018:9e24 with SMTP id
 adf61e73a8af0-1d978aead30mr7286554637.10.1729773939355; Thu, 24 Oct 2024
 05:45:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240703122340.26864-1-quic_jinlmao@quicinc.com>
 <CAJ9a7VhwD6kFHPTgrfs+7fNx4nXZPqXTLK0ObmJM3A6mQfmuyQ@mail.gmail.com> <5dcce78a-d7e5-4a61-a165-05b9efe11052@quicinc.com>
In-Reply-To: <5dcce78a-d7e5-4a61-a165-05b9efe11052@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 24 Oct 2024 13:45:27 +0100
Message-ID: <CAJ9a7Vi5q-ren_PSCHLLvD3qd=WMONi2RNuZ6xc9=4Uv+UdQ-g@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] coresight: core: Add device name support
To: Jinlong Mao <quic_jinlmao@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Yuanfang Zhang <quic_yuanfang@quicinc.com>, 
	Tao Zhang <quic_taozha@quicinc.com>, songchai <quic_songchai@quicinc.com>, 
	Jie Gan <quic_jiegan@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hi Jinlong

I was suggesting using the label property - see p44, table 4.3 of the
devicetree specification.

e.g.

node_name@node_address {
        label = "text description of this device instance";
}

Then use the normal of_xxxx functions to extract the string value from "label".

Regards

Mike

On Fri, 18 Oct 2024 at 09:42, Jinlong Mao <quic_jinlmao@quicinc.com> wrote:
>
>
>
> On 2024/7/31 23:15, Mike Leach wrote:
> > Hi,
> >
> > 1) As per Krzysztof comment - use the standard "label" property
> >
> > 2) Do not use the label string as the node name - there is no
> > guarantee of uniqueness which will cause issues. Please add the label
> > as a sysfs file to the standard node.
> > This uses the existing standard names, allowing any scripting based on
> > this to continue to work, and will not cause issues with uniqueness
> >
> > e.g.
> > This will allow :
> >
> > cat cti_cpu0/label
> >
> > to extract the additional hardware context information that you need.
> >
> > Thanks
> >
> > Mike
>
> Hi Mike,
>
> I tried to get the label in the driver code. But I don't find any
> function for it. Do you know the function to get the label of the device
> tree node ?
>
> label: node_name@node_address
>
> Thanks
> Jinlong Mao
>
> >
> >
> > On Wed, 3 Jul 2024 at 13:24, Mao Jinlong <quic_jinlmao@quicinc.com> wrote:
> >>
> >> With current design, the name of the non-cpu bounded coresight
> >> component is the device type with the number. And with 'ls' command
> >> we can get the register address of the component. But from these
> >> information, we can't know what the HW or system the component belongs
> >> to. Add device-name in DT to support it.
> >>
> >> cti_sys0 -> ../../../devices/platform/soc@0/138f0000.cti/cti_sys0
> >> cti_sys1 -> ../../../devices/platform/soc@0/13900000.cti/cti_sys1
> >> tpdm0 -> ../../../devices/platform/soc@0/10b0d000.tpdm/tpdm0
> >> tpdm1 -> ../../../devices/platform/soc@0/10c28000.tpdm/tpdm1
> >> tpdm2 -> ../../../devices/platform/soc@0/10c29000.tpdm/tpdm2
> >>
> >> Change since V3:
> >> 1. Change device-name to arm,cs-dev-name.
> >> 2. Add arm,cs-dev-name to only CTI and sources' dt-binding.
> >>
> >> Change since V2:
> >> 1. Fix the error in coresight core.
> >> drivers/hwtracing/coresight/coresight-core.c:1775:7: error: assigning to 'char *' from 'const char *' discards qualifiers
> >>
> >> 2. Fix the warning when run dtbinding check.
> >> Documentation/devicetree/bindings/arm/arm,coresight-cpu-debug.yaml: device-name: missing type definition
> >>
> >> Change since V1:
> >> 1. Change coresight-name to device name.
> >> 2. Add the device-name in coresight dt bindings.
> >>
> >>
> >> Mao Jinlong (2):
> >>    coresight: core: Add device name support
> >>    dt-bindings: arm: Add device-name in the coresight components
> >>
> >>   .../bindings/arm/arm,coresight-catu.yaml      |  6 +++
> >>   .../bindings/arm/arm,coresight-cpu-debug.yaml |  6 +++
> >>   .../bindings/arm/arm,coresight-cti.yaml       |  6 +++
> >>   .../arm/arm,coresight-dummy-sink.yaml         |  6 +++
> >>   .../arm/arm,coresight-dummy-source.yaml       |  6 +++
> >>   .../arm/arm,coresight-dynamic-funnel.yaml     |  6 +++
> >>   .../arm/arm,coresight-dynamic-replicator.yaml |  6 +++
> >>   .../bindings/arm/arm,coresight-etb10.yaml     |  6 +++
> >>   .../bindings/arm/arm,coresight-etm.yaml       |  6 +++
> >>   .../arm/arm,coresight-static-funnel.yaml      |  6 +++
> >>   .../arm/arm,coresight-static-replicator.yaml  |  6 +++
> >>   .../bindings/arm/arm,coresight-stm.yaml       |  6 +++
> >>   .../bindings/arm/arm,coresight-tmc.yaml       |  6 +++
> >>   .../bindings/arm/arm,coresight-tpiu.yaml      |  6 +++
> >>   .../bindings/arm/qcom,coresight-tpda.yaml     |  6 +++
> >>   .../bindings/arm/qcom,coresight-tpdm.yaml     |  6 +++
> >>   drivers/hwtracing/coresight/coresight-core.c  | 37 ++++++++++---------
> >>   .../hwtracing/coresight/coresight-platform.c  | 31 ++++++++++++++++
> >>   include/linux/coresight.h                     |  3 +-
> >>   19 files changed, 149 insertions(+), 18 deletions(-)
> >>
> >> Mao Jinlong (2):
> >>    dt-bindings: arm: Add device-name in the coresight components
> >>    coresight: core: Add device name support
> >>
> >>   .../bindings/arm/arm,coresight-cti.yaml       |  6 +++
> >>   .../arm/arm,coresight-dummy-source.yaml       |  6 +++
> >>   .../bindings/arm/arm,coresight-stm.yaml       |  6 +++
> >>   .../bindings/arm/qcom,coresight-tpdm.yaml     |  6 +++
> >>   drivers/hwtracing/coresight/coresight-core.c  | 37 ++++++++++---------
> >>   .../hwtracing/coresight/coresight-platform.c  | 30 +++++++++++++++
> >>   include/linux/coresight.h                     |  3 +-
> >>   7 files changed, 76 insertions(+), 18 deletions(-)
> >>
> >> --
> >> 2.41.0
> >>
> >
> >
> > --
> > Mike Leach
> > Principal Engineer, ARM Ltd.
> > Manchester Design Centre. UK
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

