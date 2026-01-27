Return-Path: <devicetree+bounces-260106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAboKjMVeWl3vAEAu9opvQ
	(envelope-from <devicetree+bounces-260106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:42:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AC49A162
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C319B302803C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F369335EDB2;
	Tue, 27 Jan 2026 19:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqBUOdNy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE663093DE;
	Tue, 27 Jan 2026 19:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542918; cv=none; b=NMjhOH8/iF2ci7rCCH1lddBcagqZ7DPRTgGjs/NozMsvbV3lqUwV8KYdCSRA7xYF9phlHX5bvA+vF0ooaD08zlbId0lDjRdzhTcE+MGryVZ3IKdpro/3OSQgqpmagmOI8O8Hsbj2gWIcG5smg3qbNr/phtlM6Y9pgQo3hXHrXMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542918; c=relaxed/simple;
	bh=ufkzvt4P3WovGi6PM2lTuF06cLGLKmm1kza1Bn3opPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XGLyLzJNWVY5z9l9unZhczir5dDV6qRcKWUV3XLoF8mhZiTuPan3VXcxe4eR4/14PTqxpL+NJNHq5ISmQzKd4J9iB/GNcB2o+0bOQ3D1BRbustG9oGSnKkIjWxLZogRQJzZHR9a8gMH4jNatRfJzeAj2kePXKTx5xPkS8X1Iw1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqBUOdNy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC21C19422;
	Tue, 27 Jan 2026 19:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769542918;
	bh=ufkzvt4P3WovGi6PM2lTuF06cLGLKmm1kza1Bn3opPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qqBUOdNyHp/jidhqzRhdOnhB2HMlqzNUPpN1OtQaYSg9guJmQcw98jXVnOwzb+sKw
	 M8Rk39gEfv7vq5MFcSyq4Q5b9Oqh0ckeQfKt/aXJh11TwHBFlT+6ZznYfqZ0jSFomp
	 8U007gjuHOHriZKjzyyMnj/ozcUwBnjdTToHt6rA3RqvTHRf/jI7h56ABgcyNoVxmG
	 SgG6fTAAcd1wdRFQmygdh3sLNO96i7CZU8yljLGz/7UM23pZ+y41DmbAyAtJm1pgsD
	 N3CAgiaGEU8W2zSbo33/YAfm5vqPeWqxoWjZ2xoLGgAEEpXT+UXbnBXr0xyw576fLN
	 PE3o64Q1139GA==
Date: Tue, 27 Jan 2026 19:41:53 +0000
From: Conor Dooley <conor@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: document Atrix 4G
 and Droid X2 DSI panel
Message-ID: <20260127-myself-sinless-95525b4c78ec@spud>
References: <20260125131904.45372-1-clamor95@gmail.com>
 <20260125131904.45372-2-clamor95@gmail.com>
 <20260126-patchwork-cofounder-8b7bb715556a@spud>
 <CAPVz0n1hBof7_eB6D39zZd5EfC2dL5-Ngf0ja7+kkcwQnnr7Mg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FwVs2IaKZpUuxLb2"
Content-Disposition: inline
In-Reply-To: <CAPVz0n1hBof7_eB6D39zZd5EfC2dL5-Ngf0ja7+kkcwQnnr7Mg@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260106-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 15AC49A162
X-Rspamd-Action: no action


--FwVs2IaKZpUuxLb2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 27, 2026 at 08:26:32AM +0200, Svyatoslav Ryhel wrote:
> =D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 22:45 Co=
nor Dooley <conor@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > On Sun, Jan 25, 2026 at 03:19:03PM +0200, Svyatoslav Ryhel wrote:
> > > Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
> > > panel vendor and model are unknown hence generic compatible is used b=
ased
> > > on board name it is used with.
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >  .../display/panel/motorola,mot-panel.yaml     | 68 +++++++++++++++++=
++
> > >  1 file changed, 68 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/panel/m=
otorola,mot-panel.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/motorola=
,mot-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorola,=
mot-panel.yaml
> > > new file mode 100644
> > > index 000000000000..2326a83bc405
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-pa=
nel.yaml
> > > @@ -0,0 +1,68 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/panel/motorola,mot-panel.=
yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Atrix 4G and Droid X2 DSI Display Panel
> > > +
> > > +maintainers:
> > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > +
> > > +description:
> > > +  Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. E=
xact
> > > +  panel vendor and model are unknown hence generic compatible is use=
d.
> > > +
> > > +allOf:
> > > +  - $ref: panel-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: motorola,mot-panel
> >
> > What's a "mot" panel? If that's short for motorola, wouldn't it be
> > better to conjure up something at least more specific to these
> > particular users? The commit message has some info, but I still dunno
> > where "mot" comes from.
> > Seems okay otherwise..
> >
>=20
> "Mot" is how motorola called tegra20 board files which were base for
> Atrix 4G and Droid X2 in their downstream sources, specifically
> board-mot-panel.c. Since both devices use the same panel I used board
> name. Hopefully, at come point I will be able to name it properly.

Can you put this explanation in the commit message please? Without being
familiar with the platform, it's nigh impossible to know how "mot"
relates to Atrix 4G or Droid X2.

--FwVs2IaKZpUuxLb2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXkVAQAKCRB4tDGHoIJi
0vM3AP99HVYtnmRr5OxMZo3zx3ORl5NrXZclP46g2ydF9HqIoQEA9UwB5NeAZQLb
9I84G5w8qyI1NdpMrReNRudwLddYEQo=
=zida
-----END PGP SIGNATURE-----

--FwVs2IaKZpUuxLb2--

