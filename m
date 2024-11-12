Return-Path: <devicetree+bounces-121150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 863109C5967
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 14:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 469A92834FA
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 13:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20C415A858;
	Tue, 12 Nov 2024 13:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yQZxhrup"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A8415688C
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 13:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731419058; cv=none; b=HVjDaJVViaktnjGPwoGO7H5NzERa7RV+8i90ZyCwVoKoHjjl8ztsI1E4vY6FFCGckGJeimrqTtGyNxtAJP5mtjZHhGSt0AXeegrMwgcGsDeAZNbQEytVLnHRRCUURFqK61+8a2UQldjkUOR8HH/G0VWZyUjNHmkl1uoPIrBi7xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731419058; c=relaxed/simple;
	bh=QzGHxcfoOYe3xDN7+yhw9DxRuWlEvc/M4ObJ0BC2+E4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dM4jQBw1DUFRZ4NFexFMxrUNSL/Pbj/EKEz6WlieWDu2HelDkYxGkndxQChaleEDWYqaFqUA6og6m6JU5r5B2YoKZKmvrcGab4jz1x5UJEysFFv/YdQdx9Ynx5EfYmQ0cc73Kle/460EGetnfsxzk5sy7r2DpQouT5+Y2aFdzkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yQZxhrup; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53a007743e7so6618657e87.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 05:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731419055; x=1732023855; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iDZVjDz8WaHN7Uzdxa3K3Hi8mi6UCuBy7yMBk40iTWc=;
        b=yQZxhrupCKwqVHrJ5yLk7Hnpl/hBVX1XuWMc3u5hZadPsWwccVgDATeRNmBAvUjJ05
         8ztceHhmFLiPlAlR0FOPnY3B1n1PgJBMlZ/7CskrNFXvzTH1nwFN4lHkkML//hVWCEd/
         W9nUj0EHZrC6PUSTVN+ppfQRxXa7mTIdbw3AAk8F6RMMxfHqAFfgYjafkl2lAXyjJtu1
         RIaGc5eyB0hR1MuMfeHU7gt5tPCbnLK9LM3hN+CKlUOKEPoBW2hglSVwtJGfdFL6sXpg
         E9IIKdkbNRq4ovsy8GKpLNHdR2AV5t4EycLwliojOzgo30hmDiWUJpu8CRSGBEYWDMK2
         Jbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731419055; x=1732023855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDZVjDz8WaHN7Uzdxa3K3Hi8mi6UCuBy7yMBk40iTWc=;
        b=Vhs3DqVIJKLec5Sv+Ygl7CsMe1WD3JNbFUmyhviRkbN8tdSbHdfmIaXbGHO9MKWdg5
         VPWclVnp0aGyTbCLPXb8aapSySKtaXLjTnkZputHgIdv3Mxuc8wIfvpMBf65kgQxlvcG
         PMyPqNter750RTHJE+OgTSJlu1g+lOxxQVjr4nwI52+r3NeeQb5zVb86LJsjiWwiS4P8
         8p0MiteiF0rbcznlHlQEjBDuW8AXddhPHbuE4IQ49OvP3LvKJisXUsHIxkWkggSWdLAB
         STuB4zKHYDYJx+5VHTpV/mWdumurWC+1kKZ1MKamdfAcHo9OKn4NOZ1V3zCKxXW+qDpc
         rgGw==
X-Forwarded-Encrypted: i=1; AJvYcCXS3I3XrIOR7bJ+0wjTup3ufyOunjWTFEnEBX426FysCozSo4sCLAI6vW3847Zzrj0Rvb/7MCnzPHJr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw889MdmTLPFI2c1QSIdrp/HO3JOqGSZI4NPf8MKkKoEGjO2OOx
	O9DeU5ToQ+HKOhvikUIF29SGPmmxcDM5IfSb+Id0awefBJsGABQ20YrpaaglIac=
X-Google-Smtp-Source: AGHT+IF4DigzAsf4mgiTBlNcElKCvgjRc9RJrMYFwqjztVN7WEdLH0Y1ZR0nSSYwsHZKJQCBBLdvJw==
X-Received: by 2002:a05:6512:3b9b:b0:539:fbd4:9c9a with SMTP id 2adb3069b0e04-53d8626c823mr8459877e87.35.1731419055072;
        Tue, 12 Nov 2024 05:44:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d8267859csm1886887e87.45.2024.11.12.05.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 05:44:13 -0800 (PST)
Date: Tue, 12 Nov 2024 15:44:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	quic_rohiagar@quicinc.com, johan+linaro@kernel.org, quic_kriskura@quicinc.com, 
	abel.vesa@linaro.org, quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 2/6] phy: qcom-qusb2: add QUSB2 support for IPQ5424
Message-ID: <m2w5772mjsjaolawrfuhkmiq6iaagu746tqv5qtbrllvqpf75t@cykasimx4lff>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-3-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112091355.2028018-3-quic_varada@quicinc.com>

On Tue, Nov 12, 2024 at 02:43:51PM +0530, Varadarajan Narayanan wrote:
> Add the phy init sequence for the Super Speed ports found
> on IPQ5424.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index c52655a383ce..4513f0c81c50 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -151,6 +151,21 @@ static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
>  	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),
>  };
>  
> +static const struct qusb2_phy_init_tbl ipq5424_init_tbl[] = {
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL, 0x14),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0x00),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xC3),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE5, 0x00),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
> +	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TEST, 0x80),
> +	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9F),

Lowercase hex numbers please. LGTM otherwise.

> +};
> +
>  static const unsigned int ipq6018_regs_layout[] = {
>  	[QUSB2PHY_PLL_STATUS]              = 0x38,
>  	[QUSB2PHY_PORT_TUNE1]              = 0x80,
> @@ -331,6 +346,16 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
>  	.autoresume_en   = BIT(0),
>  };
>  
> +static const struct qusb2_phy_cfg ipq5424_phy_cfg = {
> +	.tbl            = ipq5424_init_tbl,
> +	.tbl_num        = ARRAY_SIZE(ipq5424_init_tbl),
> +	.regs           = ipq6018_regs_layout,
> +
> +	.disable_ctrl   = POWER_DOWN,
> +	.mask_core_ready = PLL_LOCKED,
> +	.autoresume_en   = BIT(0),
> +};
> +
>  static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
>  	.tbl		= qusb2_v2_init_tbl,
>  	.tbl_num	= ARRAY_SIZE(qusb2_v2_init_tbl),
> @@ -905,6 +930,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
>  
>  static const struct of_device_id qusb2_phy_of_match_table[] = {
>  	{
> +		.compatible	= "qcom,ipq5424-qusb2-phy",
> +		.data		= &ipq5424_phy_cfg,
> +	}, {
>  		.compatible	= "qcom,ipq6018-qusb2-phy",
>  		.data		= &ipq6018_phy_cfg,
>  	}, {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

