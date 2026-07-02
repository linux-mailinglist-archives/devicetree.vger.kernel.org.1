Return-Path: <devicetree+bounces-319572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D/BsOxG3Rmp/cAsAu9opvQ
	(envelope-from <devicetree+bounces-319572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:08:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 878396FC647
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:08:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BpfolKN2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319572-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319572-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2652F304EBF0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB98384CDA;
	Thu,  2 Jul 2026 19:05:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77ECC38553F;
	Thu,  2 Jul 2026 19:05:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019121; cv=none; b=LF/m8OlS3IdoR0FJGCtQkVtN6dwhFdoXToSqGJztQJSfgYR/OLNHH40+uw8H7AbbSIayi37qj3YR73UPVzmDCmKq+vlCNK7vgZCNpqcoSuetDVdlgMAUkg3p4MwUgOyWmR+RfzlHGv1G4FD9E54Jvlp7yY7SVb295vbZUQ22N3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019121; c=relaxed/simple;
	bh=LCLDDCKtmZNL1Th80foxOZecq8OHiutL4enntKJtc9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gj6KBqUWx9cAfshc3zRCO3rdU+3TABm3nvDH+XR457UrbJ8uDXXTmC7U7avXJqqW8LN/HrOQukUSDgiSp0HLUjA2+T3fAMloatpDDm44ZE8C1Jecpv1RfaLD5W9+dqRu6pQPDDvrKVb2VY6/hb/AvPVSIBtYFmhvAzrPb/gYVPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpfolKN2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C09E1F00ADB;
	Thu,  2 Jul 2026 19:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783019118;
	bh=ts0JUqI/UQtpggkPbz8ec50NHpUrsHW9mROWrvo34io=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BpfolKN29Ql/zs4jLL/uQI1Kq/bcwoinu+Hx2O+DTwS6qRSA7Sf53w505wlmGyHQb
	 01kfEiaFHA2zOzHR2Juy3SSBIAyHk4Xu1m1EZydiyYLJne2Zeq5MzCJZbe2HGX7Z8G
	 slbSLMlL5GXdwdfwR3mbo9/NlOAgEFNF+7a3KjPCLD/60ymU6+suGXAAc5DaYBBmw9
	 ydSwd4wbDJuw/cfefH/ZLKr2MdjY/Hr3s9UHsgPMd3Ixfr+DbntgKbun7dc7RIgMra
	 xGa+cMmzxRqsk4wkIL7Tb+peMCf60K3Vxstbeaqrn8aQz3RDlel+rhFNhS/CLJP/Jg
	 LNqWyC91fkR+A==
Date: Thu, 2 Jul 2026 20:05:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Brian Masney <bmasney@redhat.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v5 00/12] ZTE zx297520v3 clock bindings and driver
Message-ID: <20260702-frequent-refreeze-9850982156cb@spud>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <20260629-unwelcome-raking-3df3d8ff0422@spud>
 <ihPM7P2dSn-oiyaL8fageA@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uabdFokmh9zu64R+"
Content-Disposition: inline
In-Reply-To: <ihPM7P2dSn-oiyaL8fageA@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319572-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 878396FC647

--uabdFokmh9zu64R+
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 01, 2026 at 08:22:21PM +0300, Stefan D=F6singer wrote:
> Am Montag, 29. Juni 2026, 18:49:08 Ostafrikanische Zeit schrieb Conor Doo=
ley:
>=20
> > Bindings seem fine to me, I'll be happy to give you some r-b tags when
> > you go non-RFC. To be frank, I think you should drop them as you've got
> > no significant questions here I think and you'll be taken a bt more
> > seriously.
>=20
> Thanks for all the advice so far!
>=20
> Here's one more binding related question: Philipp's request to give the P=
HY=20
> reset its own reset ID means I need a node and driver to consume that res=
et.=20
> My question is if it should be another MFD subdevice of topcrm or not. I =
am=20
> leaning towards not:
>=20
> usb_phy: phy@2 {
> 	compatible =3D "zte,zx29-usb2-phy";
> 	interrupts =3D <GIC_SPI 42 IRQ_TYPE_EDGE_RISING>, <GIC_SPI 43=20
> IRQ_TYPE_EDGE_RISING>;
> 	interrupt-names =3D "powerup", "powerdown";
> 	syscon =3D <&topcrm 0x84 0x2>;
> 	resets =3D <&topcrm ZX297520V3_USB_PHY_RESET>;
> 	reset-names =3D "phy";
> 	#phy-cells =3D <0>;

Where is this node's reg property?
What bus is this node on?

It looks like the answer to both is that it should be a child of the
topcrm and this "syscon" property should be replaced by "reg".

> };
>=20
> usb0: usb@1500000 {
> 	compatible =3D "snps,dwc2";
> 	reg =3D <0x01500000 0x1000>;
> 	...
> 	phys =3D <&usb_phy>;
> 	phy-names =3D "usb2-phy";
> };
>=20
> I am not aware of any IO region to configure the PHY, although one may ex=
ist.=20
> topcrm + 0x84 has two status bits reporting if USB and HSIC are powered a=
nd=20
> out of reset. Nevertheless, the PHY feels distinct enough from topcrm tha=
t it=20
> should have its own binding. The phy driver would merely deassert the res=
et=20

This is the sort of thing that should be a child node of the syscon,
rather than integrated into the parent, given it consumes resources from
another feature of the syscon.

> and wait for the ready bit and maybe in the future do something useful wi=
th=20
> the connect/disconnect IRQs.
>=20
> Interestingly the USB IO region is actually downstream of the AHB bus and=
=20
> matrix controller, but it has its clocks and resets in topcrm. I suspect =
the=20
> purpose of this setup is to allow wake-by-USB IRQs while shutting down th=
e=20
> main data path.
>=20
> Cheers,
> Stefan



--uabdFokmh9zu64R+
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaka2agAKCRB4tDGHoIJi
0gdQAP9SW0nb5swJHYPwKFbOAuwicY4LMenlLRlsYlYGO0fb6QD+Mf9ROZAatBx5
9zeKEpLv/VLnYldfI4wgADXKMReGqQg=
=VHSW
-----END PGP SIGNATURE-----

--uabdFokmh9zu64R+--

