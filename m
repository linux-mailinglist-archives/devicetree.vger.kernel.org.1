Return-Path: <devicetree+bounces-317997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9u1TFL/7Q2oimwoAu9opvQ
	(envelope-from <devicetree+bounces-317997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:24:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A616E6E10
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:24:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bs+VAdej;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317997-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317997-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49824302BFE6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 114F23DCDB0;
	Tue, 30 Jun 2026 17:24:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D833DD526
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:24:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782840248; cv=none; b=h9JG8j6K2Y/p7B4zbLAKyOWuh6/4XVyF6GN7QO4ht1hjWuMpn6iEMc36E43AvWXsnMpOPPzZsM39NecctkOHp0WpMsi2djR2jW7+Wcnfl/psdFipd7BmIAk89ckarKbXrc68ERWo/XzPLB5GoFBmS7CzteRPgqhGx9tOUJ8t5Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782840248; c=relaxed/simple;
	bh=BYwbFdsddC5DAJnReI/CPqa5F7Am3iQ8AhihgXrU0EM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l2/F7TBuw9MEyrv2NiRjCdJpyAsROPoOAdon+a8LdwXvVfKETIgEkqVLJtvm6kBJYM3nCLy8HtBfM8IxAq4yqfuXk8Y2OfyEzPWhPpkuBG34DoS+PvdsIoqv8WpV39VLlCBOTKof/hG3IG4cs3FN0djl5aOmEKrAnPt6KdxGzMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs+VAdej; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B07D1F00A3D;
	Tue, 30 Jun 2026 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782840246;
	bh=1zKsh11d4Ln++1ljKtOIWp9rX/DjIDqat8gijAMjhd4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bs+VAdejCo+NQ/IpC3QOTRj4pZZlugqkWqAn59eSzkYrmtvBrnc5rbFJYq1O9Qmwt
	 RQFNgRYIM9KeHS7t9haF7GRca/gwWjQrikjkJ/lDg+SeQFo1oxZDWisYTmAuT/Pjvp
	 EVtwq6Wz5u5g+5VPAXp4MF2AZBUZGXYLrsEfmwyU9GujVEUKE9C5KIYiIkkQ3BocSX
	 CeQxDcl5PzE6wny06kw1T6HXLESTtY3pNkEqcrragoDB2PRJg8OtMzMYj4vzdK6AtU
	 pC6Vl+mF+WF60LL6dKS31N04DVsyDi+wOhCwPYcWKdWTcHP9sJ3nNm/N6LKIWyYBoH
	 lcIup0kD+LkfQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 14/15] dt-bindings: net: add onsemi's S2500
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629-s2500-mac-phy-support-v6-14-18ce79500371@onsemi.com>
References: <20260629-s2500-mac-phy-support-v6-0-18ce79500371@onsemi.com>
 <20260629-s2500-mac-phy-support-v6-14-18ce79500371@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 17:24:05 +0000
Message-Id: <20260630172406.0B07D1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317997-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,onsemi.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0A616E6E10

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree binding example intentionally encodes a software=
 framework bug workaround instead of accurately describing the hardware int=
errupt trigger type.
--

commit 4f05643415ec5654a4ffe32ab4202c0990bc3930
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

dt-bindings: net: add onsemi's S2500

This commit adds a YAML device tree binding for the onsemi S2500 IEEE
802.3cg compliant Ethernet transceiver. It explicitly uses a falling edge
interrupt trigger in the binding example to work around a current bug in
the OA TC6 framework code, rather than specifying the true hardware value.

> diff --git a/Documentation/devicetree/bindings/net/onnn,s2500.yaml b/Docu=
mentation/devicetree/bindings/net/onnn,s2500.yaml
> new file mode 100644
> index 0000000000000..11edf10508d9f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/onnn,s2500.yaml
[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      ethernet@0 {
> +        compatible =3D "onnn,s2500";
> +        reg =3D <0>;
> +        pinctrl-names =3D "default";
> +        pinctrl-0 =3D <&eth0_pins>;
> +        interrupt-parent =3D <&gpio>;
> +        interrupts =3D <25 IRQ_TYPE_EDGE_FALLING>;

[Severity: Medium]
Is it appropriate to encode a software bug workaround into a device tree
binding example?

The commit message notes that the OPEN Alliance 10BASE-T1x specification
dictates an active-low level interrupt, but IRQ_TYPE_EDGE_FALLING is used
here to accommodate an existing bug in the Linux OA TC6 framework.=20

Because device tree bindings act as a stable, OS-agnostic description of
physical hardware, will publishing this example encourage board developers
to copy a faulty configuration into production device trees?

Could this lead to ABI compatibility breaks and missed interrupts once the
underlying Linux framework bug is fixed, as the device trees would then
be providing an invalid hardware description to the operating system?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-s2500-mac-=
phy-support-v6-0-18ce79500371@onsemi.com?part=3D14

