Return-Path: <devicetree+bounces-125080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8920F9DAA83
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B1D71675E5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E5820010C;
	Wed, 27 Nov 2024 15:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s3lwgQoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCBB1FF7C6
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 15:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732720370; cv=none; b=K1UvUFh+0mqI70s9Rijzn0gEYgoP3dXCC/tsgdEfIiQnDgkjpEiMPxBMK77md9DzFry+NkNnRh+Xmv1sm0ZKiwzkLZg1TQ8V0eu6kTdC5L0f5hwSGCgyzHKrGhmKLjPcMl4CvhceeNK3FUHV6VwAm8fjVHBcX96ZEl0lodqbNgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732720370; c=relaxed/simple;
	bh=x6c5VIHxVpMlXdEIiymtKmaXyBEx/vSYzp0bZjEyPlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hyzO9FQN8RHCYVqr7kRI4rVwoBj4b/2ZG8XxSGqM9rhz+rtmBi5NRI9FZyEHkWYnX+tD7lUQPSoLZJwGbI51oYAqQXB/U1ASlW5P4EelDZgHWZ8ziz85UADHxWeV8nMgOgowpqhZ8Va6GN3mSLRo2BcGv1MMeNh1VfW7tNbkZeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s3lwgQoL; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aa5302a0901so576330866b.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 07:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732720366; x=1733325166; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lunyQSAckapiC31CgDXkEkvLlOqTugyucRG/i0qRr2k=;
        b=s3lwgQoLUyXBmyhiSoPwRyCGtOCR44ABLS6fnH82Wj+v8Qvkp8fX47Y9VxlhBSGoVV
         ny0FXNqJv+Xk3cqtnhTkc3WnoyrKuKtZpZOBB9tx3rgm8SQS0NiPgAgMbAhZKzXCXoBx
         6eN861x7736kG2JzFmgzEagn/Yl0teY5kt/X2Fe0ieZKTZGJWAZ2rFwtiGNetb6SdPBX
         RzY4VdTzo/GgJbec3BKwY1pTNbLic5x+pj0JVoqcLXofXOcbtQXePSRbnzxYMhHjSFQn
         G6SnNEhVXHL111kAnidwtvaalxJbMjzDDuHMGhPKJH7tFNs8BX3X+2VKlbWCYMCEeN7S
         HNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732720366; x=1733325166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lunyQSAckapiC31CgDXkEkvLlOqTugyucRG/i0qRr2k=;
        b=mTbG8oawAEmTKMRbyMh3Km3W6jQYfElX1+8nkGp1zF3FeGNBvKTsKDwmsboafNZB/l
         KtltfAZgDCuKFte27KGEh4C6yttjqT6EtorlxiHoZBWCVckJDzvhocdZRb54nFEtQULE
         5+UqCuOiHlxlCr2Rbn6ZLaAXMorUsiFtbLfOCrgLWVKGuaQrSF4EScVl2L+IuSgTK7n2
         ZSqkKgYbXQ7xGE9FFDrHBk7ASptPCpcbhcfiXTaLAzMEDAiJ2Fe48Yos9zwQUZMkf8Lr
         seQ00Ta6kIypFrlExY3Sqx17UiNExLFnCR3M+2DfZ3qTb+q/2BGML+sool44Orxc8toA
         HXOw==
X-Forwarded-Encrypted: i=1; AJvYcCXFYOh+9lcNkveQctC6LzugdaUt2Bkp6oZHaK1opB2frrbpNto4i7s0Ua/6ie2e9Ktt0rh5Ve0NdnDu@vger.kernel.org
X-Gm-Message-State: AOJu0YxAPPDCyHZzcsOX7h73FMi8H0cs/+P8Ihd63DnJG/hgFKF9lDkR
	EC8LO4Rh/1gsUYc6V6zw0lB+d+Zj4kpUlMeVehBYT26CZfFeaWCUeWFtNJuhSI4=
X-Gm-Gg: ASbGnctY0Cu3CnEKXuQXqr5qqmXMuMTP7reuIamn95Bi2aCtw2S1cDRIJ/B7TDmTThn
	ZsCJXnbpSP+jJeR0PjP2O1XuHUGwHFk/w0Z+5w5aQ9ChKQBPX3tO0qrIIoLR39KJkjA4oxID6ep
	eL89vAE70JaENUPluB7C/Lqt9zrZvoyxvLV6TSbBiodJ7IV8N7aupTMfQpvkyeiZphvC1kH9NQ0
	WaEpw6OR6EFZJDqWpOlHBJxoEOJ/VtS8Nno+6o4moUgzIRgQh3CVBhiSn/pecRAagDR1caKCLzs
	I1sZ88cK4CbU5p47vwBLlLDE8sJcl5yPpxKNh2U=
X-Google-Smtp-Source: AGHT+IE88soD36+5fMlDzdPBat39TSzQIkyBOXqPqrgiXNrXFYQwAAZNztQw+OzNrfI6gzfVx7i1Ig==
X-Received: by 2002:a17:906:31d7:b0:aa5:3232:215f with SMTP id a640c23a62f3a-aa580f562a4mr209872666b.27.1732720365706;
        Wed, 27 Nov 2024 07:12:45 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b54d627sm716908966b.132.2024.11.27.07.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 07:12:45 -0800 (PST)
Date: Wed, 27 Nov 2024 16:12:43 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alisa-Dariana Roman <alisa.roman@analog.com>, Renato Lui Geh <renatogeh@gmail.com>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, David Lechner <dlechner@baylibre.com>, 
	Trevor Gamblin <tgamblin@baylibre.com>, Nuno Sa <nuno.sa@analog.com>
Subject: Re: [PATCH v4 03/10] dt-bindings: iio: adc:
 adi,ad7{124,173,192,780}: Allow specifications of a gpio for irq line
Message-ID: <7c3wagunw5ctglrpg5wlqeqmljxn2zwvdexcns7iyhywfuxnuj@6orvizlvqxex>
References: <20241127145929.679408-12-u.kleine-koenig@baylibre.com>
 <20241127145929.679408-15-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="byj3eks5nwhlojbn"
Content-Disposition: inline
In-Reply-To: <20241127145929.679408-15-u.kleine-koenig@baylibre.com>


--byj3eks5nwhlojbn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 03/10] dt-bindings: iio: adc:
 adi,ad7{124,173,192,780}: Allow specifications of a gpio for irq line
MIME-Version: 1.0

On Wed, Nov 27, 2024 at 03:59:32PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> For the AD7124 chip and some of its cousins the logical irq line (=CC=85R=
=CC=85D=CC=85Y)
> is physically on the same pin as the spi MISO output (DOUT) and so
> reading a register might trigger an interrupt. For correct operation
> it's critical that the actual state of the pin can be read to judge if
> an interrupt event is a real one or just a spurious one triggered by
> toggling the line in its MISO mode.
>=20
> Allow specification of an "rdy-gpios" property that references a GPIO
> that can be used for that purpose. While this is typically the same GPIO
> also used (implicitly) as interrupt source, it is still supposed that
> the interrupt is specified as before and usual.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad7124.yaml   | 13 +++++++++++++
>  .../devicetree/bindings/iio/adc/adi,ad7173.yaml   | 12 ++++++++++++
>  .../devicetree/bindings/iio/adc/adi,ad7192.yaml   | 15 +++++++++++++++
>  .../devicetree/bindings/iio/adc/adi,ad7780.yaml   | 11 +++++++++++
>  4 files changed, 51 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
> index 35ed04350e28..9f34a055fdf1 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
> @@ -37,6 +37,17 @@ properties:
>      description: IRQ line for the ADC
>      maxItems: 1
> =20
> +  rdy-gpios:
> +    description: |
> +      GPIO reading the =CC=85=CC=85R=CC=85D=CC=85Y line. Having such a G=
PIO is technically optional but
> +      highly recommended because DOUT/=CC=85R=CC=85D=CC=85Y toggles duri=
ng SPI transfers (in its
> +      DOUT aka MISO role) and so usually triggers a spurious interrupt. =
The
> +      distinction between such a spurious event and a real one can only =
be done
> +      by reading such a GPIO. (There is a register telling the same
> +      information, but accessing that one needs a SPI transfer which then
> +      triggers another interrupt event.)
> +    maxItems: 1

Rob commented to v2 which I missed to pickup:

	Don't need '|'.

	Otherwise,

	Reviewed-by: Rob Hering (Arm) <robh@kernel.org>

Dropped the | now in my tree in case we need a v5. Otherwise I'd ask
Jonathan to drop the |s when applying. I probably would have dropped the
R-b tag given the changes here (i.e. adding the property to several more
bindings).

Best regards and sorry,
Uwe

--byj3eks5nwhlojbn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdHNugACgkQj4D7WH0S
/k4iJQf/RYWoJD8PbJfvIupMh61B8SFyDjMhjlrPI75Bw4pKpvbYKtvnRwnTMOkX
Sh9b6US0lKJzyPFP8YFqFIrOB4st8cDKexAIplXLJ8buVIFa2UDj99uTXYnz7Lk1
yzevt1ZJdTGfkCRJ7o/xwv2uCqVqAi57rxxqTPHncyOuMvaifAfdQuV7cSQaZ2lY
W04d04cwFDochdFkueAt/+N3RYU4RNxE32/hrAvCWm2fxf8xhJUPDZgAzfjPEOJ+
TH/NJULtJlYlty1CWL6M5KR5IOMRFXzMbEl2pKVOK6M9P4IahDZrA5VDXnec/h70
utfplKv7YYbNjxlvZ2tW/yRhK56oWw==
=NGh/
-----END PGP SIGNATURE-----

--byj3eks5nwhlojbn--

