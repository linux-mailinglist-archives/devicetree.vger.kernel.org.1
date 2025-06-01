Return-Path: <devicetree+bounces-182052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EEEAC9EFD
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 17:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16B6E3B6F8A
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 15:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004201E0DB0;
	Sun,  1 Jun 2025 15:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AeS/IFUm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631341E1E0C
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 15:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748791430; cv=none; b=XW4IeG6F9h43kuUtCQETdvdncryy0SZ1mFpl9pFl0CGqS0Ox0XLRNjmJ81YhD2ZL6MEdbljKfzBdO1HlqSCBES4151ssCcPbpDjxVttLEvYDnBcHX0XRlB0BoPD97HcE6zioAezKroLAHRwhrUzGNmr889fK41UtMkEqHnlwCsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748791430; c=relaxed/simple;
	bh=awDyxNK92htKl6XKtbeqgZ2v4gNXbHrZXkiiIbRovzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RvXi0TJY1PKx3uLd382mTHaAviVXwhvg8+cGLAc4WyOyMsIiqdj4Qkd20/gIcUyeRqdrAwx3MYMoRVimFtW0+FMaWrqY+zGM+XwAJJ8OJKThJP65R/OrwuMsGKine+Z21qedU1dHfCfijSe+4LpaXdAMDvvOQlQcfKZcKT3Ghck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AeS/IFUm; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2349f096605so44360335ad.3
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 08:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748791429; x=1749396229; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/HdCnbvcFFV1hX8QFWwdms9CXcq6ISLWHzT3pbdzBT4=;
        b=AeS/IFUmW15Eq65Yq8GWUwbfEHdZCgE0VOxnWyr4zkQ38LBSL3lP7gcM7729kDz5PG
         CdJsGxMcRkmVLtAZAogouKe1nb6gRZgx01xH2dHuHuFXwjlBEVO4LjZDXQeF7Jx4XPF3
         Y4cBQ0y1S9vW4iF7xOhlojfuiSn6oAIGT5PVLzgJfth4Q5skwgrgDiasfuekl6uAHSP6
         DGLz1GUZ7u192gDlg30fjBZHokXL01ajwe3o5STl6tetMvD6/qqMJgmc6GKKBXCl7LCk
         Q5G01VI4T3p4eYaoQP9VN46WOZMvSlmpf9QGNA/vgDx/zcH1nQJ9RsPuPXUBFfeTZOac
         p/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748791429; x=1749396229;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/HdCnbvcFFV1hX8QFWwdms9CXcq6ISLWHzT3pbdzBT4=;
        b=QrZcjqGx7GzFsD9n01iOusMgvA0a7exkFJ2roEa0wjHKFtVeTjbuCJJaTIkh0M7wRb
         Ob0x2KP28M4wqbMiCWeX+tpCDvV9nrDwbnXf0ALJGJU2pkhW2PRQg0YSkVrBDsWCr0qL
         aI8pMHGMmo6NAzcSM9bGwhNuqEoeu1y5+wRbW3HxJQOyGJLIKtu/VQBv6/MZr/7AsqD9
         vvoGKZ/Nm4vTAyJNQ145L4CbaaP5OwwC2C0rNj8460QRjp5JkZ+C/b9M6cSoVkMvOWaF
         uuR9nsp8ws/PFDg9hQuu3C7Me/F3lhdXARiDCJcp95WlWKqsYblb3AhE7QdVIHOMd17x
         p17A==
X-Forwarded-Encrypted: i=1; AJvYcCXm8t8b+faxNWd81SsSSwgWW1yEHI4ecb96G4xC7Lcq3i1SQYIHY/mUApOfmD+ikgL8jB2EyGIUCz6C@vger.kernel.org
X-Gm-Message-State: AOJu0YyJwD5Y2ub84/x65OOpdVV+T1ADfTleE3PR0b/UYt97lN/HKBS1
	ixDj0F9jnvG1+aPcK3UWM9fd6DC/RPSaLc2newoXyMMmDb0R2W4h8tzmFNVKbb4sPA==
X-Gm-Gg: ASbGncuC1m+kk1I7MMfddz6P/p8D656S9CdOhcqi4GvdRB83S6nqP8MQSonqaWOMcWI
	dywLk7tPE9wDmddiREPjAs7DEff/j0hwyT0BL+LWnl7RRl0VSAwrNWkuURB0b1KKPHzXDTubwag
	T1tnO0R1NJaVLReKZFF+uhUaq3gprHRWT/9z4/3aAbkHG67sWBp8tmYyLaRl3x58+SPe0JWLJTZ
	9cLWtHHVXpFqtL3v8ja0B/XlQDx+FcpXjY6gwpiTdTPhh7J8/2oANMZGoQG7vsB3VULD1V2fp2k
	oYsSyIuyT0aBg7VguUnODEC5taayp9Jx3nk6EyhtoTPMT6jOCbmRpE7RyiToZsXz8qmMCmcanA=
	=
X-Google-Smtp-Source: AGHT+IGUdxmEKcnjoqEdCbuH6KK9aWHG/KH7U1DjnF6q5AY9MZlPYni+3+TOgk8U92OpiYvQCGwyQA==
X-Received: by 2002:a17:902:e842:b0:234:9670:cc8a with SMTP id d9443c01a7336-2355f9dca47mr79764925ad.24.1748791428646;
        Sun, 01 Jun 2025 08:23:48 -0700 (PDT)
Received: from thinkpad ([120.56.205.120])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cf53a9sm56361895ad.196.2025.06.01.08.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 08:23:48 -0700 (PDT)
Date: Sun, 1 Jun 2025 20:53:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sc7280: Add wake GPIO
Message-ID: <wjduwhkgroqvzo25dwcspgrogz3orqab4tjosamxodvye47i4a@vd6cgknvx4nh>
References: <20250419-wake_irq_support-v2-0-06baed9a87a1@oss.qualcomm.com>
 <20250419-wake_irq_support-v2-1-06baed9a87a1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250419-wake_irq_support-v2-1-06baed9a87a1@oss.qualcomm.com>

On Sat, Apr 19, 2025 at 11:13:03AM +0530, Krishna Chaitanya Chundru wrote:
> Add wake gpio which is needed to bring PCIe device state from D3cold to D0.

WAKE# GPIO

> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index f54db6345b7af6f77bde496d4a07b857bf9d5f6e..ebfe2c5347be02ea730039e61401633fa49479d2 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -711,6 +711,7 @@ &mdss_edp_phy {
>  
>  &pcieport1 {
>  	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
>  };
>  
>  &pcie1 {
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> index 60b3cf50ea1d61dd5e8b573b5f1c6faa1c291eee..d435db860625d52842bf8e92d6223f67343121db 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -477,6 +477,7 @@ &pcie1 {
>  
>  &pcieport1 {
>  	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
>  };
>  
>  &pm8350c_pwm {
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 19910670fc3a74628e6def6b8faf2fa17991d576..e107ae0d62460d0d0909c7351c17b0b15f99a235 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -416,6 +416,7 @@ &lpass_va_macro {
>  
>  &pcieport1 {
>  	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
>  };
>  
>  &pcie1 {
> 
> -- 
> 2.34.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

