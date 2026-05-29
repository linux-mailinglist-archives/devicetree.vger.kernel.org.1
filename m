Return-Path: <devicetree+bounces-304343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPFLADOlGWptyAgAu9opvQ
	(envelope-from <devicetree+bounces-304343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 16:39:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A7A603BF0
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 16:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D090E300CC0F
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 14:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121F633D6FD;
	Fri, 29 May 2026 14:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV6gkr3O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395A405F7
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 14:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780064869; cv=none; b=p8qwoka9SFtXQQnA8jNhS611wB7eNO9M3AeKe7XByFTi7inA/ZwA161yaYjnV4zpNx3Ls+q/7yvaRNX7NFL8Fn2OKFEO0p7phfQEQV1eHuO/q3FpRHkFNvD0DxEwxNoAiEXCRqSdai9Z9POGV1rirHj9aOvvHsuEZaso4LsVPDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780064869; c=relaxed/simple;
	bh=+myjD02MLeI5BaaKv3ttuWXKRVzJrl+8HzSwpel1Rw8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=r7J7nGFza9R9j4/SvrKgjalmttkHapBTKYkY0oH0dXeHk3F9jTxvHewWL5vouymLeIIrtt6PPq7mYN8M77FZezRyCEacz475Sf5MIva+sSXEiKWtJKMbKkcCnAuoJ900k4cLFDQikkcZVyw8SwiL81W9RLD5VyNO+V9qV89+UoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV6gkr3O; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6184A1F00893;
	Fri, 29 May 2026 14:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780064867;
	bh=BPXwiKFSm0zW8QbnHOThnDxSK0V+XzbVRh92LoGOLH8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aV6gkr3OO89bEjXwcfiMEqGmYG5g8n7Q12t95l0yX1jbCUSIaiNPebKEY1n4NRyOC
	 0S6ACyY+D+qps4QLWtiAwETtnx2cGtkgXtln9SZucmUTQsXXNJ/KOExgddMaag6fOH
	 37j4vOd3Jwm8ofOZap1d75bb9QKY2wOF3F0Vn9noji0vyzPSS8JjFHONbYhTztiK0x
	 7J3mB23Msg8FOeqFth08USweg2XVaqApjtmNGxr/QVQ9KErDbL3zckAuAZwD/rK2Ki
	 tFtuq1Q6usUBQ3BTuzQqyEwZEzQgw4Py62FbDjkYbwMId7PfVLtKas/q/Dl4EzDqN0
	 d0pWjLGPsfoVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: amlogic: meson-axg: Add missing
 nand_rb0 pin to nand_all_pins
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20260529140605.1070764-2-jerrysteve1101@gmail.com>
References: <20260529140605.1070764-2-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 14:27:47 +0000
Message-Id: <20260529142747.6184A1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304343-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 52A7A603BF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] eMMC boot failure due to BOOT_13 pinctrl conflict. Fix: Add status=
 =3D "disabled" to the nfc node in meson-axg.dtsi.
--

commit c218ae59948e8bab6c68fcfdc539ef678ec3bdba
Author: Jun Yan <jerrysteve1101@gmail.com>

arm64: dts: amlogic: meson-axg: Add missing nand_rb0 pin to nand_all_pins

This commit updates the nand_all_pins pinctrl node to include the missing
nand_rb0 pin for the meson-axg platform. This ensures the ready/busy pin
is properly configured for NAND controller operation.

> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot=
/dts/amlogic/meson-axg.dtsi
> index f1f53fd98ae25..b7a7f4fae7dc2 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi

[ ... ]

> @@ -481,7 +481,8 @@ mux {
>  							 "nand_ale",
>  							 "nand_cle",
>  							 "nand_wen_clk",
> -							 "nand_ren_wr";
> +							 "nand_ren_wr",
> +							 "nand_rb0";

[Severity: High]
This isn't a bug introduced by this patch, but adding this pin exposes a
pre-existing issue where the nfc node unconditionally claims nand_all_pins.

Since nand_rb0 and emmc_ds share the BOOT_13 pin, does this force a strict
pinctrl collision between the NAND and eMMC nodes?=20

If this collision causes the eMMC storage probe to fail and breaks the boot
process, should we add status =3D "disabled" to the nfc node in meson-axg.d=
tsi
to prevent this conflict when NAND is not actively used?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529140605.1070=
764-1-jerrysteve1101@gmail.com?part=3D1

