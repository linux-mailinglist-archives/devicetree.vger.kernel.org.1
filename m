Return-Path: <devicetree+bounces-219932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF8EB8F788
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FF2B3A3AB3
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 08:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6B62F39D3;
	Mon, 22 Sep 2025 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="esNX0wzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC4C522F
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758529324; cv=none; b=FU/IAhKH/HuDbRy2VvWCLAbsZ/M6va89Ciki5Re4ihAouIyub0QFkIoEbzU02H77k8rd02FKqQKJKa571TSE3V9NBm+XysqE2Mc7qApEAgeDEfJ4C4OCQ42w6w0qM9V0ZS6G9dR96lc6e8A1628ERjB+kawLz32g9aLEG1pkcdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758529324; c=relaxed/simple;
	bh=hpXjIWjocmQg1IGQK/bNuOPK7P1EOh57IUJcZHoUUYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fm8ER7wjt8w4A+36k7CZr+rBJz/hWy72H5bHcf48+nTbSoCGSKAcnp0pVnM3QF4OWk0TI2p3nMgcfCECvNKablTxCgA23sGgskNSY6QsLeKaf1kM4QQgyZo2HOn16xM3Fdvls/TEkq67CV45ECtv1lh5zxHvX9M4ikj1cmdjnBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=esNX0wzm; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-45f2c9799a3so30199765e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 01:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758529321; x=1759134121; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u8T3m1gUsOj1mNTOZiLoeJIujrUc8nMWQoqIU1R+v3o=;
        b=esNX0wzm8x7d6VvkNGjRNhq72Lzt2Y4kyaWY+qNo2vPbXV8TTlP9HCFc0sR616YBfV
         gHNo55h4TJhVQ/jKnzUHbEsM0Rp/0kTjhTudADv+WizEe+5t/v5W/vj0vB+Aiqm9QO8P
         6ZR3JuJw+8hMXWJwSCNP14oRrbjJhS4PpCQpucs/5957QS8yczN7w+HTjNKG6w//QIZW
         dFIHiqC58y41I2SClfORMqH41jQUGES/8baB1DO4/rwz16e6BPSVBqEwS+RzeSK4r2Ra
         glnilo8ZnIFiat4XB8K0NfKdKX7xsecREk53Mbg9hedyI2VrunMoqoCRsadyitBl8Syk
         WNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758529321; x=1759134121;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8T3m1gUsOj1mNTOZiLoeJIujrUc8nMWQoqIU1R+v3o=;
        b=JbVdSmpqdat+x7G296j+v+h2dahzFPR85+GsIFFaRtFXH2ExI4OopUj9ArjYdy9UFC
         NmZPZtuhk6aLmo0jKOU1B7jiC8aCXxaD3k03xGM1w/KST4vNWfXPYR09BkkFcmLB8ym3
         tCifxxpQfnc/ah8ASSavhPG3wxClKxyaIDF+1E8oxjmYG0D5fYUBFcY5qfD+DG8h8bKL
         iTgF31ABEMbmbw6EYJU1o6gqUJ6kZG4sP2DS5lPx5Hiaim0cbci0WdYMuKOOHitaRW6w
         DjhZ6rE1dA0lJ8N2FZ5AO3IM0Y3YUYnmVaPMkGX0tsPLhW81oNYOiT90zt6Ys6V8tiNJ
         7XQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbETFfp2iKkKrtbkhOK275V8USk4fhhMHc0VBaNAH+ONvxyFba6F5Y6koKoQdGO/obgqi1DtCMyuBT@vger.kernel.org
X-Gm-Message-State: AOJu0YwGdbwF+TsS7kgCdtvVCs0IClHkZScacjkkCIG5deN1m/aa4ZHH
	MJNbXvpxGfy4/ODev2dzM8VSbbUNs+URwT3dYabKzx+0KlghIFNnxUmuPMtDyxFyCrE=
X-Gm-Gg: ASbGncujn76y1JhlmJ34qlJfz6AT6A+AexiCCFEt4IB/dFdlGglh0NLCsdFQBGaUcoS
	CahjZREkLpXotz6kGuLrlB8TzrPfxlRiI1UmG7Q0oaoBCscFUAYTqhMQJwLNwxw5Zoqsfw6EhaN
	SSshkHTwdvIo+CkZKKgkJZnq1GWTHB8k13pQuAhln1lp47iM6RQDGAvJue/p75n6gyxy3a0odGQ
	tiA8tzqtHyIN7CkEv16+wEtKldlGnX3X0eSSvF3tukFxrDZNlOauK/5HPhPaLq8ENBW65xudbuU
	XVdslNT3tZg8mF8lAP2wSUfRcSAX+E4afXyTa2o3/ziki9In3I1BxLTq4PyW/M5bREHyvT0q8vJ
	IuF9ZMlOcEKSP+7gnryAtHNKzsjbn6cak
X-Google-Smtp-Source: AGHT+IFEeWcqrvmBfhuXFUAZYNAGM+LTG1i1l9VAl8hYeXesYUWH+BkcHK0X7YePLj4Vt4ebLu4Crw==
X-Received: by 2002:a05:600c:1f95:b0:461:8b9d:db1d with SMTP id 5b1f17b1804b1-467e75ea470mr111029515e9.7.1758529321120;
        Mon, 22 Sep 2025 01:22:01 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:c61f:42e4:1d2c:1992])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46139122cb5sm228556515e9.8.2025.09.22.01.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 01:22:00 -0700 (PDT)
Date: Mon, 22 Sep 2025 10:21:58 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 12/12] arm64: dts: qcom: Add EL2 overlay for Lemans
Message-ID: <aNEHJv92i8NlaSO3@linaro.org>
References: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
 <20250921-kvm_rproc_pas-v3-12-458f09647920@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921-kvm_rproc_pas-v3-12-458f09647920@oss.qualcomm.com>

On Sun, Sep 21, 2025 at 01:11:10AM +0530, Mukesh Ojha wrote:
> All the Lemans IOT variants boards are using Gunyah hypervisor which
> means that, so far, Linux-based OS could only boot in EL1 on those
> devices.  However, it is possible for us to boot Linux at EL2 on these
> devices [1].
> 
> When running under Gunyah, remote processor firmware IOMMU streams is
> controlled by the Gunyah however when Linux take ownership of it in EL2,
> It need to configure it properly to use remote processor.
> 
> Add a EL2-specific DT overlay and apply it to Lemans IOT variant
> devices to create -el2.dtb for each of them alongside "normal" dtb.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |  7 ++++++-
>  arch/arm64/boot/dts/qcom/lemans-el2.dtso | 28 ++++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 296688f7cb26..e2eb6c4f8e25 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -35,6 +35,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
>  lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx577.dtbo
>  
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera-csi1-imx577.dtb
> +lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
> @@ -136,7 +138,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-vision-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
> -dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> +qcs9100-ride-el2-dtbs := qcs9100-ride.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb qcs9100-ride-el2.dtb
> +qcs9100-ride-r3-el2-dtbs := qcs9100-ride-r3.dtb lemans-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb qcs9100-ride-r3-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/lemans-el2.dtso b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
> new file mode 100644
> index 000000000000..55a2a9e2b10d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/lemans-el2.dtso
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/*
> + * Lemans specific modifications required to boot in EL2.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +/*
> + * When running under Gunyah, remote processor firmware IOMMU streams is
> + * controlled by the Gunyah however when we take ownership of it in EL2,
> + * we need to configure it properly to use remote processor.
> + */
> +&remoteproc_adsp {
> +	iommus = <&apps_smmu 0x3000 0x0>;
> +};
> +
> +&remoteproc_cdsp0 {
> +	iommus = <&apps_smmu 0x21c0 0x0400>;
> +};
> +
> +&remoteproc_cdsp1 {
> +	iommus = <&apps_smmu 0x29c0 0x0400>;
> +};
> 

Would be good to disable &iris here for now similar to
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/commit/?h=for-next&id=c0f045e303e014cec5d883edf82fe5de74769944
(I'm assuming it is broken without specifying the iommus?)

What about GPU? You can load the GPU zap shader in EL2 without further
changes in the drm/msm driver?

What about &remoteproc_gpdsp0 and &remoteproc_gpdsp1?

Please make the changes in a way that they result in a properly
functional boot without errors. Disable functionality that needs
more work before it can be enabled in EL2.

Thanks,
Stephan

