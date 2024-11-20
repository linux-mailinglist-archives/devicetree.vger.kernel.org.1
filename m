Return-Path: <devicetree+bounces-123186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DFA9D3A68
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 13:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9AC1B2A983
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2A61A0711;
	Wed, 20 Nov 2024 11:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UqI0dZxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8117119F423
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103880; cv=none; b=YBg8RXfS/GLgQCF6CVOgwAIrIbT6KMBiWL3SaOH3O2jbr3G7nShqrQq8UCGti8/efjC8YAPJPSUADkh7ZusOQEk/kznwvyOBmb0RnBoCxvLY06kI52rj8W2XjhoB0e1mUFpc0Hgmb3xtl/yI5jHm05aF5na7jNtXMpyNrjKSjOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103880; c=relaxed/simple;
	bh=0e0nr2aDV/a5TiJuxeZ1nyQWXMPEjp/tJGOao9xoL1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e57h2DweLdEDIZ0V9WQd4o4bIyMgt/kNZcmCDeZa1hq6LU0Dk3Zkaf1Clz3h6NZK7/4M14q+hu+rD7Z3cMtL5MG8Gj+cc99vogbdXaaFgZBOqJcaI/MxefgKrmfwkCaqp5d+Fm/ZSjdo2KJwmPnB95z6R5jYQhmgH+ZVN478ICU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UqI0dZxF; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53d9ff8ef3aso2384552e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732103876; x=1732708676; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kkDJuRPym29fU3HSSlVBvB5wB9QK3I5iEUymjLs3BXM=;
        b=UqI0dZxFjUM6pkeHNrTr9DZly81eUQuGEU7Q4qo+Xn+XbekRXeL3LNkbuLkgpCvBf5
         2BLNPZOSMPIdBKYYc/dSYQat2V1qiSRZmQVbVJFOVMjuIBzYGbTn44wTx7G3gYiD1D1g
         +gZH8FtNWiV7F95q0FV+/HLKtLG5ucCjCRvq7JfSm4gIHNDsvnjB3DPy/EbuAf8d9Mhi
         HGxu4DrP/BXhXmPb2aJ/WHgLdF9k+ZxoUmoATip0Abilz4AuaPhHBc78XEhI6Zt4ivBO
         /XSCmUb0bWR3cx6ZkJUOe5FnmSVKgltDvqCMcZusYShH3qbD8GRXTec2XRll7hFcW+OX
         VcTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732103876; x=1732708676;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkDJuRPym29fU3HSSlVBvB5wB9QK3I5iEUymjLs3BXM=;
        b=YJrYZbf8oTnitVgArHE7EcHB9kVn04rFKzWWklqDJ/swm3Fg4nKDYiW5Rnrkgt+C4M
         VKbftbJkrvMMGMjrV9Diynv4ZXovVKXpNi7UgsT4oOVP+5rIPHJMTceVzppnYAAiBjm6
         hKUwjfI+IgRKXDmf+/ZJf9P8nbe4pQLvPW7VFHH8dWF4uzn+LlkIlwoM4A0qE79vwqd7
         oKg+8C3cuzTHwde3IsmQTvFwmEAkyhCzDitgbn6gW47+oirWk0sUlmQ24eVEwGu3Zvzm
         EcIchhxba0uQH2pogVS6OLrqAji+SYIt1n43muKt05E+2c+Pkw4tzR9Z0/WOOfwVlWrO
         b55A==
X-Forwarded-Encrypted: i=1; AJvYcCVyfem/ge1A1UkCRKgn1DpU6ZynZo1dXY/g/Q/CXtVeu0Uq4jGzePGC0ZndoZ4G9sWKtjXiQzMlfyil@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6IiiE88NxHIi9kFyw3nRZfOBiN/OZit4AazPF1/aczqBxpkDi
	rViWGNQ+7XKfOIBSDxqLJFVA42TzjaK/4ScyaDb2PgeEx1yxFEKx7RizPUuAjkk=
X-Gm-Gg: ASbGnctWuvtKAQ3m3P7xAAVih8pLeZqN4MO35mW4Q6S9k9oVYJjYXtEI5lzvdIvPTD+
	sr4gv/6kAfIO3+5dquoDVvn8oJ1SuOIBrIrV/l8Z4z3i2uGjeR6f1pQf4v/ZZoVMXOCqzKNFCje
	Nqfykm2fpayGf0emYuuz3hYMflDYrMItJhEWTwdKvsCCQNaYxnvZSKqd4QVyy3bdkqM/hKFLHC6
	mLsbwAm/njlySBzqzQ+F+1i2DY+mHy29kkDcuoDziGdAM/Bw3YI2A2j/JoCsjCw1gvavbbVdHvu
	iGCJlMRaRL8OAMxIHQM/8eaz4tSrsA==
X-Google-Smtp-Source: AGHT+IEhdK1oi5UhEJitu+CYeExmzTppA+htmFSLIfQ47nQb2OOw28dJBcmFit/oz+783D827lApYA==
X-Received: by 2002:a05:6512:3b2a:b0:539:edea:9ed9 with SMTP id 2adb3069b0e04-53dc13275aamr1000536e87.1.1732103875668;
        Wed, 20 Nov 2024 03:57:55 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd4671d9sm606538e87.115.2024.11.20.03.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:57:54 -0800 (PST)
Date: Wed, 20 Nov 2024 13:57:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Melody Olvera <quic_molvera@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: qdu/qru1000-idp: Fix the voltage
 setting
Message-ID: <orvnnjclxlwrab34daxrepn3m3la3heogkxbncl44yjyn3wxkt@vnp4knb5nedo>
References: <20241119070812.16079-1-quic_kbajaj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119070812.16079-1-quic_kbajaj@quicinc.com>

On Tue, Nov 19, 2024 at 12:38:11PM +0530, Komal Bajaj wrote:
> While adding the USB support, it was found that the configuration
> for regulator smps5 was incorrectly set. Upon cross verifying for
> all the regulators, found that smps4, smps6 and smps8 are also
> incorrectly configured. The patch corrects these configurations.
> 
> In particular -
> - smps4 is 1.574V min and 2.04V max
> - smps5 is 1.2V min and 1.4V max
> - smps6 is 0.382V min and 1.12V max
> - smps8 is fixed at 0.752V

Could you please comment whether your values represent the min/max
supported by the regulators themselves or the shared min/max by all the
devices powered by the corresponding regulator?

> 
> Fixes: d1f2cfe2f669 ("arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs")
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
> Changes in v3 -
> * Minor nit pick in commit message
> * Link to v2: https://lore.kernel.org/all/20240524082236.24112-1-quic_kbajaj@quicinc.com/
> 
> Changes in v2-
> * Updated the commit message as suggested by Krzysztof
> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240514131038.28036-1-quic_kbajaj@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 16 ++++++++--------
>  arch/arm64/boot/dts/qcom/qru1000-idp.dts | 16 ++++++++--------
>  2 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> index e65305f8136c..6e8f9007068b 100644
> --- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> @@ -96,20 +96,20 @@ vreg_s3a_1p05: smps3 {
> 
>  		vreg_s4a_1p8: smps4 {
>  			regulator-name = "vreg_s4a_1p8";
> -			regulator-min-microvolt = <1800000>;
> -			regulator-max-microvolt = <1800000>;
> +			regulator-min-microvolt = <1574000>;
> +			regulator-max-microvolt = <2040000>;
>  		};
> 
>  		vreg_s5a_2p0: smps5 {
>  			regulator-name = "vreg_s5a_2p0";
> -			regulator-min-microvolt = <1904000>;
> -			regulator-max-microvolt = <2000000>;
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1400000>;

Having 2.0 V regulator with the range of 1.2V - 1.4V is strange.

>  		};
> 
>  		vreg_s6a_0p9: smps6 {
>  			regulator-name = "vreg_s6a_0p9";
> -			regulator-min-microvolt = <920000>;
> -			regulator-max-microvolt = <1128000>;
> +			regulator-min-microvolt = <382000>;
> +			regulator-max-microvolt = <1120000>;

The same applies to this regulator, 0.9V usually can not go to 0.382 V
and still let the devices to continue working.

>  		};
> 
>  		vreg_s7a_1p2: smps7 {
> @@ -120,8 +120,8 @@ vreg_s7a_1p2: smps7 {
> 
>  		vreg_s8a_1p3: smps8 {
>  			regulator-name = "vreg_s8a_1p3";
> -			regulator-min-microvolt = <1352000>;
> -			regulator-max-microvolt = <1352000>;
> +			regulator-min-microvolt = <752000>;
> +			regulator-max-microvolt = <752000>;

1.3V at 0.752V?

>  		};
> 
>  		vreg_l1a_0p91: ldo1 {
> diff --git a/arch/arm64/boot/dts/qcom/qru1000-idp.dts b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> index 1c781d9e24cf..8b0ddc187ca0 100644
> --- a/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> @@ -96,20 +96,20 @@ vreg_s3a_1p05: smps3 {
> 
>  		vreg_s4a_1p8: smps4 {
>  			regulator-name = "vreg_s4a_1p8";
> -			regulator-min-microvolt = <1800000>;
> -			regulator-max-microvolt = <1800000>;
> +			regulator-min-microvolt = <1574000>;
> +			regulator-max-microvolt = <2040000>;
>  		};
> 
>  		vreg_s5a_2p0: smps5 {
>  			regulator-name = "vreg_s5a_2p0";
> -			regulator-min-microvolt = <1904000>;
> -			regulator-max-microvolt = <2000000>;
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1400000>;
>  		};
> 
>  		vreg_s6a_0p9: smps6 {
>  			regulator-name = "vreg_s6a_0p9";
> -			regulator-min-microvolt = <920000>;
> -			regulator-max-microvolt = <1128000>;
> +			regulator-min-microvolt = <382000>;
> +			regulator-max-microvolt = <1120000>;
>  		};
> 
>  		vreg_s7a_1p2: smps7 {
> @@ -120,8 +120,8 @@ vreg_s7a_1p2: smps7 {
> 
>  		vreg_s8a_1p3: smps8 {
>  			regulator-name = "vreg_s8a_1p3";
> -			regulator-min-microvolt = <1352000>;
> -			regulator-max-microvolt = <1352000>;
> +			regulator-min-microvolt = <752000>;
> +			regulator-max-microvolt = <752000>;
>  		};
> 
>  		vreg_l1a_0p91: ldo1 {
> --
> 2.46.0
> 

-- 
With best wishes
Dmitry

