Return-Path: <devicetree+bounces-323640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8h/RCRuGT2oJiwIAu9opvQ
	(envelope-from <devicetree+bounces-323640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:29:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE10730562
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FYPY7EUr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323640-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323640-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43283316F1FA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7FE40758E;
	Thu,  9 Jul 2026 11:04:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC593B6C00
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:04:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783595064; cv=none; b=Ks5MQppUMCCgi7CVfYojttMbeWfocuS1awfb8/djJxLoHPg31xpz8IRD+QZAnlq3YzxOfBvPprvmbuKs9+KJ8A8qJ6eEN9xVO0oU4p6qfTWjkRQhcVQWV0t78BZjnpyKHL3/fDcVT6OP6K25dr9hxrEYGvjR+aijX9Ayp8gdBaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783595064; c=relaxed/simple;
	bh=lYIZPAneforc/+FhEppyPLe+gLpXFWWqfaQ1nbbXeck=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=s3kQipMVHDT/hLp28605tyvgjmFnzpB2u0Z2gTY+fjGU9oRkhOSddLVqkJW3iQNnkGmSJjaqNAj+FWfmK1Do0gBbiGJ78L2i4MLNPPGabUI245b8350Rl6cRhXrE87LBWMzz5knVNMAOLL8km/OxrV6XLsPQkzVHtJbEFpduAng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYPY7EUr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C3181F00A3A;
	Thu,  9 Jul 2026 11:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783595063;
	bh=0lX36Qbq55rPcd5gGKXGQt3WU7gllQhUsAzYwim5mKg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FYPY7EUrCPVeLI6JduM6UnanWDH7bQntRwomq1UjER1h6mZL8pAWkKPk1CYcYry3J
	 cboAs3HKEOemUeC5Qzjn/kvrsbkrAiiIHvvSiVv00ql4dVxraheE4Aah550hV6gtyn
	 U7JjMBD/nxgo/C4e8NbCRfpfR3/tn+9xPcER/6gR5optpeKdWLHiDXmff2cVAYx4yS
	 HEVmRaWTNrQ/gNFP4fJLxik9WNnQh+gwalGn/FZ5fUsChNZ5lbT4iQwlqkmhQbejs/
	 X041D+SbuBqxiTy7adwIJauesodX3qVdg0gK0s97A10FrBTZdzmPDdeQAhWeFATYSN
	 IhQGucyQO7ShA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/14] usb: hub: Associate port@ fwnode with USB port
 device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709095726.704448-6-wenst@chromium.org>
References: <20260709095726.704448-1-wenst@chromium.org>
 <20260709095726.704448-6-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:04:22 +0000
Message-Id: <20260709110423.2C3181F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323640-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,chromium.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AE10730562

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch introduces an unused local variable `hdev` in `usb_hub_re=
move_port_device`.
--

--- Patch [5]: [PATCH v4 05/14] usb: hub: Associate port@ fwnode with USB p=
ort device ---
commit 99d7e99ad957a10ca942a12622a4b31eeee25785
Author: Chen-Yu Tsai <wenst@chromium.org>

usb: hub: Associate port@ fwnode with USB port device

This commit associates a USB port's firmware node with the USB port device
unless the hub's firmware node is an ACPI node. This supports matching the
requesting port in later changes for the M.2 slot power sequencing provider.

> diff --git a/drivers/usb/core/port.c b/drivers/usb/core/port.c
> index b1364f0c384ce..e8fb2acd77bef 100644
> --- a/drivers/usb/core/port.c
> +++ b/drivers/usb/core/port.c

[ ... ]

> @@ -852,6 +865,7 @@ int usb_hub_create_port_device(struct usb_hub *hub, i=
nt port1)
> =20
>  void usb_hub_remove_port_device(struct usb_hub *hub, int port1)
>  {
> +	struct usb_device *hdev =3D hub->hdev;

[Severity: Low]
Is hdev used anywhere else in usb_hub_remove_port_device()? It appears to be
declared and initialized here but never referenced, which might trigger a
compiler warning for an unused variable when building with CONFIG_WERROR.

>  	struct usb_port *port_dev =3D hub->ports[port1 - 1];
>  	struct usb_port *peer;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709095726.7044=
48-1-wenst@chromium.org?part=3D5

