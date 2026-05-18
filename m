Return-Path: <devicetree+bounces-299562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBg2O+dBC2p5FAUAu9opvQ
	(envelope-from <devicetree+bounces-299562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:44:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 938705711BE
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9BFA300100E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BDEC481230;
	Mon, 18 May 2026 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOPt2eUR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5915B48095A
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779122644; cv=none; b=Z51jprvtPy4eNoq4rHgsRZJ49ppzQfKq1CJJwsEuqB4uYzyfBML5V7Lim8ZJ9np2mXTjzSBKsyzPVrp+TS4o5LeaJFRQBXxTqa4VCcvuLl3PT2hVRDGhIpPwFrdU4z6XIvG+90x48+AwLQJpxFBCdyiF8TwyJZzwIrimVtk6OsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779122644; c=relaxed/simple;
	bh=P8BPxiC1sLS12bl/haK6On3jFqNx0LUwaUsK4C0acIA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D+s/AKKGIiAQJFX27JmzS1WZCr1gHm8kgzNlPdk5QKs0/yCCgvn0CD4fBMuzLHxcJEmGJA1vjd6kZJlBLknT4jpl1Npink0iswb7CP3JApiMKsiqHxfVJmhtBcEkDF3t/YnFPYKbjHe7kDq06z1Thrs+cmyWvUJwvgsuq9nBaQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOPt2eUR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C09F1C2BCB7;
	Mon, 18 May 2026 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779122644;
	bh=P8BPxiC1sLS12bl/haK6On3jFqNx0LUwaUsK4C0acIA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=cOPt2eURFV9MTczctDqQrxWBomlKobEamHF+P9PYRXCKR1y1kKFSGy1/sZQl3MVYj
	 mvI/x6vh3l/3AWvTsUkD6cIaQtC+K5fnmWE6l3wFXPhxVVEjNt8wnI/D8CW4k6MW0v
	 jTNxgBAG6QQYIA8G+cfEGPJxZ8S0D/Z+hDIm4Jf4yYXnOR6xBbeLH3FeJ+JKM5tCbv
	 XvF4AP7HjJ7d2LagSNQqXKlHddOmfSGQz+jmCY3aPRgdbeM0Tp4RydGCO0aTMxuebK
	 sSxzVj959y7NtqDS41QfpkKr0tAcpkUd7LL63+aR4TuQJZP+gpqSHftPj1Yuu5ZNN7
	 t8JOThb24ztFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: richtek,rt1711h: add missing
 'port' property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Akash Sukhavasi" <akash.sukhavasi@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518162014.18251-3-akash.sukhavasi@gmail.com>
References: <20260518162014.18251-3-akash.sukhavasi@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 16:44:03 +0000
Message-Id: <20260518164403.C09F1C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299562-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 938705711BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit modifies the device tree schema to legitimize a non-s=
tandard and semantically incorrect devicetree layout present in `hi3660-hik=
ey960.dts`, instead of fixing the buggy devicetree file.
--

commit eb001738f71c4e41754a143f37ed24b7c078d74d
Author: Akash Sukhavasi <akash.sukhavasi@gmail.com>

dt-bindings: usb: richtek,rt1711h: add missing 'port' property

This commit adds a top-level port property to the richtek,rt1711h binding
to resolve a dtbs_check warning for hi3660-hikey960.dts. It also updates
the example to show the role-switch endpoint connection.

> Add the missing property using /schemas/graph.yaml#/properties/port,
> following the pattern used by realtek,rts5411.yaml and other USB
> controller bindings.

Is this comparison to realtek,rts5411.yaml accurate? The RTS5411 is a USB
hub that physically routes data, while the RT1711H is a Type-C Port
Controller (TCPC).

> diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b=
/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> index 7ded363845184..05ffc33a24fca 100644
> --- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> +++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> @@ -52,6 +52,13 @@ properties:
>      description:
>        Properties for usb c connector.
> =20
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      OF graph port describing the connection to the USB role switch
> +      consumer (e.g., a dwc3 controller with usb-role-switch), used to
> +      convey type-C data-role changes signaled by the TCPC.

Since the RT1711H is a TCPC, should this role switch endpoint logically bel=
ong
to the physical port inside the connector child node instead?

According to the standard bindings in connector/usb-connector.yaml, the
connection to the USB role switch is typically represented inside the
usb-c-connector child node.

The Linux TCPM core also appears to expect the standard layout, as tcpci.c
initializes tcpc->fwnode to the connector child node, and tcpm.c attempts
fwnode_usb_role_switch_get(tcpc->fwnode) first.

Would it be more appropriate to update hi3660-hikey960.dts to move the port
into the connector subnode rather than changing the schema to allow it at
the top level?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518162014.1825=
1-1-akash.sukhavasi@gmail.com?part=3D2

