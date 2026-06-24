Return-Path: <devicetree+bounces-315307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bQSROJYBPGqKiQgAu9opvQ
	(envelope-from <devicetree+bounces-315307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:11:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB356BFEA9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:11:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iXqwyGgX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315307-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315307-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A0F530F4F81
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A549F3BB135;
	Wed, 24 Jun 2026 16:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6632EC09F
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 16:07:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782317263; cv=none; b=d4LDpxRy0ui9O3evycp8NRpOgqfSCSEejFo61HWCTvSTW3x5E/bGPZ2kNzkqc2ZHUvBZ3+mknMu65pFfleYKecJ9PgJ0xsWYq1092IOC+vvOZl5COeJjJ6ivAfjziE8PQRr6LKzvIFgUfURu46+FU/Iu7OoMSJRJADBZsFLMyPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782317263; c=relaxed/simple;
	bh=J26K/1IIPHZGNBPP4ra14GkgOOM1/Cjag4PAy0dOIG0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TfYV9pNu5nUGSr/Xxs43aVJgRpMuM+oguugHjyWk1O7m/FTZagD8HT00MTSzSRSg/X+ZA1+Q/rWB53YRJ/zEG0XF3ZgMaGE6MjCrB4wmKFITNP1ynhUkqWyOCB8dyE+Tn4hSH7wETalJvaD557mHhtR7C6SvJLeFuFw4gr8nlk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXqwyGgX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0856A1F000E9;
	Wed, 24 Jun 2026 16:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782317262;
	bh=is3dic8ucDQEiaLxokZfwOndvkHxUxgIc/RiQ1Eg7Qw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iXqwyGgXW0Vu21Ay5x6hieJmKN5grMV0fHZaE/KlsTDbJ3PspFzoeje2tkS55Xmtl
	 vIzPGboir3ayvpr0KEkFW82p3lPbpbFHdkNqahwSTduX6tu6wpLX1FOUxj3mLnLrAc
	 bX5XqReCt5WSlRybqTqHdsrFqXTbInxQjFYHsC3Dn7h0dNJ1aq0XBlJO5Lp4HkDDvp
	 O7n/7p65D5g3soXv+EV8uMJu8fTMVqetE60v2cVr5CBgPbKxA1t7fke4Gg5hTVe3Ff
	 XWKb7vLlugyHgIkwtsn3OP6EbK4HBtFznAnyNuQ+8Sq8GUJTQu428N+cT5/Wk5wx9P
	 JB634jCAgTw+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: Convert cirrus,cs35l36 to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "David Heidelberg via B4 Relay" <devnull+david.ixit.cz@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624-dt-cirrus-cs35l36-v2-1-74eccdbd8fe4@ixit.cz>
References: <20260624-dt-cirrus-cs35l36-v2-1-74eccdbd8fe4@ixit.cz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 16:07:41 +0000
Message-Id: <20260624160742.0856A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315307-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:devnull+david.ixit.cz@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,david.ixit.cz,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DB356BFEA9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Incorrect `$id` path in the YAML schema breaks cross-referencing.
- [Low] Undefined properties in the dt-schema example cause validation fail=
ure.
--

commit 637d0c2cb3168267adcc3eaf3f2d6a7d9fd028f5
Author: David Heidelberg <david@ixit.cz>
   =20
ASoC: dt-bindings: Convert cirrus,cs35l36 to DT schema

This commit converts the CS35L36 Speaker Amplifier device tree binding from
plain text to YAML schema. It also includes the dai-common.yaml schema for
sound DAI cells and prefix.

> diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml =
b/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml
> new file mode 100644
> index 0000000000000..af0acaaefb68e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml
> @@ -0,0 +1,224 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/cirrus,cs35l36.yaml#

[Severity: Medium]
Does this $id field break schema cross-referencing? Since this file is loca=
ted
in the sound/ subdirectory, shouldn't the path exactly match the file locat=
ion
(e.g., http://devicetree.org/schemas/sound/cirrus,cs35l36.yaml#) to allow
dt_binding_check to resolve references properly?

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - VA-supply
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>

[ ... ]

> +            cirrus,boost-ind-nanohenry =3D <1000>;
> +            cirrus,boost-ctl-millivolt =3D <10000>;
> +            cirrus,boost-peak-milliamp =3D <4500>;
> +            cirrus,boost-ctl-select =3D <0x00>;
> +            cirrus,weak-fet-delay =3D <4>;
> +            cirrus,weak-fet-thld =3D <0x01>;

[Severity: Low]
Will this example fail validation with dt_binding_check due to the
unevaluatedProperties: false restriction?=20

The example uses cirrus,weak-fet-delay and cirrus,weak-fet-thld, but the
schema defined earlier specifies these properties as cirrus,classh-wk-fet-d=
elay
and cirrus,classh-weak-fet-thld-millivolt.

Additionally, is <0x01> a valid value for the millivolt threshold enum?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-dt-cirrus-=
cs35l36-v2-1-74eccdbd8fe4@ixit.cz?part=3D1

