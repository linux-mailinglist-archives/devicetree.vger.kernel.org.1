Return-Path: <devicetree+bounces-305722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +41FAaL+HmpGcgAAu9opvQ
	(envelope-from <devicetree+bounces-305722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:02:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C52406300C6
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:02:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SBMskQZT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305722-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-305722-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 46DD8300846C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 15:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0333ED3AF;
	Tue,  2 Jun 2026 15:43:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74DE3EDAA0
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 15:43:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780415020; cv=none; b=qVu9/kpBup03aYtpok8+4sGBOoePRnNJwDWnWrLQ01+VcNTgcCrsfRGqo6LeYboVJf4uwk+9AeM6KxZTGQYL6NRpqvI8cxe8RSpOnpjM31isJWwqm2WgqJohHeoR0g76W6eaQuQBYcVVTLhbbeqIKHKBTpRPTLf5wME6cZVMq9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780415020; c=relaxed/simple;
	bh=ADgvuRsNK+X30SsDnPdaxnhDKb5ba6imAgOcuJLUuek=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GVI65klSM/OP442qI2Dlg7DXm14t4NN9rxiV/RTKFpI/fT/SCQsO/l+tj0gLwKpS6EfbWJ9O5CxbSDwny3Bl6CHyFfFGm0Ja86Z1g2GB04gr5RfZhdc9IVw+xiBMraUKi+6I5Hd2cwp9fh9wOa7hNGzVr8kuQkuPh3rVTfF+0qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBMskQZT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8327B1F00893;
	Tue,  2 Jun 2026 15:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780415019;
	bh=2IrBNlN0+Zr9bDz4D9tZT9jTUhzY22H7N+08VufBkUE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SBMskQZTTNZVq0tCVHzdeGQscDo2/ircWdOew3ZHtPwEqPCfOLnk5ICAkHzTt+08m
	 TCwsM0Q8vT7MeHBJUVFTDoOiifavsws0qHJtEEzH7RpOSgS5az4sMGqNuSxxlRFN8Q
	 2EJSbb+nOjAHhye0lkPuOaqS+vDn3xjgyyonXgdT8qZLr1VAyqSg/9GSXS/iAFawdW
	 ltYqfWjSAvijvqQN2agJnoWv7YH4Fweq8MIaijwXeQe+iVYBLCC3EmfRjx4bDwYpQf
	 aXg9ZuX+/W9LoJlPN6WiW4TE/0fUbxRcSWSFzQGm3K0xeCtvNHJwtEBgcQIkemi2/g
	 milDqDnywq+7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] arm64: renesas: r8a779g0: add MFIS node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wolfram Sang" <wsa+renesas@sang-engineering.com>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602153504.302388-2-wsa+renesas@sang-engineering.com>
References: <20260602153504.302388-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 15:43:39 +0000
Message-Id: <20260602154339.8327B1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305722-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C52406300C6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `mfis` node violates unit-address sorting conventions within th=
e `soc` node.
--

commit 103116fe94a9708e753fa97a039cb6fb2fa2c53c
Author: Wolfram Sang <wsa+renesas@sang-engineering.com>
arm64: renesas: r8a779g0: add MFIS node

This commit describes the MFIS core used for inter-processor communication
on the Renesas R-Car V4H SparrowHawk board. It adds the mfis node and its
associated interrupts to the device tree.

> diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/=
dts/renesas/r8a779g0.dtsi
> index 82a7278836e57..3cff822fc609a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -603,6 +603,23 @@ tsn0: ethernet@e6460000 {
>  			status =3D "disabled";
>  		};
> =20
> +		mfis: system-controller@e6260000 {

[Severity: Low]
This isn't a bug, but should this node be placed before the=20
tsn0: ethernet@e6460000 node to maintain ascending unit-address order?=20
The unit address 0xe6260000 is lower than 0xe6460000, and standard=20
Device Tree conventions usually require sorting nodes sequentially.

> +			compatible =3D "renesas,r8a779g0-mfis";
> +			reg =3D <0 0xe6260000 0 0x10000>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602153504.3023=
88-2-wsa+renesas@sang-engineering.com?part=3D1

