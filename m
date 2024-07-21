Return-Path: <devicetree+bounces-87050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 553CE93868A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 00:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C26AB20A5B
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 22:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127E1101C5;
	Sun, 21 Jul 2024 22:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="hrOB9nRP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52168168B1
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 22:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721602079; cv=none; b=cDn1+a2bxoNYJQ4nFLw3290WcKhLxQPwnNQl1AOEhcW2rSUlsjhw/E5meDS2hFEe/2h+VwTLUUntRAnnbBa+JAeD2NI+DvbMHNmWNHEvVkYLtG0pKdWTkcY7CcVnWIzFYkfVULOI0/xAo/Si1+aHAWCJi6nLeoYZjsuFstt4oE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721602079; c=relaxed/simple;
	bh=DliTPczJmew9Tk+hDTUTx/VTPgaBCakYc5YIQufR5sw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZWS6PJ6im8S3F6GDEoHp7LGcTyGEUKxHJ9tK6qY3oEgAyUpMU8c6o+4mYiJcDslyt2VKrZkYUszXi4zgEEJPbK/MaVVUW7J8/SeJfKVvcI++tjY9cnBBQ47TEjS/9vY6E+6xuPB9Pd3GvOoZwKXqZt7WaOpi1x4PattAMjYVIBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=hrOB9nRP; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 528383F2A0
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 22:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721602074;
	bh=KO8tpQ9TxHjBPKSfhTTh06gsoP5zva/hPb58dTpZI7Q=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=hrOB9nRPrBbkxem5qJG6pJUmqCAbxvwCOoLclRe9q8oi54Evg8GwLklT1YneJGQx2
	 H0TLCrHJS3ciaRRYlGJALjcOW3WAc+itVxkU6cCQyqS1C7cXExYrlu4Pg1kXlWNosJ
	 PNlGuPCQBy7WPhMn+TRUgAQkM1PvLH/q96wrhZuwclHxzGlmr9OWbOepWjoUfquCh0
	 6qHjE/LNVhD2nCA9xzTdPUtpHb8H/KIS0W2TtkF/KAEvxbuzmMnuPq94UKCw8AR0Fn
	 jwfm7QWl5RCLeFmiI2UeA/tzzNX6avw8zCXVZZDZH8/n41MC0KTvOh5L9oDi81OclO
	 U5/E7u/GpHutg==
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-79f1d37915dso627161185a.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 15:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721602073; x=1722206873;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KO8tpQ9TxHjBPKSfhTTh06gsoP5zva/hPb58dTpZI7Q=;
        b=TIaYfmPIgbCikKPPkvK8N8knJL6iUagXjkClOUplCp+OmRPQS4Xwj3OPEvN3jI2hZ9
         cs2CLYlZEyMUr51oK9QjuKOdQoxzfGPwELb3wWHe62S4iI3Eh7r/BFwmNy5pj59dGJnE
         1gT4Y/roGOgasIZKBkAebQ+LJOVD/VLv3uSzucqEGUgcZqoxYZdMxaib7ATJQcksdB+4
         NVpDjsoxSW0D8SG9yEMPjmoo6IANz8O/6x4mW5XHGZ/NNVg99GlU57sTM4UzHAsp8ioU
         dRgYR6ocuzVSTQyUua9L5Oq5vCth5zxIEOGXiQkS8m4wfwczxnkooQBfycRj2mwh2nsp
         cluw==
X-Forwarded-Encrypted: i=1; AJvYcCXVYSWP6MSpyJZBhXr73u+W72OP6Ty9wlGI6nkq4MzUpIShCJmQAh/VzQrug9SRpoPwQK80dyEI/WZLJsEQbQKGjRHCLSHs5/6lLw==
X-Gm-Message-State: AOJu0Yyis5be+juNU8K16dzFuDKqxpGNLMT6OA9X/dg7MBG2LNHSFJn9
	/VCxL2M0AK5thFrsnxvKBNnqY7YFnUpjnikdm4mFIqCbeeVvL3MY5M9G3kd+61I5RN+vkvrMQAO
	84TqN39Q4qkQcSrCuxEYzrYWION07ainH3728Am+LBVkWpEDq+eo6iufYodSh/S4pSGi7ZU+cRg
	JpnK/WUf28K8Mgr9ME9/h95ZapP02yo8O+CFxfIIAHf3I0NHUV8Q==
X-Received: by 2002:a05:620a:28ce:b0:79e:ff18:a510 with SMTP id af79cd13be357-7a1a18c7253mr1121276585a.2.1721602073208;
        Sun, 21 Jul 2024 15:47:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOPlLEtwtiEezjI4b0t9l3MvPIrUfLti48u+sapT3VI9Hw0/LGbiEv4A6CGCoCTi6t0+NceO6NQ3UvomsMYkM=
X-Received: by 2002:a05:620a:28ce:b0:79e:ff18:a510 with SMTP id
 af79cd13be357-7a1a18c7253mr1121273685a.2.1721602072728; Sun, 21 Jul 2024
 15:47:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 21 Jul 2024 18:47:52 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240618-i2c-th1520-v3-3-3042590a16b1@bootlin.com>
References: <20240618-i2c-th1520-v3-0-3042590a16b1@bootlin.com> <20240618-i2c-th1520-v3-3-3042590a16b1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 21 Jul 2024 18:47:52 -0400
Message-ID: <CAJM55Z9W7SYDCSeZy_NEQJBryGX5v+R8-xNxOzftivbGxA1TSg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] riscv: dts: thead: Enable I2C on the BeagleV-Ahead
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Drew Fustini <dfustini@tenstorrent.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>, 
	Jarkko Nikula <jarkko.nikula@linux.intel.com>
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
> index 57a2578123eb..b5c4f1811955 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -122,6 +122,19 @@ led-pins {
>  };
>
>  &padctrl0_apsys {
> +	i2c2_pins: i2c2-0 {
> +		i2c-pins {
> +			pins = "I2C2_SDA",
> +			       "I2C2_SCL";
> +			function = "i2c";
> +			bias-pull-up = <48000>;

nit: This and below can just be written

bias-pull-up;

> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
>  	uart0_pins: uart0-0 {
>  		tx-pins {
>  			pins = "UART0_TXD";
> @@ -145,8 +158,79 @@ rx-pins {
>  	};
>  };
>
> +&padctrl1_apsys {
> +	i2c0_pins: i2c0-0 {
> +		i2c-pins {
> +			pins = "I2C0_SDA",
> +			       "I2C0_SCL";
> +			function = "i2c";
> +			bias-pull-up = <48000>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c4_pins: i2c4-0 {
> +		i2c-pins {
> +			pins = "GPIO0_19", /* I2C4_SDA */
> +			       "GPIO0_18"; /* I2C4_SCL */
> +			function = "i2c";
> +			bias-pull-up = <48000>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c5_pins: i2c5-0 {
> +		i2c-pins {
> +			pins = "QSPI1_D0_MOSI", /* I2C5_SDA */
> +			       "QSPI1_CSN0";    /* I2C5_SCL */
> +			function = "i2c";
> +			bias-pull-up = <48000>;
> +			drive-strength = <7>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &uart0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";
>  };
> +
> +&i2c0 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins>;
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c32";
> +		reg = <0x50>;
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4_pins>;
> +	status = "okay";
> +};
> +
> +&i2c5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5_pins>;
> +	status = "okay";
> +};

These nodes are still not sorted alphabetically.

>
> --
> 2.45.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

