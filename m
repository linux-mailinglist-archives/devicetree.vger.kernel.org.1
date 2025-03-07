Return-Path: <devicetree+bounces-155248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A06ABA5604D
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B10CF1891661
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75461991BB;
	Fri,  7 Mar 2025 05:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dhGbGqC3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4E5198E84
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326528; cv=none; b=kO9sSzuo+0ZkqoEj6PAFCODKBEBixNq1O5D6+Alh01xLrUUQ7lZKRbeDeKFzrjOmbKS3LQjPmYlhh2mJCM6nZ6bN6UzRZR8a/M2pW02ZlyOYtnOwijLRvHvNLRNBvxVytmTO2D7SdXNN+43O6AAuzQlLXfT+QA5e6n+Mzmm87tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326528; c=relaxed/simple;
	bh=cUQog4O11KaHxKElLDtsQfwV4T6XOOi7M0oP18SotLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FTqYuJtcT0JbvUD/hOhez+IFKOllGUxRtkQyGSmoKaKOxJHoWW7KIyKHkDbnUrLPwxONSRxZAX9QP4Iv7SWzv3xDOTF+kEP87VQHopmS00GBaClzJWr/0awa9gau7v+EN6NPmhct+VSYiRVh/cy1os5zi2IK21Upi3rYW3WfIdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dhGbGqC3; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5498c742661so1532367e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326525; x=1741931325; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6ZbBg036E5VQfq22pHnXrnX07SBhbwakhgnYEPNM1oo=;
        b=dhGbGqC3iKQ/vx7ENfbsVeGSIN1F3eTZttC+LgC6iEuKgIUeGX9rkG8h/IcSqz6jCS
         CepFOGrF929GSVS1XEMhXbVmzPf3mb0bZSSb4/KJRlmH4vXZvDn9sCQO80QFDdesYhgb
         RXPUZq01AbONbL5mocLwI7a8jv94qXrxMGPbSPdBebSegL/GoC7giYbNj+6rU08NYmiC
         PSiTv3RT6xSi3LZVR/7pgdPp5su2ekVhzzp9ekuWYCCM1hEHPQafMIURr02iCfoMR4L0
         Y5t08XACInPnBuifKvAbCsfGEP6AzSJ90mvIcHQXr8hawQx8/MGNsDDaOuT3pB7ZngxW
         QmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326525; x=1741931325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZbBg036E5VQfq22pHnXrnX07SBhbwakhgnYEPNM1oo=;
        b=tSyELDaJ1MnQzK3UVIDPPVQM+ee/cL7fstxlFD0oLrLKvQ2+K0jF0rKJX6ACUOD8P+
         xu58y6+1yY8AlKkS2m9QgeWjQ6obe+U2FuOs1XnAEj0kjji0ZY1hCrf39Ldykejeaq2i
         wgNL57gxx3F3diA1QfuLQwqy5AKa030q40LBM1W7gi6tWOTl6CFnrIFsgEaZ419R5ZJh
         2oEv9zTCI9RnRbu2DhH7CuvKiinMrwcHcA0oFa2o3wUPGEdMTNKg9BH/NOzUWdsgZeEt
         1MqXsCK3mfQuffkex+truKXSXkt+MRUMjhjgT2I/8IqqyVJZDZE2PlaO48drjg6+2Lei
         6Y4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUY7tiZoBILowNGEOXqSyLCmlAHmYKrhZYJaF+ieH1zn+lK2NWD987W9bVOFSldoovFkZnZZm61VoCs@vger.kernel.org
X-Gm-Message-State: AOJu0YzqM5luypIhaw/8+uU79RBm+Z/4KSrSfBUcjUsvWW+xF6WQKFGk
	iQyhChS0w9KkoOE39iI2dOqwZDapd1i2XvRx3ONVmqdXtlRsdifrgOjFPHGgV4Y=
X-Gm-Gg: ASbGnculU9KhAAwLmUWI6gbaXZjK1DGOrHFnyKKMeXQkQPpFMdqjJwmJrxyiYRq1Cmp
	h5eIoTL6DkcH4kzGSbxBkSvCLugrki68VnlRpUmRZxNPo0J/mAzNVZjlYAV9d+TmB4gcdeGnW8g
	hXHuX1+oEGnmJFJ9h2YAZC/QKGPNKQ+pB6c5FXBPGwTO1Dd4rpikmx5CAF//R1D7QcGHWpbb6G5
	8z+1YyOtmC/r/CTt42nCszWjbFswiMt1iYOEYJGiX4T0x2RxXEMfdwO6Jrj6FHLLU0FBuIPjvDp
	taKxm/zy4b+MN0VP7UDeHuXOYgyDBA1fNxYJrNwNrF/FTUdKEGWPa7TcsygxnaLoxYgK03tpc2P
	C+5T/ZOmRJQVs/LRa9ynPGEQY
X-Google-Smtp-Source: AGHT+IHcVDS5X+VsoNTfLbd5EGvMqQkC6bXB00OiXoktlobfZRVvgZG5xWYx/7vdkvXRicvu3Fer6Q==
X-Received: by 2002:a05:6512:12c3:b0:545:17d:f96b with SMTP id 2adb3069b0e04-54990e5d38amr514102e87.14.1741326525147;
        Thu, 06 Mar 2025 21:48:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ff85e23sm181305e87.225.2025.03.06.21.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:48:43 -0800 (PST)
Date: Fri, 7 Mar 2025 07:48:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 07/11] arm64: dts: qcom: qcs615: Rename AOSS_QMP to
 power-management
Message-ID: <f5xqdwj7v4zpwlpkshfnofth6u5pyu4tkzlmr23laspv7q3wmx@ebsugcqok66a>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-7-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-7-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:19PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The node is currently named power-controller, which requires the device
> underneath is a power domain provider. Rename it to align with other
> SoCs and resolve this sort of warnings:
> 
> power-controller@c300000: '#power-domain-cells' is a required property
> 
> Fixes: 0775021783b5 ("arm64: dts: qcom: qcs615: add AOSS_QMP node")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

