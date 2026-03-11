Return-Path: <devicetree+bounces-274297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uERvIJ23sWmTEwAAu9opvQ
	(envelope-from <devicetree+bounces-274297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:42:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E9D268C78
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4624301917C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F37E29405;
	Wed, 11 Mar 2026 18:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEhzp37q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D739F35A39D;
	Wed, 11 Mar 2026 18:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254549; cv=none; b=Y6dbYH+g1qv9DjBdn9XTLgtY2wV8lZoMNVVeQXMzlKRP9qoxa8AW7Dhebkn3mHMyp9SAZbO5sIV7+XsLWAgIdFuCnFqSXDY9ITAA8OlUsoLXqiUr6NnTxVdGEMJ3Kf4FuWAPPqWviC9IS9gbOckVWA21swz5o+Jyk93Xqd4kYn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254549; c=relaxed/simple;
	bh=AzTwahIUwlPBCNrDwcmOO8m3iXYyk4ey6xqi9x+uQGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RiyuAsdNN5fZfCyqxy3gvCZxBWpmU4vAD2VxHFtk+JDQPK6pxhPqrg/GZoIE8AOMyp2E+BJmJ7bqwtWDare3B8UlKTTorPLIPevDBOkyY8WRiVmGyVp5mJy+3HXhwmlsVjZIaoV1dk4LYmJHmlAmysBGFccebM1Q/L7qJSouEuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEhzp37q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A959AC116C6;
	Wed, 11 Mar 2026 18:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773254549;
	bh=AzTwahIUwlPBCNrDwcmOO8m3iXYyk4ey6xqi9x+uQGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DEhzp37qLElKfbIsPmpJbIlG80QDzwlOdshaqSXvHk9s3imyD5RWlMoXXzfd+Fl0Z
	 ppn/mSy4oiZu92jE70TqObd9y48ahoeMFqgmB6lxLOLeVUICF23yezsL2w6mnfBDDV
	 B3JuxRKgh9n9KCI2caDBISCYb0Tp2CRLybNJwHc2DTQGH4ejOR9FE3rA7/V1AUVt8E
	 Wcmsv3hgKggv3h/3nrb2/iklUezU958qtfcC2ZgtXp0N0vx32kBfJMFiJ1ykfxdq8L
	 6qzv4TF/zyoWNXN/G2Qb6XYecwakRoKCPSuCuw0bAtLnrGMDgAT/4kyvLSnJWB7YYz
	 /qApmn/aan8JQ==
Date: Wed, 11 Mar 2026 18:42:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Cunyuan Liu <cunyuan.liu@cixtech.com>
Cc: liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, neil.armstrong@linaro.org, heiko@sntech.de,
	marex@nabladev.com, dev@kael-k.io,
	prabhakar.mahadev-lad.rj@bp.renesas.com, andre.przywara@arm.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Arm Technology
 (China) Co., Ltd.
Message-ID: <20260311-playful-unwritten-95530cbd5206@spud>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-2-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fxPWmVJPtR5Kk4zx"
Content-Disposition: inline
In-Reply-To: <20260311055506.12023-2-cunyuan.liu@cixtech.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274297-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,lists.freedesktop.org,vger.kernel.org,cixtech.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F2E9D268C78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--fxPWmVJPtR5Kk4zx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2026 at 01:55:04PM +0800, Cunyuan Liu wrote:
> Add "armchina" vendor prefix for Arm Technology (China) Co., Ltd.

Is this not a subsidiary of arm, that should just use the arm prefix?

>=20
> Link: https://www.armchina.com/
>=20
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index ee7fd3cfe203..c7ca7f43925b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -172,6 +172,8 @@ patternProperties:
>      description: ARM Ltd.
>    "^armadeus,.*":
>      description: ARMadeus Systems SARL
> +  "^armchina,.*":
> +    description: Arm Technology (China) Co., Ltd.
>    "^armsom,.*":
>      description: ArmSoM Technology Co., Ltd.
>    "^arrow,.*":
> --=20
> 2.53.0
>=20

--fxPWmVJPtR5Kk4zx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabG3jwAKCRB4tDGHoIJi
0tKHAP4m8QeUgdmF+ZHW8dpdMTVpsaa0PXZpRaQw/5uk/W8hewEA20pP/0t0JaXB
SNsmesualrjHcqJizMJ5pC0XGIbqJws=
=2g4a
-----END PGP SIGNATURE-----

--fxPWmVJPtR5Kk4zx--

