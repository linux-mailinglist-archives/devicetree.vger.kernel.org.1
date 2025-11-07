Return-Path: <devicetree+bounces-236027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF77EC3F57B
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21FF33AFF34
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8815126E6E8;
	Fri,  7 Nov 2025 10:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="ZzFCkw2I"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADC92F746F
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510171; cv=pass; b=ZbIgXpGm9PCezBnDlaEPTDGVMYInsty9P0rg8i68R9KfTZf/vy76aAFQ20xw8dbw3RJDA0MwgxsMjNMHKFRiPuzeTdW8YoWDr4Zl5OQ/GFo11O3iMuyLBKqC7Hy4KrOqwAV70BAeG8s5S4XkIZnErnVy0J64UF+C7Jp53wooWYw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510171; c=relaxed/simple;
	bh=1tVZGp3pxDBcyyQtO1QwVXJ6Lo0hxUCxxWzrQkiFlZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XO8sS2fWYmesgpaeq7Ss43d45CjwbyrUq9tf2+vDG6j2tJcPgoFxO5cqb8Vb6p2TV0Ighn+O+Ri3rljwp//y9Dy2xqAkpF6PPNR62Wb4izi52fNRkMyQfhmlj3MY2/4aV5GeWuMzstHKuCPbBjY7gfriHWEs41hg9mtMceZIMZY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=ZzFCkw2I; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1762510137; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jek+MO6su+JnNf2oK/4HLjqS6KZXmcdkXtaZpqSoOPl30Xm6O7jq+xJUVKrLOuIGSt+8ra7DvpBQlAMkOoKaSHdhL58DYzcfFTVIVb/VSxtQHUCe4Om8Hjbzd70BWcqWfSjfei+chljljP0+7SACjgcGDUx16t9Gxa91nnOUgBY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1762510137; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=98TqscCcNhUxJylsQVAEJl9l2MzJi9aTy8uuvxcVZdE=; 
	b=FqBipcHrFJO7n/8jpHtUaHKjI6qd6Li+ZAsrRxtGcvzy3EhWJY+7+dImFydGXlNr6mHLZJdyMC2OJqzLtEH0MsrpziQwrJucgOia9vANyyPFuVV0wdHHZJeJZXFuz0kI8B3UWYDVyokz3LYQNMEqeOeiG3YBQ/sRJoYrGbTTsVk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1762510137;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=98TqscCcNhUxJylsQVAEJl9l2MzJi9aTy8uuvxcVZdE=;
	b=ZzFCkw2I/m+SXWQqpmgHchiu/y6sItbI+9iViJenDAvEo/k0dmLdVoLQjqAG2UX5
	mOtdWUzH77eV9f4T/YAnP73osGNhf2jttotC0j2knwIpwU31ZWyiqNxjaV9AuWB+YIV
	867LfpeOH89wSCFSmuk0864EyZayCsaWy3Om6SdI=
Received: by mx.zohomail.com with SMTPS id 1762510134822762.4949881758118;
	Fri, 7 Nov 2025 02:08:54 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 8F7B7180CB6; Fri, 07 Nov 2025 11:08:47 +0100 (CET)
Date: Fri, 7 Nov 2025 11:08:47 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	cristian.ciocaltea@collabora.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	Laurent.pinchart@ideasonboard.com, rfoss@kernel.org, neil.armstrong@linaro.org, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	tzimmermann@suse.de, mripard@kernel.org, andy.yan@rock-chips.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Message-ID: <z3qwk6o5exump4c6ot4wkh7sn4ihlu6gzeknoqbaop3ftvs5wc@hl7svwf25mvw>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-3-macroalpha82@gmail.com>
 <2301926.irdbgypaU6@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hu7kkvok6sorts4o"
Content-Disposition: inline
In-Reply-To: <2301926.irdbgypaU6@phil>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/262.482.93
X-ZohoMailClient: External


--hu7kkvok6sorts4o
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
MIME-Version: 1.0

Hi,

On Thu, Nov 06, 2025 at 08:40:55PM +0100, Heiko Stuebner wrote:
> Am Donnerstag, 6. November 2025, 19:09:13 Mitteleurop=E4ische Normalzeit =
schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > Add support for the dw-hdmi-qp driver to handle devices with missing
> > HPD pins.
> >=20
> > Since in this situation we are now polling for the EDID data via i2c
> > change the error message to a debug message when we are unable to
> > complete an i2c read, as a disconnected device would otherwise fill
> > dmesg with i2c read errors.
> >=20
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>=20
> > @@ -1074,12 +1095,18 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platf=
orm_device *pdev,
> >  	if (ret)
> >  		return ERR_PTR(ret);
> > =20
> > +	if (of_property_present(pdev->dev.of_node, "no-hpd"))
> > +		hdmi->no_hpd =3D 1;
> > +	else
> > +		hdmi->no_hpd =3D 0;
> > +
>=20
> what is the argument against
>=20
> hdmi->no_hpd =3D of_property_read_bool(pdev->dev.of_node, "no-hpd")); ?

Would be even better to use this, which avoids adding DT specific
code to the bridge driver:

hdmi->no_hpd =3D device_property_read_bool(pdev->dev, "no-hpd");

Greetings,

-- Sebastian

--hu7kkvok6sorts4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmkNxSsACgkQ2O7X88g7
+pphnA/+KJLgFYW6CJj690bGUxkP/uHjY+EL5qckmjFL5nNMDue8dV5mfn0n4aUi
nbZU3ESB88foP+Q1J4rXiuVd7cd0W/ZPfMDIRkAVGy/TkzSSZlw+h3oVQSN3lJda
hWL9y2S1RChF5aO1bV2ru0poijuqyuH2nVjoU/nifgM3Oq8u2fJpfMHlcryUxZfc
gnX0PafzLg3kVhj1n6a9Db5jgo6zUjQrCjim5KrpZp4uYrt6aN7/LkshV5508eOD
OULm6T4gBctztOzCySLGG+8oBexum25wv8DPerA2RYgpoJHTqrzzCCvaVLu7OdBo
i3ka0nvGiQr6hJNsKFJ/6A6BxG9Bj9+/Eek7WY8uMurXp/oN79dGDJy9HNwq53iX
mlnK3l0UXOHMuNF88DjdEfsT0E/akCPzIOA0zNBfVGVqdFePikc5sdjf7ffAjKg9
Z1gFqTz/X8EBLbIZlA7+Qbs6/3b3BBHg6DeFjr90tYCcj5Jamkp7dEVKiQhlM3f6
uGj/WKfaioCDokhrIwmyKNcKp1jr3kwknkWmSF+yy1x0dKsRYfKZKqwWXa1d9u5I
zOlXNukg9Pui23Y5mSCIVv+ym/BkSyAC8lPx+UkRjiS32EiUj3/t1rW0iZov70P5
kG3V9xt5r3OXIVBVP9c1amU5vbScbM0lVcE5LVyk0ClbCFIJ6GQ=
=ZSDS
-----END PGP SIGNATURE-----

--hu7kkvok6sorts4o--

