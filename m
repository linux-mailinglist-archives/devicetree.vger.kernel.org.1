Return-Path: <devicetree+bounces-247170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DF6CC52F7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA9563031989
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E4B2E03E3;
	Tue, 16 Dec 2025 21:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="ceHAYlbb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC668248F69
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765919749; cv=none; b=JyvqtFOx7CxfCG3zm+nfjlZW2pm9l5N7zrBgSPgXSMT2lwXY/KggMpVaipByHP7PECUusfeBQ0g3zei6f1A3W5djsWaVq9AAZ2guQclcUZRfelsLnR+q9gz/wrh2dmuPFNMA1sVhW/FGJ1/pZYbXeLSI/t9UGNptH8sp7I40U2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765919749; c=relaxed/simple;
	bh=Bi7IWkacR+PjjweZCQ83AGXPCHhqTROGAWAgPEXtqUQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BhwlSLPtmDGJWl2mT6Lr9u8cqdbH9Djv7/eXo1lnUzq6uRTHc/jn5xhtIR7B1J3Ga91xrOd3Vu4deYSG1R7K8uU+akjZFWoFi1AFQ14sMiACNL1/5EEaROacNZcNaWUsHv/njZilJOpJH3EulMi2JfAlF6npMJNsSXySP+LsDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=ceHAYlbb; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4eda77e2358so44145831cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765919746; x=1766524546; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ebwgGAkNx1wNoLhOAOZ/UY0M0Mpf4583EjnHoCJDQNs=;
        b=ceHAYlbbz5DXwPkvehSyxz2vMgFKKlzhruU/xfJKJ8y8yX281BmZigQgTvOMTv4Ny4
         dd+5OWLkn1bXL7Mi1JrrlwpJ3UEosXxPZP5nEnFzk5iOnIymoTBCBS1YTSdA7PXIySyj
         PJXCaUJxE4/nAoeDYLbvyVcy1BctcFXXg3rcF7sFRhBU9CiHJgSvHoOByJGCLKUTASE4
         sVS7ad5dJRi6YK31bW9KnsCx2nuJneTxyGrLqSDCPk3+MV2F3f3mk8sqy1CudolaQBOY
         Txsz7voa1IpepWoViwXPC7Xlx5CWNhXyXeugdps1oJQsADZ0C4Fo+ivyOpTYaWRKXgcT
         Efxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765919746; x=1766524546;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebwgGAkNx1wNoLhOAOZ/UY0M0Mpf4583EjnHoCJDQNs=;
        b=bgmVVry4I1S/w1mCnMBoC9sZmNznto/cghNm0zeIwd5PNK4W/h4C2aqM0mqTdfeugX
         Ms7RJbURASizYJQ/MxS4UuwdjnXvLhPqs2VbqzNv2dOkx2GVB2Bmv+qtc1Q+qhl0+y6r
         fWvK4V4shgmSW9MLM2hvVpq39YyxeuqKM9WPMhnCkS1logrdrtiue+hnLBuWTHcyVjpF
         IELjqLud+q4SZ5obVSVGN1dbPJoSK7ofBU3GiX9PZ17xQOyrNTvkpt0O3+ZfiEOAvQdk
         0hqL6iK2UzEja6dU76i5v1RqMb3V1kd+1y74GtdYuysF6fELS0mafeXx9MdFRm+YHa1m
         yihQ==
X-Forwarded-Encrypted: i=1; AJvYcCUe3Xb1utvBCiij4sPsb0rXLz8G4sMDbCSgFqCtsdBmClPzSA8BhzNhK2R0SSPR4Z940HHQUbxjOfkZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyLcI7j3t5TEfsDd8z/6YrHM+hIExbfdODBQjBw/X9hExpVh6Pp
	FrCUywlrXQ21LjqKr7AHaVcteiTKucZoBGDou12QBcc5EVSq2s1PxN77w83+eQQe1Dc=
X-Gm-Gg: AY/fxX6oRCDG+zivw3qDJGZ2mrjgCdSntmg97R9cotTVC6SkmvNaJgYkJItolmkC6Ku
	EqBlPfeOSMiO9YZvXDtoWuCV1OZ2BDK7I+VDtiAlKP/9AN2q0p+sJ+heYgyuzTaKMlfYg4Wg+6M
	pM2G+pP/YdoUWWY9BN20d8KCq5fcoEFy+4zkwBtfSiGD0uW7f06habfyC4WmMyI5mGnC4EwCHjD
	0vS63gr1uOKhG94xm7IxY3wzkrTN7kSowcphuzjY2p/YzqlRxBbOPBPu8pS2kbY6gXyjO9zW4M8
	wi9X1EP0U6Hv7f8Yt23eROZhRdvT7XNrDXI0DXvrn4NmBDDGdjtiPjblNFHfrTSPH21qo8hwmiM
	q33Je5rky/fGnWOYqAgg8VRsZHwJVG6J1FlgLCxa8lr0ZAKGHJhVJ+EVPWH0Iixncl3w2ph62Q5
	H2yxi8Gt8po26SduCEdJ4eTS7p5OM=
X-Google-Smtp-Source: AGHT+IH9ieEzITl/25GTBr1twC9xFLUuMn0MCssFBfn2TLe8Le8JQ2UJuWsc+eqTvu1swSD82saAFw==
X-Received: by 2002:a05:622a:4ac8:b0:4ee:1ed1:43c6 with SMTP id d75a77b69052e-4f1d049f56amr195093861cf.10.1765919746405;
        Tue, 16 Dec 2025 13:15:46 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-889a860bd0bsm86012026d6.54.2025.12.16.13.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 13:15:45 -0800 (PST)
Message-ID: <36268d4980a1cd6d976bdf5de148f1c2668a92e4.camel@ndufresne.ca>
Subject: Re: [PATCH v11 02/12] media: mediatek: jpeg: fix jpeg buffer
 payload setting
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Kyrie Wu <kyrie.wu@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>,  Mauro Carvalho Chehab	 <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Date: Tue, 16 Dec 2025 16:15:43 -0500
In-Reply-To: <20251202094800.6140-3-kyrie.wu@mediatek.com>
References: <20251202094800.6140-1-kyrie.wu@mediatek.com>
	 <20251202094800.6140-3-kyrie.wu@mediatek.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-DXnq4KBLzU3zHo31WhpX"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-DXnq4KBLzU3zHo31WhpX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

Le mardi 02 d=C3=A9cembre 2025 =C3=A0 17:47 +0800, Kyrie Wu a =C3=A9crit=C2=
=A0:
> For multi-core jpegdec, if one of hws gets the event of resolution
> changing, the payload size, representing the size of Y/C data,

-> "gets the resolution change event, ..."

> needed to change. But others hws are decoding at the same time and

needed -> needs,               hws -> cores ?

It this specific to decoders or any type of cores ?

> it can not be changed immediately, which results that the payload

                                                    in the playload

> size is not equal to the real buffer length of the hw's, which occurred

size to not match the real buffer lenght for the ... hw ?

> resolution changing and a warnning call trace will print.

Can't parse. You can probably split that large sentence, and it needs to be
rework.

> So the setting of payload size must less than the real buffer length
> to remove the warnning logs.
>=20
> Fixes: 0fa49df4222f ("media: mtk-jpegdec: support jpegdec multi-hardware"=
)
>=20

Don't add blank line in tags please.

> Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>
> ---
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_core.c=C2=A0=C2=A0=C2=A0 | 19 +=
+++++++++++++-----
> =C2=A01 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 6a7e01130f1c..0cf3dc5407e4 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -709,6 +709,7 @@ static int mtk_jpeg_buf_prepare(struct vb2_buffer *vb=
)
> =C2=A0	struct mtk_jpeg_ctx *ctx =3D vb2_get_drv_priv(vb->vb2_queue);
> =C2=A0	struct mtk_jpeg_q_data *q_data =3D NULL;
> =C2=A0	struct v4l2_plane_pix_format plane_fmt =3D {};
> +	unsigned long max_size;

size_t ?

> =C2=A0	int i;
> =C2=A0
> =C2=A0	q_data =3D mtk_jpeg_get_q_data(ctx, vb->vb2_queue->type);
> @@ -717,12 +718,20 @@ static int mtk_jpeg_buf_prepare(struct vb2_buffer *=
vb)
> =C2=A0
> =C2=A0	for (i =3D 0; i < q_data->fmt->colplanes; i++) {
> =C2=A0		plane_fmt =3D q_data->pix_mp.plane_fmt[i];
> +		max_size =3D plane_fmt.sizeimage;
> +
> =C2=A0		if (ctx->enable_exif &&
> -		=C2=A0=C2=A0=C2=A0 q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
> -			vb2_set_plane_payload(vb, i, plane_fmt.sizeimage +
> -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MTK_JPEG_MAX_EXIF_SIZE);
> -		else
> -			vb2_set_plane_payload(vb, i,=C2=A0 plane_fmt.sizeimage);
> +			q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG) {
> +			max_size +=3D MTK_JPEG_MAX_EXIF_SIZE;
> +
> +			vb2_set_plane_payload(vb, i,
> +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MIN(vb->planes[i].length,
> +						=C2=A0 max_size));

This is still not quite right. sizeimage, straight from s_fmt should alread=
y
account for the EXIF headers. If enable_exif is unknown at the moment, then=
 you
should just always include that space. This way, the buffer length will onl=
y be
bigger if userspace asked for more at allocation time, and wil never be sma=
ller
then this.

The point of sizeimage it to allow userspace allocate externally the right =
size,
this driver failed at that task it seems.

Stepping back a little, I don't even understand why you set the payload siz=
e
like this here. Why isn't the true payload size written once, when the buff=
er is
encoded ? Are you using bytesused to tell the HW how much space can be writ=
ten
too ? Just give it the full space, wich is the allocated size (length).

Nicolas


> +		} else {
> +			vb2_set_plane_payload(vb, i,
> +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MIN(plane_fmt.sizeimage,
> +						=C2=A0 vb->planes[i].length));
> +		}
> =C2=A0	}
> =C2=A0
> =C2=A0	return 0;

--=-DXnq4KBLzU3zHo31WhpX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUHMAAAKCRDZQZRRKWBy
9LqrAQDXLmz8aa7r5neaZh7xka6kqpE8h8U1FhjrhrVnGKv4zAD+NUWeHnhgbVbv
dhs9VoCxfbieBWTj3WDJe6eQSQhghQk=
=UJW7
-----END PGP SIGNATURE-----

--=-DXnq4KBLzU3zHo31WhpX--

