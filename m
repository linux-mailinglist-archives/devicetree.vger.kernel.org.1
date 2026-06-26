Return-Path: <devicetree+bounces-315974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A6DdLEAvPmo+BAkAu9opvQ
	(envelope-from <devicetree+bounces-315974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:50:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2988C6CB12A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:50:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ENrxtksp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315974-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315974-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 279E73030F7D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670EE3DCDA6;
	Fri, 26 Jun 2026 07:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B2B1A3160;
	Fri, 26 Jun 2026 07:49:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782460162; cv=none; b=qhymfmuS/D+Tv9k556PB7wMg5MQErh7RyomUUGnBzgxrHLrYXnkDHGVCavTbHUL912HZ2QAim8cEirjRpnQUvIFYMcGTqP8HbGDyb3yKx+Z9iiZxreHUskUvk5X6Phpx31rk1tMvT2WM2SEyuLPSz2YtSW/5M70qOn3rilugPvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782460162; c=relaxed/simple;
	bh=SJO+ipsUPJU8TOvmaTB5LQ+jrzIiETW1Xa37e2cVmh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nfe4x4lD0AkyHlBNsh/6ajggfKlmUMlQvIKfeGdbkKb9K22NmUeTLzEaX1zCKGSRFlbEaTgB9h67IKBimRPiJnsEMoV1GGENffafgCH7mqyC+eqszlVJWArKaBOxIyw3JH30GVgaYQd0MeU+wkVs/Y92DTZAe20IyxTdvD+qVU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENrxtksp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF641F000E9;
	Fri, 26 Jun 2026 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782460160;
	bh=0Z+lWCSvofkli6OyVNpk9Jgr3cVRVtExR6E73RKGyXA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ENrxtkspaetlYvSL1aVOlUDXkwgZvAC/Ljngw/vxT4HLbRsaShuutYLh4TqJEOBrk
	 +Vlvk2/iCs3Ep8q899Dn9+YenP2EZTxt2zNGv7XsuMPlWYX6wPL1kUktKO8qY78Xk0
	 41c+ZUmzZ7wHkhSj197jm78o2B22Jmv6wvamoswHTWlmlrh17KiDLNaCOYKXtGwgcA
	 WQApsKmMpY3qkVrmKw+lsP1bHAG2OOZJyHSOEEuS9aulLS/W39QCHK8218tfXuMdy6
	 xhSUHVI+P1DfcIVh8sVcIsF4s221ok4H/C7hHECpc9kim5xl2CtUtU5D4P6hCpGL2g
	 wuGHkKxZUvHIw==
Date: Fri, 26 Jun 2026 09:49:18 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sunyun Yang <syyang@lontium.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	maarten.lankhorst@linux.intel.com, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	tzimmermann@suse.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	xmzhu@lontium.corp-partner.google.com, xmzhu@lontium.com, rlyu@lontium.com, xbpeng@lontium.com
Subject: Re: [PATCH v6 2/2] drm/bridge: Add Lontium LT9611C(EX/UXD) MIPI DSI
 to HDMI driver
Message-ID: <20260626-zippy-affable-hamster-22101d@houat>
References: <20260508134009.4582-1-syyang@lontium.com>
 <20260508134009.4582-3-syyang@lontium.com>
 <3188f63f-5358-48d7-b934-af20a8f95c6f@kernel.org>
 <CAFQXuNbKBfyeQL3N3P5QY=6BWoD3O6DSbXN-WMA1rRG9vCs3Kg@mail.gmail.com>
 <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org>
 <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
 <CAFQXuNa8bJCpZBkMs_3mtbK_pjVzDdaDaoGk0KDxiG_Pf7txdg@mail.gmail.com>
 <6371d1d8-cdfb-40fa-84c7-ba3ec4e2ac00@kernel.org>
 <CAFQXuNZtzBu+WiG8n0BeN47zagQmL-iz_6Af7prk-xHLAeRBwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="gnx6ikseltg43tzx"
Content-Disposition: inline
In-Reply-To: <CAFQXuNZtzBu+WiG8n0BeN47zagQmL-iz_6Af7prk-xHLAeRBwg@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_RECIPIENTS(0.00)[m:syyang@lontium.com,m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:xmzhu@lontium.corp-partner.google.com,m:xmzhu@lontium.com,m:rlyu@lontium.com,m:xbpeng@lontium.com,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315974-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[mripard@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,oss.qualcomm.com,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,houat:mid,lontium.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2988C6CB12A


--gnx6ikseltg43tzx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 2/2] drm/bridge: Add Lontium LT9611C(EX/UXD) MIPI DSI
 to HDMI driver
MIME-Version: 1.0

On Fri, Jun 26, 2026 at 10:15:03AM +0800, Sunyun Yang wrote:
> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=
=E6=97=A5=E5=91=A8=E5=9B=9B 21:51=E5=86=99=E9=81=93=EF=BC=9A
> >
> > On 25/06/2026 15:40, Sunyun Yang wrote:
> > > Sunyun Yang <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=
=E6=97=A5=E5=91=A8=E5=9B=9B 21:26=E5=86=99=E9=81=93=EF=BC=9A
> > >>
> > >> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=
=8825=E6=97=A5=E5=91=A8=E5=9B=9B 21:17=E5=86=99=E9=81=93=EF=BC=9A
> > >>>
> > >>> On 25/06/2026 15:14, Sunyun Yang wrote:
> > >>>> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=
=9C=8825=E6=97=A5=E5=91=A8=E5=9B=9B 20:54=E5=86=99=E9=81=93=EF=BC=9A
> > >>>>>
> > >>>>> On 08/05/2026 15:40, syyang@lontium.com wrote:
> > >>>>>> +
> > >>>>>> +static void lt9611c_reset(struct lt9611c *lt9611c)
> > >>>>>> +{
> > >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >>>>>> +     msleep(20);
> > >>>>>> +
> > >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> > >>>>>> +     msleep(20);
> > >>>>>> +
> > >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >>>>>
> > >>>>> This is just plain wrong. Why do you assert, then de-assert and t=
hen
> > >>>>> finally assert AGAIN the reset leaving the device in powerdown st=
age?
> > >>>>>
> > >>>> I am using software to emulate the hardware RESET button on our EV=
B.
> > >>>> When the hardware RESET button is pressed while our chip is runnin=
g,
> > >>>> the signal level changes from HIGH to LOW and then back to HIGH.
> > >>>>
> > >>>> Of course, we can also use the following:
> > >>>> static void lt9611c_reset(struct lt9611c *lt9611c)
> > >>>> {
> > >>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> > >>>>     msleep(50);
> > >>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >>>>     msleep(20);
> > >>>> }
> > >>>
> > >>> Makes no sense either and you just did not get the point and did not
> > >>> answer my question. I asked WHY you leave asserted. Answer "we emul=
ate"
> > >>> is just plain wrong.
> > >>>
> > >>> So again please answer:
> > >>>
> > >>> Why do you leave device with reset asserted?
> > >>>
> > >>
> > >>  devicetree:   reset-gpios =3D <&tlmm 128 GPIO_ACTIVE_HIGH>;
> > >>
> > >> GPIO_ACTIVE_HIGH:
> > >>
> > >> gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);   ------   reset p=
in
> > >> is Low level : Clear the register configuration in the chip to stop
> > >> the chip from working.
> > >>
> > >> gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);   ------  reset pin
> > >> is high level:  The chip resumes operation.
> > >>
> > >>
> > >
> > > Our purpose is: pull the level low to clear the register configuration
> > > in the chip, and then pull it high to allow the MCU inside the chip to
> > > re=E2=80=91initialize the registers.
> >
> >
> > And you do completely opposite... so that confirms your code is just wr=
ong.
> >
>=20
> The lontium-lt9611.yaml uses GPIO_ACTIVE_HIGH. I am just following the
> rule of this device tree. If I modify the device tree to use
> GPIO_ACTIVE_LOW,
> and use the following code in my driver, then my driver would be correct.
> However, would the existing kernel drivers lontium-lt9611uxc.c and
> lontium-lt9611.c be affected?

It might, but then it's a DT problem. The GPIO API for drivers always
considers the logical state of a GPIO, so if you need to assert a
signal, you'll always need to set 1. That's what Krzysztof was trying to
explain.

The DT will provide with GPIO_ACTIVE_* how that logical state translates
to a physical GPIO state.

If the DT says that this particular GPIO is active-high, then it means
that we need to set the GPIO to 1 to assert reset. Now of course, it
might not make sense for the controller itself, but it might for the
board if there's a GPIO inverter in the middle for example.

Anyway, in the case you're raising, the issue definitely lies in the DT,
and that's what would need to be fixed.

I also wouldn't be too concerned about lontium-lt9611.yaml, it's just an
example.

Maxime

--gnx6ikseltg43tzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaj4u/gAKCRAnX84Zoj2+
dqNLAX9z69D2OFoJUyMGybrjCXf43nZF1Hh6FsJ1C2j70iKcWxXlKrkcrmNAMHse
58B1vxcBf27xWlsEv8gazvq3QBinLgCk+ZV6tON+aUbvlwgZCSb8KwSH+H/Wk7Ok
dachx3g9/w==
=c2Ft
-----END PGP SIGNATURE-----

--gnx6ikseltg43tzx--

