Return-Path: <devicetree+bounces-324742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8OtWCDHeUWorJwMAu9opvQ
	(envelope-from <devicetree+bounces-324742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:09:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 624867408D8
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:09:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="BMlVMNE/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324742-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324742-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E93DB303C4D3
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BABEB31D362;
	Sat, 11 Jul 2026 06:08:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9663131B83B;
	Sat, 11 Jul 2026 06:08:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750118; cv=none; b=hQBCXWWp5l5FEAugTSWSnnxz4zqwF3OhyxBcnYYlS5+3obDwRSqXUVOEzCuz/1BJ4/pkmOQSNd2zy2k6hWtvV5fxQIt3Ilja8tFyAAmMarRxKqkGAVHwriCOSPGjDqq1vNoJqhRzQ/u6Xe21z2tvGGr/zkv/Txc4178XZyxsdNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750118; c=relaxed/simple;
	bh=pMlpn48Lv+q53c/a9wvN5KN05W0XM1nBoMg4/BnRCp8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lk1TtIWogSQN9HVcwDdUAO6NGuUcueMrnaa81gLC5MYQiNet6Rybbak2C94vnHGlJPvKmF6XDpJ7Ec5U7BQ4h6g49Sp72FkmaoyL3jCI5YaEI4SiFVNOYSPRbjP4bMSL+zMCgBidsQ8VjN4XT1IrwhKVAIDeztyDG7l0UZhIu/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMlVMNE/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD5C31F000E9;
	Sat, 11 Jul 2026 06:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750117;
	bh=GmCDzHvKzZG41jtnajg3n+SiMxUDv8sj7VejOOpbaOg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BMlVMNE/Iev/LwggCq3vM5HAmUPY3bS2/2FsrFkAOZijGwCcNQMEoBJfEAbgcYG8Q
	 o4LK320hFGZH2ybJ8ZDpzblqpmMxI7vSftdnOTmG7wsxnFMqO1jlxwnN16T5GLHbUY
	 opIQQH6XrDQcDfHN24SVkgm7Yr7Botg7FHURHg7F09FTANPZ7J8GMaPAdDwe85LWdl
	 xaeh8eQG1NrDyYOivUCNeOUwch5SuwmIZrq8p22o2CYgi/ovg4KAAJGqO3LFc6s5JK
	 G1pOuZ/C6o6edO/42o264mBIpQ1a64doTotPgVn1+4zvUi0hhUitXT7/Ialbgq5zVa
	 G1PAOvbSrUt1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/16] ASoC: dt-bindings: add TI PCM1773
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, lee@kernel.org, conor+dt@kernel.org, mfd@lists.linux.dev
In-Reply-To: <a02383ea5907a677f4c61066d423efde2b9de48b.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <a02383ea5907a677f4c61066d423efde2b9de48b.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:08:36 +0000
Message-Id: <20260711060836.CD5C31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324742-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:lee@kernel.org,m:conor+dt@kernel.org,m:mfd@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,goldelico.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 624867408D8

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Incorrect `$id` path with extra `bindings/` directory component.
- [Low] Undocumented property `enable-gpios` is used in the example but mis=
sing from the `properties` block.
--

--- Patch [7]: [PATCH 07/16] ASoC: dt-bindings: add TI PCM1773 ---
commit 743fe66d5b39db7483986e7887f8d34c7081d440
Author: H. Nikolaus Schaller <hns@goldelico.com>

ASoC: dt-bindings: add TI PCM1773

This commit adds a new device tree binding for the Texas Instruments PCM1771
and PCM1773 simple audio codecs. It documents the compatible string and sho=
ws
basic usage.

> diff --git a/Documentation/devicetree/bindings/sound/pcm1773.yaml b/Docum=
entation/devicetree/bindings/sound/pcm1773.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/pcm1773.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/sound/pcm1773.yaml#

[Severity: Low]
Does this $id path match the exact file path relative to
Documentation/devicetree/bindings/? It looks like there is an extra
bindings/ directory component here which might cause schema cross-reference
resolution to fail or dt_binding_check to skip validation.

[ ... ]

> +properties:
> +  compatible:
> +    const: ti,pcm1773
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    audio-codec {
> +      compatible =3D "ti,pcm1773";
> +      enable-gpios =3D <&gpio4 22 GPIO_ACTIVE_LOW>;

[Severity: Low]
Will this example fail dt_binding_check validation? The schema uses
additionalProperties: false, but enable-gpios is omitted from the properties
block above, which will cause the strict schema validation to reject this
example and any actual device tree nodes using the property.

> +    };
> +
> +...

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D7

