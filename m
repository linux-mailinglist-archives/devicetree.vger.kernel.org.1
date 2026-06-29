Return-Path: <devicetree+bounces-317135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m8o9MiiPQmr89gkAu9opvQ
	(envelope-from <devicetree+bounces-317135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:28:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CF65A6DCAAA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:28:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h1DmZ6sC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317135-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317135-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7975F301C5F4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA89421EED;
	Mon, 29 Jun 2026 15:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AA6426699;
	Mon, 29 Jun 2026 15:18:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746318; cv=none; b=bRfRIaTtawydmtFEOsOyERXHn9NlGSYYKWcOthkS0sFiPCK7xkMb9tmIXQcUeivjApA15/zsJ0pzUwz1VYQYNxNffwKSin7Zbca8aYtcrV/latemOMJw+NJVIF+bchZwJtSirjBnCnosp61tnTucqZaq9j5tg7Kc6CyIXm/9vio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746318; c=relaxed/simple;
	bh=nJ2EU/Nq9D3geWif0EBP5/aKBEpC42i8yqr6w+0oXtg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jVBMfbGNsvTEm84Zj5tr5cnA2tM/g6sJujMm/1+720r1JEZthV+ZdrCWHKUwqG5ztSbJkqNXIF5AeIQNE+sRdM9x35ODV8363bRFdLchHU5cyWpJDOxDvn7khWzkj8cufFOeOidWN/OYL52TYXheLc5ZpeRh1FShcsCP2j3as7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1DmZ6sC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 247E71F000E9;
	Mon, 29 Jun 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746317;
	bh=GSZ+TxGWNaG2niAtaaVMtzAEg9tVw7OTbpIMtW0jxZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h1DmZ6sCFe4mQhY1uJ65b4y0c3Ar8ciANgguGMq5fNewXL6XjMLoaTRLrZYzho7+/
	 0K2AFyC1ymLC2r+dpZpag+dfNvvnF+c0fOsH0qrmlT2icZuvwJhiR1qPax+23c/vm0
	 1tq00PBGk2aSlXl6Bg/rL33BdcDo5K/qe0p/CZezDofVF3/It1/SasiTTUzYg0EiMJ
	 YLfA01x+n7HqD3M3bIsHz2CHo70Vg1vlUlPamGBEAb7CdOwy6ilWxYEAAQCvb/eOd2
	 96z92SWkbgbv3bnISjj+UuagIZGHG4yrS9ujLmHVfbkTttGcP+QNfTFtdaAfLmVH/g
	 NqXVbQayv8SIw==
Date: Mon, 29 Jun 2026 16:18:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: Re: Re: Re: Re: [PATCH 3/7] riscv: dts: eswin: eic7700: add pinctrl
 support
Message-ID: <20260629-dubiously-hexagon-696813d11478@spud>
References: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
 <20260615122016.1110206-4-pinkesh.vaghela@einfochips.com>
 <20260615-that-scarf-e048ef152676@spud>
 <55962658.7bea.19f02850fe2.Coremail.luyulin@eswincomputing.com>
 <20260626-headway-rewind-93c9239bd865@wendy>
 <5d44c6d7.7c1d.19f03184fa9.Coremail.luyulin@eswincomputing.com>
 <20260626-spring-moocher-7db000f7bcc6@spud>
 <71b4dfcf.7cef.19f12bfffa7.Coremail.luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EPuWmTfIlTlJXRQL"
Content-Disposition: inline
In-Reply-To: <71b4dfcf.7cef.19f12bfffa7.Coremail.luyulin@eswincomputing.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:luyulin@eswincomputing.com,m:conor.dooley@microchip.com,m:pinkesh.vaghela@einfochips.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317135-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF65A6DCAAA

--EPuWmTfIlTlJXRQL
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 05:40:00PM +0800, Yulin Lu wrote:
> &gpio1_pins {=A0 =A0 =A0 =A0/* jtag0_tck repurposed as GPIO input */
> 	bias-disable;
> 	input-enable;
> };
>=20
> &gpio2_pins {=A0 =A0 =A0 =A0/* jtag0_tms repurposed as GPIO output */
> 	bias-disable;
> 	input-disable;
> };
>=20
> If we merge them into a single node, a board DTS can only apply one
> configuration to all 4 pins simultaneously:
>=20
> &gpio_jtag_pins {
> 	bias-disable;
> 	input-enable;=A0 =A0/* forced onto all 4 pins - no per-pin control */
> };=A0=A0

Okay, I didn't notice this, sorry.

>=20
> This removes the ability for board DTS files to independently configure
> the electrical properties of each pin when they are used as GPIO for
> different purposes.
>=20
> We will send a v2 that also fixes two bugs introduced in this patch:
> rgmii0_pins and rgmii1_pins incorrectly specify function =3D "hdmi"
> instead of "rgmii", and i2s0_pins, i2s1_pins, i2s2_pins specify
> function =3D "hdmi" instead of "i2s". These would cause the mux
> requests to fail at runtime.=A0

Sure.

--EPuWmTfIlTlJXRQL
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKMyAAKCRB4tDGHoIJi
0q2hAP9wIsJpbThZbGbC8hh1AMF7gHwZvsE+fNdmsWB0uQXcuQD+Kc8OZemgjkq8
3hDgHgS5KCnJU/TJBmpi3IVkbv/x0Qk=
=4xjV
-----END PGP SIGNATURE-----

--EPuWmTfIlTlJXRQL--

