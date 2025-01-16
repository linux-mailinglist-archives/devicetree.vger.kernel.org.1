Return-Path: <devicetree+bounces-139103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E214A14045
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 18:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 715537A55C4
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 17:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69E322F3A0;
	Thu, 16 Jan 2025 17:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CdeE0d38"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDFC22F399
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 17:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737047129; cv=none; b=kZVz5J2pLahn8PI0BUJiGNr+DEKLygBLpal96anBjAcV6SsxeafQblaEmqwPwKlDFJUJUspPLLW7zFX6Ot8gyXPodtHVoBBaaY4ap1SdpI4M+UCTO0rh/aa8HuTJZswZIijtr6WUYU2UiQONs9WXlkiRCD9bouCF0WppicTjBqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737047129; c=relaxed/simple;
	bh=fM5I9GHoHMCA0Lg4ON7OCXeTs1Wova5Z+8bR/0rTTQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HFIDl9PPBN83454svrvgm9dfmEfhW69g5lpRHwcWhzQUPtfZVrdM07qwmVqLWF/jB0wuWnjWgGVi7jm7MRcKTUlS4D26S2U+Jmz7ju90SzNHudOlNrS/TtkGc+KPv4hZcJfWXorqtGSNgAXFucKpOQDpGeIAJ7YksKora2+IOEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CdeE0d38; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaeecbb7309so225714366b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737047126; x=1737651926; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WtqkGBz5EldVcum4M1/PkK69H6/PIvSUrlZUqRXKsUI=;
        b=CdeE0d386JNYN7wRlqYQ80JsxGvM1ocPdcd8PfXO20g2sjMWek1QtNACM9yDZ3mDKM
         N0X44TRO8a2mIZAsbiyRyJm8HcIb3aW1WbqdWy9GUwUBeHb2du6tvlUek4QsmFUIeaqW
         caWVpzQtbkSpU4K3nuDp7W5H5CgfzZoeUBxyK7iXielJm+vHXpaP+gcoKepX9ziNU5cL
         MmIOjOyI6z+Tlk0vHQTWyO6mdJhcygU9FxmsI+EYZUl9eaL0/jr+Lq0eYblN46flsNpx
         F2zfCzO9iLPVawSOE+2OSKHIzK+zGXtSWuf/MuxLzfRgRNMKC+hBt+CwtQwAzS4DlZcB
         UIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737047126; x=1737651926;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtqkGBz5EldVcum4M1/PkK69H6/PIvSUrlZUqRXKsUI=;
        b=ZETLFVIk2uc7Wu3xexhI0sdUiXopb1me8CCtSskidtt6DXHOayhYGnroDOkqumwV/w
         GaLMlvHaLqJGs+MUu38LhC7FVl58HIwJLfJb/eIbfk1Jz8ludsWXqnCDfC/3sr4aVGQX
         KlsvO3JP9Igee9YN5pEOAuIVUwVShKPO4p24Xt3U6pYX/Lcl0So4RCW8hunrz4Pa8N0l
         y6GvdqZcvgZo5bPy9ndgJIE+yne4ChFlmVu/P9ogW2gac8RXjHNtnfz6ldfAY3x+LX8C
         BlcCZfpSt4RSpzDst5ogqmo86gQb1g/IbU1M7iGDE86V9Y+yyK0p6Rmfcx6jbUKkjZ5O
         +E7w==
X-Forwarded-Encrypted: i=1; AJvYcCUkrUx6o13+oh6teeS99n9IsJngl/VeewZ6s04VdT6rn1IAC07tuBJuL2JenQo+Dh9mJRfft+umxIZk@vger.kernel.org
X-Gm-Message-State: AOJu0YxtVWozjwCz2YQWZ/YaABnWWgvb7/lWT4rsgmQwgwqPC1rFLUj+
	Qgk26Cwv/8cpciDFIgpmBZQ+pEh3U1+1zxLPYVyUE9XEEZ1xraN+D5gm2BeUW+Y=
X-Gm-Gg: ASbGncvxEvv4qmmSLVw4d6OGDDAkcIu8URawESHms1iqyBv6rs13/An1723xA5JtCgK
	CYtbMvjz0rZPaGNZyBTgxA0h8DkCAqOfgzYCw0DUgajgJGpGG8Olsi/piIctdPd9t+slWQg/mMw
	gHEoyobKZDKecPeXf1H3j0i3kpkkdNgTde4C/Fvh3RwAfBCO1vfaImA/5lXukg2/Svg4enIWlir
	5TMiYYUIkv/fGkzMiImnXYi7AJ8pLcT/Mf81TRkJSw2IaEkl+cA6uYNErB6EklZ8pFW
X-Google-Smtp-Source: AGHT+IGQwH9VK+ITSXPqiXT+6WmJreamVlwpYOx5oDkYfmjm8Bdo+i6oCALmzIKHRXzb/M/vletJrg==
X-Received: by 2002:a17:907:3d89:b0:aac:1ff1:d33d with SMTP id a640c23a62f3a-ab2ab740dd9mr3087672666b.30.1737047125884;
        Thu, 16 Jan 2025 09:05:25 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:d082:eaaf:227f:16cd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db73670ddesm195646a12.21.2025.01.16.09.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 09:05:25 -0800 (PST)
Date: Thu, 16 Jan 2025 18:05:19 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shivnandan Kumar <quic_kshivnan@quicinc.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750: Add BWMONs
Message-ID: <Z4k8T31cw_CxHFLC@linaro.org>
References: <20250113-sm8750_bwmon_master-v1-0-f082da3a3308@quicinc.com>
 <20250113-sm8750_bwmon_master-v1-2-f082da3a3308@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_bwmon_master-v1-2-f082da3a3308@quicinc.com>

On Mon, Jan 13, 2025 at 01:08:18PM -0800, Melody Olvera wrote:
> From: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> 
> Add the CPU BWMONs for SM8750 SoCs.
> 
> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 74 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..09fe3149da1926b74a98280fe209ae7f423db864 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2802,6 +2802,80 @@ rpmhpd_opp_super_turbo_no_cpr: opp-480 {
>  			};
>  		};
>  
> +		/* cluster0 */
> +		pmu@240b3400 {
> +			compatible = "qcom,sm8750-cpu-bwmon", "qcom,sdm845-bwmon";
> +			reg = <0x0 0x240b3400 0x0 0x600>;
> +
> +			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;

The start of the interconnect path is QCOM_ICC_TAG_ACTIVE_ONLY, but the
destination is QCOM_ICC_TAG_ALWAYS? This is strange. Interconnect used
by the CPU should be QCOM_ICC_TAG_ACTIVE_ONLY.

Stephan

