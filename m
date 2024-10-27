Return-Path: <devicetree+bounces-116216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1489B20EE
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 22:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22D31C20BEC
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 21:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DB8188010;
	Sun, 27 Oct 2024 21:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XYIcOl4E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD00F17DFFD
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 21:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730066028; cv=none; b=INi7s/UPfAaxib8sUk9R3bE/xVxtYU/f6Ifl80nHINwkUFdc+eo05t1PSCL+XoypJSknuLH4bGkvi/wUCB/2JO8CAaJ10wcx9/P6sqyVJDM/t0Sz/2JNrRnMOUe0IApd3kDURNb1HzLLH0HNjbYnTEM3R1xyVCJtzVXdgrL33pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730066028; c=relaxed/simple;
	bh=OjtrTlRrHwjkjhLtou8yqcPKyqJaGc7vJFCEYSQkZoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DhcLQCU72UtKKBG20esFMrhYZun8k1pwSyoj+UBDlmAXDnk77pH1wlvH/PO5oZymXy5Ibv9kCNCjKJ5b0Q/IuKlUXVgtb0WyyVCDHMyoxRaLksx/Krbxjop28muXE6C1q7RtaLKhTgykTGwdniBk1m1NX6WmCJ+es19q9/1amNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XYIcOl4E; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5c96b2a10e1so5778303a12.2
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 14:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730066024; x=1730670824; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OjtrTlRrHwjkjhLtou8yqcPKyqJaGc7vJFCEYSQkZoA=;
        b=XYIcOl4EMXroJHRnPPEr8yMdXChwKJfLGaUpxD6+gJ6yIouWbC0misETLSOhaqKXt4
         t9KDWysRlSK/6WjItbr1mFj2DhIh9+Wc79O3k91HpFgcd07vf+Aakkhpl/0Q2SJ8nn1t
         /NWcAOiKxsTUZv1n/VXgdstGf0TvcwYA5Mg0Kn+4+CN0C7D3Xz0naH++OkhKDAeRL+87
         uTpo940bOkgfOQ436f4kmfWFT/TopdU8Abr4MwHL54066C/S8EbQblyrk2/nIt+P2rLv
         D/A7WUy8FYz2JKVqURaaUg5eLXW91bMDMAwb9fQr8KdnG8HPAq5TuOKYJ0fEzwffNiqv
         fqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730066024; x=1730670824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OjtrTlRrHwjkjhLtou8yqcPKyqJaGc7vJFCEYSQkZoA=;
        b=chUVzPZdoskvFBk+Ld+NrmTvo+rTMiJgmtOG0JLhcLIveV9FgWWI/f9GSTssCDnrYr
         3vg6l/uEUPsPel6GNavn9qu8Qr+ogZLw2ZFqlpwWuczHMJsz0jU/TR8JpeZkhmJkHkWi
         geGWca1vFLbvNEuwLyzDG9RiaBJVMK4115wdwVoQpqrBltcRj1Jo/ahiFzlpZ6y85gQr
         tf6HHwwtHOtt62iFE/8/PG8fzoFWFLP7KzOx8wHtwL2Hi6iqv03RxupiLIEEzugZT4yG
         +673cSTL2W+41mJQv6E0EsEkIVdEV4Z3/O8i7IgF8NLW4qnBehZY/kB8u/a3bBE8DxsU
         E4bw==
X-Forwarded-Encrypted: i=1; AJvYcCXAnXgtMK6otULKsgY7mNfBxVIk9elTygDVeR+4HtpqE+lAAaI9l7Gieb1tlcn8uFQMqb3F8PeXy/Ol@vger.kernel.org
X-Gm-Message-State: AOJu0YyGIVgdTD9pLx+hPDxL4riTgsBoOKqj9ZQkMmwuMQJ1nE1cpcDM
	ksIWK7n+2nVlUlstGKdG54DNI2OzWmO9NXke1H89cqe6gsagBAfrov7faMOKPas=
X-Google-Smtp-Source: AGHT+IF89h/ZX9fMrHPl9cL3b7Sj2XHRma//tzVot2j6TidYpIsVxzo8OB4E5z7eFeLpD9a7pRM+GQ==
X-Received: by 2002:a17:906:c112:b0:a99:f71a:4305 with SMTP id a640c23a62f3a-a9de5ce4681mr702812266b.18.1730066023988;
        Sun, 27 Oct 2024 14:53:43 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:7909:9635:32a2:1dee])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b30c7ae73sm312736966b.164.2024.10.27.14.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 14:53:43 -0700 (PDT)
Date: Sun, 27 Oct 2024 22:53:39 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Dumitru Ceclan <dumitru.ceclan@analog.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: iio: adc: adi,ad7124: Allow
 specifications of a gpio for irq line
Message-ID: <e557quqqexisgj423ayhq6wntzx567dikaucckjnduvhvp4esw@bvvg3zcctnox>
References: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
 <20241024171703.201436-6-u.kleine-koenig@baylibre.com>
 <20241027115409.2de280dd@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c3v52yik3xydwuad"
Content-Disposition: inline
In-Reply-To: <20241027115409.2de280dd@jic23-huawei>


--c3v52yik3xydwuad
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/3] dt-bindings: iio: adc: adi,ad7124: Allow
 specifications of a gpio for irq line
MIME-Version: 1.0

Hello,

[dropped Alexandru Tachici from Cc:, the address bounces]

On Sun, Oct 27, 2024 at 11:54:09AM +0000, Jonathan Cameron wrote:
> On Thu, 24 Oct 2024 19:17:03 +0200
> Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> wrote:
>=20
> > For the AD7124 chip the logical irq line (=CC=85R=CC=85D=CC=85Y) is phy=
sically on the same
> > pin as the spi MISO output (DOUT) and so reading a register might
> > trigger an interrupt. For correct operation it's critical that the
> > actual state of the pin can be read to judge if an interrupt event is a
> > real one or just a spurious one triggered by toggling the line in its
> > MISO mode.
>=20
> This text should note that this is a limitation with the interrupt contro=
ller.
> The IRQ is disabled when those reads are going on, yet the controller is
> still detecting the interrupt and reporting it on reenable.
> I'm not an expert in what the kernel IRQ subsystem requires so maybe
> this is a valid implementation.

This is even the saner option and a controller not triggering might miss
irqs. Consider the process that triggered a conversion and then calls
enable_irq() is preempted long enough that the conversion is already
done when enable_irq() is called. The completion would just time out and
no measurement reported.

> > Allow specification of an "interrupt-gpios" property instead of a plain
> > interrupt. The semantic is that the GPIO's interrupt is to be used as
> > event source and reading the GPIO can be used to differentiate between a
> > real event and one triggered by MISO.
>=20
> This sort of hack is a bit nasty and if we are going to do it we should
> allow for double wiring - so to separate GPIO and interrupt pins on the
> host wired to single pin on the device.
>=20
> The binding does that by allowing both interrupts and interrupt-gpio
> but we need to make that explicit in this text. Arguably even when
> they are the same pin the binding should treat them as independent
> and the driver should get the gpio from one, and the interrupt from
> the other.

This would also need a code update because currently the interrupt-gpio
is only used if no interrupt is specified.

> I also definitely need input from Analog Devices folk on this series.

Good candidates to comment are still on Cc:

Best regards
Uwe

--c3v52yik3xydwuad
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcetmEACgkQj4D7WH0S
/k4IGQf+Pxt7156oXJeml6fjaYcphR2TjbZCE38KChIgASXJ1+B9vVK2+saId70V
DZrc8TWYLeILBrUcdQqQt1CqItEy8JH+9P+W/nVOMlavVYNTcxGdnhTXZugLL0Ye
tKogdt0z1CjW2oFP1b1wdLlH787m0hskWtdFnLYtaMCluhNotuP0sJ8I/yWEZFLl
FZEuagYpw5KC8jAcofz2SorgC5OKIbBpaFMibNElIs4jN9Gj97i1Tsqx4WGmX/uJ
6h+M+vgwofaX0pYQon3S04ARmKjQNzxL0BNluKhwgdYuBLrRO8ty3wPMgdZxr5SN
5jlti3aFALle0Wy45oRRQi0VPglrkw==
=wAga
-----END PGP SIGNATURE-----

--c3v52yik3xydwuad--

