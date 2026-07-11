Return-Path: <devicetree+bounces-324924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BfxeLPyyUmrJSQMAu9opvQ
	(envelope-from <devicetree+bounces-324924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 23:17:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F38FF742EC8
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 23:17:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jZpsWroe;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324924-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324924-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 659073013D61
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 21:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7D1F305684;
	Sat, 11 Jul 2026 21:17:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBBA2E11C7
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 21:17:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783804665; cv=none; b=XsQy+IWuAHTlqixyPvsygW1oAimzNRpMLc0HwZu4IdtYoWnIjdX0oMmpGSQTHcyGCPzW+P3inlEVWOccWzbROu/3vXu68mydY+JfH7srxbKhTdZZUX1Ue2zs5Hu9cmU8fLazvQAoW4lN7fOaKsZJIXMP9cF1qPUPrfH+HEPYQWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783804665; c=relaxed/simple;
	bh=DR7Rz/POuORcLnBTwchMpY5kYROW+JuObYIZex/3kL4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O4daPkMjAesxcUgs6tMqRnF2QMvbEpLVHDZKs71EBknIgZL/1jhonoFskNbwhrFa0CA4quQo4Q8N1nBD4fxSVwNrm8FD66H4LFwEiwp0lmFw2LtNRizcVkM+DZ41hiR0ffcNGKFbCW/eLjXejDF0iF6/ZOZKYyWcVDbkCE9lGwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZpsWroe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE0961F000E9;
	Sat, 11 Jul 2026 21:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783804664;
	bh=DlQrkDXkXksIVDVIwnR9k+ceoM4zsDfOX0J7yBx2w0A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jZpsWroePOLFNZy25HLDEyvWLVjFrTjcvh/PoMmjdIVEsJh6KLUW+Ukw0gdDTItSn
	 8Zpb3+IcxFGfBTnTzZq1r4kejJLyOTmpMXIb93hQ5iS+HDDzsoz91sHAHJJGcdyLat
	 +vioJqVOx2Mwp3icWyyy7IfHDR6Z0q29LPIQnqnuAIma3hMNsY7vWQ3aeLlbbWA5pJ
	 FoY1OlHioBXhRkfQFUlfbd9ltnuNvPQjvXpW7kyjZcdRtf6BGLr/rVtweb5IlMvUat
	 ARKAM24lgQOVObXe///SD8FHJBp8M+/ZqLg1nisPzyO31R7m9Sk/Iyeb6EwyBtuvyb
	 tCIpwIuupkh/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/10] arm64: dts: st: Add pinmux nodes for DH
 electronics STM32MP23xx/STM32MP25xx DHCOS SoM and Breakout Board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marek Vasut" <marex@nabladev.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260711210131.236025-9-marex@nabladev.com>
References: <20260711210131.236025-1-marex@nabladev.com>
 <20260711210131.236025-9-marex@nabladev.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 21:17:43 +0000
Message-Id: <20260711211743.BE0961F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324924-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:marex@nabladev.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nabladev.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F38FF742EC8

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Conflicting alternate function (AF) configurations for SDMMC3_D3 b=
etween active and open-drain states.
- [High] The `eth2_rgmii_pins_b` node is missing the `st,io-sync =3D "data =
on both edges";` property required for Double Data Rate (DDR) signaling in =
RGMII.
- [Medium] Active and sleep pinmux configurations for ETH2 MDIO use conflic=
ting pins for ETH_MDC.
- [Low] Misleading inline comments in DT pinmux nodes copy-pasted from othe=
r nodes.
--

--- Patch [8]: [PATCH 08/10] arm64: dts: st: Add pinmux nodes for DH electr=
onics STM32MP23xx/STM32MP25xx DHCOS SoM and Breakout Board ---
commit c98eed614c4613fe217412814e7be996b10ee304
Author: Marek Vasut <marex@nabladev.com>

arm64: dts: st: Add pinmux nodes for DH electronics STM32MP23xx/STM32MP25xx=
 DHCOS SoM and Breakout Board

This patch adds new pinmux nodes for the DH electronics STM32MP2 DHCOS SoM
and Breakout Board. It includes configurations for ETH2, I2C8, MCO1, SDMMC,
SPI, UART, and USART interfaces.

> diff --git a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi b/arch/arm64/b=
oot/dts/st/stm32mp25-pinctrl.dtsi
> index 456ece7f8ebc3..1aadbc6b47da9 100644
> --- a/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi
> @@ -182,6 +182,30 @@ pins5 {
>  		};
>  	};
> =20
> +	/omit-if-no-ref/
> +	eth2_mdio_pins_a: eth2-mdio-0 {
> +		pins1 {
> +			pinmux =3D <STM32_PINMUX('G', 4, AF11)>; /* ETH_MDC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate =3D <3>;
> +		};

[ ... ]

> +	/omit-if-no-ref/
> +	eth2_mdio_sleep_pins_a: eth2-mdio-sleep-0 {
> +		pins {
> +			pinmux =3D <STM32_PINMUX('C', 6, ANALOG)>, /* ETH_MDC */

[Severity: Medium]
In eth2_mdio_pins_a, ETH_MDC is mapped to PG4. Does this mismatched
pinmux configuration leave PG4 misconfigured and incorrectly apply
analog mode to PC6 instead of PG4 during power management transitions?

> +				 <STM32_PINMUX('C', 5, ANALOG)>; /* ETH_MDIO */
> +		};
> +	};

[ ... ]

> +	/omit-if-no-ref/
> +	eth2_rgmii_pins_b: eth2-rgmii-1 {
> +		pins1 {

[Severity: High]
This node configures the RGMII data pins, but it doesn't include the
st,io-sync =3D "data on both edges"; property required for Double
Data Rate (DDR) signaling. Will this cause the MAC to use Single Data Rate
sampling instead of RGMII DDR mode, resulting in timing violations?

> +			pinmux =3D <STM32_PINMUX('C', 7, AF10)>, /* ETH_RGMII_TXD0 */
> +				 <STM32_PINMUX('C', 8, AF10)>, /* ETH_RGMII_TXD1 */
> +				 <STM32_PINMUX('C', 9, AF10)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('C', 10, AF10)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('C', 4, AF10)>; /* ETH_RGMII_TX_CTL */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate =3D <3>;
> +		};
> +		pins2 {
> +			pinmux =3D <STM32_PINMUX('F', 8, AF10)>, /* ETH_RGMII_CLK125 */
> +				 <STM32_PINMUX('F', 7, AF10)>; /* ETH_MDC */

[Severity: Low]
This isn't a bug, but should this be labeled ETH_RGMII_GTX_CLK rather
than ETH_MDC, to match the sleep state configuration for PF7 below?

> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate =3D <3>;
> +		};

[ ... ]

> +	/omit-if-no-ref/
> +	sdmmc3_b4_pins_b: sdmmc3-b4-1 {
> +		pins1 {
> +			pinmux =3D <STM32_PINMUX('B', 14, AF10)>, /* SDMMC3_D0 */
> +				 <STM32_PINMUX('D', 13, AF10)>, /* SDMMC3_D1 */
> +				 <STM32_PINMUX('B', 12, AF10)>, /* SDMMC3_D2 */
> +				 <STM32_PINMUX('D', 14, AF12)>, /* SDMMC3_D3 */
> +				 <STM32_PINMUX('D', 12, AF10)>; /* SDMMC3_CMD */

[ ... ]

> +	/omit-if-no-ref/
> +	sdmmc3_b4_od_pins_b: sdmmc3-b4-od-1 {
> +		pins1 {
> +			pinmux =3D <STM32_PINMUX('B', 14, AF10)>, /* SDMMC3_D0 */
> +				 <STM32_PINMUX('D', 13, AF10)>, /* SDMMC3_D1 */
> +				 <STM32_PINMUX('B', 12, AF10)>, /* SDMMC3_D2 */
> +				 <STM32_PINMUX('D', 14, AF10)>; /* SDMMC3_D3 */

[Severity: High]
The active state node (sdmmc3_b4_pins_b) configures PD14 with AF12 for
SDMMC3_D3. Does configuring PD14 with AF10 here in the open-drain state
disconnect the data line from the SDMMC controller during operations
that use open-drain mode?

> +			slew-rate =3D <2>;
> +			drive-push-pull;
> +			bias-disable;
> +		};

[ ... ]

> +	/omit-if-no-ref/
> +	i2c8_pins_b: i2c8-1 {
> +		pins {
> +			pinmux =3D <STM32_PINMUX('Z', 4, AF8)>, /* I2C1_SCL */
> +				 <STM32_PINMUX('Z', 9, AF8)>; /* I2C1_SDA */

[Severity: Low]
This isn't a bug, but the comments label these pins as I2C1 instead
of I2C8. Were these comments copied from an earlier I2C1 node?

> +			bias-disable;
> +			drive-open-drain;
> +			slew-rate =3D <0>;
> +		};
> +	};
> +
> +	/omit-if-no-ref/
> +	i2c8_sleep_pins_b: i2c8-sleep-1 {
> +		pins {
> +			pinmux =3D <STM32_PINMUX('Z', 4, ANALOG)>, /* I2C1_SCL */
> +				 <STM32_PINMUX('Z', 9, ANALOG)>; /* I2C1_SDA */

[Severity: Low]
This isn't a bug, but the same typo labels these pins as I2C1 instead of I2=
C8.

> +		};
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711210131.2360=
25-1-marex@nabladev.com?part=3D8

