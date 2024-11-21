Return-Path: <devicetree+bounces-123531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D234F9D4E41
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 15:05:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F404B2351C
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 14:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37B01D79B0;
	Thu, 21 Nov 2024 14:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jvZ+xgWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29AD1D7994
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 14:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732197900; cv=none; b=dbJlDnsuI8kDuT0zC7OZf7Gzg2tv5ku7HYzQb2BFLAirNAtlzQoLS54Ta7TxLN8aFQiFzHCvDOQJfMqOjCoJLOwmcfbDWKRfajcknlJHxrZWAQADttOeIxYZoKiphBChaNQzJrDTJhd8sSRKGKpeaIXrmzeiMeKrQRMad8ZySgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732197900; c=relaxed/simple;
	bh=O4nYmoel1Gexv8PujvE6jan3LXLfm0fEjCn+hI/Am/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LdXfTGvrxMwEwmxes+zgSm1l+ZORf3uDoHvOvFW0RaASVy3iguFKBfLeOLGb9wukpO6zkl8X358T3d4RSfW7S4NDfQsB68WmkSTM2w8zsaqZkobule2/Dspf/qMfirkWycQK8yal4prOPcZVwZhhYRygfydjMCq+9j7NyHmMBB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jvZ+xgWX; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38231e9d518so677162f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 06:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732197896; x=1732802696; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CkzzeXPDV0OuvJPIPbzu0+X4+yJU9K+UT0DlmrNc6SA=;
        b=jvZ+xgWXprQVZ4pTiH16PQu9Bm9r6JoLBxahdcktq4EWGuzzuuV7YcMxZ3Vwsb7hFg
         1KtKp/x+ksKdo9mpevQD3YOfQ6a7fXggQqavj5fZOUP8+NDi76X98WQAjAiVY1mNBelA
         wIbnIgQUBqKJ3DLk7wja/HGRQ28dTUn07eSV1r9ADt6yaIldQO9B8sybY0mM/26SHjLJ
         4sk2v0AZfAFjBk46ifjZzECFQessreAIogtZBKBNkN9zuWkl9rqU/ajcI3FEgEgpIrhL
         GnqNeI9p+hGYZJB6KRWyQsQV80aKa+xaC1k/bD60HxMquzqrPmWGQZ/Ak1Jo/FGb7ULK
         NAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732197896; x=1732802696;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkzzeXPDV0OuvJPIPbzu0+X4+yJU9K+UT0DlmrNc6SA=;
        b=F6hEZxIKNOVN/Z3ot4rlYCV2WBbbzb6v/QvosfBEviKSHP33WW+XdAPI7bYCWWx+AV
         pYPlF8j3t/g2L45y8bpXhkUppEBVnbwSUNCHJjjjdpzrmfikM/8pM8x1Hk7QO5fWhp0/
         hB2F8KdO9EEGmlpI5xRgNFfz9be/+yCEbIfnQZO8HXF8KxjEwI4G1sjAazBJXi8izPCZ
         1MHWc7eYLnxwnzLbQ3JlL7KbRq8GL61SvrZnzlm6Opf+rdf9UD2Uo33gp04XY+FnqDdp
         Ye6BfHUV/sE+KqYbTEDNM+QdU0vQ6DR4k5VedV75hyh0R3uPOSHda1EEfBJjOUBemJhU
         qBQg==
X-Gm-Message-State: AOJu0YyJMrrR8QxWmvjhLdtPttYtR+bQkyenLGx0vxFKgIM8UQRIKv1N
	EesmUEhzPkGC45mWgQBTkcjXXU32YpS0nGwgtIfEPNCfBRh/CyrV+SRIsCIv2Qg=
X-Gm-Gg: ASbGnctmsjmuRzo71VNjLlbeyYxlI50wQEH3syiUm0BBAXxj7eyxukqPxLDJJaAp2l7
	TMVr6/ot3iC5qdE/Wkld3nz+MoYkErVUOnVagByvqf+4EtTlOIrKi+3supX3sDh2I94iW32GVaw
	pY+B4peR5JySLt+V+yNDN112+KFl9BC/ga84i83PGflhbULvoZigakksENm4vh4LgVXYLC6Ymzd
	Kf88Dc5eJotNFx+EuW+MTwMHa/lMHIHvgo3LVAGQjn6LJpmPdoqOHD3+HV80t8JiNIPQtjm0bZX
	xLc=
X-Google-Smtp-Source: AGHT+IGOOsfIl1JAjgf7kDd5oywzOAtVaQvQvXfPLIcz9cDfRlZE0jlhvEPwC9EtW28TdNTPrOjdyg==
X-Received: by 2002:a5d:64c6:0:b0:382:442c:2c54 with SMTP id ffacd0b85a97d-38254afc65fmr5321357f8f.28.1732197894429;
        Thu, 21 Nov 2024 06:04:54 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825490c29fsm5083350f8f.32.2024.11.21.06.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 06:04:53 -0800 (PST)
Date: Thu, 21 Nov 2024 15:04:52 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"simona@ffwll.ch" <simona@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, William Qiu <william.qiu@starfivetech.com>, 
	Xingyu Wu <xingyu.wu@starfivetech.com>, "kernel@esmil.dk" <kernel@esmil.dk>, 
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 3/9] drm: bridge: inno-hdmi: add inno bridge driver.
Message-ID: <2ujegy7cw4kka4j6rrjf7fsigk7p4hw4rkitmp4rzt33qnlhv5@c6exsgaou5x7>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
 <20241120061848.196754-4-keith.zhao@starfivetech.com>
 <oabm3ahd6vyeirjbbmp74w3tldqkcy3de7u6avio3ohfzfns2t@vfcvn3rl23xm>
 <NTZPR01MB10504FAE3695BF54DADB7B54EE22A@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aiaflkf5aq5b3zo3"
Content-Disposition: inline
In-Reply-To: <NTZPR01MB10504FAE3695BF54DADB7B54EE22A@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>


--aiaflkf5aq5b3zo3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 3/9] drm: bridge: inno-hdmi: add inno bridge driver.
MIME-Version: 1.0

On Thu, Nov 21, 2024 at 02:06:20AM +0000, Keith Zhao wrote:
>=20
>=20
> > -----Original Message-----
> > From: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com>
> > Sent: 2024=E5=B9=B411=E6=9C=8820=E6=97=A5 22:56
> > To: Keith Zhao <keith.zhao@starfivetech.com>
> > Cc: devicetree@vger.kernel.org; dri-devel@lists.freedesktop.org;
> > andrzej.hajda@intel.com; neil.armstrong@linaro.org; rfoss@kernel.org;
> > Laurent.pinchart@ideasonboard.com; jernej.skrabec@gmail.com;
> > maarten.lankhorst@linux.intel.com; mripard@kernel.org;
> > tzimmermann@suse.de; airlied@gmail.com; simona@ffwll.ch;
> > robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > hjc@rock-chips.com; heiko@sntech.de; andy.yan@rock-chips.com; William Q=
iu
> > <william.qiu@starfivetech.com>; Xingyu Wu <xingyu.wu@starfivetech.com>;
> > kernel@esmil.dk; paul.walmsley@sifive.com; palmer@dabbelt.com;
> > aou@eecs.berkeley.edu; p.zabel@pengutronix.de; Changhuang Liang
> > <changhuang.liang@starfivetech.com>; Jack Zhu <jack.zhu@starfivetech.co=
m>;
> > linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH v5 3/9] drm: bridge: inno-hdmi: add inno bridge dri=
ver.
> >=20
> > Hello,
> >=20
> > On Wed, Nov 20, 2024 at 02:18:42PM +0800, keith zhao wrote:
> > > +struct platform_driver inno_hdmi_driver =3D {
> > > +	.probe  =3D inno_hdmi_rockchip_probe,
> > > +	.remove_new =3D inno_hdmi_rockchip_remove,
> >=20
> > Please use .remove instead of .remove_new.
> >=20
> Thank you for the clarification regarding .remove_new.=20
> I understand that it's a relic and that new drivers should implement .rem=
ove().
>=20
> I have a question. One of the changes in this patch is to rename some fun=
ction interfaces.=20
> The original code is like this.=20
>=20
> struct platform_driver inno_hdmi_driver =3D {
> 	.probe  =3D inno_hdmi_probe,
> 	.remove_new =3D inno_hdmi_remove,
> 	.driver =3D {
> 		.name =3D "innohdmi-rockchip",
> 		.of_match_table =3D inno_hdmi_dt_ids,
> 	},
> };
>=20
> Rename inno_hdmi_probe and inno_hdmi_remove
> struct platform_driver inno_hdmi_driver =3D {
> 	.probe  =3D inno_hdmi_rockchip_probe,
> 	.remove_new =3D inno_hdmi_rockchip_remove,
> 	.driver =3D {
> 		.name =3D "innohdmi-rockchip",
> 		.of_match_table =3D inno_hdmi_dt_ids,
> 	},
> };
> Based on the principle of maintaining consistency,=20
> does it(remove_new) need to be changed?

If this isn't new code but moving from somewhere, don't change
=2Eremove_new into .remove in the same patch. If you want, fix that in a
separate patch then.

Best regards
Uwe

--aiaflkf5aq5b3zo3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmc/PfgACgkQj4D7WH0S
/k5i8wf/XcvUCC2rVJqEZtMZvKrDI/ZGnH8FSDI5ZF6TzlFZ2mmT+IW/9fosKPzw
XThFPhs4q3eRJZEujqjr+ChJ7LAlLRWGFuEQtogLtwLs6PjwEtyjGNrwGbaMwGDu
GVjtp1zsGgG7utTfoUsrvnoj9ZYCMmdiHM/gwUiBMGusJHgpSRTD2M4bIAbduV8m
U6vO11pTdh0KSZgBHp4Rpj814BVjTU3prIDttOs/k9Qhq4B05ZAIOXYig/+g1k56
o+cMqaeeXMHNLE13BKRg37xkzfr4+lQX1RmfX1laQXEUhxO9Fzumyh3+NYgqZ3Rf
2JaY8G8iTmPnrSNSVtdrzpmI8Ad7OQ==
=3HIb
-----END PGP SIGNATURE-----

--aiaflkf5aq5b3zo3--

