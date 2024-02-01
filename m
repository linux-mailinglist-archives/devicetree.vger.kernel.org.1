Return-Path: <devicetree+bounces-37610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F8F84596B
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 14:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2FB31F22F48
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 13:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12A05CDFB;
	Thu,  1 Feb 2024 13:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="W0p4JHLm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3671E5D484
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 13:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706795761; cv=none; b=gDlQxEv0zKpb/kVpBjHYyQeV31oLfEiU4HGejbBopYsTGN04lxBJn8cxOkFtb0ekcmt0rgAzCCtZuQQLhZ/rJJfVw02q+I1UBP/0RmsABJUKvXQBZcI3kwqEvhsUM1vuzVFTB5eAROJzSIIYUas54338J7ZzMpIbQ6kJBHH0Lyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706795761; c=relaxed/simple;
	bh=1zTZgcOYnwlRgtKZS/Sq9BrObJqBjZ2W0dNUVF4azgQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hijphdbRGtvU5dplFKYMkvf0htSNGGLF9ZiMFNKdQj5oRM3XXYorvRiqjFlcV/mZ7eNNGxhYtS+wnsLvMg9CTNgadyBlhgI8E+EtvN0dxZwKEbPTIZjm6c9sJDXPFMN3WnzdtXro/EqQR+H/71AtuYgFlpl6GkZMBT6hM3pe/7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=W0p4JHLm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40e80046264so8587025e9.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 05:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706795757; x=1707400557; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vKR2tnR7SDwYLhlrG5+kES8qnhup08T48WX8IqqDxng=;
        b=W0p4JHLm1ovOJOsgywVbCnbbs4G3jl6zheEKfr6FE0x/TIhxjsdcp1D5siCMjJiiUX
         zCV59GLUq7xHAngTtQ5ay44rvPTD/p7c6NNENu5h67Bk+9BBTTj3kRzOXr2B1uNCvph5
         3YFuTSsAyf1IJ45qNiPyxDoeUuMmIY4KawIMxJZEKqEc4HIbAB7ZznxofP3U7kzqwmlG
         d/bJLCtAIDF1hOYBaarJrBIuxJLp9G7EujI/YUZ10EV4NuOEK+mGYQbYRYzkvIr94nmv
         q59PwbLJ1NgUZicXb+uqckzTSciA5vMgkeH3NF9MfMLR2nRH72gWFdWP7P+yr+a5Cbi6
         3r0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706795757; x=1707400557;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vKR2tnR7SDwYLhlrG5+kES8qnhup08T48WX8IqqDxng=;
        b=iEXWmm3lRkNtBEhgRNZj7kD1IkGqGb9gAal+NHI+sSMpnA9KXLQoX6TMpQb26muGqB
         +OrLeY382BFyneRqOZIY711umzZIeHasDC9kTCiMuvZfUTahW+Kw6dQ4en/Mvb3eojVN
         AVkUl5/jmQ7/1D9d3PVIkTrt2oFDknWX21Q+zhZFGCmDrH9xxRsUqS2ckhpdMTeX7uT6
         zrK7Wgc0kzauBVOI+dXIiikL7QfohDGCMj21sj8gxp/yn9knxs0a8DR//FJ8S7hU8RIq
         6nGcUdz/Cdch078mLtp8TlDIk57EWvQjCUaK4sbh+wmEeHsTGqQjT3LL/gFlNtDXqoS5
         czPw==
X-Gm-Message-State: AOJu0YzFjyWSjTsDIppxJ5Aj1YSFO9PW1/Rc1r9BSl0FdpVxrmR4ZN6B
	sKLmYvrEB5xb/zz1h+wW3Kqx4mCtibfNgwUJz9MNgrdbnX/N4J5uqaxJFh5YzPE=
X-Google-Smtp-Source: AGHT+IElrLBDHXwS+SyMV+1fxU+Fe+PNN5hObR4e6jXYPhsj5BAmp/ooVq7vhLCo/QjiEBRGG2tmMQ==
X-Received: by 2002:a05:600c:3554:b0:40f:bda1:f8c7 with SMTP id i20-20020a05600c355400b0040fbda1f8c7mr1332729wmq.34.1706795757256;
        Thu, 01 Feb 2024 05:55:57 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUiRfj0KYNWg9ExH3rqKax2WCoAHeO6PNpelXuLDwpQbk83fIYtTRu1qUFs61bHdL3qy4UCQvTXOqPWK3UjDCLd6SpIDG2rTtzOaB85wWjW34O4QrA71X7MklFYZsmPb+3rNN0alF1VzKhlmRhm6xqqEgv0uZi6X9fgtkQ3xTfWMOBiiB7yt0Ljycb5YmLmVaI3qGbRHMrZO3r3j1Gg8f9ZT36D0A8wGtgYaGE9eGPLz4Vu2LT/DIeBLddimYznHVV98/1ivM3euoQmmDYb4JLJJIke/BfMdbio1ivma9HtJh1591ppGJKBbtQr3t0SqGSB2Ur3ok8CMaeBghlP8VXZejTc+SqIXHYebqkxGpEtBv7crZIwTX1l4A4st4FYa03NqavWInRghohOdLTrCYvlO5kju2RXVjcrxvNAdoLht5psNSgtVROG1Fm6t95f6tCWDIwbitXDw66ioEfoqs18JuR6zVryqZqM43aSa2mxnTmF7r4KQzNMB7FJuTVqYQjL1+g/qlvERvQrHjOcL++ccpGPmTQZ/xLE8/NL71U5SnjoUXixJTe7+M22zy0DV+TlCZs6no9z/Wy5Q59DFIjd01PkY9ieCxhbcQkyR+UAW/iksUE3ixnyvYbD+bQkedNVqTAcgW1WIAo8tDPPW2GwDw==
Received: from localhost ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id m39-20020a05600c3b2700b0040fb7695620sm2880542wms.0.2024.02.01.05.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 05:55:56 -0800 (PST)
From: Mattijs Korpershoek <mkorpershoek@baylibre.com>
To: Brandon Brnich <b-brnich@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>,
 Geert
 Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Konrad
 Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, =?utf-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Pra?=
 =?utf-8?Q?do?=
 <nfraprado@collabora.com>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Darren Etheridge <detheridge@ti.com>
Cc: Brandon Brnich <b-brnich@ti.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: ti: k3-am62p: Add Wave5 Video
 Encoder/Decoder Node
In-Reply-To: <20240131212625.1862775-6-b-brnich@ti.com>
References: <20240131212625.1862775-1-b-brnich@ti.com>
 <20240131212625.1862775-6-b-brnich@ti.com>
Date: Thu, 01 Feb 2024 14:55:55 +0100
Message-ID: <8734ucmgpg.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Brandon,

Thank you for the patch.

On mer., janv. 31, 2024 at 15:26, Brandon Brnich <b-brnich@ti.com> wrote:

> This patch adds support for the Wave521cl on the AM62P.
>
> Signed-off-by: Brandon Brnich <b-brnich@ti.com>

Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

> ---
>  arch/arm64/boot/dts/ti/k3-am62p-main.dtsi | 10 ++++++++++
>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts   |  4 ++++
>  2 files changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> index 4c51bae06b57..94c89699b35f 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> @@ -891,4 +891,14 @@ mcasp2: audio-controller@2b20000 {
>  		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
>  		status = "disabled";
>  	};
> +
> +	vpu: video-codec@30210000 {
> +		compatible = "ti,j721s2-wave521c", "cnm,wave521c";
> +		reg = <0x00 0x30210000 0x00 0x10000>;
> +		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 204 2>;
> +		clock-names = "vcodec";
> +		power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
> +		status = "disabled";
> +	};
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> index 1773c05f752c..0aec79ed5578 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -569,6 +569,10 @@ &main_uart0 {
>  	bootph-all;
>  };
>  
> +&vpu {
> +	status = "okay";
> +};
> +
>  &main_uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&main_uart1_pins_default>;
> -- 
> 2.34.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

