Return-Path: <devicetree+bounces-326079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id htb9DroPVmq2ygAAu9opvQ
	(envelope-from <devicetree+bounces-326079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:30:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B95675369E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:30:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e+ZMbfQD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326079-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326079-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F088300F0ED
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5B6376A0E;
	Tue, 14 Jul 2026 10:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83E6370D4F
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 10:30:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784025004; cv=none; b=gZCvSiqWB/yPEv2t4NdeOzX4wg0RZRnCXMSrge3BkrbRKwtgUke56A62GtCwDADG/PWQYn+fRpnnWlx1f90tl0ohz2LddzcVTIwHdmrr9IvwL4ZlvgKVWyBhcWfhNFJGpTvJnfITma1Z+V4Z6Op79NxDCSCaKGOCETPSbYbvl4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784025004; c=relaxed/simple;
	bh=q0ZGOFUJLsXLvegeJxYlGQBs1GV578olOBdASNhBjpg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tVMdPxDFrWGhVSh1u7bX80nH/mcLrePtRgnNa5JcpMDuaYz1HzuDaWzPEKvKWwYcdlSy/Pd9JIA6NMdmJKyxLiYPouPJyPecSJWKXJUd/9uw418NFtfEF5l0emMKMYCJh+xOGuGDuFFJV8KBWYGQjXckaTcdzCdysBwHbNRD+xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+ZMbfQD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C10321F000E9;
	Tue, 14 Jul 2026 10:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784025003;
	bh=p8RLdnSKJCXFr+QjVEBumsnKkui+2iyJwpyxzgCjpUE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e+ZMbfQDQwpghnLVwQhusmQrAijKkwxcJuZ2HKB6chlBEQHRUB/8OlcbGPeGBSlYQ
	 kwzCQud721cn9KY+zkZPFfpqzj8HkwpXaN6L20uSoDc55RtQpQDzn3eWJJpq+l/qR9
	 GAo3/44qsxXEWtZ2HhpyO6oT4sXunaKpvqfI/TZ6djYSf5kyXQQBILqXtVRkiNje0T
	 oY0mXTRKxyvkoqZpMZfcjjkqFc7Cmv1cNFK5Uq+52AZT2hglaqjj+1lG3YM0Td3Neu
	 GcwUWj7UO0e1KiUpAQdWSoIW62X32aWYl0rYruaZbqLmDcdnhEmHOWPQnJzVmqR3ew
	 yrY8/ohKIRoqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 3/8] dt-bindings: i3c: Add NXP P3H2x4x i3c-hub
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: linux-i3c@lists.infradead.org, Frank.Li@kernel.org, "Alexandre Belloni" <alexandre.belloni@bootlin.com>, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714092053.2461482-4-lakshay.piplani@nxp.com>
References: <20260714092053.2461482-1-lakshay.piplani@nxp.com>
 <20260714092053.2461482-4-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 10:30:01 +0000
Message-Id: <20260714103002.C10321F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326079-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:linux-i3c@lists.infradead.org,m:Frank.Li@kernel.org,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B95675369E

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The binding documents GPIO provider capabilities for the target =
ports but omits the corresponding required standard properties (`gpio-contr=
oller`, `#gpio-cells`) from the schema.
- [Medium] The schema artificially restricts the compatible string to a sin=
gle part number (`nxp,p3h2840`), failing to support the full hardware famil=
y declared in the commit message.
- [Low] The `maximum: 7` constraint is incorrectly applied directly to the =
`reg` property for child nodes, rendering it ineffective.
--

--- Patch [3]: [PATCH v14 3/8] dt-bindings: i3c: Add NXP P3H2x4x i3c-hub su=
pport ---
commit de643e91ed7cd5797dc3f49d8564e4fab44c0789
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

dt-bindings: i3c: Add NXP P3H2x4x i3c-hub support

Add bindings for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
multiport I3C hub family. These devices connect to a host via
I3C/I2C/SMBus and allow communication with multiple downstream
peripherals.

> diff --git a/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml b/Doc=
umentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> new file mode 100644
> index 0000000000000..f7f0752de5333
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> @@ -0,0 +1,291 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2025 NXP
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i3c/nxp,p3h2840.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP P3H2X4X I3C HUB
> +
> +maintainers:
> +  - Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> +  - Vikash Bansal <vikash.bansal@nxp.com>
> +  - Lakshay Piplani <lakshay.piplani@nxp.com>
> +
> +description: |
> +  P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841) is a family of multiport I3C
> +  hub devices that connect to:-
> +  1. A host CPU via I3C/I2C/SMBus bus on upstream side and connect to mu=
ltiple
> +     peripheral devices on the downstream  side.
> +  2. Have two Controller Ports which can support either
> +     I2C/SMBus or I3C buses and connect to a CPU, BMC or SOC.
> +  3. P3H2840/ P3H2841 are 8 port I3C hub with eight I3C/I2C Target Port.
> +  4. P3H2440/ P3H2441 are 4 port I3C hub with four I3C/I2C Target Port.
> +     Target ports can be configured as I2C/SMBus, I3C or GPIO and connec=
t to
> +     peripherals.

[Severity: Medium]
The description notes that target ports can be configured as GPIO providers,
but the schema does not seem to include the corresponding required standard
properties. Should gpio-controller and #gpio-cells be added to the schema
to support this capability and avoid incomplete device trees passing valida=
tion?

> +
> +properties:
> +  compatible:
> +    const: nxp,p3h2840

[Severity: Medium]
The commit message indicates this binding supports the broader P3H2x4x fami=
ly
(P3H2440, P3H2441, P3H2840, P3H2841), but this strictly restricts the
compatible string to a single part number. Should this be an enum allowing
the other family members, or use an enum alongside a fallback?

[ ... ]
> +patternProperties:
> +  "^i3c@[0-7]$":
> +    type: object
> +    $ref: /schemas/i3c/i3c.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description:
> +          The I3C HUB Target Port number.
> +        maximum: 7

[Severity: Low]
Is this maximum: 7 constraint effective here? The reg property structurally
evaluates as an array, whereas the maximum keyword only applies to numeric
scalar types in JSON schema validation. Does this limit need to be structur=
ed
differently (for example, applying it to items) to be evaluated?

[ ... ]
> +  "^(i2c|smbus)@[0-7]$":
> +    type: object
> +    $ref: /schemas/i2c/i2c-controller.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description:
> +          The I3C HUB Target Port number.
> +        maximum: 7

[Severity: Low]
Similarly for the i2c/smbus nodes, is applying maximum: 7 directly to the
reg property array valid for JSON schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714092053.2461=
482-1-lakshay.piplani@nxp.com?part=3D3

