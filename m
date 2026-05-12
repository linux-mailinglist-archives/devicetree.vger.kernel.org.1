Return-Path: <devicetree+bounces-295954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zObyNgucAmrxuwEAu9opvQ
	(envelope-from <devicetree+bounces-295954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:18:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3266A51934C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:18:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB0513010DA2
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E03E1A6832;
	Tue, 12 May 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBLVzVsD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3101F5EA
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 03:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778555913; cv=none; b=HNekzWWXTuSxLwB8njmSVLdPTUdn0HtXpt81OorXjkfX6yxBLoD0VcM79UQTdcj4pVp2FAVCiShf/ZQI8antSzFAzjk5Seco3aGh/Nk7Mh6aQCI+pwxGqLe5SffEk9WtL28Ao9OCFg9ld8Z976XsH3eFFfEMoLZo0HbMxwvJW9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778555913; c=relaxed/simple;
	bh=ugqNuyt6/PXBFXQLv1UKPaQ3TdvuHv4bUi1n3N6MRyo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ir1cbrHMk2DJk102JjgtsIfcQ8I4p47H8yOXBMu2PlKPnNYXyavEZHwof4pS01BWz5wFSzdwpmgbPn20pETUepEmQRy1uvw79NppJIcdNuLLmH3IUoLQoco+rGSsypo6lZCMC9mszoa2q8RkIpvp30lUk2B5OleUC78vTz8QAWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBLVzVsD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C52BC2BCB0;
	Tue, 12 May 2026 03:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778555912;
	bh=ugqNuyt6/PXBFXQLv1UKPaQ3TdvuHv4bUi1n3N6MRyo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=eBLVzVsDSJg2DxeDfC+/BGlDVmDvvSmFUiX7J7BuUbQJP8vaBha9owkMzwfDpjgrF
	 cGNyAIkD1PToc0nBfzHzZT5TwhrKywiC4AFdhs0liSlFg4n4/ooSX72R2VXzRJnf/q
	 dc0y6AqiaPD77Gv1MsEBYizacSGOWCCl/SZM4tCH6WSfKa1ZpE3B7w+ufomqUEcorg
	 8sU3ep/NR76Crouar23LOd9Hlc7CW6aVImOatmHN04iorl33FuH9NNVB9Xz2Y5ZUHE
	 M7ZVUWEzMKB7RzxwvVUeoVWEQUQHC7QpvlMGbwLViQJwfZBGWwnfKVCTzPR1CEEaw1
	 q1i8U2g4MLsDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: renesas: add support for solidrun
 rzg2lc som and hb-iiot evb
Reply-To: sashiko@lists.linux.dev
To: "Josua Mayer" <josua@solid-run.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260511-rzg2-sr-boards-v2-4-82aebbd27891@solid-run.com>
References: <20260511-rzg2-sr-boards-v2-4-82aebbd27891@solid-run.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 03:18:31 +0000
Message-Id: <20260512031832.6C52BC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3266A51934C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295954-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,solid-run.com:email,solid-run.com:url,4.13.153.0:email,3.117.2.128:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] Missing unit address for reserved-memory node with a `reg` property.
- [Low] Inconsistent use of `+=3D` instead of `:=3D` for Kbuild composite D=
TB definitions.
- [Low] Redundant addition of shared `.dtbo` overlay targets to the Makefil=
e variable.
--

commit 8d9d2cbc7a77754ee19950ca31a17d0916b4b627
Author: Josua Mayer <josua@solid-run.com>
arm64: dts: renesas: add support for solidrun rzg2lc som and hb-iiot evb

Add support for the SolidRun RZ/G2LC SoM on Hummingboard IIoT, which
features various peripherals including Ethernet, eMMC, and WiFi.
The RZ/G2LC SoM is pin-compatible with the G2L SoM with a slightly
reduced feature set.

Link: https://www.solid-run.com/embedded-industrial-iot/renesas-rz-family/r=
z-g2lc-som/
Link: https://www.solid-run.com/embedded-industrial-iot/renesas-rz-family/h=
ummingboard-rz-series-sbcs/hummingboard-rz-g2l-iot-sbc/

> diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/r=
enesas/Makefile
> --- a/arch/arm64/boot/dts/renesas/Makefile
> +++ b/arch/arm64/boot/dts/renesas/Makefile
> @@ -164,6 +164,17 @@ dtb-$(CONFIG_ARCH_R9A07G043) +=3D r9a07g043u11-smarc=
-du-adv7513.dtb
>  r9a07g043u11-smarc-pmod-dtbs :=3D r9a07g043u11-smarc.dtb r9a07g043-smarc=
-pmod.dtbo
>  dtb-$(CONFIG_ARCH_R9A07G043) +=3D r9a07g043u11-smarc-pmod.dtb
> =20
> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D r9a07g044c2-hummingboard-iiot.dtb
> +r9a07g044c2-hummingboard-iiot-emmc-dtbs +=3D r9a07g044c2-hummingboard-ii=
ot.dtb rzg2l-sr-som-emmc.dtbo

This isn't a bug, but should this use :=3D instead of +=3D for consistency =
with
standard Kbuild practice and other composite DTB definitions in this Makefi=
le?

> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D r9a07g044c2-hummingboard-iiot-emmc.dtb
> +r9a07g044c2-hummingboard-iiot-microsd-dtbs +=3D r9a07g044c2-hummingboard=
-iiot.dtb rzg2l-hummingboard-iiot-microsd.dtbo
> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D r9a07g044c2-hummingboard-iiot-microsd.=
dtb
> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D rzg2l-hummingboard-iiot-rs485-a.dtbo

This isn't a bug, but since rzg2l-hummingboard-iiot-rs485-a.dtbo and
rzg2l-hummingboard-iiot-rs485-b.dtbo are already appended to
dtb-$(CONFIG_ARCH_R9A07G044) for the shared r9a07g044l2 SoC variant, is it
redundant to include them here?

> +r9a07g044c2-hummingboard-iiot-rs485-a-dtbs +=3D r9a07g044c2-hummingboard=
-iiot.dtb rzg2l-hummingboard-iiot-rs485-a.dtbo
> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D r9a07g044c2-hummingboard-iiot-rs485-a.=
dtb
> +dtb-$(CONFIG_ARCH_R9A07G044) +=3D rzg2l-hummingboard-iiot-rs485-b.dtbo

[ ... ]

> diff --git a/arch/arm64/boot/dts/renesas/rzg2lc-sr-som.dtsi b/arch/arm64/=
boot/dts/renesas/rzg2lc-sr-som.dtsi
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/rzg2lc-sr-som.dtsi
> @@ -0,0 +1,373 @@

[ ... ]

> +	reserved-memory {
> +		ranges;
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +
> +		mmp_reserved: linux,multimedia {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x68000000 0x0 0x8000000>;
> +			reusable;
> +		};

Does this node need a unit address matching the first address of the reg bl=
ock
(e.g., linux,multimedia@68000000) to prevent a unit_address_vs_reg DTC
compiler warning?

> +
> +		global_cma: linux,cma@58000000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x58000000 0x0 0x10000000>;
> +			reusable;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-rzg2-sr-bo=
ards-v2-0-82aebbd27891@solid-run.com?part=3D4

