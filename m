Return-Path: <devicetree+bounces-85930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EBB931CCB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 23:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30CD01C21C32
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 21:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1001113D630;
	Mon, 15 Jul 2024 21:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MIigSTz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A21B13C9A2
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 21:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721080320; cv=none; b=EMbNLGN6fCR/JTxpUEK57itZ4lwwBIbQ6wKckXa+ecRBmJJZxDYO86UpaWvTtxmr7Q8Tbw3Sh+RshQ2vgrt7f5bgJjwJprKbf2FuBfrfHO64okylbax1f8DNtfmUMnUX2aD4+aTBA1vICJePwQf3alJ/Hu/af6cjaa3vcr4kXZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721080320; c=relaxed/simple;
	bh=5FceX2xJ06k0Q2a7x14tKN73BYUN0OV9afppihaIiDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NtqlqvE21fU/m80ayGb47tdQxDunV2WJp12t91u6DexYsDpLoMTSx81Dzz2F8Ctei/eDe0MQxQ3A969mwdZ9ASW4xwKiNcdk2uy9/br7yLq7lIg42qtmK0Mggrrt3r3u/TR5Rfqoy77qGLXacufbS3XA9ZtKxcqMJF6MN66XWok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MIigSTz7; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52ea5765e75so5777394e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721080315; x=1721685115; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JHjKvktZhLq+Db8Ne5o+ceLGBMNWKLZUUrf/Z0Ouf2c=;
        b=MIigSTz7RDsd+3VOdoRwpOm4m2RHM4d4zwhPrWcRKx4Zr0CJxlYIhfMeXvdzsWMwfo
         wtY3HtuZztEVf4ZK0+IS2ceqOKNEW8IrVNBWp78TtYDN9SWMxFI0QtEu9NXVgv0r8QDh
         bx1l0VJrrDGLYdbCwMQvbS3ZdLJEj8iWpBzZ6qfvek8YF4+jndlYggRGpOyWZL8K2FOX
         9BOPXgFO3otNVytdfVKX0H1ZAG1cbwzXHeGCkmEVAfrEwM2qTq4umbZ+T5pqyDhxIobK
         KDlD/cTw2j1MfvXBuQ5lHjp6kQToIqGzI5n+IcuIriBVxC0T0HnpDFsbUp/shRbLALPs
         yR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721080315; x=1721685115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JHjKvktZhLq+Db8Ne5o+ceLGBMNWKLZUUrf/Z0Ouf2c=;
        b=c7CDBluMWBA8orYucrk3Em/hkNcl6yVgnaOJDBc82on+WCJ0gQ6fi0wiTBggiLZuRA
         uYCT6MtF7+sZkqa6WJkKiJUTaFRj3yRh2gOspKPRyYzflebiDFd2j/JqXmWzaqcW9nHb
         6o37x0n/gDVQNXmicrIU3NxAuKB0Jhg6JW9XC2XMJIdRlkwGGcxM4/YXtna3rnv2dVGC
         wIMwYsdJ62QEiEkH2riSOWWQKG0wCz2AKoMZzO/91pBvM/nXpKF/exnpnRmWmteYur4L
         iTKFxzV8VuPRiedV+SWtj9yikdp8F6hYdFHLr32p32QH511jgQSiYHmbNpL4FYEgjsx1
         /qXg==
X-Forwarded-Encrypted: i=1; AJvYcCX8EI8vS/gG/cHJ/3Rvn03XE3ykTo17DZiEfm48JXMz4/yUT7eR8mZw90aPEgrUdqh1Vpe4OYWfBX7WDupP1ZBy5B5M1F/AzgpeNA==
X-Gm-Message-State: AOJu0Yysyi+jEdSJR1iZTJ8JooAd2ariLNxoJwGRlEi/sAQ0rc59k2Qg
	BHNJ4NhNbEhQPW4s3BaTQEiq4knmmtTc88RXxlc+SrYaHryqbX/+rEGuQ6CgC6o=
X-Google-Smtp-Source: AGHT+IHomHiXvW6OmL9pXBjt7tf+gnCSehII80ftVsyYVMTcAefZjf5mE3CHD3YBAdh0yYCTj5rt0g==
X-Received: by 2002:a05:6512:398f:b0:52b:bd90:29c8 with SMTP id 2adb3069b0e04-52edf0405a1mr120365e87.60.1721080315390;
        Mon, 15 Jul 2024 14:51:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e2ac7sm981215e87.38.2024.07.15.14.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:51:54 -0700 (PDT)
Date: Tue, 16 Jul 2024 00:51:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Patrick Wildt <patrick@blueri.se>
Cc: Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Steev Klimaszewski <steev@kali.org>, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-yoga: add wifi
 calibration variant
Message-ID: <cisap4ctuolfrs6hjqxz45fqtckcy6uhjzma2shcxkso73jvoh@jj7l4bgftoir>
References: <ZpV6o8JUJWg9lZFE@windev.fritz.box>
 <ZpV7OeGNIGGpqNC0@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZpV7OeGNIGGpqNC0@windev.fritz.box>

On Mon, Jul 15, 2024 at 09:40:41PM GMT, Patrick Wildt wrote:
> Describe the bus topology for PCIe domain 4 and add the ath12k
> calibration variant so that the board file (calibration data) can be
> loaded.
> 
> Signed-off-by: Patrick Wildt <patrick@blueri.se>
> ---
>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts      |  9 +++++++++
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi                 | 10 ++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index fbff558f5b07..f569f0fbd1fc 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -635,6 +635,15 @@ &pcie4_phy {
>  	status = "okay";
>  };
>  
> +&pcie4_port0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1107";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		qcom,ath12k-calibration-variant = "LES790";

It doesn't look like it follows the rest of the calibration variants.

Something like "Lenovo_Y7x" or "Lenovo_Yoga7x" sounds more logical.

> +	};
> +};
> +
>  &pcie6a {
>  	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 7bca5fcd7d52..70eeacd4f9ad 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3085,6 +3085,16 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			phy-names = "pciephy";
>  
>  			status = "disabled";
> +
> +			pcie4_port0: pcie@0 {
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +			};
>  		};
>  
>  		pcie4_phy: phy@1c0e000 {
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

