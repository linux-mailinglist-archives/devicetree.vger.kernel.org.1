Return-Path: <devicetree+bounces-311960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cbCgDkj6L2roKwUAu9opvQ
	(envelope-from <devicetree+bounces-311960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:12:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFF668694E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:12:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=microchip.com header.s=mchp header.b=PATF16bW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311960-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311960-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=microchip.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAA923059A40
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829DB3F39E7;
	Mon, 15 Jun 2026 13:10:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0733F1669
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 13:10:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781529007; cv=none; b=LHQ/GGInCYMGb5K9/xDCSvpY0LTwBWPRiHqY0hcDzsEQVjr742v/kzzvSR2aZTEBbAE1oQALQJ+QvWBkCCIQh00UaQsySZVY/AzQvcryMkEc/wq0DFE75vzbWb2SD5xHFWIGUS0omWBdA+caJZpoyQy43zQT8IjzT2mijjIiEGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781529007; c=relaxed/simple;
	bh=+BTDBwSp/C8pf2msWXiToPSSyDGsYwxeCk4ctqYdhJI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hVF1IYxniwhVK98SGES1C1oN9zC2hym7SRd4sGiM8IpvvLWsVsPulkr5evtae+gVQbe2sa0WMwrC5Uk0wuvGA4ExO6v4HCiNaijXu2D4Pej2fdRFMbjvnP8Hng89p1pPDCuGHiz9SJCU/sjWKtSu4KMwgvO5v7W2ANYvxf4TZ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=PATF16bW; arc=none smtp.client-ip=68.232.154.123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1781529006; x=1813065006;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+BTDBwSp/C8pf2msWXiToPSSyDGsYwxeCk4ctqYdhJI=;
  b=PATF16bWKEkTm4e/ZJdOQpEtv8ON5Dz7uC9FnhV8wqMzaaqMMuRWH0C+
   ZsPhIdukOQ3rark4Fg4eQkKlrbgVYxtk+gcEPf1asQ0GqUb/xEieiuRqn
   o1aLlwox2pGAVZ9c/NWJTKSO60oY/aK8yAVTJDlUw42EJjekDbnUuVP+C
   WIbjh0egNpe98/BaiWs7mX49tcZhi4mv4ohP6q/NbR8vUUdL2GDAVWqx3
   t/8B6+sJb3y3Wm2iJS3/mHwFZGWkJ+16KKIeFeZQD44630XFY+oNnrN8C
   WOhdDiQz5pj/SFhPAPtSh3OuoJ4VfuXY1dt70AKFrEo0Rhm5swu4Nlpo1
   Q==;
X-CSE-ConnectionGUID: qRaXm55+RaK3B/eZdtwkxw==
X-CSE-MsgGUID: 1ioOdcBpT6WXob6LL9BVGA==
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="asc'?scan'208";a="58302455"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 06:10:04 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.41; Mon, 15 Jun 2026 06:10:04 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.58 via Frontend
 Transport; Mon, 15 Jun 2026 06:10:02 -0700
Date: Mon, 15 Jun 2026 14:09:15 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Lucas Stach <l.stach@pengutronix.de>
CC: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <kernel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Gira
Message-ID: <20260615-matrix-deck-7b49288fee41@wendy>
References: <20260610213047.500701-1-l.stach@pengutronix.de>
 <20260611-swiftly-imaging-d624308d16b3@spud>
 <624ac28d675035f26f3ea2dd8afb288d59af34f9.camel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/PqTSbA7ZrA4DOLz"
Content-Disposition: inline
In-Reply-To: <624ac28d675035f26f3ea2dd8afb288d59af34f9.camel@pengutronix.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311960-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.stach@pengutronix.de,m:conor@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[conor.dooley@microchip.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor.dooley@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,gira.de:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:email,wendy:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADFF668694E

--/PqTSbA7ZrA4DOLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2026 at 02:53:11PM +0200, Lucas Stach wrote:
> Hi Conor,
>=20
> Am Donnerstag, dem 11.06.2026 um 18:40 +0100 schrieb Conor Dooley:
> > On Wed, Jun 10, 2026 at 11:30:47PM +0200, Lucas Stach wrote:
> > > Add vendor prefix for Gira Giersiepen GmbH & Co. KG
> > > Link: https://www.gira.de/
> > >=20
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> >=20
> > Where is the user?
> >=20
> The user is a currently under development board support for the Barebox
> bootloader. It is expected that the DT for this board will also land in
> Linux at a later time.
>=20
> Since the kernel source is basically the registry for vendor prefixes,
> I didn't expect that a in-tree user would be required for this
> submission.

Not an in-tree user, but a user at all. It was not obvious that there
actually was one here. If there's other instances of this in the future,
please put some info about the device under the --- line, so that we
know there's a barebox user for it.

Acked-by: Conor Dooley <conor.dooley@microchip.com>


Cheers,
Conor.

--/PqTSbA7ZrA4DOLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCai/5ewAKCRB4tDGHoIJi
0tEfAQCrioUklt7xZ0vfEXsxSO5diJl5hm71ygOIdVdI0ll8oQEAzyrDAjWT/ah4
Sx51qHRGCjpLNFdkY34TwUDhBViElQw=
=aE+U
-----END PGP SIGNATURE-----

--/PqTSbA7ZrA4DOLz--

