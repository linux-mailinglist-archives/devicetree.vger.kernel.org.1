Return-Path: <devicetree+bounces-307340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rfg0DRatImoOcAEAu9opvQ
	(envelope-from <devicetree+bounces-307340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:03:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 898376479A3
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:03:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=microchip.com header.s=mchp header.b=iKMy53Fd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307340-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307340-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=microchip.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 701A73014658
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D9F4C77D0;
	Fri,  5 Jun 2026 10:53:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C84C77D7
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 10:53:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656789; cv=none; b=Y1BhaiAj2kQ7VepysIILyKK5hdM/MEi1iCdaKX4sfP4YD7Iga5+p4Qj4Rm2SCrgijo36O1JvZfa70vnv2vM+tojYiScj+v0gn2tDnMTtwgR5KobvVYkRZNaKijG+NnmlWswBDAKx3mDm/LQalzyzekK3sK+talp9KorIVwIAt04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656789; c=relaxed/simple;
	bh=eko3ejY1AKL8S/i3X/Usf5JDfNK2dEIqUhYr1ERevno=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E7Rty3VnUL53hJJTVAlyGudOthybBf36lWLgpgNayxC0Uym+j21ffFnrQFzcx4XZcGpL1CdAm0yTP7I/z3N9LzQb8cnSkGE7y2/51VHC3f675uomdrYiJ9DlPG61rP5KBkis5rbNdD3nb+8thEnLfZcO9nyd0TRR5P9ImhARvf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=iKMy53Fd; arc=none smtp.client-ip=68.232.154.123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1780656786; x=1812192786;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eko3ejY1AKL8S/i3X/Usf5JDfNK2dEIqUhYr1ERevno=;
  b=iKMy53FdvFcVl2Z40ywJicH9wxclttGHSRs3IaZ2uacrigS3qwwEGhtb
   Zh6WY4jSDkMjYu/+c+ls1e/vgfG3HEw5QsuVaJmHFzEBI1K4VxoMNWUdK
   +rsqQGP45JEH51LQAXtLrkR9slJVxKHLH4G7g0uWy1niJGsREdQoQ5qCa
   1tQcSUnqcG9BbsNzByilk+XZYMuBt9GpEm5eKe/kNLOrgI/+rpQlEyYVi
   13J80bfrQ18078BN/ZGVz7cIN3x1P2woHElh+8oQdnP9HqwK2LbnZ76V3
   1cwtjwxdzr0HpnRCKR2zjEY0RMAWRrfOiwHcJLvNnQGLmBTAhy3lnt1/k
   Q==;
X-CSE-ConnectionGUID: /HEGIi8URK2IGcijAbVT8Q==
X-CSE-MsgGUID: X/asKt5zRO2ijWBY7kwauA==
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; 
   d="asc'?scan'208";a="59053131"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Jun 2026 03:53:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Fri, 5 Jun 2026 03:53:05 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex02.mchp-main.com (10.10.85.144)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.58 via Frontend
 Transport; Fri, 5 Jun 2026 03:53:03 -0700
Date: Fri, 5 Jun 2026 11:52:19 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Jonas Rebmann <jre@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <conor+dt@kernel.org>, <robh@kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	<sashiko-reviews@lists.linux.dev>
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: Add default-intensity property
Message-ID: <20260605-widow-griminess-7c5dd14aa308@wendy>
References: <20260605-multicolor-default-v2-1-ed07271df6b0@pengutronix.de>
 <20260605073816.E916D1F00893@smtp.kernel.org>
 <3cbee0dc-87a9-4b87-9d22-b3e378fa57c3@pengutronix.de>
 <20260605-factsheet-giving-69f8767bc5d7@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FG1YpU5IGLvFTb7z"
Content-Disposition: inline
In-Reply-To: <20260605-factsheet-giving-69f8767bc5d7@wendy>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307340-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor.dooley@microchip.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jre@pengutronix.de,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:kernel@pengutronix.de,m:sashiko-reviews@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor.dooley@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,wendy:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 898376479A3

--FG1YpU5IGLvFTb7z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 05, 2026 at 11:29:31AM +0100, Conor Dooley wrote:
> On Fri, Jun 05, 2026 at 10:45:12AM +0200, Jonas Rebmann wrote:
> > Hello,
> >=20
> > On 2026-06-05 09:38, sashiko-bot@kernel.org wrote:
> > > > @@ -73,6 +73,17 @@ properties:
> > > >         - keep
> > > >       default: off
> > > > +  default-intensity:
> > > > +    description:
> > > > +      The initial intensity of the LED color component. Used only =
during
> > > > +      initialization. Defaults to 0. As the intensity of each sub-=
LED is
>=20
> I'd drop sentence two here, it just duplicates sentence one.

Also drop "Defaults to 0." since that duplicates the default: 0.

> > > > +      multiplied with the overall brightness, without this propert=
y on a
> > > > +      sub-LED, the leds-pwm-multicolor-LED is effectively initiali=
zed at
> > > > +      minimum brightness regardless of its linux,default-trigger a=
nd
> > > > +      default-brightness properties.
> > >=20
> > > [Severity: Low]
> > > This isn't a bug, but the description for default-intensity explicitly
> > > mentions the specific driver name leds-pwm-multicolor-LED.
> > >=20
> > > Since common.yaml is intended to be a hardware-agnostic specification
> > > for all LED bindings, could this wording be updated to refer generica=
lly
> > > to the multicolor LED or simply the LED to avoid leaking an
> > > implementation detail into the generic schema?
> >=20
> > I'll be leaving this as-is until human feedback.
> >=20
> > I think documenting the property in common.yaml is correct because the
> > default-intensity itself is applicable to other multicolor-LED drivers,
>=20
> I think this is fine.
>=20
> > I just only implemented it for pwm-multicolor because that's what I use.
> > But we could just as well move it to leds-pwm-multicolor.yaml for as
> > long as that's the only driver supporting it.
>=20
> But this is probably also fine and it can be moved if other users crop
> up.
>=20
> > I intentionally included the "pwm" in that sentence because the
> > described issue that default-intensity is effectively required when
> > using linux,default-trigger may be pwm-multicolor specific.
>=20
> I don't think this is fine. However, it is almost certainly fine if you
> just do s/the leds-pwm-multicolour-LED/it/ because you're no longer
> tying the description to the name of one driver.
>=20
> >=20
> > I would not like to omit the sentence either because this situation is
> > the reason why one might actually need (not just want)
> > default-intensity (for -pwm-).
> >=20
> > Regards,
> > Jonas
> >=20
> > --=20
> > Pengutronix e.K.                           | Jonas Rebmann             =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9  =
  |



--FG1YpU5IGLvFTb7z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiKqYwAKCRB4tDGHoIJi
0vsfAQD2B/woMBteEYBiU98oBWwXt5vsU+GiwOOpiWiZTszvRwEAiB3uNnGhqzDK
tAIrzUODvmUPoCrTVrs+y+V7IiZZrgM=
=VEdq
-----END PGP SIGNATURE-----

--FG1YpU5IGLvFTb7z--

