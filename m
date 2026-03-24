Return-Path: <devicetree+bounces-279955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JHuOPa8wmlflQQAu9opvQ
	(envelope-from <devicetree+bounces-279955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:33:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F186319144
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D7800305D211
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4E63A0E81;
	Tue, 24 Mar 2026 16:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeoOa94U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A68B218EB1;
	Tue, 24 Mar 2026 16:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774369167; cv=none; b=pz473scnYhL1W0+43wEMJDHP7Wt6VJCkmoWY584nRuIfYQGhsQw1iC/eIp5ZPWeO8B6/bJtKCNvDtMLXnaufL1QXdY/LkBEjflA2fQb640fJwiJ0TOO0y9Ke1VVecJngje24NTlfYtDjRu4KYGHJ+mLMSrYZBj8Qcyxzu97OdYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774369167; c=relaxed/simple;
	bh=Vzn4kK1OCgM0Du86XVzwCGWpQkxeiTsel/ZSclDtI4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LamjUUzeD2B+FwFQf5rn3ED7Ab/Rvh9kgynEc+3K6txZkYRx0/ls0PbM3PDGBBC+CDNQzRyS7Liz3J8YLSE30NmuCSnvVQEcXUhdWaI1Hu8nDHjuv423+xALXA/uZfhNIb6t3WWHXriabZkrZsIIh6FkDAXrQokynEy8BfSJNGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeoOa94U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03C59C19424;
	Tue, 24 Mar 2026 16:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774369167;
	bh=Vzn4kK1OCgM0Du86XVzwCGWpQkxeiTsel/ZSclDtI4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UeoOa94UORI96bBXQAySKUUV4lPOU5GgV/F0PP+tM2+qfdQcPDPGORvycEu59NGMf
	 GmeBMCuc743ZB9v9NfJXzeHDR3P5uvVcFVNOE1vs07g/S8faGrHZEmMm6SciO+NtT/
	 itfrqauIjX4n8AESW/eczPc4YcufV1pQvT2fu/c20aWivWwVynKVSZMt27gE6B5D7h
	 GRhCtnyvt8KjFoGPzNF7KiuIl7F/pzVCQwx2J9J2IxSn5Gv9QzvBg/Rd0nK6d8KSQ2
	 XtzpVMl4U/giunzl+qDtH3JUKpyC7MQCK5PE2hCdJppdd7SSFUPJUSK8Pm6n7nb74j
	 TFR5ztzBFWAaA==
Date: Tue, 24 Mar 2026 16:19:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Meiker Gao <ot_meiker.gao@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bayi Cheng <bayi.cheng@mediatek.com>,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	sirius.wang@mediatek.com, vince-wl.liu@mediatek.com,
	jh.hsu@mediatek.com, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 2/2] [v3] spi: spi-mtk-nor: Modify and optimization the
 SNFC.
Message-ID: <9091b9d4-d32e-426f-835e-b62a933dbee0@sirena.org.uk>
References: <20260324062835.1747943-1-ot_meiker.gao@mediatek.com>
 <20260324062835.1747943-3-ot_meiker.gao@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sjEoEUTHZWdhbgFK"
Content-Disposition: inline
In-Reply-To: <20260324062835.1747943-3-ot_meiker.gao@mediatek.com>
X-Cookie: Forest fires cause Smokey Bears.
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279955-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 3F186319144
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--sjEoEUTHZWdhbgFK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 24, 2026 at 02:28:25PM +0800, Meiker Gao wrote:
> Changes in v3:
>     -this patch is a further optimization for version v2.
>=20
> Changes in v2:
>     -Use clk_bulk_xxx related functions to enable/disable clocks.
>=20
> Changes in v1:
>     -Add new function mtk_nor_parse_clk() to parse nor clock parameters.
>=20

As covered in submtting-patches.rst inter-version changelogs should be
after the --- so they get cut out of the git commits by tools.  There
doesn't appear ot be an actual changelog for this patch beyond the
(somewhat vague) subject.

--sjEoEUTHZWdhbgFK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnCuYgACgkQJNaLcl1U
h9BzOAf7BRKbdHMggUaXtpn7x4H6OdzYZO6/WAWJJz1vmMRz8ulzUUGezTKvUUa9
40SehQQSX1sukWrSh0OQSB5rDbbWOWXw6eX4MjjH73JrQo0J4EKakFKmPfLMDVqY
zhNMJv9jgZ2AF9Cr1DLa022zE+iaGyfR7e4x+LHVVbnXfH8pbzljlL7nIVfEbTI+
efYwSUmrLw/9S58F9UtnZPBh0DWzWm2feecZowRf0lLQa+U5zg/24fMsAN6iaKAP
9MvsvPiVg1/C7rfftkRppTcLboBVwEosCZqFF/hNtjufGxz/i0DpxaFtMBC72ZPo
Oqh7O7cKGclP473yIFVNwmPtGCtT7w==
=v1zA
-----END PGP SIGNATURE-----

--sjEoEUTHZWdhbgFK--

