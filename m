Return-Path: <devicetree+bounces-11851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5874A7D6D93
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:45:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12DD32819B3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E762286BF;
	Wed, 25 Oct 2023 13:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="gXXGGt6t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D661F15486
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:45:45 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2832C187
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:45:44 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2F7E03FADB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698241541;
	bh=+60nkze2sRRgfeFsZmoFML77ioPwo/jReraRdMDEs5A=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=gXXGGt6tMw99lTGXANzK+uLRJ1KxSj4TdHucyyiab1RjnNRqQJKl2Z9t/pUDgb72K
	 xZB1OZCidOULl/B1FkafeCAW0PVjMr0ZiXn56kLq4a00WITjF4yut8Xi42J2hEklDt
	 TzJef9Z9lNcOMVT6D+qLAsPX2oYowrKB7VosHOJBuL2NZ8VcbGxeWvHHH2eZ3VxIZm
	 At7QWmMcKcut4iOKfMKgEM0xuPiyINOAQ6gYFscgRvAaPFCwhoObaoWx9qkjXVxf1o
	 NwUreYjOethZK35nwJhg4RtLtGCQot3fai4VCz4zY94ePRtvu+9Ot8hKPZeNkJl6yk
	 65ByvLdmEkW1A==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cdce61dcbso68318011cf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:45:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698241540; x=1698846340;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+60nkze2sRRgfeFsZmoFML77ioPwo/jReraRdMDEs5A=;
        b=BiX/Gazb7W9pl882j7jhBCSa/1UyeOouPb3GdOguPGdv7l2wP9EZ0bGgZjKbK9kxr+
         tYYFBA9OTl5ClsxJCvsfrHlRYf/I9u9+Taf+V8tBDveJc+t+g6YuSvmBFpoaqtmElmqv
         ps7mMR2w6Tc1nYOiiMzzq7DFlhfhtpauSpQ6nFj6X8Japs77HUp9xfRc9d9vpFbt9iYJ
         aFBCSHHmBxqTY+yXNL8NDFh1/O6DLMjGXfFRMi+rlAABvHjE2e3bam7lKAhnU2OOcT1z
         B5TvqLeNK2RLxw+VcGfDF3v/DJ3ZzNPquw0jldy551o75hn3cJmNKBo8QquIOJ9L3hkU
         dh2g==
X-Gm-Message-State: AOJu0YwLutOkpaXwIfpZ08VefRLIQ3ZZXor7CFFmbE/nWFgwg6f4yN6u
	0VzKnnvSgdwGX5BzTXiIn07fqHFcTRAysWBA+NcwlC/3TNiNLwy2IfUljBVcNQ6V4b81RGl/SNu
	ahBdJZgt5U4m9M0TJNtGVYOVT3tiv0NFEqtMFXQPKGgQAjcBdj8NUcvc=
X-Received: by 2002:a05:622a:546:b0:418:2242:7823 with SMTP id m6-20020a05622a054600b0041822427823mr19590892qtx.32.1698241540173;
        Wed, 25 Oct 2023 06:45:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOVt8UpkWDt9syG2uUYq+GKDBm1AQ/uLpT42Eg0N4uYLR9c2VyMtFdKW/1yQYgIadYQ81RXcVGJLbHiSFOWBI=
X-Received: by 2002:a05:622a:546:b0:418:2242:7823 with SMTP id
 m6-20020a05622a054600b0041822427823mr19590867qtx.32.1698241539921; Wed, 25
 Oct 2023 06:45:39 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 06:45:39 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231020103741.557735-4-william.qiu@starfivetech.com>
References: <20231020103741.557735-1-william.qiu@starfivetech.com> <20231020103741.557735-4-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 25 Oct 2023 06:45:39 -0700
Message-ID: <CAJM55Z9aR0rwK9CSyGw_YJP8VN5sKax1JH6bPEaiX_gjkE049g@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] riscv: dts: starfive: jh7110: Add PWM node and
 pins configuration
To: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-pwm@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Hal Feng <hal.feng@starfivetech.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"

William Qiu wrote:
> Add OpenCores PWM controller node and add PWM pins configuration
> on VisionFive 2 board.
>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 22 +++++++++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      |  9 ++++++++
>  2 files changed, 31 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 12ebe9792356..63d16a6a4e12 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -268,6 +268,12 @@ reserved-data@600000 {
>  	};
>  };
>
> +&pwm {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm_pins>;
> +	status = "okay";
> +};
> +

Hi William,

I just noticed this node reference is out of order. The references should be
sorted alphabetically.

/Emil

>  &spi0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&spi0_pins>;
> @@ -402,6 +408,22 @@ GPOEN_SYS_SDIO1_DATA3,
>  		};
>  	};
>
> +	pwm_pins: pwm-0 {
> +		pwm-pins {
> +			pinmux = <GPIOMUX(46, GPOUT_SYS_PWM_CHANNEL0,
> +					      GPOEN_SYS_PWM0_CHANNEL0,
> +					      GPI_NONE)>,
> +				 <GPIOMUX(59, GPOUT_SYS_PWM_CHANNEL1,
> +					      GPOEN_SYS_PWM0_CHANNEL1,
> +					      GPI_NONE)>;
> +			bias-disable;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
>  	spi0_pins: spi0-0 {
>  		mosi-pins {
>  			pinmux = <GPIOMUX(52, GPOUT_SYS_SPI0_TXD,
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index e85464c328d0..4024165d4538 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -736,6 +736,15 @@ spi6: spi@120a0000 {
>  			status = "disabled";
>  		};
>
> +		pwm: pwm@120d0000 {
> +			compatible = "starfive,jh71x0-pwm";
> +			reg = <0x0 0x120d0000 0x0 0x10000>;
> +			clocks = <&syscrg JH7110_SYSCLK_PWM_APB>;
> +			resets = <&syscrg JH7110_SYSRST_PWM_APB>;
> +			#pwm-cells = <3>;
> +			status = "disabled";
> +		};
> +
>  		sfctemp: temperature-sensor@120e0000 {
>  			compatible = "starfive,jh7110-temp";
>  			reg = <0x0 0x120e0000 0x0 0x10000>;
> --
> 2.34.1
>

