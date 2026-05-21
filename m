Return-Path: <devicetree+bounces-301440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDr0BqZAD2qcIQYAu9opvQ
	(envelope-from <devicetree+bounces-301440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:28:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8B75AA3B6
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:28:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC8F830432E8
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 16:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39745399352;
	Thu, 21 May 2026 16:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHwteedu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115C23783AD;
	Thu, 21 May 2026 16:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779382623; cv=none; b=XDEIeH1jl+kzJcwKt7H5TJtUUFCJLVfvDuskvxvCA3N7QxBMCenE+DLLM0Od4CKIJxkaJIef0vm5K9xTqEJescAiZSP3NCOq6zD+fFgAfJ7Ja/YWMXMrKKasce+Rnv658UpGFWiX2KKUom8ET14mjqZlxdRDW+u1TP13zbDiJVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779382623; c=relaxed/simple;
	bh=nxyyIMc35qUmE4PuR7vY4kNH8OjSwzWlBeJpWmBnn3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mj/kqlZwdOcm2qfIJwzVonc09KRbUiV8SG+UtHa5HsT3exGhe8J73Elw4V2+2B3xflbudvacK3AMb/bd43oyKdv9ZFy66SuhFSNRfCRpi//bp0oYjphOInQ1ppNElfYeU7ttu5RaJ3Law1L96vpJGOrFGvVt5ysp807NEKVaabc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHwteedu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70A9E1F000E9;
	Thu, 21 May 2026 16:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779382621;
	bh=dDeoWR1l1WxGKgrhYf3AYzpmxpaVT4tb7GV4oK8WvhQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HHwteeduDAZoSQvslO3119EuwkrI8ClRSBHQAq8AUxTkShUoQo9eYvhx+p4JwiK6Z
	 KLCpfwBIX28PalxU7zwropr0R3evhxgFA+rpttyKVPtQSd7zUhMevb++3xR+yAqXXq
	 3ymaFQvEDEGUorP0Eyd3kRFmqcCz/uhNeUHkhTRpxyJB9k1QODI/B5XAN5xkzeDCQN
	 awjwL2q7XOsQFkYHiSCb+Xz/fZEo78bouiVGc5m8KfW4E6g07jZAECABQ01vAGAJKq
	 J8SE5q8UTzS17Yaxfzwn+idH9SiJsoqqOCDbYJWffYEPhjnWLJKxsR9yfjJevexSCH
	 08gaHDJZh05FA==
Date: Thu, 21 May 2026 17:56:55 +0100
From: Conor Dooley <conor@kernel.org>
To: Vitor Soares <ivitro@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Vitor Soares <vitor.soares@toradex.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 01/15] dt-bindings: display: panel: Move Logic
 Technologies LT170410-2WHC to LVDS
Message-ID: <20260521-famished-tug-fc0582ef25ce@spud>
References: <20260521150038.103538-17-ivitro@gmail.com>
 <20260521150038.103538-18-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u32L7E4ABaNcVzrw"
Content-Disposition: inline
In-Reply-To: <20260521150038.103538-18-ivitro@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301440-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ti.com,bp.renesas.com,ravnborg.org,toradex.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8F8B75AA3B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--u32L7E4ABaNcVzrw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2026 at 04:00:37PM +0100, Vitor Soares wrote:
> From: Vitor Soares <vitor.soares@toradex.com>
>=20
> The Logic Technologies LT170410-2WHC is an LVDS panel, so move it to
> the correct bindings file.
>=20
> Signed-off-by: Vitor Soares <vitor.soares@toradex.com>

Am I missing a driver change in the series for this?
v7.1-rc1 has:

rg logictechno,lt170410-2whc
Documentation/devicetree/bindings/display/panel/panel-simple.yaml
210:      - logictechno,lt170410-2whc

drivers/gpu/drm/panel/panel-simple.c
5482:		.compatible =3D "logictechno,lt170410-2whc",

Additionally, please add a fixes tag.

Cheers,
Conor.
pw-bot: changes-requested

> ---
>  Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> index b31c67babaa8..9db96dd724b2 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> @@ -58,6 +58,8 @@ properties:
>            - hydis,hv070wx2-1e0
>            # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT =
LCD LVDS panel
>            - jenson,bl-jt60050-01a
> +          # Logic Technologies LT170410-2WHC 10.1" 1280x800 IPS TFT Cap =
Touch Mod.
> +          - logictechno,lt170410-2whc
>            # Samsung LTN070NL01 7.0" WSVGA (1024x600) TFT LCD LVDS panel
>            - samsung,ltn070nl01
>            # Samsung LTN101AL03 10.1" WXGA (800x1280) TFT LCD LVDS panel
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple=
=2Eyaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 3e41ed0ef5d5..f7e09f5b1b5e 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -206,8 +206,6 @@ properties:
>        - logictechno,lt161010-2nhc
>          # Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch M=
odule
>        - logictechno,lt161010-2nhr
> -        # Logic Technologies LT170410-2WHC 10.1" 1280x800 IPS TFT Cap To=
uch Mod.
> -      - logictechno,lt170410-2whc
>          # Logic Technologies LTTD800x480 L2RT 7" 800x480 TFT Resistive T=
ouch Module
>        - logictechno,lttd800480070-l2rt
>          # Logic Technologies LTTD800480070-L6WH-RT 7=E2=80=9D 800x480 TF=
T Resistive Touch Module
> --=20
> 2.54.0
>=20

--u32L7E4ABaNcVzrw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag85VwAKCRB4tDGHoIJi
0sEYAP0cCw3TANbrGEYnHpU5zX+dLskUlcDYy4epUilNBiZk8gEAnEA2RszSf3e3
L8EmofrfI/SXEokuGY+IHPCC1borvQU=
=xbb1
-----END PGP SIGNATURE-----

--u32L7E4ABaNcVzrw--

