Return-Path: <devicetree+bounces-316129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7OPCAZucPmo4JAkAu9opvQ
	(envelope-from <devicetree+bounces-316129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:36:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C356CE8FE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:36:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OX75Ja8h;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316129-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316129-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAF963017C28
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D18391512;
	Fri, 26 Jun 2026 15:32:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CC3A5436;
	Fri, 26 Jun 2026 15:32:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782487936; cv=none; b=h5ftZO90Zl7PGhk5FxrUudkEMSJVoIyNFmH5Ps94Bf9ccd3r0/C4EApfFprJrffngmaNb7IDtiyKH/Y/2wUFF/lRpJS3gQverr5IpFSZf3AK3eSx/Z8rAUK9nYqecao/XzkYTpKDtgSCyfeUSwoZRgeVv4asv6XQmPk+fYWWIhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782487936; c=relaxed/simple;
	bh=jEXv67plAeVKc6QOySkiZG6EvVm3ies2+IuJZc70bPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NvwKccvQznE50YCuYa25uFLX9kfoFlSuzQiJc9mUetEjOSyBDMp6Au+Mc8UMQP4BeLgp300iNM6SzkUmkxymON+jqTdFxRpvcIU5qSINVKY1qHMtQty8hroVuG11ce6aSSyOzzdArAa18l1rKRdzjmgC4f4Z/2j8tt5EeyH0v8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX75Ja8h; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB8331F000E9;
	Fri, 26 Jun 2026 15:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782487935;
	bh=jEXv67plAeVKc6QOySkiZG6EvVm3ies2+IuJZc70bPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OX75Ja8h+amfCkMWdtZjJQ5D3OvRV4W7FHsSwodm0faSlEY/zzuUp852MUPzfrhRn
	 rBbHe2EdODCh8YCFZVli3AfZviO7UAIGkVeS9+5LezYYbDCGeYXclhQjLQYNzMXKQM
	 uyGhtAggy6VexVb6QDlycMRYiqvq+qlpU/ZQh/eXrYXIJ8UoI2ER4lLgAFttjl9rUL
	 +5Kgl4i9/O2etX35euhHtJZF2lcjwcmqa4z25Cu15sggp4vOq62v5PKfC3TzG8W1FA
	 C2/T56M7j3LEPoJGklbCdcEuM3XurQAp0UlwIMlT5GmfPJ1qVFXE6PYadWu6e8c5IO
	 oTpAtoVYvTs5A==
Date: Fri, 26 Jun 2026 16:32:09 +0100
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
Message-ID: <20260626-predator-purity-fb6bd90e7237@spud>
References: <20260625094449.708386-1-a0987203069@gmail.com>
 <20260625094449.708386-2-a0987203069@gmail.com>
 <20260625-bobbing-annotate-d1c4d6874ee2@spud>
 <e3fe23ddbc504879bd797bbaa595d3653fa139ff.camel@iscas.ac.cn>
 <20260626-astrology-mural-853d3860e048@wendy>
 <c0731801729713d35f97bec40ebc21cef31b72b5.camel@iscas.ac.cn>
 <20260626-everybody-epilogue-8fb298a54981@wendy>
 <9456bde5059bea3aac1ed64355e3f017dd9bd3e5.camel@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7Ve3lgpxDSyp290p"
Content-Disposition: inline
In-Reply-To: <9456bde5059bea3aac1ed64355e3f017dd9bd3e5.camel@iscas.ac.cn>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
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
	TAGGED_FROM(0.00)[bounces-316129-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60C356CE8FE


--7Ve3lgpxDSyp290p
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 26, 2026 at 05:33:26PM +0800, Icenowy Zheng wrote:
> > > >=20
> > > > > > > +
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 resets:
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 minItems: 1
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 maxItems: 1
> > > > > > > +
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0 reset-names:
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 items:
> > > > > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - const: core
> > > > > >=20
> > > > > > This is just maxItems: 1.
> > > > >=20
> > > > > Well the implicit rules of DT binding schemas are quite
> > > > > weird...
> > > >=20
> > > > I don't think it is that strange, as the binding has
> > > > =A0 reset-names:
> > > > =A0=A0=A0 items:
> > > > =A0=A0=A0=A0=A0 - const: core
> > > > =A0=A0=A0=A0=A0 - const: axi
> > > > =A0=A0=A0=A0=A0 - const: ahb
> > >=20
> > > Ah does the list constraint the order of items? If it constrains
> > > the
> >=20
> > It does, yes.
> > Alternatively, using an enum permits free ordering.
>=20
> Ah in this case this should be converted to an enum, I think.
>=20
> Should I send a patch for converting it?

Why do you think it should be an enum? We don't currently have any users
of this that only provide no core or no axi reset.

--7Ve3lgpxDSyp290p
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj6beQAKCRB4tDGHoIJi
0gbBAQD2qYmeU3dXPFzN/2vp9UGyLPNTpngsvAFylyCo+L5IOQD6A5ZqJBiSI8Xk
pHlYwjodYrAF8Ufa6WCA/5GANwLhwQk=
=EVAO
-----END PGP SIGNATURE-----

--7Ve3lgpxDSyp290p--

