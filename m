Return-Path: <devicetree+bounces-301483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IARqIVBhD2o5JwYAu9opvQ
	(envelope-from <devicetree+bounces-301483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 21:47:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C645AB8FA
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 21:47:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 62B40300AD76
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66D0403E92;
	Thu, 21 May 2026 19:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i57ejD7i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55F33D25C5;
	Thu, 21 May 2026 19:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779392837; cv=none; b=qiRZaDMFeixbJ/bOYp8QSmkSES9VVLQrThO4pCS4SRpqu9fOKlm2q9X+sKFMG1onPH/DXWbx7TAn897qP7h32AOb1zYpYIM/4Mz8QiOsIYFUWKHu/gGGhBwRTHnhtaHjcrJz2n2O9UdR9I91M6YPu3W9e3cwSKG/wopoDCG4G44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779392837; c=relaxed/simple;
	bh=bpdZNlcBLd3KwoS51ouSJUNQSPCxowMHjZ/xCXm3x1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MXFfnys5vUlmAf9IH3FPT7Hd3wnUgWUgiC+kn3tOJDQbFdyELYjakWT5RHCZkUDppYHhmU/aB4z45MFgD8ESjXL3jScMWalQERTmXSN87A5CbUGjXsllN0o66SyWjG2/sXkp8/4mztkxvzpIhegW2+wxGWLPdM0OQoVRQ+vUUSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i57ejD7i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40C9D1F000E9;
	Thu, 21 May 2026 19:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779392836;
	bh=iF7iL7b/eRDZExcU9oluR8iOMC8+YXUjPYKBmp/PXRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i57ejD7ipwYFQoYWQOyHZ7JiWI6LhNi0bmQ7pOyatQLUHO78lk7wAp/pp7EVRJq1W
	 B9Fu2aQRrMb550LkpweJltALl/A7ruzHvdvjGGpnlJXVCQhLpfvpT2VRvcbBZiRGho
	 0uDP5ogr6juioZwvu9JzIgvz38yZyg09LRpnAZjzWB4CTKgSSR+vInl5aqbtvuCpI9
	 qNJ5d1JN6+e7LWgbZiVwj8xmGmxhTIFywUwDgfzuMAGM57BQfkFUTLuoADKx0OM14j
	 HYYscXdi7VS8RtTcZe4Bw0dAMtpU1ipYgyQdv0xuGIDB2xS/lrs4fcvoEJm9Sqxmge
	 wpdhHfJNTn4aQ==
Date: Thu, 21 May 2026 20:47:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com, cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com, dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com, dianders@chromium.org,
	m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: analogix-dp: Add
 data-lanes example
Message-ID: <20260521-powdery-tux-22a7cf4fadc3@spud>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
 <20260521114459.1394264-3-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kjL5jhnqIDr4AwIY"
Content-Disposition: inline
In-Reply-To: <20260521114459.1394264-3-damon.ding@rock-chips.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301483-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 88C645AB8FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--kjL5jhnqIDr4AwIY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2026 at 07:44:58PM +0800, Damon Ding wrote:
> Add data-lanes setting in endpoint example to show actual lane mapping
> usage.
>=20
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Squash this with patch 1.
pw-bot: changes-requested

Thanks,
Conor.

> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml          | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index bb75d898a5c5..cf75c926318b 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -151,6 +151,7 @@ examples:
>            reg =3D <1>;
> =20
>            edp_out_panel: endpoint {
> +            data-lanes =3D <0 1>;
>              remote-endpoint =3D <&panel_in_edp>;
>            };
>          };
> --=20
> 2.34.1
>=20

--kjL5jhnqIDr4AwIY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag9hPQAKCRB4tDGHoIJi
0noXAP9aPT5KoIziqejJtByAcYmbw2ijtjzmEvaq71WErlg8vAD/d5xCbobJ1rmC
s9sTZuiq/HBvQLv/KjXIx0LIEV43OwY=
=PVrf
-----END PGP SIGNATURE-----

--kjL5jhnqIDr4AwIY--

