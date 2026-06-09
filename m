Return-Path: <devicetree+bounces-309085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id op9UKQMhKGqu+QIAu9opvQ
	(envelope-from <devicetree+bounces-309085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:19:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 39122660EC7
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:19:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="TsC/RVvM";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309085-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309085-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85D21301E131
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 14:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12FE3329C54;
	Tue,  9 Jun 2026 14:19:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1F9220F49
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 14:19:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781014784; cv=none; b=g8CgaUQmoCmFSHRCnTSiW16sN3f3p1BIp5uWQhazFiv9bhFODapif2GLifL0cgWmV4/KumJvGl1+Bffod+Es0my+j/2X+e71kQvoDs1UaSgEPrbzsOc7YWjoQFYsM8Iq+N1TC2nhsz1wVAmE7AxEcoLMIyJl/sJupxWVfN/oKzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781014784; c=relaxed/simple;
	bh=Fatm7Vsr9pQ9UpjQwHiznc5nvuo73saU+G91gDX1PE4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PdOAOHiEiou6NWCx8qzig0WLZkVLHaI4byaDPHFvgsqoGPRn1qzDjC27OZn0D8LbYsUxiLhL62ke7pr4pNXv9VUTPP3Bml3TGsWwFBOd48TzyDDvkhlFjACQPCTB7z/UxVfD7U+D/yj1TCViU3yHPO799eh12WzXR4WepdIdrNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsC/RVvM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C2581F00893;
	Tue,  9 Jun 2026 14:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781014782;
	bh=hjlw5NkQEXbBvEfs7gSt7gYzk4UC6qw4PXm5fj4wQcQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TsC/RVvM95BNYJVJ6al/6r15sGhSMXJoUNk01Qrj1hHtY0xWivTjd6ZVVc0c2GShS
	 VTT3yqDnuWT8J8AbL5GJXjJ+i6jmmtcvF4wPdUkwEZc7n3kALRfA2j/1k5iBMtqD+R
	 ZhVWKSUKEKkSO6LMF/+2RFJ+5f66HBTeX+OCjYMSZt69Us5qTrc4htdoZcFfGtsTOa
	 yaeugWshAG1nhNDpbRcx5DNH1zORvF5yLD78Q9IOoRumNMLnHbaxD8sZpRjYB98pmQ
	 FRneJpbQUsYVHc40koZNRCOC1p88RrQGiywjvvvvqvRpU+5L22+GEGRdioJGL/nJSw
	 LLGlhEVWDXX7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: renesas: r9a09g087: Add DU node
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260609125353.401124-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260609125353.401124-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 14:19:42 +0000
Message-Id: <20260609141942.6C2581F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309085-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,renesas.com:email];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39122660EC7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The macro `R9A09G087_LCDC_CLKD` is referenced in the `clocks` prope=
rty but is undeclared, causing a Device Tree build failure.
- [Low] The compatible strings `renesas,r9a09g087-du` and `renesas,r9a09g07=
7-du` are added without corresponding Device Tree binding schemas.
--

commit 3aa7f5ef71efe2b2f0c8c868ca73eebb03c02010
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

arm64: dts: renesas: r9a09g087: Add DU node

This commit adds the Display Unit (DU) node to the RZ/N2H (r9a09g087) SoC
Device Tree.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot=
/dts/renesas/r9a09g087.dtsi
> index cb2eabe3242e0..21250caf31493 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> @@ -1272,6 +1272,30 @@ sdhi1_vqmmc: vqmmc-regulator {
>  			};
>  		};
> =20
> +		du: display@920c0000 {
> +			compatible =3D "renesas,r9a09g087-du", "renesas,r9a09g077-du";

[Severity: Low]
Are these compatible strings documented in the device tree bindings?

It appears they are introduced here without a corresponding update to the Y=
AML
schemas in Documentation/devicetree/bindings/, which might cause
make dtbs_check validation errors.

> +			reg =3D <0 0x920c0000 0 0x10000>;
> +			interrupts =3D <GIC_SPI 781 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cpg CPG_CORE R9A09G087_CLK_PCLKAH>,
> +				 <&cpg CPG_MOD 1204>,
> +				 <&cpg CPG_CORE R9A09G087_LCDC_CLKD>;

[Severity: Low]
Is the R9A09G087_LCDC_CLKD macro defined anywhere?

It seems its definition is missing from the clock bindings header, which wi=
ll
cause a Device Tree Compiler (dtc) syntax error and break the build.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609125353.4011=
24-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D4

