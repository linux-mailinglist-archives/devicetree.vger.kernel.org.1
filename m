Return-Path: <devicetree+bounces-316124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KrmvK6KZPmpXIwkAu9opvQ
	(envelope-from <devicetree+bounces-316124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:24:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BA86CE73B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:24:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PFB15Ka7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316124-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316124-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8AAA330DDA8E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E40377567;
	Fri, 26 Jun 2026 15:16:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6B382F33;
	Fri, 26 Jun 2026 15:16:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782486981; cv=none; b=IbmiBb3OydTTrIA0R4q2Gca6yHWB8n3HLZ1jt/ECgYyE6VsK5xV4/DhudGPV6/tAA7ZPR9BFE+PydVk+CvkdhTtBDVDrK/Es7V7d1HgCoPEsMdul7VQki1IZ975eM6B6lkKWW9bDwhCsB6Gt/drlRfVNpBhsi0bav8O7aPexSD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782486981; c=relaxed/simple;
	bh=dHONzNZurmNs9NAMZL5smtkhZLFBha363Qf59K5VhA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njJjY56pPxWJ1pR/3MLkJVGAdE3IzSSUgkL8oB/ezYXQQtc2R6SQXfEca73NIoCNxvBqenTHIglEDbYkcwtLwqPAac+/h217yP78y5CYcNU5KLabeN7xdj6lzQbmMdYERKmMk4EoRnEklklcpm6PeIWYPHEWN06rTBqhmvdEGfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFB15Ka7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578E71F00A3A;
	Fri, 26 Jun 2026 15:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782486978;
	bh=dHONzNZurmNs9NAMZL5smtkhZLFBha363Qf59K5VhA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PFB15Ka7QCMaorqN+koVilBviVzAfYITGm3A5OF1OjTy/RUU/03kmsaHMN52swvSP
	 qCJwBChsrFRBA5N/S6N69VBM3oMbyvvkwIcPev04rcipikuStMaOUiklqK3BDfp2y1
	 /2dk1lldLP+lkJYuamo9+jw0mo1r9KHj11SEED5z7nBO4+SgLGfn8A6MKfBA/bVQqj
	 k2dQJdKU/BLI9HO+9w8lTqs4JbDUDfvDYAqIsWHWmmAO4vRBc14P0bDYgSDjPtC5dy
	 04w4d5XwOWS+rrXn3ZyVz0140+xYmvFf0kMNH2H3sKARE4Ayog1TeJ0vYwEslIfm93
	 dVU3vpWLz+jFA==
Date: Fri, 26 Jun 2026 16:16:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Joey Lu <a0987203069@gmail.com>, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com,
	yclu4@nuvoton.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/7] dt-bindings: display: verisilicon,dc: generalize
 for single-output variants
Message-ID: <20260626-alive-step-a2c82b4f0706@spud>
References: <20260625094449.708386-1-a0987203069@gmail.com>
 <20260625094449.708386-2-a0987203069@gmail.com>
 <20260625-bobbing-annotate-d1c4d6874ee2@spud>
 <20260626-zit-amuck-e743e58d2e15@wendy>
 <84b93c496fabdeee05d2f962a1b764fdbfaacdb7.camel@iscas.ac.cn>
 <20260626-agreement-express-b16c71315f7b@wendy>
 <996c3d442e92e7f908fb3a32973805dd2d2680d7.camel@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QLHakFN0+CeUBvUt"
Content-Disposition: inline
In-Reply-To: <996c3d442e92e7f908fb3a32973805dd2d2680d7.camel@iscas.ac.cn>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:conor.dooley@microchip.com,m:a0987203069@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316124-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[microchip.com,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23BA86CE73B


--QLHakFN0+CeUBvUt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 26, 2026 at 05:09:12PM +0800, Icenowy Zheng wrote:
> =E5=9C=A8 2026-06-26=E4=BA=94=E7=9A=84 09:57 +0100=EF=BC=8CConor Dooley=
=E5=86=99=E9=81=93=EF=BC=9A
> > On Fri, Jun 26, 2026 at 03:58:14PM +0800, Icenowy Zheng wrote:
> > > =E5=9C=A8 2026-06-26=E4=BA=94=E7=9A=84 08:22 +0100=EF=BC=8CConor Dool=
ey=E5=86=99=E9=81=93=EF=BC=9A
> > > > On Thu, Jun 25, 2026 at 05:33:37PM +0100, Conor Dooley wrote:
> > > > > On Thu, Jun 25, 2026 at 05:44:43PM +0800, Joey Lu wrote:
> > > > > > +
> > > > > > +=C2=A0 - if:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contain=
s:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 const: nuvoton,ma35d1-dcu
> > > > > > +=C2=A0=C2=A0=C2=A0 then:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clocks:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItem=
s: 2
> > > > >=20
> > > > > Anything that updates the minimum constraint should be done at
> > > > > the
> > > > > top
> > > > > level of this schema. The conditional section should then
> > > > > tighten
> > > > > the
> > > > > constraint, in this case that means only having maxItems.
> > > > >=20
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItem=
s: 2
> > > > > > +
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-names:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 - const: core
> > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 - const: pix0
> > > > >=20
> > > > > Does this even work when the top level schema thinks clock 2
> > > > > should
> > > > > be
> > > > > called axi?
> > > >=20
> > > > Additionally here, only have core and pix0 seems like it might be
> > > > an
> > > > oversimplification. I doubt removing the second output port means
> > > > that
> > > > the axi and ahb clocks are no longer needed.
> > > > Is it the case that your device supplies the same clock to core,
> > > > ahb
> > > > and
> > > > axi? If so, then you should fill those clocks in in your
> > > > devicetree
> > > > and
> > > > this can just constrain the number of clocks/clock-names to 4.
> > >=20
> > > The clock controller of that SoC is quite weird -- it has only a
> > > single
> > > gate bit, but controlling 3 clock gates. All core, ahb and axi
> > > clocks
> > > have gates controlled by this single bit, so it's why currently
> > > it's
> > > modelled as only core clock supplied.
> >=20
> > Yeah, then what's in the binding is definitely wrong.
> > Even if the same clock was provided to all clock inputs in the IP,
> > all
> > individual clock should be listed in the devicetree - although it
> > will
> > look a little silly to see clocks =3D <&foo 2>, <&foo 2>, <&foo 2>,
> > <&foo 2>;
> > In this case, 3 clocks controlled by 1 gate bit is an implementation
> > detail
> > of the SoC's clocking hardware, and not relevant to how the dc
> > instance
> > should be described.
> >=20
> > > Well it might be worthful to supply the bus clock before the gate
> > > as
> > > ahb/axi, especially axi, because both the AXI clock and the core
> > > clock
> > > constraints the maximum pixel clock.
> >=20
> > Right. And looking at patch 4/7, and the wording:
> > > The Nuvoton MA35D1 SoC integrates a DCUltraLite display controller
> > > whose
> > > AXI and AHB bus clocks share a single gate enable bit with the
> > > display
> > > core clock, so the clock driver does not expose them separately.
> > > This
> > > patch makes the axi and ahb clocks optional in the probe.
> >=20
> > It sounds like there's probably some issues with how things are
> > modelled
> > clock wise in this device, unless this is not an accurate statement
> > and
> > there's actually one clock provided to all three inputs. If they're
> > distinct clocks, with different rates, only having one exposed has a
> > lot
> > of potential to be problematic!
>=20
> Yes, I agree with this, they're different clocks according to the
> manual.
>=20
> I added the clk people to the CC list in a reply of the previous
> revision, but they didn't react yet. I don't know how to represent
> multiple clock gates sharing a single control bit in the clock
> framework...

Yeah, I have absolutely no idea. Maybe it requires custom refcounting?
Surely this cannot be the only device that does something like this
though.

> Maybe just supplying the ungated AXI/AHB clocks here, and let the core
> clock manage the gate?

I guess, but that seems incorrect and would require commentary about why
it's being done. Feel like they (the missing axi/ahb clocks) should be
added to the clock driver and binding, and any special workarounds done
there.
Of course letting the core clock manage the gate and making the enable
method for the gated AXI/AHB clocks be a NOP is one way of handling it
in the clock driver. Still a bit of a hack compared to refcounting it,
but it makes me happier to have the correct clock tree modelled in DT.

--QLHakFN0+CeUBvUt
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj6XvQAKCRB4tDGHoIJi
0vssAQDndJs9/ctwRc2c7FjHBwBiv4LpDbHHbKg3pi7OB4EvDwD/bUeIo9EzaeR5
PJstTNEZxtLCLfIx88hwML6Acinghwk=
=IOEf
-----END PGP SIGNATURE-----

--QLHakFN0+CeUBvUt--

