Return-Path: <devicetree+bounces-326259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eoEAJYs4Vmq61gAAu9opvQ
	(envelope-from <devicetree+bounces-326259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:24:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 089947550C8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:24:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a1q9PEfr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326259-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326259-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF50F315DE07
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2011321FF30;
	Tue, 14 Jul 2026 13:17:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FC22135B8
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 13:17:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784035052; cv=none; b=J/3qm3544ye654dBoLHyOfHjZOSdLXeHsY1AKHuJXDyHtc6DYXSY9sjS9Y/LS2eT0HkoQSkjC6gRHL5G56IGFqLCPhwBNVAjqsOFkNll+Il6pjNWbfF50FQOKOX/WnVrrvV94ROg6OHpPdEmlouD5jMk7Y3a+eAviN4OK+FI8/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784035052; c=relaxed/simple;
	bh=VkNUZtm6+SIxNC5WL5Mse4ocUrh5R1BTXyAgWKhdHd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N72N78tCy7hfLLz3JZsFap8Ra/foeP7MCH0w4kUKatBnGYoveBHC+SNreQDN2AvH5C6GC9tqNt2ALrtmnGwDcENtxs50YGE2p62iKgxGgrTU6YUq8tgmYnsJW8nM82j5SkPktS4+8jIkxz+0jIphmYZpL8xjFel8o+K77jVXk2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1q9PEfr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C94F1F000E9;
	Tue, 14 Jul 2026 13:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784035048;
	bh=AaoZ0yQzqnufE5jIG2CU4+zVt0hDRjKk/OV/AbFa0JU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a1q9PEfrJv1PK0md/2YcxKOYy9X79+R1FDcSJvK04W1+b9RaF+YdPX5MnJU+n6yoP
	 gKuGykcCoD65spyBlNIW9nLtY97hPQJQjimCG9w1RDoEZQzdsTDHdyb3rjkyOdNTs0
	 8GXEejQrNVVnTvbD2qHURAPokGo8mfEOL8LNDosp4h/R/DUgWP9lBUnK0IE+uD40Ib
	 mp0OnXfeBCJDv9tT17Ow38oxHwyPF4DuPf/UTmvNSMzz2vUuujRMfGIPkhKGv4mN51
	 0gwNbEmFvbe1IzBnBp5LqwKT0RLumHIhDQM4l8tyTONPClJPLVuGTRvXHDjbhiKzaD
	 tTcFnVsXjtBng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: add DAPU Telecom
 DAP8211R(I) PHY binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Artem Shimko" <a.shimko.dev@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713131223.279555-2-a.shimko.dev@gmail.com>
References: <20260713131223.279555-1-a.shimko.dev@gmail.com>
 <20260713131223.279555-2-a.shimko.dev@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 13:17:27 +0000
Message-Id: <20260714131728.6C94F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326259-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:a.shimko.dev@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:ashimkodev@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 089947550C8

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The example's `compatible` string does not match the schema's re=
quired `compatible` string, causing the example to silently bypass this sch=
ema's validation.
- [Medium] The example uses an invalid value for `tx-internal-delay-ps` tha=
t violates the strict enum constraints.
- [Medium] The vendor-specific property `tx-inverted-clk` lacks the require=
d vendor prefix.
--

--- Patch [1]: [PATCH net-next 1/2] dt-bindings: net: add DAPU Telecom DAP8=
211R(I) PHY binding ---
commit acf143bd06413ea91d469e7f087d2e96207a1bec
Author: Artem Shimko <a.shimko.dev@gmail.com>

dt-bindings: net: add DAPU Telecom DAP8211R(I) PHY binding

Add device tree binding documentation for the DAPU Telecom DAP8211R(I)
Gigabit Ethernet PHY.

> diff --git a/Documentation/devicetree/bindings/net/dapu,dap8211r.yaml b/D=
ocumentation/devicetree/bindings/net/dapu,dap8211r.yaml
> new file mode 100644
> index 0000000000000..208a82f779d61
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/dapu,dap8211r.yaml

[ ... ]

> +  tx-internal-delay-ps:
> +    description:
> +      RGMII TX clock delay in picoseconds. The PHY supports 150 ps steps
> +      from 0 to 2250 ps. If not specified, defaults to 1950 ps. If the
> +      requested value does not exactly match a supported step, the driver
> +      selects the nearest supported value and issues a warning.
> +    enum: [0, 150, 300, 450, 600, 750, 900, 1050, 1200, 1350, 1500,
> +           1650, 1800, 1950, 2100, 2250]
> +    default: 1950
> +
> +  tx-inverted-clk:

[Severity: Medium]
Since this property is a vendor-specific extension, should it include a
vendor prefix like dapu,tx-inverted-clk? Introducing custom properties
without a prefix risks colliding with future standard properties.

> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      If present, the RGMII TX clock to the MAC is inverted (180 degree
> +      phase shift relative to the data lines). This is a vendor-specific

[ ... ]

> +examples:
> +  - |
> +    mdio {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        ethernet-phy@1 {
> +            compatible =3D "ethernet-phy-ieee802.3-c22";

[Severity: Medium]
Will this compatible string cause the example to bypass validation for this
schema? The schema requires the compatible string to be exactly
"ethernet-phy-id0008.011b". If the example is not evaluated against this
file's schema, it can hide other validation failures.

> +            reg =3D <1>;
> +            rx-internal-delay-ps =3D <1050>;
> +            tx-internal-delay-ps =3D <1150>;

[Severity: Medium]
Will this value trigger a validation error when the compatible string
mismatch is fixed? The tx-internal-delay-ps property enforces an enum with
strict 150 ps steps, and 1150 is not in the list of allowed values.

> +            tx-inverted-clk;
> +        };
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713131223.2795=
55-1-a.shimko.dev@gmail.com?part=3D1

