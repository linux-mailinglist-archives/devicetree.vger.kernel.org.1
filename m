Return-Path: <devicetree+bounces-300229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG2JLImVDGp1jAUAu9opvQ
	(envelope-from <devicetree+bounces-300229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:53:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 055C3582A97
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9500D309C177
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 16:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704D240961E;
	Tue, 19 May 2026 16:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKtLRqDk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C78408011;
	Tue, 19 May 2026 16:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779208426; cv=none; b=R8Vix/KP096tMCF/rcWUvKJtnhk+CWMgtzHsjpWHRsVPL2furn+1kb/pQxr0MM1K11hYRPXtiwyJXDTz12NgsfeZJepHmFh3hnTIh5jfhFuscV4vu5EkkTscu6v5VcLlyr+oSYfe+LpMnIfDiI16hot90/pwXM8ni6W6YltEAdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779208426; c=relaxed/simple;
	bh=lvJItP4rmf/BZW2JWOD1/X0gZxVOkUPJe97xLyet5dM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iyR7Y5a605jrWw52xYAR8M8kQmMYdXHXpRlUpFsgzfh6zHSAsZHK4hZJuPZvh2NZLeltdDCNMrkn3OmxRt8DOYW8JPSc53sqaPzHMKn4no6+x7lNqefYeduMl7UqQpw5Qq0DvkCGEy8omeQmHDhCbpLhnY+Wyk5jhDQMD/WLkrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKtLRqDk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9557C2BCB3;
	Tue, 19 May 2026 16:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779208425;
	bh=lvJItP4rmf/BZW2JWOD1/X0gZxVOkUPJe97xLyet5dM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AKtLRqDkX3rEjX2T6JZyh0p9aHZY5pzAoe0dhS59qazqpyQAtEs0TQUQz5nDcKbah
	 qeKy1O+d5Jakv/2qmdGU66lIMV2CLckKlIl3Eef0Zr4uLuo6/tYv/jRcHPPmmomSJS
	 jWDXWB2RTIZY0t18vuKMPMozkotsdnRn7e0UaoUpeFWmTi1qGK9Slt0SYJ3FBd97qb
	 1hbuV/kocLuG8xBanMH8G6BtugHP3EnoABAYaMnnO8+b9SA6mPq0fPqCq91Y7vFQgY
	 EyeTOshWKwRI0OIlAbn4flpTcbovsMag/2p57J4WgDJNk+7b2qkv05PTGINj+CBoFX
	 MSDzepMP6L6Fg==
Date: Tue, 19 May 2026 17:33:42 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Jens Emil Schulz =?iso-8859-1?Q?=D8stergaard?= <jensemil.schulzostergaard@microchip.com>,
	conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH net-next v5 2/9] dt-bindings: net: lan9645x: add LAN9645X
 switch bindings
Message-ID: <20260519-scared-banker-1583071cbeb7@spud>
References: <20260518-dsa_lan9645x_switch_driver_base-v5-2-968fbf34ffa3@microchip.com>
 <20260519122722.B7D62C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v+SCgvgvxt+jmAYd"
Content-Disposition: inline
In-Reply-To: <20260519122722.B7D62C2BCB8@smtp.kernel.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300229-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,0.0.15.160:email]
X-Rspamd-Queue-Id: 055C3582A97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--v+SCgvgvxt+jmAYd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2026 at 12:27:22PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:

> - [Low] The YAML example references undefined phandles, which will cause =
`dt_binding_check` to fail.

> > +
> > +examples:
> > +  - |
> > +    ethernet-switch@4000 {
> > +        compatible =3D "microchip,lan96459f-switch", "microchip,lan964=
55s-switch";
> > +        reg =3D <0x4000 0x244>;
> > +
> > +        ethernet-ports {
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            ethernet-port@0 {
> > +                reg =3D <0>;
> > +                phy-mode =3D "gmii";
> > +                phy-handle =3D <&cuphy0>;
> > +            };
>=20
> Will this example pass make dt_binding_check?
>=20
> The example references &cuphy0 (and later &cuphy1 through &cuphy3, as well
> as &cpu_host_port), but these labels are not defined anywhere in the snip=
pet.
> This usually causes the dtc compiler to throw a "Reference to non-existent
> node or label" error during the build.

It shouldn't do that at all. This example passes dt_binding_check (at
least against this binding file).

I think I already mentioned that the bot needs to ignore phandles like
this.

--v+SCgvgvxt+jmAYd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagyQ5gAKCRB4tDGHoIJi
0qw+AP0TiOi82pGE48vxZLbMmi4xMI576k2x2OCOJA1IcOt4+QEA/dLMOj2HnFlW
+bgXKDdp+Gs7nygxD2Bhbooyq8Upjg4=
=5Ydq
-----END PGP SIGNATURE-----

--v+SCgvgvxt+jmAYd--

