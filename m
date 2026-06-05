Return-Path: <devicetree+bounces-307416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DMuJHOXEImrRdQEAu9opvQ
	(envelope-from <devicetree+bounces-307416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:45:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0DE648495
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:45:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gqlJKxHU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307416-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307416-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECB36301327F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82523126C0;
	Fri,  5 Jun 2026 12:36:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD5E2F0C62
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:36:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662992; cv=none; b=Ftu4J2OCwp3AOawtVQcQpHDV9W4NFvIexDn4LLFAp1A4NG7VLWRO6x/wW26At3oIpPg/jTDZ+qM/7oGVTVMumOzfpb8509X2Do3NMVXEgWwuyEKmEUR508No+GhCwkT2xbcI4fzsE5J1yG/mLRmBsshRzmpy9HUW4eOcXHMbGwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662992; c=relaxed/simple;
	bh=wHwaSsxyPAG8xoxuw0wRFoPaKeq5MOoaMj6y+w5DyLw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G/ERIQS5EgdF4ViM8hiytCOujGG7xqSvuxR3BK3y9WFOtvX/ogsJ6c2ZxVxrl03JAkymiFof0frQZbfzw5rCmlGeZCUbQ8H9+/wq+YfW1UxiNTO5pPm9bPzS5+47gb+zEkIge2zGEBfIrm32KVi6NR2RorX0ORLTynNhFOwYQ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqlJKxHU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BE871F00893;
	Fri,  5 Jun 2026 12:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780662991;
	bh=BPS2lOXD/DgPmTrbZ3dKDG3vNag8bCeBcC/z45hrdZE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gqlJKxHUOEt1rwHFthinyzfSkVbAFU90BcebAHDrwxJ/OEEkR3udZUwZX3OdFPH1B
	 HRFtGFDsvfLVWa3dv1hRutWIJZumt4ZnbHMWDQRL8IK19+TbfXU3vLzKzyuBoTBl29
	 7q32lUQUeaaVn3UL6qYSxxfiDcgpEVBGApCf9r3EmVJrkNfFPjoh0siWyiMmZR8RM3
	 rXWjiWoeGk9RSxbAwsH3/493fZVlDjFrTDTAS32WdM9YaC+Qp/kgOGZisjhJ9rhOOv
	 QLhZurI2QhMfjQVsLCa5cl8kZbAdcyRBTxrTkW3S+VeK5shENLk88GqRaIf7Ic3H0/
	 Wxsx+yL6FhEQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 12/14] arm64: dts: st: support Engicam
 MicroGEA-STM32MP257 SoM
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dario Binacchi" <dario.binacchi@amarulasolutions.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260605121957.78409-13-dario.binacchi@amarulasolutions.com>
References: <20260605121957.78409-13-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 12:36:30 +0000
Message-Id: <20260605123631.4BE871F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307416-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dario.binacchi@amarulasolutions.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,amarulasolutions.com:email,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF0DE648495

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Incorrect pin configuration: SDMMC2_CK clock pin has an internal p=
ull-up enabled.
--

commit fada9dbb1e96d8d94231f0ac172f10f4898d55c5
Author: Dario Binacchi <dario.binacchi@amarulasolutions.com>
arm64: dts: st: support Engicam MicroGEA-STM32MP257 SoM

Support Engicam MicroGEA-STM32MP257 SoM with 8 GB eMMC Flash and 2 GB LPDDR4
DRAM.

> diff --git a/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi b/ar=
ch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi
> new file mode 100644
> index 0000000000000..5b4287e86deff
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea.dtsi

[ ... ]

> +&sdmmc2 {
> +	pinctrl-names =3D "default", "opendrain", "sleep";
> +	pinctrl-0 =3D <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-1 =3D <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
> +	pinctrl-2 =3D <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	st,neg-edge;
> +	bus-width =3D <8>;
> +	vmmc-supply =3D <&scmi_v3v3>;
> +	vqmmc-supply =3D <&scmi_vddio2>;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;

[Severity: High]
Does this pin configuration cause signal integrity issues for the eMMC cloc=
k?

The referenced pin groups sdmmc2_b4_pins_a and sdmmc2_b4_od_pins_a in
arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi configure the SDMMC2_CK clock
pin with an internal pull-up enabled instead of disabled:

arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi:
	sdmmc2_b4_pins_a {
		...
		pins2 {
			pinmux =3D <STM32_PINMUX('E', 14, AF12)>; /* SDMMC2_CK */
			slew-rate =3D <2>;
			drive-push-pull;
			bias-pull-up;
		};
	};

Enabling an internal pull-up resistor on a high-speed continuous clock line
driven in push-pull mode can degrade signal integrity by altering the falli=
ng
edge and duty cycle.

This is particularly critical here because the eMMC is configured for
mmc-hs200-1_8v mode, which runs at up to 200MHz. The degraded signal can le=
ad
to timing violations, eMMC enumeration failures, CRC errors, or subtle data
corruption.

> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121957.7840=
9-1-dario.binacchi@amarulasolutions.com?part=3D12

