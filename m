Return-Path: <devicetree+bounces-69229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFF88CF42A
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 14:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F3AEB20A5C
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 12:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534F8D30B;
	Sun, 26 May 2024 12:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="pa5TGMbS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1169C13B
	for <devicetree@vger.kernel.org>; Sun, 26 May 2024 12:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716725179; cv=none; b=htosunKFJ0t+dCfHSFkAs4Kq49uUoKwrfSLrDbvkm+HMAgDkIkq18AJxV9cBO6kwnzf9MP9TdjcbKv9lMmA/UrnOsT2wjz9+uLORvCPRRoF49F9d7t6zMPIBSODwyJt33psdU4OUNT4UM4P3QeRemBGvdmiRtzZJqZ2duhL3l6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716725179; c=relaxed/simple;
	bh=rNFPvgBklmUcC86gDjg2X8Vr+FvzY/KOE2Yw4BNMby0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o7aSsU0BegI9uHqCQsvJ0onw0YV8/UapIKtHAAXpoHNskA/LhrIf7AI1vuFWZwBrnitVczi7EVLlb6yckoeFc6bMmaJqXMmmlqXiOPqywGJOk4dv7Jzd5akf3tgXZt9G6NP1pPl6plmKoc6df6JEI/JQsvAV8BoZLwwitF1H5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=pa5TGMbS; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 03294424C5
	for <devicetree@vger.kernel.org>; Sun, 26 May 2024 12:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1716725174;
	bh=QzPjQrvRFTNCaY9bkkx1AdOfiqg86uxrelAFKCvzxQw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=pa5TGMbSlenTZwNfPJ+u/sJui9RFxmMEs7OCuLvktaKCVsvS0eM+udp5JOr04MJA2
	 coNSCxNoi4viaNs2GN4Zd1lfcp0VLcE+4Mwszhoz8tPaNvmVs21ei6RB7SW9Z7YSLz
	 v13PvvWbYXiqoVyTy03ikZLOFOo4ktB+eyCB66EjyB3zPsVAUO8sHhkYRG0jBNf0si
	 SmRTQ5tRh4BOXAUjAhqfiEykrwFLqJ/FSuwXHMdu+ETatAYLc8+Dtj5U/sAOoOn/Tg
	 i0TYj1toENQkmINa5k6Y7ZtVKpRgAWVylZNe9D47d0/g4hCZSOHEBTP4pkl29WLd1G
	 Sup/LBNz9vIwQ==
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-529663e467fso1562399e87.3
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 05:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716725172; x=1717329972;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QzPjQrvRFTNCaY9bkkx1AdOfiqg86uxrelAFKCvzxQw=;
        b=ZqBjq4BqkzowHiyhdukool4mbTxUcJxDQx7/syYS8KVK9nY7zcorqwcffqbmj/BO32
         oOV1zkYLLuAqtj895R7s4ogB33M2Wg6tqTCuKhU+YMGdk/2dSGsuf7EkM6Fsh1nzCPs1
         wgj8HUmbA/eSzVBkryK+TKdX8HdNswOwaIZAzvx2giwHegBdzm34g4Ej47UdIDcGuxzN
         aKbd9vHEUjoU30axIiAfaYKahxurUYaurW6pPE4tuL6w3Wk86dF1qv5qQS+DygpSMu/Q
         OhhZe25o9SUmxWSyWFuPbMcfGh6zSXEmNbD3UdlpId+9fff3hC8hIf8ykbLZlDpm+Ix8
         mDPA==
X-Forwarded-Encrypted: i=1; AJvYcCVSWgwAhVPAfvg2Ah3vEUP8ypSoepG7WLWzkDchn/LHumUIpx8FweuFhhLZKSosQUKMpcgss0PSBran1dc6jC5OA1xPwRL2omOKgg==
X-Gm-Message-State: AOJu0YxjIH0cbxLkUfLXrwvL6WJZi6vnzCwSUswWBYREr6s+NG5eG3lU
	DWHk5Oun+WWi9UR+TnXnV0aAYOKsPrfajI+FMTbbBBvWqLAmTpKnAg7AOt9VMhEiaVVqinAf6YY
	mge22httKrJPZNZxaVOSZKhGckU3XmuQNzTUe7n3kcf785lyTWaNZc8aRBhgyO1JconI1ddJzGv
	nqz5/B5lodtKkAaBg+9NFdGkNQQ3P0BnJbzbQf5N8v29mi1jl+Vw==
X-Received: by 2002:a05:6512:344c:b0:519:1a91:30cc with SMTP id 2adb3069b0e04-5296410ae61mr3785544e87.4.1716725172287;
        Sun, 26 May 2024 05:06:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwx7fR7skOCtVUuIXew7lgRD1ZuwehO7HuKQP+7Gl7dRBpMQppQ1tqUrzN65seVnBlikG+1ZckVZ05Ol2ZpUE=
X-Received: by 2002:a05:6512:344c:b0:519:1a91:30cc with SMTP id
 2adb3069b0e04-5296410ae61mr3785524e87.4.1716725171737; Sun, 26 May 2024
 05:06:11 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 26 May 2024 08:06:10 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240517-i2c-th1520-v2-3-d364d135ccc6@bootlin.com>
References: <20240517-i2c-th1520-v2-0-d364d135ccc6@bootlin.com> <20240517-i2c-th1520-v2-3-d364d135ccc6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 26 May 2024 08:06:10 -0400
Message-ID: <CAJM55Z9FZxv9TskSX7H5U8_C4a1-LMv52sFgoyzO0bYUKnZ3Ug@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: thead: Enable I2C on the BeagleV-Ahead
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Drew Fustini <dfustini@tenstorrent.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Thomas Bonnefille wrote:
> This commit enables the I2C0 controller of the TH1520, together with
> the FT24C32A EEPROM that is connected to it.
> In addition, this commit also enables the I2C controllers I2C2, I2C4
> and I2C5 as they are all three exposed on headers (P9 19 and 20 for I2C2,
> P9 17 and 18 for I2C5 and MikroBus 7 and 5 for I2C4).
> It also defined the required pinctrl nodes.
>
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 84 ++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 57a2578123eb..aeb04f5159d5 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -121,6 +121,47 @@ led-pins {
>  	};
>  };
>
> +&padctrl1_apsys {

These node references should be ordered alphabetically, so please put this
below &padctrl0_apsys.

> +	i2c0_pins: i2c0-0 {
> +		i2c-pins {
> +			pins = "I2C0_SDA",
> +			       "I2C0_SCL";
> +			function = "i2c";
> +			bias-pull-up = <2100>;

Are you sure the strong pull-up is needed here and below?

> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c4_pins: i2c4-0 {
> +		i2c-pins {
> +			pins = "GPIO0_19", /*I2C4_SDA*/
> +			       "GPIO0_18"; /*I2C4_SCL*/

Please add spaces here like other kernel comments. Eg. /* I2C4_SDA */

> +			function = "i2c";
> +			bias-pull-up = <2100>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c5_pins: i2c5-0 {
> +		i2c-pins {
> +			pins = "QSPI1_D0_MOSI", /*I2C5_SDA*/
> +			       "QSPI1_CSN0";    /*I2C5_SCL*/

Same here.

> +			function = "i2c";
> +			bias-pull-up = <2100>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &padctrl0_apsys {
>  	uart0_pins: uart0-0 {
>  		tx-pins {
> @@ -143,6 +184,19 @@ rx-pins {
>  			slew-rate = <0>;
>  		};
>  	};
> +
> +	i2c2_pins: i2c2-0 {

i2c2-0 sorts before uart0-0 alphabetically.

> +		i2c-pins {
> +			pins = "I2C2_SDA",
> +			       "I2C2_SCL";
> +			function = "i2c";
> +			bias-pull-up = <2100>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
>  };
>
>  &uart0 {
> @@ -150,3 +204,33 @@ &uart0 {
>  	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";
>  };
> +
> +&i2c0 {

Again please sort these references alphabetically.

> +	status = "okay";

And the properties. Eg. move status below pinctrl-0.


> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins>;
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c32";
> +		reg = <0x50>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins>;
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins>;
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_pins>;
> +};
>
> --
> 2.45.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

