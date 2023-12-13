Return-Path: <devicetree+bounces-24822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E60C2811555
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75D611F21415
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B592EB1B;
	Wed, 13 Dec 2023 14:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KEqEmJj4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C053EB9
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 06:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702479365;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=seLSmd4NaxAGKV9tJbzWfT8nVms62NbVrReJ4pEC1u4=;
	b=KEqEmJj4XjOLl50lZ/YtQ2WdTMP+XfYP/wrNbSpCTfceP7y/0AhzqbN8aLL9BYJc2UHip8
	8tLnUBSd8G85NT9omOzG1Drp88c7blgmrXVR54J/qMZXD+5+HGqF1qAjDoxkBrWOOyPa2T
	f+PJUvb5oPqFYw3xKQpr8QbxSltHX/g=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-85-f6cjZ3VONwOLsUdEe0-ejQ-1; Wed, 13 Dec 2023 09:56:02 -0500
X-MC-Unique: f6cjZ3VONwOLsUdEe0-ejQ-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-33608afc4daso2657690f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 06:55:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479358; x=1703084158;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seLSmd4NaxAGKV9tJbzWfT8nVms62NbVrReJ4pEC1u4=;
        b=bmnILskI/mYLVfmeSA40WK7p7BlJN0ivlC1wEJm873S3ZriOkW5RmS2mTLi4eORHza
         bIsvKs7YOCNBB/n1BYkstzGRhtstpdt0Aq/ueuh+UzezzNlUBeID0NDRcNLRQg35V98A
         mov0ctzum3nl4aPPeQVKjGMkVnHkt1MLWTI4op90ApiQ0rFc+jiGl6nxbpZ9K4ym8hXN
         T7rMzyzSYIUApqgy89C9/0AJIjtZq/+nBeAydo91MzQkTcbAeaNBSwYuBxqw6LYpAICw
         SbfQg72GyIolzz0hbTCkcd+lSjx/w+jQcnpP9IP3euxPJgVuQZ/pXt6zeaY2KvR4IV2i
         gmSQ==
X-Gm-Message-State: AOJu0YyjMPF0Mg1I95MYFV5XSbUTapTTn/BcnMa2/mxlCt/Qa6yCYTMr
	nNfd7wmYVXW9JTbK0V1dyYcT90z+AGIQk1H48rKWn9ouLGadaj4qojIpM67fmPlmTZa+kA9bu0T
	QjXWiCJdFh0EWxN4elpEbKw==
X-Received: by 2002:a5d:5643:0:b0:336:4196:b861 with SMTP id j3-20020a5d5643000000b003364196b861mr509843wrw.11.1702479358494;
        Wed, 13 Dec 2023 06:55:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHx9WUns+c31gzuLj/TybdHPWHND+pSU+GNTIKZApMqfbmTpuviAuYQQ6FI/50xHfhicnxj1A==
X-Received: by 2002:a5d:5643:0:b0:336:4196:b861 with SMTP id j3-20020a5d5643000000b003364196b861mr509819wrw.11.1702479358176;
        Wed, 13 Dec 2023 06:55:58 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id c4-20020adffb44000000b003362d0eefd3sm4125363wrs.20.2023.12.13.06.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 06:55:57 -0800 (PST)
Date: Wed, 13 Dec 2023 15:55:57 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Donald Robson <donald.robson@imgtec.com>, nm@ti.com, vigneshr@ti.com, 
	kristo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, frank.binns@imgtec.com, matt.coster@imgtec.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, konrad.dybcio@linaro.org, arnd@arndb.de, 
	neil.armstrong@linaro.org, dmitry.baryshkov@linaro.org, nfraprado@collabora.com, 
	m.szyprowski@samsung.com, u-kumar1@ti.com, peng.fan@nxp.com
Subject: Re: [PATCH v2 0/2] Enable PowerVR driver for TI AM62x
Message-ID: <zq3qtz7rherh2fp2yoe6ail5yvyfkfi46i7fqcbecdagflyj4x@htcfxyhunewx>
References: <cover.1701773390.git.donald.robson@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p53zjzgmum7iorxr"
Content-Disposition: inline
In-Reply-To: <cover.1701773390.git.donald.robson@imgtec.com>


--p53zjzgmum7iorxr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nishanth, Tero, Vignesh,

On Tue, Dec 05, 2023 at 11:39:31AM +0000, Donald Robson wrote:
> These patches enable the new open source PowerVR driver for TI AM62x SoCs,
> currently the only one supported.
>=20
> Changes since v1:
> - Added patch 1 for arm64 defconfig (requested by Nishanth Menon)
>=20
> Donald Robson (1):
>   arm64: defconfig: enable DRM_POWERVR
>=20
> Sarah Walker (1):
>   arm64: dts: ti: k3-am62-main: Add GPU device node

Any chance we can get that in 6.8?

Since the driver will reach 6.8 as well, it would be a bit of a bummer
to not have it enabled anywhere.

Maxime

--p53zjzgmum7iorxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXnF/QAKCRDj7w1vZxhR
xVqrAQD6EdMWC9m6qFxV3KiMi4/C/MPkTHRdno81R57dNuGj3wD/fwGlEnklNRir
py8Ke+Q/cAOVgLS+I3Yt6fBTOsjxIgM=
=LdLH
-----END PGP SIGNATURE-----

--p53zjzgmum7iorxr--


