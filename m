Return-Path: <devicetree+bounces-317358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vTHmKs8tQ2pwTgoAu9opvQ
	(envelope-from <devicetree+bounces-317358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:45:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D846DFD83
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:45:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aB0n2HYR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317358-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317358-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7623630075E1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1641F3B9617;
	Tue, 30 Jun 2026 02:45:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41CA3B47D2
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:45:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782787533; cv=none; b=aWkw03BFF4DenmkwjnZHjvY8nHsNAdTb48eukSv8ldj9QOLqZ3H+19MGJFffp1dgXRQBZ73YHu33MDz/CjD0fl5a2sbiZGL62pS64KQ/uVEwKEwAL9t0detDl5rSkztXsn6rA1DIzqaMp/D7TEupW9dMcqmOrlXjbWA2+ceh4k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782787533; c=relaxed/simple;
	bh=fz9L7cu4H37S0uisF8Uh5lWVMaEIN8RdWf5TeU3BcXA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OYqQTRIzE7XwhnBlDdab1DDh4nqhlRtKpK1IKEo8YSEAldYhbMz3n0IrVf6rt070RYFQeO3/5V3HOiNYI3sabzHIeW5154Q5i/uio+pjB44+olcmuC0Ch2xRdj1P/0Fl/GEvaHxkc2mYayC4C8XWOpjMO5O7tLU2tEiBBDODx4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB0n2HYR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47D4B1F000E9;
	Tue, 30 Jun 2026 02:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782787531;
	bh=76a2gudT2/KZF+u6Zt/ZM3n3NhPJLhlcAW9l6/6T0gM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aB0n2HYR1AXsc88ffGojEHPDGkok0G9eeU4on7JVIKs+1acyKRHo7y9viLMXisnCt
	 1LT4x74qHX/sfH8o5Nwg7Nsreb49AbZeM04cPghtixgC2Ldc71MyfoTokjUdIpeqbs
	 CX4lF91dImZFnNrcYfr7F1rs63iY93srCZioowgiGkj9fbnYt3gSVRyLQZrm/Ksn1b
	 4yD529o9ncytBQwtC2Ha44Azhg9IaTAYXMrQ+Qv92eeiurjPGU60E5Hf5caQl2+6x/
	 ACwPSRBnpOK7DJhWOGu2jlpqam5ZALcC8791eyI1eIkhOAgZ2HKihltqaXyrLmVXk8
	 MkO0YXaKKraoA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT36536
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260630023439.248861-2-mitltlatltl@gmail.com>
References: <20260630023439.248861-1-mitltlatltl@gmail.com>
 <20260630023439.248861-2-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 02:45:30 +0000
Message-Id: <20260630024531.47D4B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317358-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,devicetree.org:url,lists.linux.dev:replyto,sashiko.dev:url];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9D846DFD83

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Use of `additionalProperties: false` breaks inheritance of common p=
anel properties.
- [Low] Missing space before brace in the device tree example.
--

commit a15a27453070f4b1a8c8e896b7b599f3e42a0e6c
Author: Pengyu Luo <mitltlatltl@gmail.com>

dt-bindings: display: panel: Add Novatek NT36536

This commit adds a new device tree binding for the Novatek NT36536 DSI
display panel used in the LENOVO Legion Y700 Gen4.

> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36=
536.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.=
yaml
> new file mode 100644
> index 0000000000000..06f4d1e0ee4a0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/novatek,nt36536.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Novatek NT36536 based DSI display Panels

[ ... ]

> +allOf:
> +  - $ref: panel-common-dual.yaml#
> +
> +properties:

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - vddio-supply
> +  - reset-gpios
> +  - ports
> +
> +additionalProperties: false

[Severity: Low]
Does using additionalProperties: false here break the inheritance of proper=
ties
from panel-common-dual.yaml#?=20

The schema validator might reject standard panel properties since
additionalProperties: false only considers properties explicitly defined in=
 the
local file's properties block. Should this be unevaluatedProperties: false
instead?

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {

[ ... ]

> +            ports {
> +                #address-cells =3D <1>;
> +                #size-cells =3D <0>;
> +
> +                port@0 {
> +                    reg =3D <0>;
> +                    panel_in_0: endpoint {
> +                        remote-endpoint =3D <&dsi0_out>;
> +                    };
> +                };
> +
> +                port@1{

[Severity: Low]
This isn't a bug, but there is a missing space before the brace here.

> +                    reg =3D <1>;
> +                    panel_in_1: endpoint {
> +                        remote-endpoint =3D <&dsi1_out>;
> +                    };
> +                };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630023439.2488=
61-1-mitltlatltl@gmail.com?part=3D1

