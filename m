Return-Path: <devicetree+bounces-97798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78418963A19
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 07:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB8FD1C2218A
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 05:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C70614A619;
	Thu, 29 Aug 2024 05:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OdAvFojR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C273C15B995
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 05:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724910976; cv=none; b=B3Vd4IVT85wp0s4nKvCcl/z1qbU46EGqOQqXeFAqXrb4Zy4zjIgwSDs40xBsQFDgo/SRENNSkHUsXYFydTTnq29Jv3r4oSwKG0R6cwPb+ImHkCiBQ2tKzpn5emXyhAy0HttIXpoiE/fRSXpeZn0YFUH/RtkpAkkvHWI8pGKwbIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724910976; c=relaxed/simple;
	bh=DkM87PgupUqOVr1MKYRG5uAeLJQosGBM/rYSsJnV5Dg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=doZhsFHgDPNFRziKB+M7bAf4Z3SY/AfHevCanJ19MNJZ/v9T9D8gFHFE1fq/8K6kkt9Bjn+vPHcha2svWh/xKJeGtUYGkfS2ww25lHNJAQE53q5QfS++SlqaNP+ICg6FVhMX4GRG5g4fqv4yrT0DbZrlRSqWpdJfISqVgUqZyL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OdAvFojR; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f4f24263acso3585851fa.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 22:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724910973; x=1725515773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=REb9QwYqCwNcM0/u5f0z7eG80lM1IACg6W8vp2NUNSM=;
        b=OdAvFojR4Yxa1Vht9wVS2WOdvLewT5qBQLZdMapdSRSnZ/6eQ4fuEtNpyhTfHA7LXZ
         jmQktL8k8v0F1CTwkZR2MTvtcbUiyRdimo0XSUvHgLO0WZAWsNlIPtQatqOnI+E3UfSt
         k41aN0MxP5TbUYELdQfj/lA9Wjuq+q4jVcIF+3DEw2hbEeww/sESoUCtf5d9/OcmoHEN
         J+0zwdjVXUtBQ2nA0aFLJOD0XzAPCA+j2X17FTwVAwTKdr+bcASF7MYW452fsFQ9DTjS
         bmh9x2eEXZrB2rhB4T1nwdMlRQCowH/+Hj5bc1VtOAL+8YBJnntMa1sktBx9kUYaxevP
         Hq3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724910973; x=1725515773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REb9QwYqCwNcM0/u5f0z7eG80lM1IACg6W8vp2NUNSM=;
        b=u+QWU/kaQHCYI70Fp4PX5mPeEyTbKwRnJIhEr1MN5svSLkd4lY6yewAAZ+65Y4RwPv
         OHcisvqC3T8oIfA/xJqFH2RLNffJ5PizROsKAsld3EeaCukRThgvPGk/2oVMpvRAi/1o
         RicP5hbVWROQMcY6ujDP5WxBqpRoprr4CZvOyjXl6nI4vY+gnIOnfHhN8RUEV5ed5tdn
         dHO8P8Hb+wJ/Zp0fA2OyBeCY2bdf0uVRd1bUjND9gN9a+o7p0XPluRttcdIAvtXuTaDV
         qVWOdSDYMEOLvuJWO8JiYIANyx29vaq9K8dIcYwFqS1Ob0PMb+v36eB8nxyxhU24tAgL
         Gi6A==
X-Forwarded-Encrypted: i=1; AJvYcCW2mPM7sSQd1f2KvxBAXYwu4Qs7WsWab1Sszi8XWCpepR5ovmpKxeXmEWw8CUZ1COINgQ82G1KaTalj@vger.kernel.org
X-Gm-Message-State: AOJu0YxVKq7/BTzqaAPCqtUlqWTGcnbQJVNSYPfmcQo7GqI7R76v3S5T
	9V+Ye1o++9MXXprqw+rW4elz1iLFmTsOf75JBu0LzMF7qV6rBaltwGzNFdKiqhw=
X-Google-Smtp-Source: AGHT+IF/7IaW8TH3k5xG0pABz3d3jlS9jSXgHIfutb16x9nJiddV9N2toKH+9UXsTyU+Op4Srk6DGg==
X-Received: by 2002:a2e:a987:0:b0:2ef:226e:e150 with SMTP id 38308e7fff4ca-2f6108930d5mr16453911fa.32.1724910972049;
        Wed, 28 Aug 2024 22:56:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f6151828b2sm835111fa.108.2024.08.28.22.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 22:56:11 -0700 (PDT)
Date: Thu, 29 Aug 2024 08:56:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
Message-ID: <f3g2tvddqyt5vjt6x7h6oirtm2ighnesu2pmtn2br6jpbxf5zr@tprelogpljuh>
References: <20240821101025.858961-1-amadeus@jmu.edu.cn>
 <20240821101025.858961-2-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240821101025.858961-2-amadeus@jmu.edu.cn>

On Wed, Aug 21, 2024 at 06:10:22PM GMT, Chukun Pan wrote:
> Some IPQ6000 SoCs (fused)[1] have CPU frequencies up to 1.2GHz,
> so add this frequency.

opp-supported-hw is selected for all IPQ6000. Please add more details
here. Is 1.2 GHz really to be enabled for all IPQ6000?

> 
> [1] Usually the SBL version is BOOT.XF.0.3-00086-IPQ60xxLZB-1
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 8edd535a188f..1b584d9aadd1 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -119,6 +119,13 @@ opp-1056000000 {
>  			clock-latency-ns = <200000>;
>  		};
>  
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <850000>;
> +			opp-supported-hw = <0x4>;
> +			clock-latency-ns = <200000>;
> +		};
> +
>  		opp-1320000000 {
>  			opp-hz = /bits/ 64 <1320000000>;
>  			opp-microvolt = <862500>;
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

