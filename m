Return-Path: <devicetree+bounces-321546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MyPqI5MMTGqnfQEAu9opvQ
	(envelope-from <devicetree+bounces-321546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:14:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A1715582
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:14:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PMP410yv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321546-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321546-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 99826300B5AE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 20:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845623D567E;
	Mon,  6 Jul 2026 20:14:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9EF3ACA4C
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 20:14:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783368849; cv=none; b=Sh4LMPHStc31QfmWYAUOedcHhY4G4feTtUT7DoR6OpokCINI+rUA2kVs5RTv/YoypAbtIxMZezBC7cSusCdeGArPF6FtNyVMovGirqgRXSGy33q/SKDw4k+JQuQyQMgME04BNkInnJbjP4cCF2M08tUM1kzlcnvBMvaZ4cV4T/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783368849; c=relaxed/simple;
	bh=p0EkqS1QmNNa8IOhxlRd4LQkb94WVh/QOD4I353cIxs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Niz4XcMCIFipQ0IZJ5UoEj1SfpZilNxGOwRHtf7DuQ6m68xvIQVtO1dvXTG5IYw9y88JDu9lXUC7IbXjIAsriUE2poDxGrjFASu5t5ww04P1hQCNvh3FuN1rBEs90HGJSAxDHxuiAmsucMhmlRA3J8pU05T3lojajj1lilE4DII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMP410yv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72031F000E9;
	Mon,  6 Jul 2026 20:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783368846;
	bh=vcQ5Tn1q02V6JEoiSMNoCO73XC2KhuPnqnuNtnh81UU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PMP410yvej10+4PSmhLnMoExUsnjCVVbgkiTE/tsfv2dJm+Ojio+boTm5iiaBhrco
	 H298FRMgSPd3mknYjolVKdWvgiB/J2yPYzXjtVzpe/ra4m9hAF6qMzt9S996EE3MOF
	 7DzMdENq/3OBsLPOL12fvxLyn8ptnG1YWMsen1mpYlRSu6PhHNkAP4sdOAw/9QBp65
	 hkENmOj0tHuyTCuu15T1HECc/vrAa4cWKzANR6v6ZAilgdhWZaKs7gPfbuUDsD7IN/
	 ACmXnz1i6IvJfPIa49Rt39e0c8+xwrj2fI7XUnAcbpEAoDQvvtLEH+/mFmjjXUezBf
	 nRJNmBIGb48SA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/12] pinctrl: rockchip: Add RV1106 pinctrl support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706195818.3906949-5-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-5-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 20:14:05 +0000
Message-Id: <20260706201405.E72031F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321546-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,chromium.org:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 280A1715582

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `rv1106_pin_banks` array defines `gpio0` and `gpio2` with 32 p=
ins, which exceeds actual hardware capacity and causes overlapping/aliased =
register accesses.
--

commit fbf0d23655e7fe240a1a8b92b59254646172a530
Author: Simon Glass <sjg@chromium.org>

pinctrl: rockchip: Add RV1106 pinctrl support

This commit adds pinctrl support for the Rockchip RV1106 SoC, ported from
the vendor kernel. It defines the pin controller banks and offsets for
drive, pull, and schmitt registers, and adds matching compatible strings.

Link: https://github.com/LuckfoxTECH/luckfox-pico

> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl=
-rockchip.c
> index 7e0fcd45fd265..f9cbcb955853c 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c

[ ... ]

> @@ -4623,6 +4787,48 @@ static struct rockchip_pin_ctrl rv1103b_pin_ctrl _=
_maybe_unused =3D {
>  	.schmitt_calc_reg	=3D rv1103b_calc_schmitt_reg_and_bit,
>  };
> =20
> +static struct rockchip_pin_bank rv1106_pin_banks[] =3D {
> +	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0",
> +			     IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
> +			     IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
> +			     IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU,
> +			     IOMUX_WIDTH_4BIT | IOMUX_SOURCE_PMU),

[Severity: High]
Does setting nr_pins to 32 for gpio0 cause register overlap?

If gpio0 has 32 pins, configuring drive strength for pins >=3D 20 would req=
uire
16 registers (offsets 0x10 to 0x4F, since there are 2 pins per register).

This range directly overlaps with the bank's PULL (0x38) and SMT (0x40)
offsets. If a device tree requests these higher pins, would it silently
overwrite the pull and schmitt configuration registers?

> +	PIN_BANK_IOMUX_FLAGS_OFFSET(1, 32, "gpio1",
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    0, 0x08, 0x10, 0x18),
> +	PIN_BANK_IOMUX_FLAGS_OFFSET(2, 32, "gpio2",
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,
> +				    0x10020, 0x10028, 0, 0),

[Severity: High]
Could this IOMUX offset configuration cause unintended register aliasing?

The gpio2 bank is defined with 32 pins, but offsets for pins 16-31 are
explicitly set to 0.

If a device tree configures multiplexing for these upper pins, wouldn't it
read an offset of 0x0 and write to regmap_base offset 0, which is the IOMUX
register for gpio1? Could we reduce the pin count for this bank to match
the actual hardware capacity and prevent this?

> +	PIN_BANK_IOMUX_FLAGS_OFFSET(3, 32, "gpio3",
> +				    IOMUX_WIDTH_4BIT,
> +				    IOMUX_WIDTH_4BIT,

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706195818.3906=
949-1-sjg@chromium.org?part=3D4

