Return-Path: <devicetree+bounces-271345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKabIoIFqWlW0QAAu9opvQ
	(envelope-from <devicetree+bounces-271345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:24:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6844920AC38
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 05:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14439300699E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 04:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F5D21D5AF;
	Thu,  5 Mar 2026 04:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ht85c1mr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1042AD16
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 04:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772684668; cv=pass; b=G3Ix86V41V0ElrE6+EL/o0ogy52vwLYUJxWq5VWMp3TIRWXE7GrFHB7Iult1sknSd1reMvUVbayQgBzn1kTQ4HcXbUYXgbdOmLCp/G2TbOW88JdTxz6t2YP/FsbGXY00+/x0dc9/o4F1aQcqPTaksYjufq+BgyIa/2iM4sYZ/2s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772684668; c=relaxed/simple;
	bh=JdD0X39D1VWp7KdCg4ePwdtG9VhhO9cRgB0z7082Gdw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z8C5Rpu+hrl67HlvYfIQTsz2c8aDh67iflRKDE5F0JOjL60Fy/VtIgPUpaV5gmpwwDbV9hrIrmb0FIGcrypTtl6i0Hf59e3FJ+Rsd1URiAB5R/cZLbSWMd8M8V/FaG3EwcaVlS48Wee/ckcPgMM0cUISKFOwqrVCB/lSAicqfBs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ht85c1mr; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b94a19fdso3776195f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 20:24:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772684665; cv=none;
        d=google.com; s=arc-20240605;
        b=WVLt5ozN9eQZr2/z6XBefp66TZuzCNZSrjfLnWpRBl9Ux8sP3Qw7FffFjd462esqWn
         AgVCcXtrICYhecopcq4M7utH3c4rRDndb49HHgADYVffcPiyi+KQCFWKH2pVFIi+/NTa
         9DUCeKa/as35Gte4HkmodqEUBznxZzfY46c3mrVi/zxrUiNSkqjd+HXAg8cEi88+ZUUN
         RRkTu1cY8Es9TODU0kuE2uSzovaB2tj+nWB+1ZWoyxiNMpDSusiT245sM0gPWSztlVXc
         5lmlOvs7tocKvxEozlSB/GUdSmkm9AVTGUfu6WAt/USEm00uI4gwwoTnIf5z8Jn0IPCD
         lX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0XYLyMKJ0dlF29hBtXI26zZL2A2fy41jRfFsqvLL2kY=;
        fh=ADDOQA1H2pL74mPQlJjZApF+ZdJ8h87mzM8ry3cK8OM=;
        b=TUvqh5E6qj69e9w+66Z5OcxnVsUaaAewtTF6H5YVcWf3a/fDOIkKFDYGVKWXVCVF87
         6s6CTdHdrY65NIpLBfKRR/DQuMxsiJzASyONj3kCOxfkTdeDpq0Pfk35MqOMePwsKMXT
         YymNA1FHi8lNjDPK5fOKXV8YbQtgMf4vVADUkxGqI+bMhXlHRr1w6kHWflxJ+ggTQ41v
         zIZkSkMwANB4L9NzuOsSpKJkrU6h3z3kMcuWtK0FE47dY4379xrLcfDT9MMhmZjZ8rhb
         oLE1bbMUSAG3s4mVzjYjop19t2IkS5wt2a8fZ/e8ScFoAB88Mf3fszJVbIVwEZLwKE2r
         fxlA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772684665; x=1773289465; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XYLyMKJ0dlF29hBtXI26zZL2A2fy41jRfFsqvLL2kY=;
        b=ht85c1mrHMw8L8p9C9CKzDMGL8vNSkQq3vLHxv1hjXHEoo6wMqmP48daBahGc8TV0T
         rFzvOOTNFwfMAlEMGN3FTCEG1K1je6RjUB6jGGbRYdVMdX6ycd9jSYG0EIG2nGyWSyYf
         X52lNv5enKNug7+lUJ8yP+Qy/aysi6zGgbUEtZhfRG9YOQdSEJ+V5m34rvVvgejfiAIW
         IMHUybySJW2SNflYAK+2frn9lBLXZ1rCpeKOH5vx6CIwlaLSc7NDQK6SYvtk4FgMAhMf
         hYNPxBRxehIshYKbE7Il9IJYKD/Dr1fWxGKvxbeiHgysLrYRcSR0TmJYjygI6bDypYGx
         0a2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772684665; x=1773289465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0XYLyMKJ0dlF29hBtXI26zZL2A2fy41jRfFsqvLL2kY=;
        b=TyXrjj3V+yfaC5cgXIZ/uWw59bqGy3mKKABzG8McqvjIc9MIT5jMmDkVw2hiqmbhWQ
         iskwX67UfUYtHc1VA8iHCmM5h73Ln6qe3FAKSjb7943egWkmbo2eN6U3mmP+bOnmXqYv
         2ncoFYFq/Zr9pYdBMB3QybIyuvog2zqam9mkWRJleGwIH2OxB+x4Unj1Hflr6Lrs6W7J
         6PMvpt2i8Qj2v6GJxe5lC/nvzWavr3wtpTHkp4Pm4WDHxfKSxwSPJQYPMqGKTI1Xl6CL
         tLyySSQT7DuT3WNqwvLe51XyaQZPjsJbq8xflXW98lqwPcfySVLDAVZhQ1fEeB4JMimU
         DvGA==
X-Forwarded-Encrypted: i=1; AJvYcCVFVOlI+mDGvma6nja09La5Vx7NJ1osXYQpaJwvdDcXjbckyLhpKQhKy7SMIEhK7a/61FLIZDuV+W4d@vger.kernel.org
X-Gm-Message-State: AOJu0YxJp4aznrYDA/krglmrUJSO1XHnDhXZWv9bz3MwJBIIygozFIHr
	M9ea0C3fO0410rywswcMrMdNw28JTQFTpDzASVXCdfgx6VstxTfy3/XtUg6tXNYiZtEtlvFAXL7
	jnsN9SZpTQtEDRZ48gSbVReXmnBpxfpQ=
X-Gm-Gg: ATEYQzwpFr+Nu4pZuUlJxPkUK0bvJCGD0PZ5hos5l38CCfZ0zxo0iLQfGTO8hIDC/o7
	lvlmcwOeTG6guhlPMfjgqAN76pWA724wxBFJWAyBrV9czINMgI3PRsctJxNz5I5MI4v67qUQZSC
	eLgHZryaBQKS1+BSKQQMQmRlTPEohXCE3sb7ctL8cAe7MtxfVocdyT8+ttF0N2LYTv/+Ynzz3m9
	tuVLJfbwfiQi3v/eqpcCCOzxAhk7C4eGoLtKkSYUWC9fG+966sXcyTKPrJvFAfVpvcXVPPlB03o
	XTDLnBG+3JP21LCKY5Tn4S8TgIY7oJ9T5jTl0rY=
X-Received: by 2002:a05:6000:200c:b0:439:9282:e728 with SMTP id
 ffacd0b85a97d-439c7f64ff6mr8318259f8f.2.1772684664323; Wed, 04 Mar 2026
 20:24:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304025521.210377-1-dennis@ausil.us> <20260304025521.210377-4-dennis@ausil.us>
In-Reply-To: <20260304025521.210377-4-dennis@ausil.us>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 4 Mar 2026 22:24:13 -0600
X-Gm-Features: AaiRm53bqxmyn-czRCDphwYeS1JqLKfQ7eIga1HoF08yLPfZl8dXBWFpfflHnow
Message-ID: <CALWfF7KYSML_W_1Wn=jESepQo7sN1qZyaXQk_rqX5ZGowQw=-Q@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 6844920AC38
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271345-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid,orangepi.org:url,infradead.org:url,infradead.org:email,0.0.0.1:email]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 8:55=E2=80=AFPM <dennis@ausil.us> wrote:
>
> From: Dennis Gilmore <dennis@ausil.us>
>
> Add device tree for the Xunlong Orange Pi 5 Pro (RK3588S). The Pro
> differs from the base Orange Pi 5 in the following ways:
>
> - No SPI NOR flash; eMMC module slot instead, you can optionally solder
>   a SPI NOR fin place and turn off the eMMC
> - PCIe-attached NIC (pcie2x1l1) replaces the GMAC1 ethernet
> - PCIe NVMe slot (pcie2x1l2)
> - AP6256 WiFi (BCM43456) via SDIO with mmc-pwrseq
> - BCM4345C5 Bluetooth via uart9 with full RTS/CTS
> - Two-colour (blue/green) GPIO LED using modern color/function binding
> - audio is wired up differently
>
> Vendors description and links to schematics available:
> http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details=
/Orange-Pi-5-Pro.html
>
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
>  2 files changed, 377 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.d=
ts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index 4d384f153c13..c99dca2ae9e7 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -214,6 +214,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-nanopi-r6c.d=
tb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-odroid-m2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5b.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-cm5-base.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-radxa-cm5-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-roc-pc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> new file mode 100644
> index 000000000000..d656328c906d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> @@ -0,0 +1,376 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-orangepi-5.dtsi"
> +
> +/ {
> +       model =3D "Xunlong Orange Pi 5 Pro";
> +       compatible =3D "xunlong,orangepi-5-pro", "rockchip,rk3588s";
> +
> +       aliases {
> +               /delete-property/ ethernet0;
This looks the same as the V1. Can you send the updated version.

> +               mmc0 =3D &sdhci;
> +               mmc1 =3D &sdmmc;
> +               mmc2 =3D &sdio;
> +       };
> +
> +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> +       /delete-node/ pwm-leds;
> +
> +       /*
> +        * Pro uses i2s2 (i2s2m1 mux) for audio, not i2s1. Recreate the s=
ound
> +        * card node pointing at i2s2_2ch instead.
> +        */
> +       /delete-node/ analog-sound;
> +
> +       analog-sound {
> +               compatible =3D "simple-audio-card";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&hp_detect>;
> +               simple-audio-card,bitclock-master =3D <&masterdai>;
> +               simple-audio-card,format =3D "i2s";
> +               simple-audio-card,frame-master =3D <&masterdai>;
> +               simple-audio-card,hp-det-gpios =3D <&gpio1 RK_PD5 GPIO_AC=
TIVE_HIGH>;
> +               simple-audio-card,mclk-fs =3D <256>;
> +               simple-audio-card,name =3D "rockchip,es8388";
> +               simple-audio-card,routing =3D
> +                       "Headphones", "LOUT1",
> +                       "Headphones", "ROUT1",
> +                       "LINPUT1", "Microphone Jack",
> +                       "RINPUT1", "Microphone Jack",
> +                       "LINPUT2", "Onboard Microphone",
> +                       "RINPUT2", "Onboard Microphone";
> +               simple-audio-card,widgets =3D
> +                       "Microphone", "Microphone Jack",
> +                       "Microphone", "Onboard Microphone",
> +                       "Headphone", "Headphones";
> +
> +               simple-audio-card,cpu {
> +                       sound-dai =3D <&i2s2_2ch>;
> +               };
> +
> +               masterdai: simple-audio-card,codec {
> +                       sound-dai =3D <&es8388>;
> +                       system-clock-frequency =3D <12288000>;
> +               };
> +       };
> +
> +       fan: pwm-fan {
> +               compatible =3D "pwm-fan";
> +               #cooling-cells =3D <2>;
> +               cooling-levels =3D <0 50 100 150 200 255>;
> +               fan-supply =3D <&vcc5v0_sys>;
> +               pwms =3D <&pwm2 0 20000000 0>;
> +       };
> +
> +       gpio-leds {
> +               compatible =3D "gpio-leds";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&leds_rgb>;
> +
> +               blue-led {
> +                       color =3D <LED_COLOR_ID_BLUE>;
> +                       function =3D LED_FUNCTION_STATUS;
> +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger =3D "heartbeat";
> +               };
> +
> +               green-led {
> +                       color =3D <LED_COLOR_ID_GREEN>;
> +                       function =3D LED_FUNCTION_ACTIVITY;
> +                       gpios =3D <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger =3D "mmc0";
> +               };
> +       };
> +
> +       vcc5v0_otg: regulator-vcc5v0-otg {
> +               compatible =3D "regulator-fixed";
> +               enable-active-high;
> +               gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&vcc5v0_otg_en>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-max-microvolt =3D <5000000>;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-name =3D "vcc5v0_otg";
> +               vin-supply =3D <&vcc5v0_sys>;
> +       };
> +
> +       sdio_pwrseq: sdio-pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               clocks =3D <&hym8563>;
> +               clock-names =3D "ext_clock";
> +               post-power-on-delay-ms =3D <200>;
> +               reset-gpios =3D <&gpio0 RK_PD0 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
> +               compatible =3D "regulator-fixed";
> +               enable-active-high;
> +               gpios =3D <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
> +               regulator-boot-on;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-name =3D "vcc3v3_pcie20";
> +               startup-delay-us =3D <50000>;
> +               vin-supply =3D <&vcc5v0_sys>;
> +       };
> +
> +       vcc3v3_pcie_eth: regulator-vcc3v3-pcie-eth {
> +               compatible =3D "regulator-fixed";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-name =3D "vcc3v3_pcie_eth";
> +               vin-supply =3D <&vcc5v0_sys>;
> +       };
> +};
> +
> +/* disable gmac1 as the pro has a PCIe attached NIC */
> +&gmac1 {
> +       status =3D "disabled";
> +};
> +
> +/* 40-pin header pins 3/5 */
> +&i2c1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c1m4_xfer>;
> +       status =3D "okay";
> +};
> +
> +/*
> + * Pro routes audio codec via i2c3 (not i2c6) and i2s2m1 (not i2s1m0).
> + * Delete the inherited es8388 node from i2c6 and redeclare it here.
> + */
> +/delete-node/ &es8388;
> +
> +&i2c3 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c3m0_xfer>;
> +       status =3D "okay";
> +
> +       es8388: audio-codec@11 {
> +               compatible =3D "everest,es8388", "everest,es8328";
> +               reg =3D <0x11>;
> +               #sound-dai-cells =3D <0>;
> +               AVDD-supply =3D <&vcc_3v3_s0>;
> +               DVDD-supply =3D <&vcc_1v8_s0>;
> +               HPVDD-supply =3D <&vcc_3v3_s0>;
> +               PVDD-supply =3D <&vcc_3v3_s0>;
> +               assigned-clock-rates =3D <12288000>;
> +               assigned-clocks =3D <&cru I2S2_2CH_MCLKOUT>;
> +               clocks =3D <&cru I2S2_2CH_MCLKOUT>;
> +       };
> +};
> +
> +/* 40-pin header pins 27/28 */
> +&i2c4 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c4m3_xfer>;
> +       status =3D "okay";
> +};
> +
> +/*
> + * i2s1_8ch uses i2s1m0 which occupies GPIO4_PA0 (CLKREQ#) and GPIO4_PA1
> + * (WAKE#) needed for the NVMe M.2 slot. Disable it; audio is on i2s2_2c=
h.
> + */
> +&i2s1_8ch {
> +       status =3D "disabled";
> +};
> +
> +/* Audio codec on i2s2, m1 mux; add mclk pin to the base pinctrl */
> +&i2s2_2ch {
> +       pinctrl-0 =3D <&i2s2m1_lrck &i2s2m1_mclk &i2s2m1_sclk
> +                    &i2s2m1_sdi &i2s2m1_sdo>;
> +       status =3D "okay";
> +};
> +
> +&package_thermal {
> +       polling-delay =3D <1000>;
> +
> +       cooling-maps {
> +               map0 {
> +                       trip =3D <&package_fan0>;
> +                       cooling-device =3D <&fan THERMAL_NO_LIMIT 1>;
> +               };
> +
> +               map1 {
> +                       trip =3D <&package_fan1>;
> +                       cooling-device =3D <&fan 2 THERMAL_NO_LIMIT>;
> +               };
> +       };
> +
> +       trips {
> +               package_fan0: package-fan0 {
> +                       hysteresis =3D <2000>;
> +                       temperature =3D <55000>;
> +                       type =3D "active";
> +               };
> +
> +               package_fan1: package-fan1 {
> +                       hysteresis =3D <2000>;
> +                       temperature =3D <65000>;
> +                       type =3D "active";
> +               };
> +       };
> +};
> +
> +/* NVMe */
> +&pcie2x1l1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pcie30x1m1_1_clkreqn &pcie30x1m1_1_waken>;
> +       reset-gpios =3D <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> +       supports-clkreq;
> +       vpcie3v3-supply =3D <&vcc3v3_pcie_eth>;
> +       status =3D "okay";
> +};
> +
> +/* NIC */
> +&pcie2x1l2 {
> +       reset-gpios =3D <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +       vpcie3v3-supply =3D <&vcc3v3_pcie20>;
> +       status =3D "okay";
> +};
> +
> +&pinctrl {
> +       bluetooth {
> +               bt_wake_gpio: bt-wake-pin {
> +                       rockchip,pins =3D <0 RK_PC6 RK_FUNC_GPIO &pcfg_pu=
ll_none>;
> +               };
> +
> +               bt_wake_host_irq: bt-wake-host-irq {
> +                       rockchip,pins =3D <0 RK_PC5 RK_FUNC_GPIO &pcfg_pu=
ll_down>;
> +               };
> +       };
> +
> +       gpio-leds {
> +               leds_rgb: leds-rgb {
> +                       rockchip,pins =3D <1 RK_PC6 RK_FUNC_GPIO &pcfg_pu=
ll_none>,
> +                                       <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull=
_none>;
> +               };
> +       };
> +
> +       usb {
> +               vcc5v0_otg_en: vcc5v0-otg-en {
> +                       rockchip,pins =3D <0 RK_PC4 RK_FUNC_GPIO &pcfg_pu=
ll_none>;
> +               };
> +       };
> +
> +       wlan {
> +               wifi_host_wake_irq: wifi-host-wake-irq {
> +                       rockchip,pins =3D <0 RK_PA0 RK_FUNC_GPIO &pcfg_pu=
ll_down>;
> +               };
> +       };
> +};
> +
> +/* pwm0 pin conflicts with i2c4 pin 27 Pro */
> +&pwm0 {
> +       status =3D "disabled";
> +};
> +
> +&pwm2 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pwm2m1_pins>;
> +       status =3D "okay";
> +};
> +
> +&sdhci {
> +       status =3D "okay";
> +};
> +
> +&sdio {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       bus-width =3D <4>;
> +       cap-sd-highspeed;
> +       cap-sdio-irq;
> +       disable-wp;
> +       keep-power-in-suspend;
> +       max-frequency =3D <150000000>;
> +       mmc-pwrseq =3D <&sdio_pwrseq>;
> +       no-mmc;
> +       no-sd;
> +       non-removable;
> +       sd-uhs-sdr104;
> +       status =3D "okay";
> +
> +       ap6256: wifi@1 {
> +               compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
> +               reg =3D <1>;
> +               interrupt-names =3D "host-wake";
> +               interrupt-parent =3D <&gpio0>;
> +               interrupts =3D <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&wifi_host_wake_irq>;
> +       };
> +};
> +
> +&uart9 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&uart9m2_xfer &uart9m2_ctsn &uart9m2_rtsn>;
> +       uart-has-rtscts;
> +       status =3D "okay";
> +
> +       bluetooth {
> +               compatible =3D "brcm,bcm4345c5";
> +               clocks =3D <&hym8563>;
> +               clock-names =3D "lpo";
> +               device-wakeup-gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> +               interrupt-names =3D "host-wakeup";
> +               interrupt-parent =3D <&gpio0>;
> +               interrupts =3D <RK_PC5 IRQ_TYPE_LEVEL_HIGH>;
> +               max-speed =3D <1500000>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&bt_wake_host_irq &bt_wake_gpio>;
> +               shutdown-gpios =3D <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> +               vbat-supply =3D <&vcc_3v3_s3>;
> +               vddio-supply =3D <&vcc_1v8_s3>;
> +       };
> +};
> +
> +/* USB2 OTG PHY for usb_host0_xhci; phy-supply enables VBUS to USB3 Type=
-A port */
> +&u2phy0_otg {
> +       phy-supply =3D <&vcc5v0_otg>;
> +};
> +
> +/* Pro has no FUSB302; the USB-C port is power delivery only */
> +/delete-node/ &usbc0;
> +
> +/*
> + * The Pro's USB-C port is power delivery only: no FUSB302, no data line=
s,
> + * no alt-mode switching. The parent DTSI enables usbdp_phy0 (status =3D=
 "okay")
> + * and adds FUSB302 alt-mode/orientation properties; delete those here.
> + *
> + * dp-lane-mux =3D <0 1>: PHY lanes 0/1 are DP (physically routed to the
> + * LT8711UXD DP=E2=86=92HDMI2 bridge), lanes 2/3 are USB3 SuperSpeed (ph=
ysically
> + * routed to the USB3 Type-A port P3). Without this property the driver
> + * defaults to USB-only mode and places USB3 on lanes 0/1, which do not
> + * reach the Type-A connector and makes the USB3 port non-functional.
> + */
> +&usbdp_phy0 {
> +       rockchip,dp-lane-mux =3D <0 1>;
> +       /delete-property/ mode-switch;
> +       /delete-property/ orientation-switch;
> +       /delete-property/ sbu1-dc-gpios;
> +       /delete-property/ sbu2-dc-gpios;
> +       /delete-node/ port;
> +};
> +
> +/* USB3 Type-A port*/
> +&usb_host0_xhci {
> +       dr_mode =3D "host";
> +       /delete-property/ usb-role-switch;
> +       status =3D "okay";
> +       /delete-node/ port;
> +};
> +
> +/*
> + * combphy2_psu is shared between usb_host2_xhci (USB3) and pcie2x1l1 (P=
CIe).
> + * Disable USB3 so the PHY can be used for the NVMe M.2 slot.
> + */
> +&usb_host2_xhci {
> +       status =3D "disabled";
> +};
> --
> 2.53.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

