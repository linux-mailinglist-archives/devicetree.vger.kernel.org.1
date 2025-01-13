Return-Path: <devicetree+bounces-138069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1D8A0BA5C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1046163983
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5DF23A0FA;
	Mon, 13 Jan 2025 14:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sn9JnvjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F81523A0F8
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779842; cv=none; b=UfD8w2ShRqPmzZXC90TK93ZonfaBLjKNO8a/n84jKXDPHn21PAGU9wMoGswtsOxPRqL5KL+Tp9jvt4wrI5xZtjgkE62NWqHumhaNptyHVqgW9tC6jmX4i5p9NEIdKmhjx2vEPOlcTvQXr8625L3y1OPZH/uLKrS4e2pSccxzE40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779842; c=relaxed/simple;
	bh=3HA39ymYx305lNUVvQ39CYDqNTgXsVMHBSc2aSGZF38=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=uF773eHMZUyWDkeciCQs5gu6gmFnsyBTIsfpdEigJeIyAK4Y9dFawib0slogKW6pt/ZHy/5rVKFopURcsuk55Xyl/yTkKIx23tsCj/xXXl/LViuC6v+4w3B0CMM164KhQs9kjtsUWZ5R/7U+21NPAcD9cnYj8u2wB46vrpw5jHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sn9JnvjQ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436345cc17bso31667645e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736779838; x=1737384638; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1s3giDUI3z0SKMOQ7RZwo1PdDhJrl+0Xcjh+T+MelhY=;
        b=sn9JnvjQbkMacFgBaK2gH0TvlLxPNn3E6jwe4mttrEL8376VCM3NVYlcqUg4LGsUZh
         9H/gJvBrmWxGz3cAPLSRvu6CGnER2RLIrDYGEejQ31kDyzZVT0G5SJixHvywfuvXc84g
         0EpvTw0OfyeV2zx5Wikm5JF+b5ZM4FcNe481P769neNqkwDvFoBPQ5VA6cPWeZQMd7G1
         ftP4lwP2zBQJgW3ev81jCGk630yCx7w7P9wBJYTQ/Zfz9pX6wJq6GOwq0IKWoFTQCNZh
         j6sI1RJ0O6yMrTgG7TUYxm5SfxuwrWxpF4finVSBDoBFldJ2e5UtM3S7Q8u4jxu7mhR5
         btMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779838; x=1737384638;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1s3giDUI3z0SKMOQ7RZwo1PdDhJrl+0Xcjh+T+MelhY=;
        b=P4qd9p/jqlvI6tufCxs99HW5aczgbrpLyV0a9VtjImGatmHC5FPr3uLAFWAoMHZ4gJ
         TPuVdbQRplUqulq7NXGdDb/nm2/EseBce04z9dFqgit2HflHCGm6A6tHgzyFwOQbdlhp
         UPLFM+VBUVoOpITi1v8z94dBFjmkzedGXJmVzddSzOszbe0BhRZVjFg0kw7mljubmFcX
         pUFTNbGUeWSTTsfQUD1C8xXN9tZWg1t197XMkj+c+lyDTEQIcDQc0lUV02GMr5//DVRt
         xOpU+x6xvHS0hpKXFPOe4ZP3BD+Cf8DRHg8nsz9Hq3ZvlCyvy0hColmgmh4cllKIoTo5
         +NKw==
X-Forwarded-Encrypted: i=1; AJvYcCX+ObgBjYwNt+7VBACVa+wVlgizW2iVaYiGJ0FP6ZEV6uJ2GPiDtkoHzg0rILssR856KopK2xGbA8kS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/Ip/1zMURFEwpIHD4wl+FgPFWyYcmTnr9GKiUUOYyz701av/1
	eqiVcGmAxeEJjYoxGy4Z9ehfZliuKrn9sJoI8RB0r4VD/UquggzDdS+ZKjyUrDY=
X-Gm-Gg: ASbGncv8ctwTulH+ncOIIdcR63S5uiEO85JZHMBEcrtmS4rZ+ZBxxI1JEQq5v9j6izb
	qx3jxhKfia3g5YClL+MuZHrwGwQHUo1uggCbSo2dwKHy9KW1URB2Jdk1dEAXbWjW2tY+g4PhsAW
	8gK4oGzph0r5yd+7GwgYODWkYzXWiX+YFeEPtjjJ36Tb1ddhYXCN/1ntuZOlQeg3OZmORKBusIp
	9S+Pbo3Zvt6rJF24E8kjXk9HQuxegDIz4U3PiY4fFu0CX+YsHzFcJPK
X-Google-Smtp-Source: AGHT+IEMaivEZj86NHY87IPoy73STxO4Y+4wLZhIMG2hyxIdVgYKeXAF+6aPgA6Nv71/tRETIaJqTw==
X-Received: by 2002:a05:600c:4511:b0:434:fe3c:c67c with SMTP id 5b1f17b1804b1-436e26e51eemr168721215e9.26.1736779837618;
        Mon, 13 Jan 2025 06:50:37 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:9d2d:28cc:aafd:8429])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2ddcb5bsm182910565e9.23.2025.01.13.06.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:50:37 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Jaroslav Kysela <perex@perex.cz>,
  Takashi Iwai <tiwai@suse.com>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  jiebing.chen@amlogic.com,  linux-sound@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: amlogic: Add Amlogic S4 Audio
In-Reply-To: <20250113-audio_drvier-v1-3-8c14770f38a0@amlogic.com> (jiebing
	chen via's message of "Mon, 13 Jan 2025 14:35:15 +0800")
References: <20250113-audio_drvier-v1-0-8c14770f38a0@amlogic.com>
	<20250113-audio_drvier-v1-3-8c14770f38a0@amlogic.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Mon, 13 Jan 2025 15:50:36 +0100
Message-ID: <1jldve939f.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon 13 Jan 2025 at 14:35, jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org> wrote:

> From: jiebing chen <jiebing.chen@amlogic.com>
>
> Add basic audio driver support for the Amlogic S4 based Amlogic
> AQ222 board.
>
> Signed-off-by: jiebing chen <jiebing.chen@amlogic.com>
> ---
>  .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     | 226 ++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-s4.dtsi          | 385 ++++++++++++++++++++-
>  2 files changed, 610 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> index 6730c44642d2910d42ec0c4adf49fefc3514dbec..32f50a5b860435d50d9c5528b43422b705b20130 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> @@ -75,6 +75,19 @@ vddio_ao1v8: regulator-vddio-ao1v8 {
>  	       regulator-always-on;
>  	};
>  
> +	vcc5v_reg: regulator-vcc-5v {
> +		compatible = "regulator-fixed";
> +		vin-supply = <&main_12v>;
> +		regulator-name = "VCC5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio GPIOH_7 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <7000>;
> +		enable-active-high;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
>  	/* SY8120B1ABC DC/DC Regulator. */
>  	vddcpu: regulator-vddcpu {
>  		compatible = "pwm-regulator";
> @@ -129,6 +142,219 @@ vddcpu: regulator-vddcpu {
>  				<699000 98>,
>  				<689000 100>;
>  	};
> +	dmics: audio-codec-1 {
> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <2>;
> +		wakeup-delay-ms = <50>;
> +		sound-name-prefix = "MIC";
> +	};
> +
> +	dioo2133: audio-amplifier-0 {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio GPIOH_8 GPIO_ACTIVE_HIGH>;
> +		VCC-supply = <&vcc5v_reg>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "10U2";
> +	};
> +
> +	spdif_dir: audio-spdif-in {
> +		compatible = "linux,spdif-dir";
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "DIR";
> +	};
> +
> +	spdif_dit: audio-spdif-out {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "DIT";
> +	};
> +
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "aq222";
> +		audio-widgets = "Line", "Lineout";
> +		audio-aux-devs = <&tdmout_a>, <&tdmout_b>, <&tdmout_c>,
> +				 <&tdmin_a>, <&tdmin_b>, <&tdmin_c>,
> +				 <&tdmin_lb>, <&dioo2133>, <&tdmout_pad>, <&toacodec>;
> +		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
> +				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
> +				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
> +				"TDM_A Playback", "TDMOUT_A OUT",
> +				"TDMA_OUT SEL",   "TDM_A Playback",
> +				"TDMOUT_B IN 0", "FRDDR_A OUT 1",
> +				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> +				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> +				"TDM_B Playback", "TDMOUT_B OUT",
> +				"TDMB_OUT SEL",   "TDM_B Playback",
> +				"TDMOUT_C IN 0", "FRDDR_A OUT 2",
> +				"TDMOUT_C IN 1", "FRDDR_B OUT 2",
> +				"TDMOUT_C IN 2", "FRDDR_C OUT 2",
> +				"TDM_C Playback", "TDMOUT_C OUT",
> +				"TDMC_OUT SEL",   "TDM_C Playback",
> +				"TOACODEC TDMA", "TDM_A Playback",
> +				"TOACODEC TDMB", "TDM_B Playback",
> +				"TOACODEC TDMC", "TDM_C Playback",
> +				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
> +				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
> +				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3",
> +				"SPDIFOUT_B IN 0", "FRDDR_A OUT 4",
> +				"SPDIFOUT_B IN 1", "FRDDR_B OUT 4",
> +				"SPDIFOUT_B IN 2", "FRDDR_C OUT 4",
> +				"TDMIN_A IN 0", "TDM_A Capture",
> +				"TDMIN_A IN 1", "TDM_B Capture",
> +				"TDMIN_A IN 2", "TDM_C Capture",
> +				"TDMIN_A IN 3", "TDM_A Loopback",
> +				"TDMIN_A IN 4", "TDM_B Loopback",
> +				"TDMIN_A IN 5", "TDM_C Loopback",
> +				"TDMIN_B IN 0", "TDM_A Capture",
> +				"TDMIN_B IN 1", "TDM_B Capture",
> +				"TDMIN_B IN 2", "TDM_C Capture",
> +				"TDMIN_B IN 3", "TDM_A Loopback",
> +				"TDMIN_B IN 4", "TDM_B Loopback",
> +				"TDMIN_B IN 5", "TDM_C Loopback",
> +				"TDMIN_C IN 0", "TDM_A Capture",
> +				"TDMIN_C IN 1", "TDM_B Capture",
> +				"TDMIN_C IN 2", "TDM_C Capture",
> +				"TDMIN_C IN 3", "TDM_A Loopback",
> +				"TDMIN_C IN 4", "TDM_B Loopback",
> +				"TDMIN_C IN 5", "TDM_C Loopback",
> +				"TDMIN_LB IN 3", "TDM_A Capture",
> +				"TDMIN_LB IN 4", "TDM_B Capture",
> +				"TDMIN_LB IN 5", "TDM_C Capture",
> +				"TDMIN_LB IN 0", "TDM_A Loopback",
> +				"TDMIN_LB IN 1", "TDM_B Loopback",
> +				"TDMIN_LB IN 2", "TDM_C Loopback",
> +				"TODDR_A IN 0", "TDMIN_A OUT",
> +				"TODDR_B IN 0", "TDMIN_A OUT",
> +				"TODDR_C IN 0", "TDMIN_A OUT",
> +				"TODDR_A IN 1", "TDMIN_B OUT",
> +				"TODDR_B IN 1", "TDMIN_B OUT",
> +				"TODDR_C IN 1", "TDMIN_B OUT",
> +				"TODDR_A IN 2", "TDMIN_C OUT",
> +				"TODDR_B IN 2", "TDMIN_C OUT",
> +				"TODDR_C IN 2", "TDMIN_C OUT",
> +				"TODDR_A IN 3", "SPDIFIN Capture",
> +				"TODDR_B IN 3", "SPDIFIN Capture",
> +				"TODDR_C IN 3", "SPDIFIN Capture",
> +				"TODDR_A IN 6", "TDMIN_LB OUT",
> +				"TODDR_B IN 6", "TDMIN_LB OUT",
> +				"TODDR_C IN 6", "TDMIN_LB OUT",
> +				"10U2 INL", "ACODEC LOLP",
> +				"10U2 INR", "ACODEC LORP",
> +				"Lineout", "10U2 OUTL",
> +				"Lineout", "10U2 OUTR";
> +		assigned-clocks = <&clkc_pll CLKID_HIFI_PLL>,
> +				  <&clkc_pll CLKID_MPLL2>,
> +				  <&clkc_pll CLKID_MPLL0>,
> +				  <&clkc_pll CLKID_MPLL1>;
> +		assigned-clock-rates = <491520000>,
> +				       <294912000>,
> +				       <270950400>,
> +				       <393216000>;

Why do you need 4 base rates ? Which rate family does each provide ?

> +
> +		dai-link-0 {
> +			sound-dai = <&frddr_a>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&frddr_b>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&frddr_c>;
> +		};
> +
> +		dai-link-3 {
> +			sound-dai = <&toddr_a>;
> +		};
> +
> +		dai-link-4 {
> +			sound-dai = <&toddr_b>;
> +		};
> +
> +		dai-link-5 {
> +			sound-dai = <&toddr_c>;
> +		};
> +
> +		/* Connected to the WIFI/BT chip */
> +		dai-link-6 {
> +			sound-dai = <&tdmif_a>;
> +			dai-format = "dsp_a";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			mclk-fs = <256>;
> +			codec-0 {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_A>;
> +			};
> +		};
> +
> +		/* Connected to the onboard AD82584F DAC */
> +		dai-link-7 {
> +			sound-dai = <&tdmif_b>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&acodec>;
> +			};
> +
> +			codec-1 {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> +			};
> +		};
> +
> +		/* 8ch HDMI interface */
> +		dai-link-8 {
> +			sound-dai = <&tdmif_c>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			dai-tdm-slot-tx-mask-1 = <1 1>;
> +			dai-tdm-slot-tx-mask-2 = <1 1>;
> +			dai-tdm-slot-tx-mask-3 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&acodec>;
> +			};
> +
> +			codec-1 {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_C>;
> +			};
> +		};
> +
> +		/* spdif hdmi and coax output */
> +		dai-link-9 {
> +			sound-dai = <&spdifout_a>;
> +
> +			codec-0 {
> +				sound-dai = <&spdif_dit>;
> +			};
> +
> +			codec-1 {
> +				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_A>;
> +			};
> +		};
> +
> +		/* spdif hdmi interface */
> +		dai-link-10 {
> +			sound-dai = <&spdifout_b>;
> +
> +			codec {
> +				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_B>;
> +			};
> +		};
> +
> +		/* spdif coax input */
> +		dai-link-11 {
> +			sound-dai = <&spdifin>;
> +
> +			codec {
> +				sound-dai = <&spdif_dir>;
> +			};
> +		};
> +	};
> +
>  };
>  
>  &pwm_ef {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index 957577d986c0675a503115e1ccbc4387c2051620..87a00ace23131e31822bb43fbe956b8abcbaef40 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -11,7 +11,11 @@
>  #include <dt-bindings/clock/amlogic,s4-peripherals-clkc.h>
>  #include <dt-bindings/power/meson-s4-power.h>
>  #include <dt-bindings/reset/amlogic,meson-s4-reset.h>
> -
> +#include <dt-bindings/clock/axg-audio-clkc.h>
> +#include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
> +#include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
> +#include <dt-bindings/sound/meson-g12a-toacodec.h>
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  / {
>  	cpus {
>  		#address-cells = <2>;
> @@ -46,6 +50,42 @@ cpu3: cpu@3 {
>  		};
>  	};
>  
> +	tdmif_a: audio-controller-0 {
> +		compatible = "amlogic,axg-tdm-iface";
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "TDM_A";
> +		clocks = <&clkc_audio AUD_CLKID_MST_A_MCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_A_SCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_A_LRCLK>;
> +		clock-names = "mclk", "sclk", "lrclk";
> +		assigned-clocks = <&clkc_audio AUD_CLKID_MST_A_MCLK_SEL>;
> +		assigned-clock-parents = <&clkc_pll CLKID_HIFI_PLL>;

Based on clock provider used, I doubt this is of any use.

> +	};
> +
> +	tdmif_b: audio-controller-1 {
> +		compatible = "amlogic,axg-tdm-iface";
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "TDM_B";
> +		clocks = <&clkc_audio AUD_CLKID_MST_B_MCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_B_SCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_B_LRCLK>;
> +		clock-names = "mclk", "sclk", "lrclk";
> +		assigned-clocks = <&clkc_audio AUD_CLKID_MST_B_MCLK_SEL>;
> +		assigned-clock-parents = <&clkc_pll CLKID_HIFI_PLL>;
> +	};
> +
> +	tdmif_c: audio-controller-2 {
> +		compatible = "amlogic,axg-tdm-iface";
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "TDM_C";
> +		clocks = <&clkc_audio AUD_CLKID_MST_C_MCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_C_SCLK>,
> +			 <&clkc_audio AUD_CLKID_MST_C_LRCLK>;
> +		clock-names = "mclk", "sclk", "lrclk";
> +		assigned-clocks = <&clkc_audio AUD_CLKID_MST_C_MCLK_SEL>;
> +		assigned-clock-parents = <&clkc_pll CLKID_HIFI_PLL>;
> +	};
> +
>  	timer {
>  		compatible = "arm,armv8-timer";
>  		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> @@ -850,3 +890,346 @@ emmc: mmc@fe08c000 {
>  		};
>  	};
>  };
> +
> +&apb4 {
> +	audio: bus@330000 {
> +		compatible = "simple-bus";
> +		reg = <0x0 0x330000 0x0 0x1000>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x0 0x0 0x0 0x330000 0x0 0x1000>;
> +
> +		clkc_audio: clock-controller@0 {
> +			compatible = "amlogic,sm1-audio-clkc";

I suspect the DT folks would like having SoC specific compatible in
addition to the fall back. In that case, I think that would be wise. I
doubt the compatibility will hold in the long run.

Same goes for the other HW components.

> +			reg = <0x0 0x0 0x0 0xb4>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			power-domains = <&pwrc PWRC_S4_AUDIO_ID>;
> +			clocks = <&clkc_periphs CLKID_AUDIO>,
> +				 <&clkc_pll CLKID_MPLL0>,
> +				 <&clkc_pll CLKID_MPLL1>,
> +				 <&clkc_pll CLKID_MPLL2>,
> +				 <&clkc_pll CLKID_MPLL3>,
> +				 <&clkc_pll CLKID_HIFI_PLL>,
> +				 <&clkc_pll CLKID_FCLK_DIV3>,
> +				 <&clkc_pll CLKID_FCLK_DIV4>,
> +				 <&clkc_pll CLKID_FCLK_DIV5>;
> +			clock-names = "pclk",
> +				      "mst_in0",
> +				      "mst_in1",
> +				      "mst_in2",
> +				      "mst_in3",
> +				      "mst_in4",
> +				      "mst_in5",
> +				      "mst_in6",
> +				      "mst_in7";
> +
> +			resets = <&reset RESET_AUDIO>;
> +		};
> +
> +		toddr_a: audio-controller@100 {
> +			compatible = "amlogic,sm1-toddr",
> +				     "amlogic,axg-toddr";
> +			reg = <0x0 0x100 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "TODDR_A";
> +			interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_TODDR_A>;
> +			resets = <&arb AXG_ARB_TODDR_A>,
> +				 <&clkc_audio AUD_RESET_TODDR_A>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <8192>;
> +		};
> +
> +		toddr_b: audio-controller@140 {
> +			compatible = "amlogic,sm1-toddr",
> +				     "amlogic,axg-toddr";
> +			reg = <0x0 0x140 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "TODDR_B";
> +			interrupts = <GIC_SPI 33 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_TODDR_B>;
> +			resets = <&arb AXG_ARB_TODDR_B>,
> +				 <&clkc_audio AUD_RESET_TODDR_B>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		toddr_c: audio-controller@180 {
> +			compatible = "amlogic,sm1-toddr",
> +				     "amlogic,axg-toddr";
> +			reg = <0x0 0x180 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "TODDR_C";
> +			interrupts = <GIC_SPI 34 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_TODDR_C>;
> +			resets = <&arb AXG_ARB_TODDR_C>,
> +				 <&clkc_audio AUD_RESET_TODDR_C>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		frddr_a: audio-controller@1c0 {
> +			compatible = "amlogic,sm1-frddr",
> +				     "amlogic,axg-frddr";
> +			reg = <0x0 0x1c0 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "FRDDR_A";
> +			interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
> +			resets = <&arb AXG_ARB_FRDDR_A>,
> +				 <&clkc_audio AUD_RESET_FRDDR_A>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <512>;
> +		};
> +
> +		frddr_b: audio-controller@200 {
> +			compatible = "amlogic,sm1-frddr",
> +				     "amlogic,axg-frddr";
> +			reg = <0x0 0x200 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "FRDDR_B";
> +			interrupts = <GIC_SPI 37 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_FRDDR_B>;
> +			resets = <&arb AXG_ARB_FRDDR_B>,
> +				 <&clkc_audio AUD_RESET_FRDDR_B>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		frddr_c: audio-controller@240 {
> +			compatible = "amlogic,sm1-frddr",
> +				     "amlogic,axg-frddr";
> +			reg = <0x0 0x240 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "FRDDR_C";
> +			interrupts = <GIC_SPI 38 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_FRDDR_C>;
> +			resets = <&arb AXG_ARB_FRDDR_C>,
> +				 <&clkc_audio AUD_RESET_FRDDR_C>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		arb: reset-controller@280 {
> +			compatible = "amlogic,meson-sm1-audio-arb";
> +			reg = <0x0 0x280 0x0 0x4>;
> +			#reset-cells = <1>;
> +			clocks = <&clkc_audio AUD_CLKID_DDR_ARB>;
> +		};
> +
> +		tdmin_a: audio-controller@300 {
> +			compatible = "amlogic,sm1-tdmin",
> +				     "amlogic,axg-tdmin";
> +			reg = <0x0 0x300 0x0 0x40>;
> +			sound-name-prefix = "TDMIN_A";
> +			resets = <&clkc_audio AUD_RESET_TDMIN_A>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMIN_A>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_A_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_A_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_A_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_A_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		tdmin_b: audio-controller@340 {
> +			compatible = "amlogic,sm1-tdmin",
> +				     "amlogic,axg-tdmin";
> +			reg = <0x0 0x340 0x0 0x40>;
> +			sound-name-prefix = "TDMIN_B";
> +			resets = <&clkc_audio AUD_RESET_TDMIN_B>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMIN_B>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_B_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_B_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_B_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_B_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		tdmin_c: audio-controller@380 {
> +			compatible = "amlogic,sm1-tdmin",
> +				     "amlogic,axg-tdmin";
> +			reg = <0x0 0x380 0x0 0x40>;
> +			sound-name-prefix = "TDMIN_C";
> +			resets = <&clkc_audio AUD_RESET_TDMIN_C>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMIN_C>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_C_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_C_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_C_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_C_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		tdmin_lb: audio-controller@3c0 {
> +			compatible = "amlogic,sm1-tdmin",
> +				     "amlogic,axg-tdmin";
> +			reg = <0x0 0x3c0 0x0 0x40>;
> +			sound-name-prefix = "TDMIN_LB";
> +			resets = <&clkc_audio AUD_RESET_TDMIN_LB>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMIN_LB>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_LB_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_LB_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_LB_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMIN_LB_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		spdifin: audio-controller@400 {
> +			compatible = "amlogic,g12a-spdifin",
> +				     "amlogic,axg-spdifin";
> +			reg = <0x0 0x400 0x0 0x30>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "SPDIFIN";
> +			interrupts = <GIC_SPI 151 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_SPDIFIN>,
> +			<&clkc_audio AUD_CLKID_SPDIFIN_CLK>;
> +			clock-names = "pclk", "refclk";
> +			resets = <&clkc_audio AUD_RESET_SPDIFIN>;
> +		};
> +
> +		spdifout_a: audio-controller@480 {
> +			compatible = "amlogic,g12a-spdifout",
> +				     "amlogic,axg-spdifout";
> +			reg = <0x0 0x480 0x0 0x50>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "SPDIFOUT_A";
> +			clocks = <&clkc_audio AUD_CLKID_SPDIFOUT>,
> +			<&clkc_audio AUD_CLKID_SPDIFOUT_CLK>;
> +			clock-names = "pclk", "mclk";
> +			resets = <&clkc_audio AUD_RESET_SPDIFOUT>;
> +		};
> +
> +		tdmout_a: audio-controller@500 {
> +			compatible = "amlogic,sm1-tdmout";
> +			reg = <0x0 0x500 0x0 0x40>;
> +			sound-name-prefix = "TDMOUT_A";
> +			resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		tdmout_b: audio-controller@540 {
> +			compatible = "amlogic,sm1-tdmout";
> +			reg = <0x0 0x540 0x0 0x40>;
> +			sound-name-prefix = "TDMOUT_B";
> +			resets = <&clkc_audio AUD_RESET_TDMOUT_B>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMOUT_B>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_B_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_B_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_B_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_B_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		tdmout_c: audio-controller@580 {
> +			compatible = "amlogic,sm1-tdmout";
> +			reg = <0x0 0x580 0x0 0x40>;
> +			sound-name-prefix = "TDMOUT_C";
> +			resets = <&clkc_audio AUD_RESET_TDMOUT_C>;
> +			clocks = <&clkc_audio AUD_CLKID_TDMOUT_C>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_C_SCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_C_SCLK_SEL>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_C_LRCLK>,
> +				 <&clkc_audio AUD_CLKID_TDMOUT_C_LRCLK>;
> +			clock-names = "pclk", "sclk", "sclk_sel",
> +				      "lrclk", "lrclk_sel";
> +		};
> +
> +		spdifout_b: audio-controller@680 {
> +			compatible = "amlogic,g12a-spdifout",
> +				     "amlogic,axg-spdifout";
> +			reg = <0x0 0x680 0x0 0x50>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "SPDIFOUT_B";
> +			clocks = <&clkc_audio AUD_CLKID_SPDIFOUT_B>,
> +				 <&clkc_audio AUD_CLKID_SPDIFOUT_B_CLK>;
> +			clock-names = "pclk", "mclk";
> +			resets = <&clkc_audio AUD_RESET_SPDIFOUT_B>;
> +		};
> +
> +		toacodec: audio-controller@740 {
> +			compatible = "amlogic,s4-tocodec";
> +			reg = <0x0 0x740 0x0 0x4>;
> +			sound-name-prefix = "TOACODEC";
> +			resets = <&clkc_audio AUD_RESET_TOACODEC>;
> +		};
> +
> +		tohdmitx: audio-controller@744 {
> +			compatible = "amlogic,sm1-tohdmitx",
> +				     "amlogic,g12a-tohdmitx";
> +			reg = <0x0 0x744 0x0 0x4>;
> +			#sound-dai-cells = <1>;
> +			sound-name-prefix = "TOHDMITX";
> +			resets = <&clkc_audio AUD_RESET_TOHDMITX>;
> +		};
> +
> +		toddr_d: audio-controller@840 {
> +			compatible = "amlogic,sm1-toddr",
> +				     "amlogic,axg-toddr";
> +			reg = <0x0 0x840 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "TODDR_D";
> +			interrupts = <GIC_SPI 45 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_TODDR_D>;
> +			resets = <&arb AXG_ARB_TODDR_D>,
> +				 <&clkc_audio AUD_RESET_TODDR_D>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		frddr_d: audio-controller@880 {
> +			 compatible = "amlogic,sm1-frddr",
> +				      "amlogic,axg-frddr";
> +			reg = <0x0 0x880 0x0 0x2c>;
> +			#sound-dai-cells = <0>;
> +			sound-name-prefix = "FRDDR_D";
> +			interrupts = <GIC_SPI 46 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&clkc_audio AUD_CLKID_FRDDR_D>;
> +			resets = <&arb AXG_ARB_FRDDR_D>,
> +				 <&clkc_audio AUD_RESET_FRDDR_D>;
> +			reset-names = "arb", "rst";
> +			amlogic,fifo-depth = <256>;
> +		};
> +
> +		tdmout_pad: audio-controller@E58 {
> +			compatible = "amlogic,s4-tdmout-pad";
> +			reg = <0x0 0xe58 0x0 0x28>;
> +		};
> +	};
> +
> +	pdm: audio-controller@331000 {
> +		compatible = "amlogic,sm1-pdm",
> +			     "amlogic,axg-pdm";
> +		reg = <0x0 0x331000 0x0 0x34>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "PDM";
> +		clocks = <&clkc_audio AUD_CLKID_PDM>,
> +			 <&clkc_audio AUD_CLKID_PDM_DCLK>,
> +			 <&clkc_audio AUD_CLKID_PDM_SYSCLK>;
> +		clock-names = "pclk", "dclk", "sysclk";
> +		resets = <&clkc_audio AUD_RESET_PDM>;
> +		assigned-clocks = <&clkc_audio AUD_CLKID_PDM_DCLK_SEL>,
> +				  <&clkc_audio AUD_CLKID_PDM_SYSCLK_SEL>;
> +		assigned-clock-parents = <&clkc_pll CLKID_HIFI_PLL>,<&clkc_pll CLKID_HIFI_PLL>;
> +	};
> +	 acodec: audio-controller@1A000 {
> +		compatible = "amlogic,t9015";
> +		reg = <0x0 0x1A000 0x0 0x14>;
> +		#sound-dai-cells = <0>;
> +		sound-name-prefix = "ACODEC";
> +		clocks = <&clkc_periphs CLKID_ACODEC>;
> +		clock-names = "pclk";
> +		resets = <&reset RESET_ACODEC>;
> +	};
> +
> +};

-- 
Jerome

