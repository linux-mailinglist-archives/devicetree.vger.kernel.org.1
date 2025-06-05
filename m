Return-Path: <devicetree+bounces-183016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F674ACEEBC
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FD90189B168
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 11:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA0E210F4A;
	Thu,  5 Jun 2025 11:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="TxFWlq3/"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE658158535
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 11:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749124532; cv=none; b=FDL73K28nCCSiv3MpBQVS0Q4WZfbVtIbmFGoLs6Mz4YSBICo515Fv/EumUVDzLYiES9UBWRYY5ab6NiqeS4+BFVh3PIPdTGe198yGBCnv6VAOI6avyy6S8kWiXDTd8y78WyBPoi7qKz1kZhUw3NiXZcfrh4PHU23JvqPnFwlYo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749124532; c=relaxed/simple;
	bh=5mBwSqV+lZ8IBE86I4yMfuOttLYpLRlmzrPfepRLBKc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=hwddYsRUtDuUFQ+GXk7IKFHoRyQpE26DfQE0rY9j3AvTxD6kfNwezT5YKbAIz/hxc1yOspIyBdJOerBcpbO/FiAY2UTyhHiZCtFj4p4YZxd/tmmZAyd8NMOMU51ptqUPG4MlM44L2+GbHrQO7vGP5xPhGsDoCPWXGJccjW2HYRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=TxFWlq3/; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749124522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Gtr0k1J84OtDZN/TagpeD6dbRf6DmdogmCvrsj264r0=;
	b=TxFWlq3/cnBrYdtM+7qQzjMqiBrk93LzjBHaaorU0djMlt4UBcDsXRPdqjrws7+/nZHZlU
	j4/7bAxX99M8O7seotVKPrfLknOmDKVTcuUDP4Gsf1BsdJYyDnP+uHzvQWcufMKJvjeCir
	5O/sYSSlZIs2mCG5DlBeE/vPyNCDoT7mh0Sy3isHT1tDHvZoAcwcQHwrrJkCwkO92NRPwV
	kBT3L1CW/agHZKbp117kW7SOj+HKJc4tNAG7UF36SHwNnmencZpu/uvryGUJj5pVASkzyj
	gIUfwpg+fwhQcTQXIVV6HzxmeFQtSCKkl9GaJSEMqDhdPFhlNdXiVTGNRdjijA==
Content-Type: multipart/signed;
 boundary=9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 05 Jun 2025 13:54:50 +0200
Message-Id: <DAEKVTXT0FHB.TOVX7BU9ZYXA@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <sebastian.reichel@collabora.com>, <heiko@sntech.de>,
 <conor+dt@kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>,
 <tzimmermann@suse.de>, <mripard@kernel.org>,
 <maarten.lankhorst@linux.intel.com>, <simona@ffwll.ch>,
 <airlied@gmail.com>, <quic_jesszhan@quicinc.com>,
 <neil.armstrong@linaro.org>, <javierm@redhat.com>, <megi@xff.cz>, "Chris
 Morgan" <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Chris Morgan" <macroalpha82@gmail.com>,
 <dri-devel@lists.freedesktop.org>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
X-Migadu-Flow: FLOW_OUT

--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jun 3, 2025 at 9:39 PM CEST, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
>  1 file changed, 142 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm=
/panel/panel-himax-hx8394.c
> index ff994bf0e3cc..16e450b156b7 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a=
_desc =3D {
>  	.init_sequence =3D mchp_ac40t08a_init_sequence,
>  };
> <snip>
> +
> +static const struct drm_display_mode hl055fhav028c_mode =3D {
> +	.hdisplay	=3D 1080,
> +	.hsync_start	=3D 1080 + 32,
> +	.hsync_end	=3D 1080 + 32 + 8,
> +	.htotal		=3D 1080 + 32 + 8 + 32,
> +	.vdisplay	=3D 1920,
> +	.vsync_start	=3D 1920 + 16,
> +	.vsync_end	=3D 1920 + 16 + 2,
> +	.vtotal		=3D 1920 + 16 + 2 + 14,

Shouldn't this be 's/14/16/' ?

Cheers,
  Diederik

> +	.clock		=3D 134920,
> +	.flags		=3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	=3D 70,
> +	.height_mm	=3D 127,
> +};
> +
> +static const struct hx8394_panel_desc hl055fhav028c_desc =3D {
> +	.mode =3D &hl055fhav028c_mode,
> +	.lanes =3D 4,
> +	.mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
> +	.format =3D MIPI_DSI_FMT_RGB888,
> +	.init_sequence =3D hl055fhav028c_init_sequence,
> +};
> +
>  static int hx8394_enable(struct drm_panel *panel)
>  {
>  	struct hx8394 *ctx =3D panel_to_hx8394(panel);
> @@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi=
)
> =20
>  static const struct of_device_id hx8394_of_match[] =3D {
>  	{ .compatible =3D "hannstar,hsd060bhw4", .data =3D &hsd060bhw4_desc },
> +	{ .compatible =3D "huiling,hl055fhav028c", .data =3D &hl055fhav028c_des=
c },
>  	{ .compatible =3D "powkiddy,x55-panel", .data =3D &powkiddy_x55_desc },
>  	{ .compatible =3D "microchip,ac40t08a-mipi-panel", .data =3D &mchp_ac40=
t08a_desc },
>  	{ /* sentinel */ }


--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEGFowAKCRDXblvOeH7b
bibaAQDwhyT1xBS5bV1lt1k41DO7hNeAcfefxy119hDgQjbmLAD+IAlCYrTHSfiK
GqmrYXKMwRA/W3GNEP3F8PSPxQWDdQ0=
=5nUe
-----END PGP SIGNATURE-----

--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f--

