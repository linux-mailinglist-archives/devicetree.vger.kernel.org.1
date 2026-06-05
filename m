Return-Path: <devicetree+bounces-307475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0XUDK8XvImrXfQEAu9opvQ
	(envelope-from <devicetree+bounces-307475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 17:48:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC40964976F
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 17:48:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G5APrCqN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307475-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307475-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 057D73002D19
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 15:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6DE3A7F5F;
	Fri,  5 Jun 2026 15:41:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE77338238D
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 15:41:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780674086; cv=none; b=Td8KSLv1HeH/z4DpHtmXBpCwN8uc1F8rZ1zzzEhdc12X/ahF2wZpE4lal7EpCpr7URD8j9qMAeZWfomwyR+z7hojEdib8B6oq0FoWqdWpHdu4N83SZMx/7axBzT32qB+E+7Qbaff2S3fmMmoeBBOeLQ99/rgAg2Qt/IHX+DzM44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780674086; c=relaxed/simple;
	bh=OaaKIanmal1qb+eWVdYhT8iBW6dOnSnjxt1RaM9ibaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DMWuTUYC+rZqjxoLqeskifaMcYzgL3NOZVFEk4rr4DxJ/MgsrnURKpLEbmY4QdWrdOFrB1uhQh+pIjRSnulaKkrXB4RMSV8qV4f03BhboOxGZM7bM6tO/1lkuazga8fJSnxDMuvQmrrkwn1cnuEHnSYXls497zPr4kBlWF4PKS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5APrCqN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF61B1F00893;
	Fri,  5 Jun 2026 15:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780674085;
	bh=U83+pTC7j+EimUgmgyxf0pZ5n90jSKHHzJrPFFm1BB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G5APrCqNi9Qex78WpAIN/zFdzt0vTqyTgliETnwQrmDjwtv7tyxjDtq+GFUNZMpUj
	 0HwoKpC9cFsoTaQNwSCpIdobezRD/ykWmTz9rh7NwReyGC72kn8IXUL0/UdbuWrrAX
	 DEuXeh3knDYfNxG4xJu9U2gXLs8C/LWgeN2+FchUXLkt4zt4xo39aOLMvIrS+9gYSR
	 XkFzrxf0n31r1ACyrSny4egXGuGwY3E6GVf1HurbPZD3MKpV4lTM/+xSuPz/+DPTr5
	 zmNvEf0fu/+QZJ73+NArrpDfbcykfi0qrT3ylj1JEzs0HL85ifkpe2X8i/k/EDLAKP
	 5TRl+fKcWyAag==
Date: Fri, 5 Jun 2026 16:41:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Michael Ellerman <mpe@kernel.org>
Cc: Joel Stanley <joel@jms.id.au>, Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/7] riscv: dts: tenstorrent: Add Atlantis platform
Message-ID: <20260605-unlivable-stardom-00ac93dfce5c@spud>
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-8-joel@jms.id.au>
 <20260604-pacifier-sludge-196f47ab3c11@spud>
 <f3fd53dc-7010-4b3d-a33c-4d1d32d3a1a6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tj74OtE0zsoX28sD"
Content-Disposition: inline
In-Reply-To: <f3fd53dc-7010-4b3d-a33c-4d1d32d3a1a6@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307475-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:mpe@kernel.org,m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[jms.id.au,kernel.org,dabbelt.com,oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC40964976F


--tj74OtE0zsoX28sD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 06, 2026 at 12:02:41AM +1000, Michael Ellerman wrote:
> On 5/6/26 2:47 am, Conor Dooley wrote:
> > On Fri, Jun 05, 2026 at 12:09:53AM +0930, Joel Stanley wrote:
> > > Add initial support for the Tenstorrent Atlantis platform, based on t=
he
> > > Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG core=
s.
> > >=20
> > > The evb machine represents an internal bringup vehicle with just the
> > > interrupt controllers and a UART. This will be replaced in time with a
> > > full featured machine once details are available.
> ...
> > > diff --git a/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts b/arch/=
riscv/boot/dts/tenstorrent/atlantis-evb.dts
> > > new file mode 100644
> > > index 000000000000..06259cca8357
> > > --- /dev/null
> > > +++ b/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts
> > > @@ -0,0 +1,33 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > +/dts-v1/;
> > > +
> > > +#include "atlantis-soc.dtsi"
> > > +
> > > +/ {
> > > +	model =3D "Tenstorrent Atlantis development platform";
> > > +	compatible =3D "tenstorrent,atlantis-evb", "tenstorrent,atlantis";
> > > +
> > > +	#address-cells =3D <2>;
> > > +	#size-cells =3D <2>;
> > > +
> > > +	memory@0 {
> > > +		device_type =3D "memory";
> > > +		reg =3D <0x0 0x00000000 0x0 0x80000000>,
> > > +		      <0x1 0x80000000 0x0 0x80000000>;
> > > +	};
> > > +
> > > +	aliases {
> > > +		serial0 =3D &uart1;
> > > +	};
> > > +
> > > +	chosen {
> > > +		bootargs =3D "earlycon console=3DttyS0";
> >=20
> > FYI, this should not be in here.
>=20
> It should be there if you want a working console :)
>=20
> I know it's a "rule" to not include bootargs, but this system has no boot
> loader, so not setting bootargs just means the DTS is no use to anyone.

I see! Could you note this please in the commit message?

>=20
> > > +		stdout-path =3D "serial0";
> > > +	};
> > > +};
> > > +
> > > +&uart1 {
> > > +	/delete-property/ clocks;
> >=20
> > Why are you doing this? Looks kinda suspect!
>=20
> On the bringup system the uart has a fixed clock, I don't know exactly wh=
y.

The reason I ask is less about the rate being fixed, and more why you
need to set it like this. You've got
clocks =3D <&prcm_rcpu CLK_UART1_PCLK>;
and I would expect (or maybe more accurately hope) that the prcm_rcpu
driver would be able to report the fixed rate?

>=20
> > > +	clock-frequency =3D <5000000>;
> > > +	status =3D "okay";
> > > +};
> Having said that, I think we talked about making this DTS match the qemu
> model rather than the internal bringup system. So if we do that then this
> will change.
>=20
> Thanks for the reviews.
>=20
> cheers

--tj74OtE0zsoX28sD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiLuIAAKCRB4tDGHoIJi
0mSrAP9aD/qgFnnd0P4iHzE4BH5EPGwhIKR11f9KCwkeSNxbTgD+MPAs45GELBYi
8YsMOMdFv88R2o2N1bbpXcORrD8v4QM=
=zdDM
-----END PGP SIGNATURE-----

--tj74OtE0zsoX28sD--

