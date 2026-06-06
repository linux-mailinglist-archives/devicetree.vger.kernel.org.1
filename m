Return-Path: <devicetree+bounces-307565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6DlmC6hxI2oVuAEAu9opvQ
	(envelope-from <devicetree+bounces-307565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A27A64C128
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Lv5+4M19;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307565-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307565-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF537302F248
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 01:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734172459D1;
	Sat,  6 Jun 2026 01:01:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D1C12FF69;
	Sat,  6 Jun 2026 01:01:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707685; cv=none; b=tyTxhSlIXM5gpWZOpLEXtgdDboVARf9CwCsxISYF1OnIPvWsORAYnboJERV7jy9rOIsvm3Z9TW96A+uhfAGpXfFo6FRKev/h5MaHL/jmaehDx+BYLVtO49E8pjAFHZyuvdCF0hW4cDGxjIZZhZTPeld7J1Y8oKsXmWpcY0SVUt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707685; c=relaxed/simple;
	bh=U8hghVSpcja56ghpE7q84MFVd6oP5O+PNH9aanVuZEY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dck2HnxV29cGVKncp+/fwDCDON8zZc+to8VJYHRlygdrBCNrWO60RtzC1OyryX8LkHRzn2hxrbP0QhNdMNFHqwWNK8WhF9+h3W5DAthCdBH3vyPhgtxK8OssGEezo02LPwqD4EM7YjSuGLG0EYIqv5K+XRJ9ZyYnBfLa0GtWVPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv5+4M19; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 590881F00893;
	Sat,  6 Jun 2026 01:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780707680;
	bh=+Nt6l01toDGWdcFulXmhiFjmSN1rUVnk9yeA9v8ncaU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lv5+4M19w+VXoQ+ZP/H++Zn9NWLpsWLSRdFU9Ou3p6HJ0wfSPRBF9P/ZUUi6BodYp
	 sKkLo05g056aeDNiwSnVkK28OsMvKqfico45ttP+quJaeaBO3xBX7LB0D2XoTl4K6S
	 w4E0gkVhrtpq86PeeT69uMcPHpFykHVx4VywLDYW0PKB4FWweX9EPtieWc06VBPOkX
	 1kwP4ZvYyyNyM0OVRLbJDtQBvIYfNzJZwsVHK8Q1kMAMjScI+LDwtFeGv2D7mG6pK/
	 EeYhNhbOJoU5Zfzn6pdRCcXT77ntdf+Us6+3sSmjq/h7hXuZAbIccWZMt2jCn7jihg
	 GVT8cY5OD+jAw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 01/14] dt-bindings: net: qca,qca808x: Add
 regulator properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alex Elder" <elder@riscstar.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, bpf@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605010022.968612-2-elder@riscstar.com>
References: <20260605010022.968612-2-elder@riscstar.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 01:01:19 +0000
Message-Id: <20260606010120.590881F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,riscstar.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	TAGGED_FROM(0.00)[bounces-307565-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:elder@riscstar.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:bpf@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A27A64C128

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree example incorrectly assigns a 1.8V regulator phandl=
e to a 1.05V supply property.
--

commit 9408235f22241ddbd72a22ee2611a98eece3d7f2
Author: Daniel Thompson <daniel@riscstar.com>

dt-bindings: net: qca,qca808x: Add regulator properties

This commit adds four power rail supply properties (avdd18, vdd, vdd18, and=
=20
vdd125) to the QCA808x ethernet PHY device tree binding. It also updates th=
e=20
example section to demonstrate how to configure the power supplies.

> diff --git a/Documentation/devicetree/bindings/net/qca,qca808x.yaml b/Doc=
umentation/devicetree/bindings/net/qca,qca808x.yaml
> index e2552655902a3..3c1b7eca33caf 100644
> --- a/Documentation/devicetree/bindings/net/qca,qca808x.yaml
> +++ b/Documentation/devicetree/bindings/net/qca,qca808x.yaml
[ ... ]
> @@ -25,6 +25,18 @@ properties:
>      enum:
>        - ethernet-phy-id004d.d101
> =20
> +  avdd18-supply:
> +    description: 1.8v analog power supply.
> +
> +  vdd-supply:
> +    description: 1.05v power supply.
> +
[ ... ]
> @@ -39,6 +51,8 @@ examples:
>              compatible =3D "ethernet-phy-id004d.d101";
>              reg =3D <0>;
> =20
> +            vdd-supply =3D <&phy_vreg_1v8>;
> +

[Severity: Low]
Is this the intended phandle for the vdd-supply property in this example?

The property description defines vdd-supply as a 1.05v power supply, but the
example assigns what appears to be a 1.8v regulator (&phy_vreg_1v8) to it.
Could this discrepancy lead developers to copy-paste an overvoltage
configuration into their actual board device trees?

>              leds {
>                  #address-cells =3D <1>;
>                  #size-cells =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605010022.9686=
12-1-elder@riscstar.com?part=3D1

