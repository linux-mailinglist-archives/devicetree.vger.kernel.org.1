Return-Path: <devicetree+bounces-87606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C1939FFB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D0A5282DE3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D35481509B1;
	Tue, 23 Jul 2024 11:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U7Il/JGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90B14F9F8
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721734536; cv=none; b=DxTo013QqSsU3xaUoWoLpUkjMcwsYW9qHZyiTA9CkVipvfJ2diP/8lvEI8dEOwZkAr1WJm9IiklW6kDnRecdwRM+MfEciPiHp5DnK7xTkgxKkZ/H8dfhUgaaTgpBQ4QsSJUEOTab6kIci072d92neAsASy/koThdTaxHhH3Ry7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721734536; c=relaxed/simple;
	bh=VpWhhog7gC97FTHHhLPcEctL2M6YKqFvl2k3d2HzUGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jIMzkbmBpaEKY1mhwhjEsOc9U6J8nUNUQ9mwBGoIzmP0zW8DoTu6KW5d97QryGJDbx3hXb5GpsWDksgdSI3zZs3BJyMFWXay+9ik19YwlthJbbhO/d7U8TFn99PGnZZ/qkDpbnNGPjr02ohUE4ZrAgbfy9lxVjKA2G0QuneBLo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U7Il/JGj; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ef25511ba9so21366871fa.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721734533; x=1722339333; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q/l/Z3ls4IuZhyyUezk7szm5voshhyEHjwPjustcLaU=;
        b=U7Il/JGj7NGIT1fDtP8CsYtq7j1iGgaOmyc5PREE+JCAZpv6IzxawQ6y62XIsXCXWf
         yMMySiK4e4p5F3sapM4xtRecyY7tZbSxVfC/ggJDzqS8+r2CwPKAXDavgMb98fQeot7+
         QJ3kqOCtbazUXjdyWvFbX7+EMbQcLXxdDhZstMmKJi9Uc+cPIAEGHeL3kzQwCCVFjk7C
         bDltgmO0YfCxuZz93H7I6vALlDGynhvYHg4e+qF2N6pRWdsdG0w/jGyJhETRpZIFSCQY
         FwLGVeipwvzbtWrZ1jxZZuN0j67QTa2IBO8Sm+niMg7gu8/rG7ESMJLea8wM5e9ubQJu
         6FWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721734533; x=1722339333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/l/Z3ls4IuZhyyUezk7szm5voshhyEHjwPjustcLaU=;
        b=l/vYwqHwLSwPKACZIpXyBYuS23OMcfeXfYjl+eBaj1+gaC51E8QqHT8dICSOLmmPGO
         9v/Z8nkLAfhinpVh3Bvt7BIeDfvWxaEZXVuIt0cgIDPpiNz2QnjGKCJsE2HNeGzuT4FX
         mDwxv+zcZyAovrU+hG00JwxNW7urVcMQOmaArzQ7g6nLeZ7qiB9csZlj3c+xUDbZK5o7
         PXHdgZsCNtN1KhMvzYTwt+JtibRirqAaZ2JQjVmwu7KSR8CLpAytDHfyurYH/WAeL+5m
         AMS2uctp+napitthn7etmGDUm2Zw/cjris5np2i8ZUyfbBCXnLmZIVNxSUFhYcUHAtR6
         24WQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXaDAPIyoclw5fbINh/IqiLmuPzMLCUebmKflh/rtuPraOiUmMURY0aacLjzI0Rr4H6FpN6R9Z1lmcyw16xggNjqO/NzcRVVoP2Q==
X-Gm-Message-State: AOJu0Yz4nvqk/cxA4F/MxwUdyrc6mvypkICCqYEIxDK81ui6fIfNSnJr
	7sYEteuD/34oR5ifaqtfHZqq9zlHzwsEwWh8PSF/4g7yjWD0XX89v8E02QIr1pGIVzzwMMJn74B
	l
X-Google-Smtp-Source: AGHT+IGOROIJkJ1fHyFDq40g9pkHoO5HwZwNaUDW1maU9aMDRukNu1r9EM7eq4XwvbDttMTd9vFoTQ==
X-Received: by 2002:a05:6512:3d23:b0:52b:aae0:2d41 with SMTP id 2adb3069b0e04-52fc677a400mr563679e87.28.1721734533374;
        Tue, 23 Jul 2024 04:35:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fc219ecfbsm506292e87.29.2024.07.23.04.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 04:35:32 -0700 (PDT)
Date: Tue, 23 Jul 2024 14:35:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] ARM: dts: qcom: pma8084: add pon node
Message-ID: <umsttn5qdjzg4cmgwya53la2sd57z3kxv5wo2b4nwme3jlthis@4vn3vwnlldkp>
References: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
 <20240722-pmic-bindings-v1-3-555942b3c4e1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722-pmic-bindings-v1-3-555942b3c4e1@linaro.org>

On Mon, Jul 22, 2024 at 12:47:57PM GMT, Rayyan Ansari wrote:
> Wrap existing pwrkey node inside a pon node, to conform to dt schema.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/pma8084.dtsi | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/pma8084.dtsi b/arch/arm/boot/dts/qcom/pma8084.dtsi
> index 2985f4805b93..dbf7afcbfd8b 100644
> --- a/arch/arm/boot/dts/qcom/pma8084.dtsi
> +++ b/arch/arm/boot/dts/qcom/pma8084.dtsi
> @@ -19,12 +19,16 @@ rtc@6000 {
>  			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
> -		pwrkey@800 {
> -			compatible = "qcom,pm8941-pwrkey";
> +		pon@800 {
> +			compatible = "qcom,pm8941-pon";
>  			reg = <0x800>;
> -			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
> -			debounce = <15625>;
> -			bias-pull-up;
> +
> +			pwrkey {
> +				compatible = "qcom,pm8941-pwrkey";
> +				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
> +				debounce = <15625>;
> +				bias-pull-up;
> +			};

It might be worth adding the resin node too, see pm8941.dtsi

>  		};
>  
>  		pma8084_gpios: gpio@c000 {
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

