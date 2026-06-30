Return-Path: <devicetree+bounces-317802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tPp3B5XDQ2pVhAoAu9opvQ
	(envelope-from <devicetree+bounces-317802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:24:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 044D76E4CFD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:24:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RPaPqu1t;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317802-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317802-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B61AF3029D7F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2754192E2;
	Tue, 30 Jun 2026 13:10:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18078416D17;
	Tue, 30 Jun 2026 13:10:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782825022; cv=none; b=PXXyec10Ie0oqntyqhPcI+gQ02OVwmCTbNSoLLE4UUoTu7u/h329z6RJwvQXkX9mX8BxKujW99I9XgBacuVaihPrVPwmkMGkPH+7VtybdAzw8FndnBuD3SCW2mUrs8aJ4R/dmD8xiD0clGRupg+oFY8o8ZXJwotSLH72g7RrTHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782825022; c=relaxed/simple;
	bh=2DwouDtvhu+LBQwnOw/5wk9oZdseE3IN96soFMzOsf0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d4QQeP+MaTwHn9HpOatZBXZXsJy4SJlz4FSH7L7qQsntgSi+K5bbT3TB9QM0FsEUFviXeH/XVeVkXttzmR9Re6GIDOSjZKxoBRVb85uIoHCEiKAfVxtH6ttAENp0HvKK0QmJynENljsw7wIRQFGW3rqYKhtDhW9FNHNkKp6fpDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPaPqu1t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90D021F00A3A;
	Tue, 30 Jun 2026 13:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782825019;
	bh=sqOiu5B9EF2puSGiP3TqHNAjCpWng7/BEsdp57dPPMQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RPaPqu1tB+QJA3VIQmmhGTxXPBnbtwnQYTZaFR7dtRABGo4lSOnw/PI37YjwumuCA
	 W2UVbNe1DmEPqBOCzJJE/4dox72gpXKxHLBWYR2kx1PIe0aBsex2qeMjhdIH/vW0IB
	 xZAKhkU+Gy6u5jp7iMguB/7Tns8DGdV+oYx6PEYnDr08sE2SaXyaKPn6Rk/tb7tpf9
	 uP0A5w11uZIaYp6Kl3SRKwiIWiZShiHMBbTjumO1UtgE4fecDgt2hRIU+1GwjPKqx0
	 zaYLLQkCVwxHFsyvWDxmRKOdDbCC4Z1wo0h15cHFzPpKXqUMq+lEjYjbBw3m2TX6tQ
	 BsZuqSX07L6tA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/10] dt-bindings: input: apple: Add DockChannel HID
 transport
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Reeves via B4 Relay" <devnull+michael.reeves077.gmail.com@kernel.org>
Cc: conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-4-506d936a1707@gmail.com>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-4-506d936a1707@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:10:17 +0000
Message-Id: <20260630131018.90D021F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+michael.reeves077.gmail.com@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:devnull@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,michael.reeves077.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 044D76E4CFD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The custom property `hid-country-code` lacks a vendor prefix.
--

commit 0afec3dbb1ad0bf9e9d68a29699cf412f978e322
Author: Michael Reeves <michael.reeves077@gmail.com>

dt-bindings: input: apple: Add DockChannel HID transport

This commit adds the device tree binding schema for the Apple DockChannel H=
ID
transport. It defines the required properties including mailboxes, IOMMUs,
and an optional keyboard child node for layout variants.

> diff --git a/Documentation/devicetree/bindings/input/apple,dockchannel-hi=
d.yaml b/Documentation/devicetree/bindings/input/apple,dockchannel-hid.yaml
> new file mode 100644
> index 0000000000000..dbba4fc389710
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/apple,dockchannel-hid.yaml
[ ... ]
> +  keyboard:
> +    type: object
> +    properties:
> +      hid-country-code:

[Severity: Low]
Should this custom property include a vendor prefix? Hardware-specific
properties not defined in a generic schema generally require a vendor prefix
(like apple,hid-country-code) to prevent future namespace collisions.

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          HID country code for the keyboard layout variant.
> +
> +    additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630-apple-mtp-=
keyboard-final-v1-0-506d936a1707@gmail.com?part=3D4

