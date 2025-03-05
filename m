Return-Path: <devicetree+bounces-154207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 362A4A4F4FF
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 03:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 137D11880223
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09123157A6C;
	Wed,  5 Mar 2025 02:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MIJppOXQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187861553BC
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741143516; cv=none; b=SBDJYwSHVGBW58x/6+SgbgLPsdF8dRxyfjQzasU1MISIVWkLa3bLL8Qlo8Bkxq89PEHmfZVbZCqd+3MQE9hd70IrI0L9oQfnACqxPHj5fJSMFZBhHS4WlnOv3UA9qZh+Jwq7mLfRmDe1tAQiSPBLfgniFLmoSnBTnlEEfaMZ60o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741143516; c=relaxed/simple;
	bh=N+nG/bO8D2vXra3mywxjpAtZicuK8zOlM9XvlDtvrXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E9oHMlqVURrMP4ZVVrkYg1ykynhMlfAv4qFhUEIg1v+Zoq9/gnHw07+9/HMgCtb3erCe12LXJKtTNUiYTxbY6B3nh+5RlpTzhmGIBXvosPjo84wPS4fPomGUitQyCRHnUaUfbEDBJDgU1OBAxbDycNuGwYZlfb3iMKbpXWPprtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MIJppOXQ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-549662705ffso3380834e87.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 18:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741143513; x=1741748313; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lmggHW8O01EPS0gGRQXTUF3PRDZeyIapChas5mXt/4U=;
        b=MIJppOXQYQrWaUjhTMcdq4Jn1ZXME97jwIkOSN46m1VigYBgs4tWXdzmJTE6/1N2Y9
         xTFUHJnTWGPfwteg+WByQZNGgRAsHzQNvs6Mspicx8OR9S2FQ4H0JvZ2BFXpF+YAzldA
         s1sLTMXTAIvN3COu0MndytJc02mDOafBkx7YGTGiwKaYbVvTzOlkZxCjsrmnSApCIDAh
         sBxiSkY/EJsCU1Y+S1HLAPHUsHbHwKF5pilUedFQBY/y7O7cs+u57RCbcnGc53M1VDNL
         3qGgNp4Te79y0a72WFtAtJwU1JwRhSPidmjSvcDA4cxRNkciCDFJmnpBUMWGtfIwPhnM
         xdHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741143513; x=1741748313;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmggHW8O01EPS0gGRQXTUF3PRDZeyIapChas5mXt/4U=;
        b=fHG6NqqY3HUK7XkBduLalW8tQLXPEItB0OdDMyCLTm7k/ws6aJX5nMfwaqeQSNN1o2
         NSQjgPLFK6mI0q0WBXYrs2yTnasEY1TULJz6vmGhw/BzmTlvHhW/sXPLplUOCxGMBN0u
         NRJB2jDadNxAeTjHpdiyAb4L3OJpmx85G5MsjC9LRzk0K7vhxdtkI0uDdqjvmeYGkBc4
         qpS8eDnOGJWBzBp1CLxZITpPCXhhFEwZAJYidIxv8laQJUe3+aPKxpRMGyaYIo8NXLIe
         qvSFlWKJ5ISMawMDtaMoe9zdwhwNAJ9DLOuDFrsM9USLXmQn3OsH+241ndQtnMwyKlLP
         yc5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWe032z1C1VIEW4Srd6HkWSzuxgLfGLQv4Q4CbK50POkgvvW29j4b4fXjanTWYDqPiFQtDjVH7ukvSx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu4IJxIS3TvMyFKmhl/xfWIuq4fdcAHVPtqBIRR/tkufyMjhsh
	CvFVG4Kb3k4UhGzkKCYzucoGHm26o1GMni/avHY2AXFxXmh2qg9o9bkDUxOVb04=
X-Gm-Gg: ASbGnctNBJBv3Cx7n5GF9jreng+iD8oY2IWxJ68gp1wpMGwPj0Jt8GzUvO6L+0+NvqI
	0wiHyXICzJE6yrAtXigcbkkW7lQSG8AA43Dns1BtrKLjqnIG6tGEXm/nhYuawZSjUCiuVVHpLp3
	XgfJkwinDULcYRxskct66SZByBLwRXD1gODqhryP2OseK55zH3SOVrt2x2hqpTIG39vzqSfuY3I
	PpkWN0/nle7VOaw+RKLe3S/kedcPO2h13Z1rKag0F8HB6H5ZGFsPT00QDOOoyE/utIAxedHYfsa
	a+Kurg+tV/1s5G2sOktbg0JQdYa2TnrscVyTj8Xco4omRVmG3pIDRPwldcZCNOzRV8U42OO0ZXz
	D1V62dEqXxMpKEoc42XeuJi12
X-Google-Smtp-Source: AGHT+IHEi7gu0pTeyCm6UNSNFzowmosNeq+ixhhTaaSaHiD2yIEwbXWQsqiTh1JFRh+rHJ1Tvh3IUw==
X-Received: by 2002:a05:6512:1156:b0:545:2544:6ae2 with SMTP id 2adb3069b0e04-5497d33624dmr555644e87.16.1741143512917;
        Tue, 04 Mar 2025 18:58:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549579424e4sm1320182e87.118.2025.03.04.18.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:58:31 -0800 (PST)
Date: Wed, 5 Mar 2025 04:58:29 +0200
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
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 MTP and QRD platforms
Message-ID: <6msx5eontkkunldl45npigj756b5sst7xjhmomlnummbsmncif@ca3hkdvtdo44>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-8-a698a2e68e06@quicinc.com>

On Tue, Mar 04, 2025 at 01:56:41PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants.  The current definition
> will start the USB controller in peripheral mode by default until
> dependencies are added, such as USB role detection.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 24 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 24 ++++++++++++++++++++++++

Nit: two separate commits please.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>  2 files changed, 48 insertions(+)
> 

-- 
With best wishes
Dmitry

