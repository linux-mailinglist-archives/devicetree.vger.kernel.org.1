Return-Path: <devicetree+bounces-266505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPoeJE8Glmm4YQIAu9opvQ
	(envelope-from <devicetree+bounces-266505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:34:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEF8158BD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D27EB301E95A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A79E2346E41;
	Wed, 18 Feb 2026 18:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bOjawcZi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B328A27FB05
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 18:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771439684; cv=none; b=Wd6pHzpnc9uP37joctFN90kXj91MP2+DHv/rC3I+8A62fWgm/jaZu+iWxv3Pyw5fp8HDwB5igKf4LFUrfi8rCrDjvomcOxe80zc55ZvwFHA+QQMRCeGSbAX5sg3/0BdKqAimDl0yuWoCRqEi1y4QJ6OfXFbrLf/WEFzSKrg0PI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771439684; c=relaxed/simple;
	bh=/zh4aD8Ns3HJfBlxHoVCKrBzHkOyMtnh2zadiKydyQ0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=muO8CMMUcjylnsbMER2XBbSGoeLdiDRiNrDO5wuVdNM5rlsIVBo7ZvU7h9Z5PGmz+Av5JEKxQQhlkO0eKnIg5p82AuElk7v9eTtdvzYmtQEQn2WFKzqDqV2noZNEjR+rqTACwBmI5lXNnVGW7gw78PPlBBNWHxpk98X/HZNvlHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bOjawcZi; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso1373865e9.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771439680; x=1772044480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FrGaQVxaxcSeBe1e1Iik830FnwfS8wNvcS7rghuYjlk=;
        b=bOjawcZivUVKB4ZWeYLO6QRMmJPaW2AW0FTeMsRvyjouAf5qURvQZL5DStXiV63sja
         LpPPzcun3Er9U+osUFycpvackMwhw7+dgxNo/zBK+ZMQ2Gu6fxL6N1GF8jay6Qy1P3Hx
         MYm/xnBfACaG03gZpFZ+9d9TV+BvpagaSUbE+Sze0zPMw8tfYa2g642q0JzJyj/xR9i6
         E/aEKgWWq3ecxsoGqltBxdxVPgSsw5X9ePEXdD0utOWfa45A1fcEoPIL5MSaUWBUKXOF
         rq055UoXJdADlWuv/sfO3I2FNWShpKbX2dHqHUSC0Y8j1l5dfYgbFKYscSnkaO0LIuU5
         Rc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771439680; x=1772044480;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FrGaQVxaxcSeBe1e1Iik830FnwfS8wNvcS7rghuYjlk=;
        b=kPiz2HJNA6icrACf9Ebe9KfqhDcflrPizGrg85v7ilrb8BQBGFPMD2+vc/eD0lkOHl
         FSUkG1riE9MonSl0NcFvtfovgA3JwXFzBPUtkMh2ffxJOTAvZR+yMnHctJn0D0gcwW1p
         iVEULeFBbXvEFVu8jx/DYFHxo9Gb0aPp1J+smRLSFdvCbPvS7OI3d7Y6f9SG7UWsRsBh
         55E1yfuDDr5IiO5rTihbOtyTRoakfSqnTzZZXviP2y7q0ZFTf/T7GmEHpPWAUZ/YODdT
         yj3zc5T4k8ytsSA0fIrdLtP7Sbj3Loe5BdnQWvK3VZyveXdMAk33JN6lN3JTyx5CeegO
         /cCA==
X-Forwarded-Encrypted: i=1; AJvYcCVHY9Fwcdy71DIggWRUVEUgShz/leiBDR6td78zYx+myJ1jnCp1rV5vDqEvJWF5gOnvicCLKed8IiKi@vger.kernel.org
X-Gm-Message-State: AOJu0YxxFVjV6mmOhJmn6B04CDcMEI/P7YhTqVQaiohu2iX1VaV6R8rQ
	fct+aGF339z0Jtw7RfPjPhmvDewak3s2xqtJptH82zJs+TsfujsCJ+ythaj1Ze2S6zU=
X-Gm-Gg: AZuq6aIp2M2Sh6GJCqexJRCECeMBpHW0wPu52q8SlFzpE1EZmGfZXWToQfHSXxmWl2y
	PQdyf2yPScvKp9mTWmM1uHWJsFGGaIMumF0V4QhQbQBD4Zvb9M6diRnGx7sQqOe6lY04f4/jpHf
	yTFjbNY/Bj+qY4WDOpJ86Yv6kjihs7F4kOp9sfI0caPnhtDzeWeiZqe0yY+wUIABOTqlCg8+QT/
	XbwhG9zyZ74j+AHrHQxz0ewxAyroKOYjIOGWqsWDN3JIboO/QXgwxLmU/3ICDeupI36IvLZ8UcC
	z2OVe94F2jTe/kzGhUMqcAK2yCEvXI7qlTYvwItGB/qIAV9UAYTeuM9uTLOZNvfw9PR+mgNHD78
	PpO92i46RBEj5Gf6eF6xVxwjtoeKfEKtr62qcvKDkrUoVuux45eU9hPG22hyGHJkhHgcMJJ4dsG
	erXc9U7Lrl5v6KOe/eCMzzrA==
X-Received: by 2002:a05:600c:1da1:b0:47e:e8de:7420 with SMTP id 5b1f17b1804b1-48371085905mr314322705e9.22.1771439679304;
        Wed, 18 Feb 2026 10:34:39 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:cf71:8cf8:56bb:5790])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4834d7e50casm577892565e9.8.2026.02.18.10.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 10:34:38 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ronald Claveau <linux-kernel-dev@aliel.fr>
Cc: linux-amlogic@lists.infradead.org,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-arm-kernel@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] arm64: dts: amlogic: Add clock and EMMC for T7
In-Reply-To: <20260218112036.36905-1-linux-kernel-dev@aliel.fr> (Ronald
	Claveau's message of "Wed, 18 Feb 2026 12:20:33 +0100")
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
	<20260218112036.36905-1-linux-kernel-dev@aliel.fr>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 18 Feb 2026 19:34:37 +0100
Message-ID: <1jecmh6gua.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266505-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,linaro.org,baylibre.com,googlemail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2EEF8158BD4
X-Rspamd-Action: no action

On mer. 18 f=C3=A9vr. 2026 at 12:20, Ronald Claveau <linux-kernel-dev@aliel=
.fr> wrote:

> Add fixed clock and EMMC support for Amlogic T7 SoC family dtsi.

One topic per patch please

>
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>  arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 129 ++++++++++++++++++++
>  1 file changed, 129 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boo=
t/dts/amlogic/amlogic-t7.dtsi
> index 6510068bcff9..b84281e5cdd8 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -3,6 +3,8 @@
>   * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>   */
>=20=20
> +#include <dt-bindings/clock/amlogic,t7-peripherals-clkc.h>
> +#include <dt-bindings/clock/amlogic,t7-pll-clkc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/amlogic,t7-pwrc.h>
>  #include "amlogic-t7-reset.h"
> @@ -224,6 +226,24 @@ apb4: bus@fe000000 {
>  			#size-cells =3D <2>;
>  			ranges =3D <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
>=20=20
> +			clkc: clock-controller@0 {
> +				compatible =3D "amlogic,t7-peripherals-clkc";
> +				reg =3D <0x0 0x0 0x0 0x49c>;
> +				#clock-cells =3D <1>;
> +				clocks =3D <&xtal>,
> +						 <&fpll CLKID_FDIV2>,
> +						 <&fpll CLKID_FDIV2P5>,
> +						 <&fpll CLKID_FDIV3>,
> +						 <&fpll CLKID_FDIV4>,
> +						 <&fpll CLKID_FDIV5>,
> +						 <&hifi_pll CLKID_HIFI_PLL>,
> +						 <&mpll CLKID_MPLL2>,
> +						 <&mpll CLKID_MPLL3>,
> +						 <&gp0_pll CLKID_GP0_PLL>;
> +				clock-names =3D "xtal", "fdiv2", "fdiv2p5", "fdiv3", "fdiv4",
> +							  "fdiv5", "hifi", "mpll2", "mpll3", "gp0";
> +			};
> +
>  			reset: reset-controller@2000 {
>  				compatible =3D "amlogic,t7-reset";
>  				reg =3D <0x0 0x2000 0x0 0x98>;
> @@ -250,6 +270,68 @@ gpio: bank@4000 {
>  					#gpio-cells =3D <2>;
>  					gpio-ranges =3D <&periphs_pinctrl 0 0 157>;
>  				};
> +
> +				emmc_ctrl_pins: emmc-ctrl {
> +					mux-0 {
> +						groups =3D "emmc_cmd";
> +						function =3D "emmc";
> +						bias-pull-up;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +
> +					mux-1 {
> +						groups =3D "emmc_clk";
> +						function =3D "emmc";
> +						bias-disable;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +				};
> +
> +				emmc_data_4b_pins: emmc-data-4b {
> +					mux-0 {
> +						groups =3D "emmc_nand_d0",
> +								 "emmc_nand_d1",
> +								 "emmc_nand_d2",
> +								 "emmc_nand_d3";
> +						function =3D "emmc";
> +						bias-pull-up;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +				};
> +
> +				emmc_data_8b_pins: emmc-data-8b {
> +					mux-0 {
> +						groups =3D "emmc_nand_d0",
> +								 "emmc_nand_d1",
> +								 "emmc_nand_d2",
> +								 "emmc_nand_d3",
> +								 "emmc_nand_d4",
> +								 "emmc_nand_d5",
> +								 "emmc_nand_d6",
> +								 "emmc_nand_d7";
> +						function =3D "emmc";
> +						bias-pull-up;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +				};
> +
> +				emmc_ds_pins: emmc-ds {
> +					mux {
> +						groups =3D "emmc_nand_ds";
> +						function =3D "emmc";
> +						bias-pull-down;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +				};
> +
> +				emmc_clk_gate_pins: emmc_clk_gate {
> +					mux {
> +						groups =3D "GPIOB_8";
> +						function =3D "gpio_periphs";
> +						bias-pull-down;
> +						drive-strength-microamp =3D <4000>;
> +					};
> +				};
>  			};
>=20=20
>  			gpio_intc: interrupt-controller@4080 {
> @@ -262,6 +344,38 @@ gpio_intc: interrupt-controller@4080 {
>  					<10 11 12 13 14 15 16 17 18 19 20 21>;
>  			};
>=20=20
> +			fpll: clock-controller@8040 {
> +				compatible =3D "amlogic,t7-fpll";
> +				reg =3D <0x0 0x8040 0x0 0x20>;
> +				#clock-cells =3D <1>;
> +				clocks =3D <&xtal>;
> +				clock-names =3D "xtal";
> +			};
> +
> +			gp0_pll: clock-controller@8080 {
> +				compatible =3D "amlogic,t7-gp0-pll";
> +				reg =3D <0x0 0x8080 0x0 0x20>;
> +				#clock-cells =3D <1>;
> +				clocks =3D <&xtal>;
> +				clock-names =3D "in0";
> +			};
> +
> +			hifi_pll: clock-controller@8100 {
> +				compatible =3D "amlogic,t7-hifi-pll";
> +				reg =3D <0x0 0x8100 0x0 0x20>;
> +				#clock-cells =3D <1>;
> +				clocks =3D <&xtal>;
> +				clock-names =3D "in0";
> +			};
> +
> +			mpll: clock-controller@8180 {
> +				compatible =3D "amlogic,t7-mpll";
> +				reg =3D <0x0 0x8180 0x0 0x20>;
> +				#clock-cells =3D <1>;
> +				clocks =3D <&fpll CLKID_FPLL_DCO>;
> +				clock-names =3D "in0";
> +			};
> +
>  			uart_a: serial@78000 {
>  				compatible =3D "amlogic,t7-uart", "amlogic,meson-s4-uart";
>  				reg =3D <0x0 0x78000 0x0 0x18>;
> @@ -276,6 +390,21 @@ sec_ao: ao-secure@10220 {
>  				reg =3D <0x0 0x10220 0x0 0x140>;
>  				amlogic,has-chip-id;
>  			};
> +
> +			sd_emmc_c: mmc@8c000{
> +				compatible =3D "amlogic,meson-axg-mmc";
> +				reg =3D <0x0 0x8c000 0x0 0x800>;
> +				interrupts =3D <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
> +				status =3D "disabled";
> +				clocks =3D <&clkc CLKID_SYS_SD_EMMC_C>,
> +						 <&clkc CLKID_SD_EMMC_C>,
> +						 <&gp0_pll CLKID_GP0_PLL>;
> +				clock-names =3D "core", "clkin0", "clkin1";
> +				assigned-clocks =3D <&clkc CLKID_SD_EMMC_C_SEL>;
> +				assigned-clock-parents =3D <&xtal>;
> +				no-sdio;
> +				no-sd;
> +			};
>  		};
>=20=20
>  	};

--=20
Jerome

