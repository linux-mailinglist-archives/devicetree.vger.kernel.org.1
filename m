Return-Path: <devicetree+bounces-154203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B77A4F4DB
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 03:45:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B956F188F814
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CAF70810;
	Wed,  5 Mar 2025 02:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X1S7pBLo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB046ADD
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741142750; cv=none; b=VkQzv+OYLNsuKrIGdDa6BMAeW2brEAUV3f1OfGI9rjkioHh86BHsSXK61A2eFiNtVzuzsbOCXDkyYuGXDhGLJJUftJa3uezlHZkhy7hMBzFUZ9KaZ65nE2F3rG2305Ox3b2phgFIBFyV8XlSB9h0RuaLNMPiv0VtgNZld0T0njw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741142750; c=relaxed/simple;
	bh=bxPOt3iOvm+8dVMBnFydRKzxiZIpympehaLaGAcgz1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c9aMNbmYPuoIuQmlarwZskXjTpDvfZuVVdR0HyqAzo+LFuZv91pws66jxV/o2rqlzmm4+Nw8HXeg7ZWxsFeN321uUtey5alTNk2YB8/iK5IsbtRGYXHyixoYihmxdQyT9s5o97V7WzKT1fuBSXwxqGy6RVk9dlhfYHtp0febOWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X1S7pBLo; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so6964215e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 18:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741142746; x=1741747546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rnCIdQjyvJoIw+09MQfZJbNjZFzCmtvJnm0G8vRNJh0=;
        b=X1S7pBLowpmNks6vOvQrzCO+mk16mKpIWw68Zagno5iXhR+RtaNHKpCWrEc/9C1ssR
         vIf9h3o3AVCZ9SWzYSBMzRd8qjPkM1+ngXDCVGrIjXrdPjmvQhB85ZLOlCPW+czPCjg6
         KvybFsswS2kh3TvcEy4BRDg+VKWmsZHA4dxfiWin3H/GIZoS/g9A9uMFBK1xbfzey0rE
         cTAZm7qXzmvjIhBYO86dhEit1suBcKG4A61Cc+nb/mVsjUf202RSg6J86oFeUaMnOKqj
         vD3x0+4f0s81tRSorrfEAL9j29qb2pBba/Eib6L76uN8t4cFdEbWs7Nivpe1DrZbqRsh
         5Gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741142746; x=1741747546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnCIdQjyvJoIw+09MQfZJbNjZFzCmtvJnm0G8vRNJh0=;
        b=keQQ0ukbDUdElKCwWa+els+l8Re0LHWdFDOANiAuONNv/oY0tQTX+A8N3CgMw25Yos
         R48HdryC2o2M45NFi3tFAFzBwd2CzTdkGttpLovorYy+vMaUfxj5AL69uXZ7SbtnfYsK
         QWWlPj1JSBJkhGkT2P5ugWHepHcgDKzqA8F8atVvLGO5mUlCucMyIAJCPYZsO0pbbb3J
         bVcgURHvv69nyeBKPUnPV3oikYTcbRJg4FzkYgF3qLMnaPvGiWZtz6cTA1IWiEFBuBo8
         U8peMnkzX+2GOo+BhB5kny2iWe67JntphngVma9+WwNDqK0eHWPrWhShk6d/J92wUMEg
         oFOA==
X-Forwarded-Encrypted: i=1; AJvYcCXfZHw8dGp77g8XXAJbKS0YUkNuNlK393Iacz8igb3TRdGLj6oCysgwrondGjlaTivq8ScR4vNHzlvA@vger.kernel.org
X-Gm-Message-State: AOJu0YwYjS8+1a+BMOgTOf6XL1XJCLLwZT7PaEBcReTPnU/+ZJ6BKvZS
	ByAfk65FcXzmRgqrKwNyVki62JuDpTIFaxMLvjzTl9ltsBQLQxifveIkAk6gnQ0=
X-Gm-Gg: ASbGncunQvNcoCnJ2pYhu1fNMf2o04eAhiCqnjZPDVHnWKBx7rkJMp4lQ9FbLaATlkY
	alprhFUrUyTxQomx6R4mu8/vqmToL6LKpMNRhPDMT5tHMh1zc32W5H0t37CIFydIby1X773m4Xo
	Iu1EK77PnK8taN0rEPNfhKs3FKF3DCSgRXDmFAEK6n+3IU1oeIDXz5+Lg2glRf7iKlqavzw8bg4
	DmywydwQtX+9yrtb7bWUInp3xF/HPUxkG1JvWSFZ2pM3Et8dRKZDGaswclsqwjfv6OGLlZDz/sA
	RoNeFIS13fcnMJj9MZXQOoq3nawkNUl1YE6utx2FVBO7B4XocbPbNEd5TfeSCalOMVwbznpFFR5
	xG1JJVCiCRnxSQ9eUiXLoejjT
X-Google-Smtp-Source: AGHT+IENQirHPPtkH1C08buo5FlxHD+bBXarik3t8IBthupg5sNtQI8Z2GSZNo/BlNfNZfWRiNGXiA==
X-Received: by 2002:a19:5e5e:0:b0:549:735f:f0f6 with SMTP id 2adb3069b0e04-5497d38ecfcmr346846e87.50.1741142746049;
        Tue, 04 Mar 2025 18:45:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54959d33af7sm1173076e87.215.2025.03.04.18.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:45:44 -0800 (PST)
Date: Wed, 5 Mar 2025 04:45:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 6/9] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <dfpqg6u7kdvurgajufaldvpdxhe2pawmgum6ngtbbstdxrngwx@i2masto6nnwk>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-6-a698a2e68e06@quicinc.com>

On Tue, Mar 04, 2025 at 01:56:39PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 296 ++++++++++++++++++++++++++++++
>  3 files changed, 307 insertions(+)
> 

[...]

> +
> +static int msm_m31_eusb2_write_readback(void __iomem *base, u32 offset,

m31eusb2_phy_write_readback()

> +					const u32 mask, u32 val)
> +{
> +	u32 write_val;
> +	u32 tmp;
> +

[..]

> +
> +static const struct phy_ops m31eusb2_phy_gen_ops = {
> +	.init	= m31eusb2_phy_init,
> +	.exit	= m31eusb2_phy_exit,
> +	.owner		= THIS_MODULE,

Strange alignment

> +};
> +

[...]

> +
> +	phy->phy = devm_phy_create(dev, NULL, &m31eusb2_phy_gen_ops);
> +	if (IS_ERR(phy->phy))
> +		return dev_err_probe(dev, PTR_ERR(phy->phy),
> +				     "failed to create phy\n");
> +
> +	for (i = 0; i < M31_EUSB_NUM_VREGS; i++)
> +		phy->vregs[i].supply = m31_eusb_phy_vreg_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, M31_EUSB_NUM_VREGS, phy->vregs);

devm_regulator_bulk_get_const()

> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				"failed to get regulator supplies\n");
> +
> +

[..]

> +MODULE_DESCRIPTION("eUSB2 Qualcomm M31 HSPHY driver");
> +MODULE_LICENSE("GPL");

MODULE_AUTHOR()?

> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

