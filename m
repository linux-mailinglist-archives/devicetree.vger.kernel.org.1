Return-Path: <devicetree+bounces-314073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6TJCExKhN2r+PQcAu9opvQ
	(envelope-from <devicetree+bounces-314073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:30:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F46AA75C
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:30:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=J2bMKjXH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314073-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314073-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF06D300AEC1
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 08:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E44284883;
	Sun, 21 Jun 2026 08:30:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7085126C03;
	Sun, 21 Jun 2026 08:30:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782030607; cv=none; b=kv6+W2PI5pKmakVix4hhAYVwfMQEXDfuFlMwHCKLiLffwtvcxIGyo7F14DglaF9lTk3IdgIT16o8R3xQIGCLOMupyXARgJdHMADFU9CWZn53XhIUQb91Nj7hi2/3HZOTxMfKDryjmWXuJjYWwI9GFuoFBLj32h2ZZzhhRm2+8Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782030607; c=relaxed/simple;
	bh=dceVlqY/aSQPGBpvAyE7bVNLeeW7mBG9fyBvZjruGNE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GaczSYLdtVu1bhKddaqETmb9rSJwpknBcvyUuSao7u1gkkc/bGHJgEZxSfLx5F6xWRdUX7iJkr30LAiA9h1SMh+lW1U5G0vaeosFvy4P6x8g6hwIML1wczXAXCtd5wCXi/gQDvdO5ZS6Dj4wQSMlHoCx3A6Hc01QaOHq+/rHHgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2bMKjXH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489341F000E9;
	Sun, 21 Jun 2026 08:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782030606;
	bh=p/FXKWzSj0tkTJ8Kx4wCHGUgcqstSZz9tPCPJC2/GhQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J2bMKjXH1a+bvLbPRxWE/Xe1huZnQrxSYJEQkTe814DBijefLFD+QmIhPsfBd179u
	 AMh4+3q8rg/Bd49uuC772SH3gdTt13JE1MfQQ3Bp4vDVpSKlX9lJlnE1g9GA/4e9lq
	 MIBD8BtqUARjQTOqAQrjExRze4aOYKe+y75q231mHkwAU1Q1xbodcXikJqqiUPsZ5/
	 R2ah2Z0vhH3zvIZ843IvPN2vmhLmKsEKe6uUcfA26Plr22clwTtHP6hi/PKAHvGvYb
	 yfdHcE8UC/MfLC+1IGQ96F0Q0tOv4FazV3Ydmj2eGbHtF4wL0NQ/B0jtkDAfgHFGJL
	 xSHC4lpXzbGqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 3/9] regulator: dt-bindings: Add MediaTek MT6392 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260621081634.467858-4-l.scorcia@gmail.com>
References: <20260621081634.467858-1-l.scorcia@gmail.com>
 <20260621081634.467858-4-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Jun 2026 08:30:05 +0000
Message-Id: <20260621083006.489341F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314073-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD6F46AA75C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Hardware Description Anti-Pattern (`avddldo-supply`)
- [Low] Missing DT Binding Examples
--

commit 0677db1e9f95451166ee6a30c2d046ffeee3f450
Author: Luca Leonardo Scorcia <l.scorcia@gmail.com>

regulator: dt-bindings: Add MediaTek MT6392 PMIC

Add bindings for the regulators found in the MediaTek MT6392 PMIC,
usually found in board designs using the MediaTek MT8516/MT8167 SoCs.

> diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6392-=
regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt639=
2-regulator.yaml
> new file mode 100644
> index 0000000000000..d74721d8f2ffc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6392-regulat=
or.yaml
> @@ -0,0 +1,112 @@

[ ... ]

> +properties:
> +  compatible:
> +    items:
> +      - const: mediatek,mt6392-regulator
> +
> +  vproc-supply:
> +    description: Supply for buck regulator vproc
> +  vcore-supply:
> +    description: Supply for buck regulator vcore
> +  vsys-supply:
> +    description: Supply for buck regulator vsys
> +  avddldo-supply:
> +    description:
> +      Supply for AVDD LDOs (vm, vio18, vcn18, vcamd, vcamio). According =
to the data sheet
> +      this is an internal supply derived from vsys.

[Severity: Medium]
Since this supply is an internal silicon connection derived from vsys, shou=
ld it
be exposed as a configurable board-level devicetree property?

Devicetree typically describes board-level wiring. Would it be better for t=
he
regulator driver to statically resolve this dependency internally to avoid
establishing an incorrect ABI?

> +  ldo1-supply:
> +    description: Supply for LDOs group 1 (vaud28, vxo22, vaud22, vadc18,=
 vcama, vrtc)

[ ... ]

> +required:
> +  - compatible
> +
> +additionalProperties: false

[Severity: Low]
Does this new binding schema miss an examples section?

According to devicetree binding guidelines, new schemas should include an
examples section at the end of the file. Without it, validation tools like
dt_binding_check might emit errors or skip full validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621081634.4678=
58-1-l.scorcia@gmail.com?part=3D3

