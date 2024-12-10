Return-Path: <devicetree+bounces-129493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F29EBDF3
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7709218894A7
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 22:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94681EE7BE;
	Tue, 10 Dec 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="Xm5AQDUp"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1332D2451C7;
	Tue, 10 Dec 2024 22:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733870542; cv=pass; b=J8MEtkTOuztx5m0h3HzIgRx/qN+/H59OUVqDqgGxxbASVe55+hSAlOjxuql3v0FL0DfMwRmJG+Ewz8TAV8aSbHfcbCscNAAaBdGDcrQUb+qb3T3ndLLwx+VQfWRMD+MskQG+M+6vaH5NMwXIwpahO7kXRwrv/lHvxLuMkkTjylo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733870542; c=relaxed/simple;
	bh=yXDVjzsTTSk53VufDCYgJ4/1bfM1cjEh9eIpEbeTMZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKkDf+uNrOXCdfJ7+Z5p9uLtNJeaKuCUJBQyY8YmifhUKh7fq0dqX0IWHrXlTaFn9A0AuA1etpUaNhFfbjzU/P2Yaz3pMlWg9jiPKhkJTxcRTX4Wd+hI8lAnybqDN/06iM/rYqg9ffQ8rBjwTsR2T7NbMfFlqXwfypQUHFi0a54=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=Xm5AQDUp; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1733870511; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=k8b7jrTew3Buujzw4HKhY5qPIINmZGPz2YM4XZlhsU48oyTc2iRCCOm1oETihEeXqbq9vz5rdlPDEW1a7usw0wBFFj2ELbgpMbA7YEMyGrFresm0FgpgAkRCnqT00v6ctA/glnRkYzX+3zwZ21VvRXUI376BGIGxHFjRK0p9mf0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733870511; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tWgCnUxFLN0F+pgIL0M3QVKwrZmsYmCkQSYBlW0rvRw=; 
	b=Enc5wpPRoFLLEBEQ/AHsn5AY4FqOdn5cjcdr6huoUln1aedPDv3BLyT8SoDde4bwOnY2PmXQfFwioIVG7yQ3Q0luWKKP4a2LIXRzMUcPy2KER9VdxXLjfsH3fTO8QN74q+1Ekmo0ouJvNKET4trVJBCsaI8MS60MfjnSeRgfTfE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733870511;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=tWgCnUxFLN0F+pgIL0M3QVKwrZmsYmCkQSYBlW0rvRw=;
	b=Xm5AQDUpXbehSfM26Qi4sYxnGC/hM6lI4xcBV6VWm6RTx13utqImKVsvGXvTAuSH
	WCvXCDTeJyP2FsgLVFbhto5Zy/EvVnxLcSMGxjN62RALtAVtCy1SGdthCLCV2A4DMhO
	Wm4zGa9lkqmXekHfPvd9INWoQw4dlPCjee8cUgY8=
Received: by mx.zohomail.com with SMTPS id 1733870510426908.8876418931715;
	Tue, 10 Dec 2024 14:41:50 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 954E210604B1; Tue, 10 Dec 2024 23:41:44 +0100 (CET)
Date: Tue, 10 Dec 2024 23:41:44 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Andy Yan <andyshrk@163.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 2/2] drm/panel: add Raydium RM67200 panel driver
Message-ID: <2kfapf6iolb65g3kss2hulwpqiczyyk6vvv37pqthm7o625umf@vuo7saus5kcy>
References: <20241210164333.121253-1-sebastian.reichel@collabora.com>
 <20241210164333.121253-3-sebastian.reichel@collabora.com>
 <2cbbc5d6-2d6b-4afe-a0ef-7f59d28724dc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t5phmjcn4xd3igbd"
Content-Disposition: inline
In-Reply-To: <2cbbc5d6-2d6b-4afe-a0ef-7f59d28724dc@quicinc.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.837.80
X-ZohoMailClient: External


--t5phmjcn4xd3igbd
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 2/2] drm/panel: add Raydium RM67200 panel driver
MIME-Version: 1.0

Hello Jessica,

On Tue, Dec 10, 2024 at 09:45:09AM -0800, Jessica Zhang wrote:
> [...]
> > +static const struct raydium_rm67200_panel_info w552793baa_info =3D {
> > +	.mode =3D {
> > +		.clock =3D 132000,
> > +		.hdisplay =3D 1080,
> > +		.hsync_start =3D 1095,
> > +		.hsync_end =3D 1125,
> > +		.htotal =3D 1129,
> > +		.vdisplay =3D 1920,
> > +		.vsync_start =3D 1935,
> > +		.vsync_end =3D 1950,
> > +		.vtotal =3D 1952,
> > +		.width_mm =3D 68, /* 68.04mm */
> > +		.height_mm =3D 121, /* 120.96mm */
> > +		.type =3D DRM_MODE_TYPE_DRIVER,
> > +	},
> > +	.regulators =3D w552793baa_regulators,
> > +	.num_regulators =3D ARRAY_SIZE(w552793baa_regulators),
> > +	.panel_setup =3D w552793baa_setup,
>=20
> Just curious, will there be other panels with different regulators and in=
it
> commands added for this driver in the future?

I don't know any other RM67200 based panels. But the init sequence
contains lots of vendor specific registers and I'm pretty sure it
is specific to the W552793BAA. I put the regulators into the panel
specific section, because the datasheet for the RM67200 specifies
slightly different ones than the w552793baa datasheet. Thus I expect
that other displays might have slight differences.

Greetings,

-- Sebastian

--t5phmjcn4xd3igbd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdYw6EACgkQ2O7X88g7
+ppvBA//bksIiJDhO9U0NXa3VZF4/KNlPTGkiFvPuMd5QHpgbotOouiuKRQrnRKB
LffeWBFL3Dxl8tEkAqzVKJRH6XlIKWUMXYuk0mNKIJN3WtQdPxSb8cOaMIHdBG+g
wJ36QKmyz4mF8JPuDSSBQ70NJIZfZx3ewKlXbpNf92GRwXduE4do53mcs9XnqMDX
4KTqpjXF/x9BlWMDsx1iFPJT4Mmg2bDN81FkfaiTmp/WR+YW8/I2kvgflrQZFz6N
ffx61NTct+RSkBc0OHXftIxQ8NW1ZyIyCqLVa1QwE2McCARElOd4EMog0QWcoPZI
nFwt+EbL4ZVdGv9wmDDqw/PlsJjNPKdgyMkWFMwm4H7TdUa6tvyTPkvdzp4SgxLx
vs1oBOEUF44N+em9iU5tmWY47cBAAEvRkvfbAhmE34wS+/0qG0imGNS2ivt1DsRU
h0BFCEut7d0iK5wjQV7sReocputqFesgjnRR+8ooCydsDz4vnSu0zsPhu8VWXgcH
J6TYk1YG7XUcJdmq1qB18vsNbNNzVd8ggAWdpOb1Anu4J8QEndcznDzE/TMTBXOX
kOORf5fpwifTrhpua5gDoYiUiHyGdPxEdWrjxQZZ+8pP5cPHTCBF7hW6PUnrVWcB
pL2jbKoik+n2Yd5qKlieK8JLDAws9uKvHs1WTW9SKLkaUan7Mp0=
=D5k8
-----END PGP SIGNATURE-----

--t5phmjcn4xd3igbd--

