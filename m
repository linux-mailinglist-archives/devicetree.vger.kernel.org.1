Return-Path: <devicetree+bounces-320917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bOF/MAZrS2pbRAEAu9opvQ
	(envelope-from <devicetree+bounces-320917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:44:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ACB70E412
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:44:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GNiSlbWG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320917-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320917-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D4E3E30653FF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE833F412B;
	Mon,  6 Jul 2026 08:22:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D01395AF1
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 08:22:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783326174; cv=none; b=pEQDHVKncP90ob0WT3clB+2ha5OPfam0Gqwdtd/UliS5XEcSrizhd3nCugJ7e4NuscP053PdbZIKKjV3JxE14g2uL1EXyv3QdkZzVNVM1lxD85OINNt0fKulDzWDblJWRf45fBVu3Rtp0/ASVbyU5L5kqbDYZk+S4/Px+F9FN48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783326174; c=relaxed/simple;
	bh=Z45fnCeYiqgbNtqv2FhepjB1EC6A5GgOg0KG3+1Q4pE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B+J24CJtE0VHQli4veuw7PJFlMnSWChslePGleQeqdTR1eGvUoca9W9nCh9spWNMGUsEX/ZKUJSLaeVe/8x8YQbYevo8ObbTHwUB8aBOLNtabl1MHYAZoiBRclI9548JGmQ/4OEOCDe8UoJCaa4LABOx3P28OFtbT5VPE/dod2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNiSlbWG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C891F000E9;
	Mon,  6 Jul 2026 08:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783326159;
	bh=moPErxptzMoFitn4NCYWOwu7PQBkbJROla6/+YkgVVo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GNiSlbWGx9vZxeFVLlNwctHw9YSkGjZAgmUCNEdw4CmHsQQ696wy/jAi7x2rOaRyI
	 0+ftiTBPm3ihli2Qiq6cE2kxNCBl5CaQETl5p+C4Grflurk7L+6VJCbQfKDJlETKA9
	 jvxBI4j2ZcdUBF32OGBt456ZzhaKAScumzOZsMqRNVOO93qOtou56ruCjq/LMcobi3
	 J5b7Nk9dZM/vuIes8dCYRBxY2eg9Eec5Eb6GC0/+pJAV8Qu5a245cTU9vaSjoosmvZ
	 RHnXkfEfkKViv9AfE2+67eZ7hzf+EPHvugI5MpjDDB60RLX5zC3N6wy8YdKFTus6JG
	 +/E6eBgTEwJ2Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/8] riscv: dts: eswin: add watchdog support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pinkesh Vaghela" <pinkesh.vaghela@einfochips.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706081055.1126275-9-pinkesh.vaghela@einfochips.com>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
 <20260706081055.1126275-9-pinkesh.vaghela@einfochips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 08:22:38 +0000
Message-Id: <20260706082238.C8C891F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320917-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pinkesh.vaghela@einfochips.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,einfochips.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6ACB70E412

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Incorrect mapping of the APB clock (PCLK) to the timer reference c=
lock (tclk), omitting the actual reference clock.
- [Low] Missing space after the '=3D' sign in the 'clocks' properties.
--

commit e654cdc83801a14778ef2783efed381807629c6f
Author: Pritesh Patel <pritesh.patel@einfochips.com>

riscv: dts: eswin: add watchdog support

This commit adds watchdog nodes for the ESWIN EIC7700 SoC and enables them
for the HiFive Premier P550 board.

[ ... ]

> diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts=
/eswin/eic7700.dtsi
> index 6d328befc623d..d079bb337ecbb 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
> @@ -265,6 +265,46 @@ hsp_sp_csr: hsp-sp-top-csr@50440000 {
>  			};
>  		};
> =20
> +		wdt0: watchdog@50800000 {
> +			compatible =3D "snps,dw-wdt";
> +			reg =3D <0x0 0x50800000 0x0 0x4000>;
> +			interrupts =3D <87>;
> +			clocks =3D<&clk EIC7700_CLK_GATE_LSP_WDT0_PCLK>;
                                ^^^^

[Severity: Low]
This isn't a bug, but there appears to be a missing space after the '=3D' s=
ign.

> +			clock-names =3D "tclk";

[Severity: High]
Are we assigning the APB clock (PCLK) to the timer reference clock (tclk)
while omitting the actual reference clock (NOC_WDREF)?

The snps,dw-wdt driver retrieves tclk to determine the frequency for TOP
calculations and to enable the clock. Because EIC7700_CLK_GATE_LSP_WDT0_PCLK
is assigned to tclk here instead of the explicit watchdog reference clock
(EIC7700_CLK_GATE_NOC_WDREF), the driver might calculate timeouts using the
wrong rate and fail to enable NOC_WDREF entirely.

> +			resets =3D <&reset EIC7700_RESET_WDT0>;
> +			status =3D "disabled";
> +		};
> +
> +		wdt1: watchdog@50804000 {
> +			compatible =3D "snps,dw-wdt";
> +			reg =3D <0x0 0x50804000 0x0 0x4000>;
> +			interrupts =3D <88>;
> +			clocks =3D<&clk EIC7700_CLK_GATE_LSP_WDT1_PCLK>;
                                ^^^^

[Severity: Low]
This isn't a bug, but there is a missing space after the '=3D' sign here as
well.

> +			clock-names =3D "tclk";

[Severity: High]
Could this result in similar incorrect timeout calculations for wdt1 due to
omitting NOC_WDREF?

> +			resets =3D <&reset EIC7700_RESET_WDT1>;
> +			status =3D "disabled";
> +		};
> +
> +		wdt2: watchdog@50808000 {
> +			compatible =3D "snps,dw-wdt";
> +			reg =3D <0x0 0x50808000 0x0 0x4000>;
> +			interrupts =3D <89>;
> +			clocks =3D<&clk EIC7700_CLK_GATE_LSP_WDT2_PCLK>;
                                ^^^^

[Severity: Low]
This isn't a bug, but there is a missing space after the '=3D' sign.

> +			clock-names =3D "tclk";

[Severity: High]
Does this node also need NOC_WDREF to avoid incorrect timeout calculations?

> +			resets =3D <&reset EIC7700_RESET_WDT2>;
> +			status =3D "disabled";
> +		};
> +
> +		wdt3: watchdog@5080c000 {
> +			compatible =3D "snps,dw-wdt";
> +			reg =3D <0x0 0x5080c000 0x0 0x4000>;
> +			interrupts =3D <90>;
> +			clocks =3D<&clk EIC7700_CLK_GATE_LSP_WDT3_PCLK>;
                                ^^^^

[Severity: Low]
This isn't a bug, but there is a missing space after the '=3D' sign.

> +			clock-names =3D "tclk";

[Severity: High]
Is the explicit watchdog reference clock (NOC_WDREF) missing for wdt3 as
well?

> +			resets =3D <&reset EIC7700_RESET_WDT3>;
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706081055.1126=
275-1-pinkesh.vaghela@einfochips.com?part=3D8

