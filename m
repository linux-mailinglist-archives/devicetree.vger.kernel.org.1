Return-Path: <devicetree+bounces-306662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yQ2LOlcqIWrj/wAAu9opvQ
	(envelope-from <devicetree+bounces-306662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:33:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CBF63DA6D
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:33:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QI1YdNeF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306662-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306662-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5343F301C8A3
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209C1390CA3;
	Thu,  4 Jun 2026 07:26:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F93357D01
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:26:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780558005; cv=none; b=ppXLRQ/KTsicNagAc9ffbH9cvmEzOyKuuqV8gyI3uL7EeFMf0bywexeyprw+V9+waSHd99AyT8RXmZZmcvWT0E0zfZg9wuchYt8AmBMqrdAWTLKB5C3qzTVjQo++s2kyxx6HuAHefaaOQFIhYfVxs99pNj4f5pv/WsxOsnldC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780558005; c=relaxed/simple;
	bh=mVbfoarzYQXi3bMJjiqGEqu/ypxbUPwtBUeUsL9yy7I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BcNAmTgiUtQlBJsUPC9gtIxjIaGmXIgBzOlZnUBJ4SXMJgH7q+5oebmyNTtC/ZSzYtQb2LyCTQhR9oWdpuHyYDnFTkdOU9LyK0dC4wi7Job7C5z0kfeSzGrkJb2MoBFZlL7wOGPmTg8t6/LLTKoEIu1nGKtxwBvxYoSWmujTon0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QI1YdNeF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E5D51F00893;
	Thu,  4 Jun 2026 07:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780558003;
	bh=FsTN7g5Q4PiK3h3ePtvGCwpxqobJdxJmB3io6etj8ng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QI1YdNeFhohXVw+32xn13YL1iBwlo18t8uBrO/dNhD/TE/x7Sr2LH24/SeOdpnNeh
	 XUIcl3SbPO4PLXUYkKZQ1EZZUqEiK4ot0BlGXVRIxQ9Gik/h9vG+KZwGZ8bYkAidDH
	 6RvcBy5DW/PpEW+Wn+/vv87hvhQteo9M79r1MRc3V2XEfACTAkw2c3Y0gH0izs5Pt+
	 CRMRlDCWiBqy15lX+dSp0HucjAGKJLjnazHTbD5cXMBKpicutV0+pT289UZnqZRMZU
	 yYELOiaGPoJj9HSlic6sJU8m4Ivc3ckROrVzi/w2oxQxtESUXmnJgGG3SHKikyyUHc
	 8CuLGQNF8eq6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 2/9] dt-bindings: net: lan9645x: add
 LAN9645X switch bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260603-dsa_lan9645x_switch_driver_base-v7-2-b2f90e676707@microchip.com>
References: <20260603-dsa_lan9645x_switch_driver_base-v7-2-b2f90e676707@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:26:42 +0000
Message-Id: <20260604072643.5E5D51F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306662-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49CBF63DA6D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The schema's patternProperties regex `^ethernet-port@[0-8]$` is =
too restrictive, allowing node names like `port@X` to bypass switch-specifi=
c port constraints.
- [Medium] The binding enforces a fixed 2000ps internal delay and uses `phy=
-mode =3D "rgmii"` in the example, which explicitly violates the core Ether=
net controller DT guidelines.
--

commit 8516a555bd26f4b1d70ac6a8947c1ce165b314b8
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

dt-bindings: net: lan9645x: add LAN9645X switch bindings

This commit adds device tree bindings for the LAN9645X multi-port Gigabit
AVB/TSN Ethernet switch. It uses a fallback compatible for the smallest SKU,
microchip,lan96455s-switch.

> diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,lan96455=
s-switch.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,lan9645=
5s-switch.yaml
> new file mode 100644
> index 0000000000000..043fb48922b41
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/dsa/microchip,lan96455s-switc=
h.yaml
[ ... ]
> +  ethernet-ports:
> +    type: object
> +    patternProperties:
> +      "^ethernet-port@[0-8]$":

[Severity: Medium]
Will this restrictive pattern allow node names like port@X to bypass the
switch-specific port constraints defined here?

The base schema dsa.yaml allows switch ports to be named either port@X or
ethernet-port@X. By restricting this regex, a port@X node would be valid
under dsa.yaml but fail to match this block, bypassing the internal delay
constraints and the unevaluatedProperties check.

Could this be updated to "^(ethernet-)?port@[0-8]$" to match the base
schema?

> +        type: object
> +        description: Ethernet switch ports
> +
> +        $ref: dsa-port.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          rx-internal-delay-ps:
> +            const: 2000
> +
> +          tx-internal-delay-ps:
> +            const: 2000

[Severity: Medium]
Does forcing these delays to a hardcoded 2000ps violate the core Ethernet
controller guidelines?

Enforcing a constant 2000 requires every device tree to include this as
redundant boilerplate. Typically, a full 2ns delay should be handled
implicitly by the driver when using an internal-delay phy-mode, using
explicit delay properties only for sub-nanosecond fine-tuning.

[ ... ]
> +            ethernet-port@7 {
> +                reg =3D <7>;
> +                phy-mode =3D "rgmii";
> +                ethernet =3D <&cpu_host_port>;
> +                rx-internal-delay-ps =3D <2000>;
> +                tx-internal-delay-ps =3D <2000>;

[Severity: Medium]
Is this example combining phy-mode =3D "rgmii" with 2000ps internal MAC
delays allowed by the networking device tree guidelines?

The ethernet-controller.yaml explicitly rejects this pattern, stating that
a value of 2000ps and a phy-mode of "rgmii" is invalid. If the MAC provides
the full 2ns delay, the interface is functionally operating in an
internal-delay mode, and phy-mode =3D "rgmii-id" should be used instead.

> +
> +                fixed-link {
> +                    speed =3D <1000>;
> +                    full-duplex;
> +                    pause;
> +                };
> +            };
> +        };
> +    };
> +...

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-dsa_lan964=
5x_switch_driver_base-v7-0-b2f90e676707@microchip.com?part=3D2

