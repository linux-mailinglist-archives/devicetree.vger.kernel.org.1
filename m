Return-Path: <devicetree+bounces-268968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHyGNIqLoGkCkwQAu9opvQ
	(envelope-from <devicetree+bounces-268968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:06:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E6E1AD3D6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E12530EEBC0
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A9F355F44;
	Thu, 26 Feb 2026 17:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roEoliAG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763A92853F3;
	Thu, 26 Feb 2026 17:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772128428; cv=none; b=TQvZAdncKCxx75pvf7f3ZUhoylIYj8v33wlwo84zwJyv210D/o+y4TNO1pbyWOpZ3I4PQEt0zQ9bK7/ZWYw5Qn+90Eeh2Wjmsj888jkNlDQy2+sLss8xe2H+ibF52vqJLxc67CUnwYQANiMgkH7QOWDhsw1yUvmHLVsP7XAyaXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772128428; c=relaxed/simple;
	bh=jYpswFOHGcuRpULlKaY8PpzjjCH2HHXs1KNK4pL1NGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dRd50GXQ2S8TUrBaBxjyzAZb2BhYSE0vf0IBiTGrK07qtVIFQ7GoG2I7u6grp2fDPX7j+PnRomNKq03XRYIndppXR9njbxjZmEb5gXDJr/4Qund744A3LNzXot0hnAqUyoidt8q/qym+NaI6iXMEzBROgffWmIC/Ct4RRlPqaF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roEoliAG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3895BC19423;
	Thu, 26 Feb 2026 17:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772128428;
	bh=jYpswFOHGcuRpULlKaY8PpzjjCH2HHXs1KNK4pL1NGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=roEoliAGTuUSVOrGHkNbNO2ZzsCWhJTeMktYVraykcB/bA0qIvgD7SPLsLwtoXv+Q
	 WKNnHbHJuXKQLt5tpOCXVmjYfmrf6VzKJ1jNNGNmRI9kwtauK3rum27pEq+A0DoGIK
	 IJOFQldJ3Pq1AY/ZnPHuY5YwfhjgwB9JyKAF1WH1c9+MaW7t6UXCptDns2W/GIYJ30
	 1egJO/+vLG5/5DX7/6OVjVct91HgIWgV/uvW3DRDtl/4TqKeoHTk8n0RFiklHVtKWh
	 uY4XVAVawmiasx2tXCxKmVMc3TtknBM4M3Bze83uC7ZaHnbx3o1h8oFdQgjts+GbRc
	 1t1wWMs8H6xLA==
Date: Thu, 26 Feb 2026 17:53:43 +0000
From: Conor Dooley <conor@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Frank Li <Frank.Li@nxp.com>, Robin van der Gracht <robin@protonic.nl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [RESEND V1 1/1] dt-bindings: auxdisplay: change to
 unevaluatedProperties
Message-ID: <20260226-nanometer-reproach-8c87569cc837@spud>
References: <20260226172258.257089-1-Frank.Li@nxp.com>
 <aaCIEs-65JQUkSyA@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VFQzgRqoq3o+6aGD"
Content-Disposition: inline
In-Reply-To: <aaCIEs-65JQUkSyA@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268968-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 83E6E1AD3D6
X-Rspamd-Action: no action


--VFQzgRqoq3o+6aGD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 07:51:14PM +0200, Andy Shevchenko wrote:
> On Thu, Feb 26, 2026 at 12:22:57PM -0500, Frank Li wrote:
> > Change additionalProperties to unevaluatedProperties because it refs to
> > /schemas/input/matrix-keymap.yaml.
> >=20
> > Fix below CHECK_DTBS warnings:
> > arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33)=
: 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: =
'^pinctrl-[0-9]+$'
> >         from schema $id: http://devicetree.org/schemas/auxdisplay/holte=
k,ht16k33.yaml#
> >=20
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
> > Resend include Rob's Ack tag:
> > 	Acked-by: Rob Herring (Arm) <robh@kernel.org>
>=20
> I didn't get this. If it's official, make it official.

Funnily enough, b4 picks up Rob's ack, although I think it gets it from
the original posting.

> Also, shouldn't it have a Fixes tag.

Sounds like it should, yes.


--VFQzgRqoq3o+6aGD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCIpwAKCRB4tDGHoIJi
0hTOAP47I0OxPkunqdcK96ctAP4FXUL2TiqJzE0gxm4ovRao+wEA0lMvKWz1uOAZ
tUvzrdfEKbZsG5Cv+LFWg5SGvhXhJw0=
=z4gr
-----END PGP SIGNATURE-----

--VFQzgRqoq3o+6aGD--

