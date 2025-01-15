Return-Path: <devicetree+bounces-138766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6710BA1222E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 12:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D34487A00A9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525521E98F0;
	Wed, 15 Jan 2025 11:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tvx5DCax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE8B1E9912
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736939555; cv=none; b=fyuBI6FFPhEbBvKC2adKIKCq6s6RdtiDBMQzngvEF3j+ZBKDyBnQ2zZQLw4Rs3D2pR4RN6klAxQs/UzllAednf7KlgfkO323iNRGv66TFlb1bzWRAN4juTWpPivfbh9EbWFNTJLebBlLvfbW2jpAg+P9J/r3OK1QusS/XTrRc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736939555; c=relaxed/simple;
	bh=vhImzVV58kYyHYIUkFdZkPsDkULuYsk1Gi6Hl4W7mpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gQxbANVzOlIjmt15VCW7BbmlUzskOW3PAH2pfi/S90JJHCI7UTsWlscBe90OJ+gosk7PPOYXxtIoNFbhLutmEcCL/34lhpkugszxA3ThkVqhtwRhzl93a3JrGYCmrJxn/XyarPfdNOpZbAmx62bSWPgujml7rYf4G2n93uxGu6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tvx5DCax; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53e3778bffdso6869079e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 03:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736939551; x=1737544351; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+tHz1lZDZJu/vrJ3APOR11aoNkytAh6ESFiCZtI/0bQ=;
        b=Tvx5DCaxi9sFYB99VvHE/gSoUoPfRuQQcNWKpka3gX0ljdDTA3c3sIIOwqrwgl9g7E
         9lXWVVz9fVVae50zqz2xaMCb18CgQcg2KFXqjf/HunhVTNcIZW58VJAWA1nmVL880G0S
         9uxNdVZ6jgd1Mmj8kICk9omNd5XWbuJyWxigM7xjdUMSeZM+qibTLz6pnn4lnlV75MKd
         RLM0v829N/RL1RcVHDqEeU0W5uIuF6N2cA/gawQQKAgDqB9mY0GG0aqygPStpLuVb/Hc
         oCpPQRwH060I4fMQpEtHvNIsiJYqcg5i+M1S8KZsVEaZZ/s8ueF6ZZBZ+jna/aPyY4ZF
         RRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736939551; x=1737544351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tHz1lZDZJu/vrJ3APOR11aoNkytAh6ESFiCZtI/0bQ=;
        b=D1Y/vTgm3e0fy3/LYBfOFSIKX7w+pJDd5T/3a76Ss54NC2hwZovLBA0zyxj997MCfT
         DbrV9vcs9yr07YrWxlB8RvWRVqsyQBsMATlEXJgtf7LQyi28i4MrdOyuChflJvsbxwpC
         fBHf2g1jkK+zTAtNu2jPMJX86FUoOmH04OFwaY9t7WKn1TMApo+wcTU45t9yy5JDTYzU
         IDO1JkS2YpgSvNSJ5rKotZjhg2klBmCnIpLWYbUaFLWm2Bdb4f1NfFpfUVfznljYyoCy
         A5sjJHMlgr+KDObDbSPvs9Q2WbubMn+pUAxb1tOo9nWAlS/Gj4UuhQdcR9tkDPxm5z89
         rYtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/YW+ONnJDarkaVsPEIuQBOTnFk5E9t/adH8zEyVOM+KVxWrQT4pqTB0TltpyYnSFq3PIEUxymt8N6@vger.kernel.org
X-Gm-Message-State: AOJu0YzfFNF/2ZCT40UUtMBLEzeoX1fY0AOARiJ61DqOi9gBTRLWbAun
	pS0uWj5e6YL09/5QMEDq91DpN6EAqFw/dtDPC1iIILa7jOWEOsHj64aPW1Lw6oE=
X-Gm-Gg: ASbGncuYiOuCA8e+N0NOH9XhAV8RRxigK48fx/Htbi8OMDvrzh0vzi6TT1kWEUmbv3C
	3x28AGB+k6gVLHS+ahQlTIHdigWQXNOQqzmckBLZ0UedhWtiaaxT3Lke7Do/A+UvL+3qgY21WHE
	QYjpOBqBbJp7hxUBu5AjSyEkngETdoJe/P7CGDRQr3mI5s4u1u6jbM6ddedZkS/MfYBmkMtaGcw
	Zv9oJHo5Lpfe7SbZqPPiFsJPvBCVH2FLfkNEsG/Ivsu3Ex9GR5UfLvpsvWtOoIypKY72Zhyh5wx
	qhBvIoyvbhNE5yEIFWTG8nuZvs+5phiuO1i9
X-Google-Smtp-Source: AGHT+IGPnv+1mKebX/XJMc+HfyjNtFhAovM40dVLzkyMzoPPf30juxdLxbc2XPEGSlUqvqfQMtNdig==
X-Received: by 2002:a05:6512:1281:b0:540:5b5c:c18d with SMTP id 2adb3069b0e04-542844f6d6emr8173447e87.7.1736939551222;
        Wed, 15 Jan 2025 03:12:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6691sm1995380e87.132.2025.01.15.03.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 03:12:29 -0800 (PST)
Date: Wed, 15 Jan 2025 13:12:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: enable fast mode for i2c3
Message-ID: <qq47sv4wylmwtsx6r46lmyxypv7t2q5jx7wcahv2tzwu4wkd7n@qg76zy26ruco>
References: <20250115110142.3501140-1-quic_mmanikan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250115110142.3501140-1-quic_mmanikan@quicinc.com>

On Wed, Jan 15, 2025 at 04:31:42PM +0530, Manikanta Mylavarapu wrote:
> Configure the blsp1 i2c3 bus to operate at 400 kHz
> for fast mode.

This is usually a board property rather than an SoC one.

> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 942290028972..b35df590a794 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -621,6 +621,7 @@ blsp1_i2c3: i2c@78b8000 {
>  			clocks = <&gcc GCC_BLSP1_QUP4_I2C_APPS_CLK>,
>  				 <&gcc GCC_BLSP1_AHB_CLK>;
>  			clock-names = "core", "iface";
> +			clock-frequency = <400000>;
>  			assigned-clocks = <&gcc GCC_BLSP1_QUP4_I2C_APPS_CLK>;
>  			assigned-clock-rates = <50000000>;
>  			dmas = <&blsp_dma 18>, <&blsp_dma 19>;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

