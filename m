Return-Path: <devicetree+bounces-108210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB539920B7
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 21:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551571C20BF2
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898ED18A6C4;
	Sun,  6 Oct 2024 19:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hl20Dg0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADA2154C08
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 19:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728243266; cv=none; b=bYbqkx4YLXNZyaICZhc68fwtIz516xsew/KA9LSJUqW73rGwPqAo568OJDbO5WgoTFzYC6TPOYCH0qyFQ1Eh8GnqyZ0hOURZNHBg9CUwZXRgKw89fCPWUbZTa6nJSS/K23Q89zadFQwVxA8CrY1zaSH366KWgirTJ+BpnEBOn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728243266; c=relaxed/simple;
	bh=yPzaunxJaneO/099P+GEkSWTX5DT9FS9497uaVPrAtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ag6ECPTC5/7lHjdvAALogJqUdLywkoDqOOl7pBHOwN4GPSaFTvn5gDqqo6qQmOvpkV4JcoeuZZjk+SBPabx9OU190IMJbVyh8e/zkPOJWf+y4KchaVWkMRelyAKtiw9S1aNIIc6RpzSAMb64QA0CjVFoMVWlxvTRke1YBG38XY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hl20Dg0P; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5398df2c871so3881832e87.1
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 12:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728243263; x=1728848063; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R8q3dDlB0727MfbgdMqebUn7s4vTdoYhqoyoWQRyPuQ=;
        b=hl20Dg0PCCmnBMmkC+uVKHpGe0VrhmXiIMXJ4pBoYejM+4tDCUzPsPs8uCmF8PR/9+
         Y9TeMWJ4T5JIsiQf+P4gTsv1NfkzgJWL/Jfb4arxf3JkyCrlA3e39qssAB5F+mej/uNj
         ROlNJm/rXp7i/Z+RJkCqpX/BpcDQHFMuyqG4nrKtcjsk5Mr9B4ThvQrLUJwYjYDXu85U
         dGhoawpbiHPK+4M8qDe4sZxH09yJviKE0SFmO/thN0qfXJ3IOZlfSHBWZeGb2ysqBkA6
         UOq2tr8FyFsWAnA5gN39kCVxMSZqVDMx41PMSMIzfkj3Eo56WBCNIfPdEtiYd79iSMNo
         1vCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728243263; x=1728848063;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R8q3dDlB0727MfbgdMqebUn7s4vTdoYhqoyoWQRyPuQ=;
        b=ifMZ7/LDrMliY+a/h/T9AV4Bu7GpuSNglWpuFB9QfEs+YP4YuiKNgAkiyRb+wmbd5Q
         oy7ko4Oi+I4VYqZTMxDE745SDdiblZ4DyIJg6tSWDEmsf15qOmNjKbPIWGWX82Ql+vGf
         xRln/BLJVFRIx+j2S4TUbWevdAOTjsHgBfbk6xGq4fxo+D86X6fp02X4bo3mckxEeVi1
         b+koyKiZ2s54R8OR5DlIgbyVRp7bUdVfi2RRwfPdhx0SrckhjynMsh4fBQuDUw0RMmrN
         p0CAgcgPDb54PtkQ6qyrhhFv4SbEf90qBkH8NHiH8poAke82hRF5DRzm7Y2C/YqKRcz0
         iQPA==
X-Forwarded-Encrypted: i=1; AJvYcCWNaF7ZOZBEVe/7tsZuEvysrXG/eoFwdzNbGjfegXTIZGu+YlgRNSILa9ddJg99bhtgevfesofQTOZ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7zPm12D+zlnF77ZYu648q1TV8JiwZDeR6xrXM6cPQumiDmaK3
	ZM/T0UgLxKxzmhzWv3sD/qW68CfvRgXEdYTHPusAbaxov53ebtjoEijKNe3Nx1U=
X-Google-Smtp-Source: AGHT+IFoPrYElR5M4WSqZpXWHN+3fySqpZ3zqAu1PEK8VTNMZekBd0rQ4ZV63xcbV97yoSotb4lYPA==
X-Received: by 2002:a05:6512:3b21:b0:535:45d2:abf0 with SMTP id 2adb3069b0e04-539ab8adcb6mr4175272e87.39.1728243262892;
        Sun, 06 Oct 2024 12:34:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff2831fsm607332e87.264.2024.10.06.12.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 12:34:21 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:34:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mukesh Ojha <quic_mojha@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] Peripheral Image Loader support for Qualcomm SoCs
Message-ID: <r4zkfioctmlatxkb4lqmfc7vk7cdenenihoicq2k37wvxeihss@gtkzxr26p6ei>
References: <20241004212359.2263502-1-quic_mojha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241004212359.2263502-1-quic_mojha@quicinc.com>

On Sat, Oct 05, 2024 at 02:53:53AM GMT, Mukesh Ojha wrote:
> Qualcomm is looking to enable remote processors on the SA8775p SoC
> running KVM Linux host and is currently trying to figure out an
> upstream-compatible solution for the IOMMU translation scheme problem it
> is facing when SoCs running with KVM. This issue arises due to
> differences in how IOMMU translation is currently handled on SoCs
> running Qualcomm EL2 hypervisor(QHEE) where IOMMU translation for any
> device is completely owned by it and the other issue is that remote
> processors firmware does not contain resource table where these IOMMU
> configuration setting will be present.
> 
> Qualcomm SoCs running with the QHEE(EL2) have been utilizing the
> Peripheral Authentication Service (PAS) from its TrustZone (TZ) firmware
> to securely authenticate and reset via a single SMC call
> _auth_and_reset_.  This call first gets trapped to QHEE, which then
> makes a call to TZ for authentication. Once it is done, the call returns
> to QHEE, which sets up the IOMMU translation scheme for these remote
> processors and later brings them out of reset. The design of the
> Qualcomm EL2 hypervisor dictates that the Linux host OS running at EL1
> is not allowed to set up IOMMU translation for remote processors,
> and only a single stage is being configured for them.
> 
> To make the remote processors’ bring-up (PAS) sequence
> hypervisor-independent, the auth_and_reset SMC call is now entirely
> handled by TZ. However, the problem of IOMMU handling still remains with
> the KVM host, which has no knowledge of the remote processors’ IOMMU
> configuration.
> 
> We have looked up one approach where SoC remoteproc device tree could
> contain resources like iommus for remoteproc carveout and qcom,devmem
> specific binding for device memory needed for remoteproc and these
> properties are optional and will only be overlaid by the firmware if it
> is running with non-QHEE based hypervisor like KVM.

Can you follow the approach that has been implemented for existing
systems (ChromeOS) not using QHEE? See drivers/remoteproc/qcom_q6v5_adsp.c
If this approach can not be used, please describe why.

> 
> - Patch 1/6 adds the iommus and qcom,devmem binding for PAS common yaml.
> - Patch 2/6 and 3/6 add helper function to IOMMU map and unmap carveout
>   and device memory region.
> - Patch 4/6 adds a function to parse individual field of qcom,devmem property.
> - Patch 5/6 add helpers to create/destroy SHM bridge for remoteproc
>   carveout and to get memory from tzmem SHM bridge pool for remoteproc
>   firmware metadata.
> - Patch 6/6 enable all the required support to enable remoteproc for
>   non-QHEE hypervisor based systems like KVM host via parsing the iommus
>   properties and mapping/unmapping carveout and device memory based on
>   it.
> 
> Komal Bajaj (1):
>   remoteproc: qcom: Add iommu map_unmap helper function
> 
> Mukesh Ojha (2):
>   remoteproc: qcom: Add support of SHM bridge to enable memory
>     protection
>   remoteproc: qcom: Enable map/unmap and SHM bridge support
> 
> Shiraz Hashim (3):
>   dt-bindings: remoteproc: qcom,pas-common: Introduce iommus and
>     qcom,devmem property
>   remoteproc: qcom: Add helper function to support IOMMU devmem
>     translation
>   remoteproc: qcom: Add support to parse qcom,devmem property
> 
>  .../bindings/remoteproc/qcom,pas-common.yaml  |  42 +++++
>  .../bindings/remoteproc/qcom,sa8775p-pas.yaml |  20 +++
>  drivers/firmware/qcom/qcom_scm.c              |  29 +++-
>  drivers/firmware/qcom/qcom_tzmem.c            |  14 +-
>  drivers/remoteproc/qcom_common.c              | 148 ++++++++++++++++++
>  drivers/remoteproc/qcom_common.h              |  38 +++++
>  drivers/remoteproc/qcom_q6v5_pas.c            | 140 ++++++++++++++++-
>  include/linux/firmware/qcom/qcom_scm.h        |   1 +
>  include/linux/firmware/qcom/qcom_tzmem.h      |  10 ++
>  9 files changed, 423 insertions(+), 19 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

