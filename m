Return-Path: <devicetree+bounces-313286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RPuJE8OjM2o9EgYAu9opvQ
	(envelope-from <devicetree+bounces-313286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:52:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDDD69E397
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:52:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fZ4thko2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313286-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313286-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B3B13015858
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED7B3783DE;
	Thu, 18 Jun 2026 07:50:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E5C3D8101
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:50:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781769048; cv=none; b=BwTogJdAxsZGZ9FrhbsrDsIxozgZD3MXFuGD+5wtau3fLiddXFhg6KbLaBiQzFhUp8Rxce5LvtLiVo+AlCUQ3pEnC9C7IBvZL55/MWg+lmby94yWJ+VaSfN0JEfoZ8SQn+zsl6sC2wA8ils+xTa+pGe66a1YD19pHhBmHoJIGnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781769048; c=relaxed/simple;
	bh=XZKP1GpSk/ASVDK2/D8yHSdHODwNLy6NGoNHmeayd9U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ljDHLxZ0fycJqgj+6gtRoc3x6jbfxgQSWBPvtPGbQCgVi54ZCwpKQsn1YEmL1YlHaV25ww0/QVSmPEvyiofA5UpDZJNosZWWbs/jgg2wiLWJPqcTv4teicUZejwjatW8H+PqXInxXfkwTwh3q5qQqVT639w8JYzUrALqroaZloE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ4thko2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D54F1F000E9;
	Thu, 18 Jun 2026 07:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781769044;
	bh=Oo2s2QWwMk5YgZACPm8iQZdazusZ28dHH8AnE8wdqi8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fZ4thko2CcJrFKrF+/Ayz5MgL9V+2vu6UUG/3o8I6X8nqbXbOPdHBgrIcC6TaUz33
	 CON8OhYX587HN9OM8BLseeI943RNMBSBOMjqa85jj05T5c8KqH2gCIMz2oGWtTj7R+
	 sfwoSABOge+FRcIQN901vwpZMZCvFHDpRg3Ll39cjZWET1InWZjVoNVwhQwbE9i3SK
	 80NhZwvEwh1SLVulgEBNg/L+LCOxQQwRZPjOi2AlTJF4eumZrDJxv45euNyN9Lkrae
	 iBUHhupC8NY6RUwGEiriZSUs2sSHMRBd1plmA/JcGpFvekkEVt7jq7WJ1Z5BmmXXcH
	 yAsHt8DaXO+IQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 02/16] spi: dt-bindings: add
 spi-phy-pattern-partition property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618073725.84733-3-s-k6@ti.com>
References: <20260618073725.84733-1-s-k6@ti.com>
 <20260618073725.84733-3-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 07:50:44 +0000
Message-Id: <20260618075044.7D54F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313286-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADDDD69E397

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unnecessary `#address-cells` and `#size-cells` properties in the `f=
lash@0` node will cause `dtc` warnings and violate the MTD schema.
--

commit 7871aada614c3c1ea1780c6f6248e24acac0f319
Author: Santhosh Kumar K <s-k6@ti.com>

spi: dt-bindings: add spi-phy-pattern-partition property

This commit introduces the spi-phy-pattern-partition property to the SPI fl=
ash
sub-node to allow referencing a specific partition containing a PHY tuning
pattern. This is used when devices like SPI NOR cannot load the pattern
dynamically.

> diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/D=
ocumentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> --- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> +++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> @@ -204,10 +204,29 @@ examples:
>          flash@0 {
>              compatible =3D "jedec,spi-nor";
>              reg =3D <0x0>;
> +            #address-cells =3D <1>;
> +            #size-cells =3D <1>;

[Severity: Low]
Will adding these cell properties to the flash@0 node trigger an
avoid_unnecessary_addr_size warning during dt_binding_check?

Since the newly added partitions child node does not use a unit address,
these properties do not appear to be necessary on the flash node itself.

Does this also conflict with the MTD schema, which deprecates these propert=
ies
at the MTD flash node level in favor of placing them strictly inside the
partitions container?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618073725.8473=
3-1-s-k6@ti.com?part=3D2

