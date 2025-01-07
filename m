Return-Path: <devicetree+bounces-136075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22447A03B8E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BF133A548B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD551E3DF9;
	Tue,  7 Jan 2025 09:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z8ufki5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A290B13B58D
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 09:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736243615; cv=none; b=r8d/cQu1MN+/Yt41D5QHP1D5AHIaNwHeVF6Fe7cEA3FR8Y/13+d4PdDFH8aNrZsEh7xoEUPGpOrImGJyZFBz338L379yO6exCTwanmmSFf7jdx3E38gK5tlJrbAGlgtsPA/EZfSWPd2hJY0fPBsilVHnycxEJ1e6L3ky+4I6Qnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736243615; c=relaxed/simple;
	bh=PuYCglGBGBf8/cSXmff9wfrp6dccIU1+L5fPfpHdlc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QptQjptHms2APxnIsmt8Qv2pPD9XjRmjhxiE8jdo65IwLw1qOMRzAlUTewWPT+jWMOMeyvxC/NerIZ8H36FMCWuyIML86jQVhIu7wX870NZEsMZ1RB7KnPNHpwWLzFsvUd4zqJoZPpT6EObt/MiWKYTa9JL2p6AJSdjfKKjur+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z8ufki5z; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436202dd730so109410215e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 01:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736243609; x=1736848409; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HfOXeXixgxr/lDKJT/RAbwwwphKuJpVBpnVCZ3E+HkQ=;
        b=z8ufki5zg4heJdRgOI49PfUAHd6nrIPyEN56C+iRSQshX/HDiDslneZZoCY1/9Y7c3
         +nzftIGHpnbCxFtiCPJFXaWopgBXNVfoy7yyQMXURPs1yqkYj2ypBQMqrsIvmV9dB6rU
         u1hBmmg/cy+KoycSc73wpPGgcchgy88GHjsBDVbBAbD6YLKlXtRGqg5qdN+ILeIifvxf
         RVUUEjCf6av/4feVsdzx/OMenhxLXpIpezLxtAJD9YqEfm50aWdnDu3ns14iN5/zCRFo
         YzbpfEU0c/EbYib+yAPDgSPpWwRnwxVXcZngEkpCvqa9VuPknf8NxtkF50lnMXrBq+6y
         68CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736243609; x=1736848409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HfOXeXixgxr/lDKJT/RAbwwwphKuJpVBpnVCZ3E+HkQ=;
        b=whMyPXh+ZKRwQ4/h1zapqqLqBkveXm5pRzQX4fG6w1rLYQuv0XRu/gJOKEdERRg0vP
         hsU+mmDAEvKm/1N283HUd2tMznZcYJcIE6e4cYq6Us0cNiQpgyxmINBdgbW2+zzaYfoi
         jVLT2Tt3gPFZkyM1dNj8ixg5EhwiO3cneuN+6jS9YbgA0Bi03Wy/KsiVy2MnyAg6oH8M
         4un7N3LoM7DPfSobzoV4vwDXuIzF6Upzg8l9MBc8Svs1AHyyAvGvO5dYbrYjswp9WcOq
         OYyMGPC6AeWt/dY2bauSqLR9eamW37Re4JwB4BDOxKIKNnir76whM99i0oPoks0frJLq
         HYfg==
X-Forwarded-Encrypted: i=1; AJvYcCVM/WNUeP/Vl1QwXd2gFpRjW+NAhX1x3auwjXaXGLQjAMnUOrgzqgOInHvvc/F/gbY5pWe9BaJzbbMO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt7SJDqpcRTleNg5VAHrmSRfhrmUeDdYlICyyHd9iGscf0vw3I
	fWeJyXDgv0B2I2Rw2UaJlYF8n3zfSgqFY2kxD55Yka11C+oVYEsIQ66BZ4Qh7rQ=
X-Gm-Gg: ASbGnctZCfODiEUD5BvP64u83SSLMkZR2SLeP75eFJOoG0FvYG2BQQw05eVVd9THWeO
	m7dKpN9hWIiydOUXWY8H0g2+MApfJD3bGPZ8N8JJ+ZDHr5S6kXmyicgG1PJe1UOitDEZpji9igu
	ZzN7biDaueDmjiuObrFIBXWmuqRPcFLF6LlA60G/GAghFV9Gk3xlzX8aDtcodzoUysvUA0+XQTI
	iOVALXZizt4yh7B5OItuW5NXGqpeOVcYCtorXCriyiBYNHpnrDt
X-Google-Smtp-Source: AGHT+IHvX1OshrfmD6p1l0+Jh61zeJh68TXBs8zHN9+1raYn02+x8hZ0AZB5VEOINJMVZA2d+QJVZQ==
X-Received: by 2002:a05:6000:188d:b0:385:f7d2:7e9b with SMTP id ffacd0b85a97d-38a221f3785mr48240940f8f.30.1736243608128;
        Tue, 07 Jan 2025 01:53:28 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:3b5a:db2d:b2b7:c8b4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8a6abesm49944076f8f.90.2025.01.07.01.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 01:53:27 -0800 (PST)
Date: Tue, 7 Jan 2025 10:53:26 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
	Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	Simon Horman <horms@kernel.org>
Subject: Re: [PATCH v6 1/7] dt-bindings: can: m_can: Add wakeup properties
Message-ID: <d6hukfwjqgtwqjgvo65icmpzbm32ob6n7ehrzlywwomjbdn5lg@2wm53244pszz>
References: <20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com>
 <20241219-topic-mcan-wakeup-source-v6-12-v6-1-1356c7f7cfda@baylibre.com>
 <20241225-singing-passionate-antelope-88e154-mkl@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pwtr634u7r3uhzqt"
Content-Disposition: inline
In-Reply-To: <20241225-singing-passionate-antelope-88e154-mkl@pengutronix.de>


--pwtr634u7r3uhzqt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 1/7] dt-bindings: can: m_can: Add wakeup properties
MIME-Version: 1.0

On Wed, Dec 25, 2024 at 08:50:17PM +0100, Marc Kleine-Budde wrote:
> On 19.12.2024 20:57:52, Markus Schneider-Pargmann wrote:
> > m_can can be a wakeup source on some devices. Especially on some of the
> > am62* SoCs pins, connected to m_can in the mcu, can be used to wakeup
> > the SoC.
> >=20
> > The wakeup-source property defines on which devices m_can can be used
> > for wakeup and in which power states.
> >=20
> > The pins associated with m_can have to have a special configuration to
> > be able to wakeup the SoC. This configuration is described in the wakeup
> > pinctrl state while the default state describes the default
> > configuration.
> >=20
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>=20
> The DTBS check fails:
>=20
> | $ make CHECK_DTBS=3Dy ti/k3-am625-beagleplay.dtb
> |   DTC [C] arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb
> | arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: can@4e08000: wakeup-sou=
rce: 'oneOf' conditional failed, one must be fixed:
> |         ['suspend', 'poweroff'] is not of type 'boolean'
> |         ['suspend', 'poweroff'] is too long
> |         from schema $id: http://devicetree.org/schemas/net/can/bosch,m_=
can.yaml#
> | arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: can@4e08000: wakeup-sou=
rce: ['suspend', 'poweroff'] is not of type 'boolean'
> |         from schema $id: http://devicetree.org/schemas/wakeup-source.ya=
ml#
> | arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: can@4e18000: wakeup-sou=
rce: 'oneOf' conditional failed, one must be fixed:
> |         ['suspend', 'poweroff'] is not of type 'boolean'
> |         ['suspend', 'poweroff'] is too long
> |         from schema $id: http://devicetree.org/schemas/net/can/bosch,m_=
can.yaml#
> | arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: can@4e18000: wakeup-sou=
rce: ['suspend', 'poweroff'] is not of type 'boolean'
> |         from schema $id: http://devicetree.org/schemas/wakeup-source.ya=
ml#

Thanks, the bot also notified me about this issue. I wasn't able to
solve it without updating the dt-schema, so I submitted a pull request
there:

https://github.com/devicetree-org/dt-schema/pull/150

Best
Markus

--pwtr634u7r3uhzqt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZ3z5kgAKCRAkjLTi1BWu
P1hgAP4voovKy4zR8WCkwL+8S3ZCowjZyknLvSjGcbXBU0z0owD/aFzfe3ymIfCD
zi6dOgCGDyI9zo5QxMWmEvkbRaXn1ww=
=uv0O
-----END PGP SIGNATURE-----

--pwtr634u7r3uhzqt--

