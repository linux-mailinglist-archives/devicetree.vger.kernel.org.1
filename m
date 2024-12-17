Return-Path: <devicetree+bounces-131783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD729F48C4
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E95BE1685E3
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7FAE1E048B;
	Tue, 17 Dec 2024 10:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HtumYyTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EF41DBB35
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 10:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734431000; cv=none; b=Ma1JEkeVIKQM/iqmrxYZ6z7Mm7C2Xx+mmbiRarWhyiy/4kVNyrcfgLc4Y38uZvDh5z5fL45WphW20tfuageS1cJfkfkFHMzv1ffNvdAUITP531EuAaV75zhu/VkA2/ZBpxPpTDrCYkCMYwIIH97xjHDMkwq16zQVTxvoCfGLq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734431000; c=relaxed/simple;
	bh=r7wI0RNO64YwKbOVvCQmbsaa1AQDcv5peCOWbmTepcI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdI9UbN9Jzu8qFgXDGDoErG2uOjM+Q52PclCDfyJQUKzi1lUCwIXXvvE9MTYYL0go9YrCv8gGZSkSK6BRNFgM+u64/E9tm0ZoXFOxAaat7UFNkz84TyNRQqDaVl2nIxcwfb96pVaG+9MxSMehtugzAu//VURxdrCliA9c4wM45A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HtumYyTS; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aab6fa3e20eso715983766b.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 02:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734430996; x=1735035796; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BErA08IFEu2d4tqfCM1DqY8dhrKIDrY80mqtVzaS58Y=;
        b=HtumYyTSOR/5pyCP6t12afYBkGQQqmqq5HvKj5YC+bcciPV0e9xAs0sgh9hUQsNWIW
         Xpe/3Qakfc0mvdwDj+fxNmNv9khOq4QBMs9a8EfDITApx3EPxBUzPGgoqTXJ38ncjaOd
         lPgDYpxODnQJA97BmOPkY6JtgFU8sSJ70hpkPnzJxSFTSMgO9ASkO3BuuUEr31ucYkTO
         88AMkmCGFqsJu/+2KjqrOcruu4dkeNR3xI1DecEIO1b8yK2Ip+GpbNw5uVEu7e0PvpDh
         JkqbjMewuIC/LUVN5ZNwyWucpVF2f8dw1MA3ojra2LEHoip9YRzDoikCGZhoJUpPt46d
         S0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734430996; x=1735035796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BErA08IFEu2d4tqfCM1DqY8dhrKIDrY80mqtVzaS58Y=;
        b=nOIaGG4dNqlDjvMtRG+FFOCMGKlo+HtDLz7PBbPM/mkFTlEhN27l1ByxxDo+HRQvb9
         m/68lKZeVnQ2LSrlLX7BvQwdenLrWFXPIa/fAmE+N9htdX008cHhYFKdgAfImYfyG2mu
         a3bGCpPEkXCXR0HlpSZI69bPNFzDdiA2UNcEfSYQl1Lr3Wmjwzgn8nDjI2wJaPXKLNu8
         aMSbILZZq9nZpFxDTFOt7AVYwuRJaA7qh1YjOlwQw/8717R9GDhnvHRie9eENAJrSuDl
         s8IQaH+Rvi/2YuFslktUkNPheFny6U0dGI1Ov9YRgeQrdblmp2YLbAlq25pRSPj+uDOq
         3EOA==
X-Forwarded-Encrypted: i=1; AJvYcCXOvBG8Nm09C3tWpykJJ5vVO5nNuN36snItEuv7gT+1FBg+CnquyD2KhLJnbwA+A7cIL7CzHq2m3FYo@vger.kernel.org
X-Gm-Message-State: AOJu0YyRmDsxNfqwcIcF2FEPHg7QJFzdwBXaMQ2wATjC9/iegNgr+QQi
	89C5xnXKShgkBEmtfCUsBuHcs1Qhtj6m/DXBiYbbIaLMp4dVPh5Ors3dI+O3k8k=
X-Gm-Gg: ASbGnctAtGBxjwHBlR6qQoB7Jj+g0N4M/RdQ9kHbXsgy/4R174vkQ3tm54hdFGMiHnc
	iH1tDqCeLkLDY6cO/IvkaOYP7GkZBePfd9BA7ZI30jaz4IscberQDssgWuM6c9Qz2R7RcGCgUsD
	hBcpDFQ1c1dRebWIlO+Q+J0e5ZwFPUlXjvLoacSDHY6Ot5ZsEDPgYohSodYmECiTpqgOLbpJh55
	/pZz+fH1emWteCqwvVRV5jTrHXYWzNTQWsV9P2Gfry2hHOoAPQwug/QUqGp+7PnqDQ1FDBSInNn
	NmVsV0lqeg==
X-Google-Smtp-Source: AGHT+IEJLzpfBEZgIj6ySHOKXk3pSgcaQPeFUWUSZQGcQvbVdyxARXjPzC0bJ8N7xA8/7wZqQkeslg==
X-Received: by 2002:a17:906:d551:b0:aa6:af4b:7c87 with SMTP id a640c23a62f3a-aab779078famr1411241566b.21.1734430995821;
        Tue, 17 Dec 2024 02:23:15 -0800 (PST)
Received: from localhost (p50915bc6.dip0.t-ipconnect.de. [80.145.91.198])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab963b282csm430647066b.180.2024.12.17.02.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 02:23:15 -0800 (PST)
Date: Tue, 17 Dec 2024 11:23:13 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Ardelean <aardelean@baylibre.com>, 
	Alisa-Dariana Roman <alisa.roman@analog.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, 
	Renato Lui Geh <renatogeh@gmail.com>, Rob Herring <robh@kernel.org>, 
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: Re: [PATCH v6 08/10] iio: adc: ad_sigma_delta: Check for previous
 ready signals
Message-ID: <bjph7hj7bgn63rvvk2e2qnlfzsd7tqnd53monafjdc53xzgk4r@aaswedrsc46i>
References: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
 <3ec6b61fb1e527e935133dc56f589aab4b2094a3.1733504533.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lddmbllmo3szhv43"
Content-Disposition: inline
In-Reply-To: <3ec6b61fb1e527e935133dc56f589aab4b2094a3.1733504533.git.u.kleine-koenig@baylibre.com>


--lddmbllmo3szhv43
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 08/10] iio: adc: ad_sigma_delta: Check for previous
 ready signals
MIME-Version: 1.0

Hello Jonathan,

On Fri, Dec 06, 2024 at 06:28:40PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_=
delta.c
> index 101cf30f4458..d32102b25530 100644
> --- a/drivers/iio/adc/ad_sigma_delta.c
> +++ b/drivers/iio/adc/ad_sigma_delta.c
> [...]
> @@ -222,6 +225,86 @@ static void ad_sd_enable_irq(struct ad_sigma_delta *=
sigma_delta)
>  	enable_irq(sigma_delta->irq_line);
>  }
> =20
> +#define AD_SD_CLEAR_DATA_BUFLEN 9
> +
> +/* Called with `sigma_delta->bus_locked =3D=3D true` only. */
> +static int ad_sigma_delta_clear_pending_event(struct ad_sigma_delta *sig=
ma_delta)
> +{
> +	bool pending_event;
> +	unsigned int data_read_len =3D BITS_TO_BYTES(sigma_delta->info->num_res=
etclks);
> +	u8 *data;
> +	struct spi_transfer t[] =3D {
> +		{
> +			.len =3D 1,
> +		}, {
> +			.len =3D data_read_len,
> +		}
> +	};
> +	struct spi_message m;
> +	int ret;
> +
> +	/*
> +	 * Read R=CC=85D=CC=85Y=CC=85 pin (if possible) or status register to c=
heck if there is an
> +	 * old event.
> +	 */
> +	if (sigma_delta->rdy_gpiod) {
> +		pending_event =3D gpiod_get_value(sigma_delta->rdy_gpiod);
> +	} else {
> +		unsigned status_reg;

While backporting this patch to a vendor tree I noticed checkpatch criticis=
ing:

	WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

for the above line. Would you fixup an "int" into that line please, or
is that already too late?

Something like:

	git checkout togreg
	sed -i 's/unsigned status_reg;/unsigned int status_reg;/' drivers/iio/adc/=
ad_sigma_delta.c
	git commit --fixup=3D132d44dc6966 drivers/iio/adc/ad_sigma_delta.c
	git rebase -r --autosquash 132d44dc6966^

If it's already to late, I can prepare a proper patch for that.

Best regards
Uwe

--lddmbllmo3szhv43
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdhUQ8ACgkQj4D7WH0S
/k4UtAgApxpGQX0dN5Ht0TPb3bzc38ALsn3uSsaFcdlS5gKIEyrKFvFWGohh4C94
f3ugZS0uZPl3gDZVUOXI/n/48QlEOZDYuHkyCM8UdmeZI8oyBY5zUSon1lcvXVlr
28Dz02MlrJY8C0IgSkXVxkUJGlz3LMTVnHmqPQNoOnFThbePC3RCFmlzDIcP32mt
y28CxsFCqbgma93kJRlhU+/iNuwyO5BZb72mzuxZpWdgq+h91At/dcUVL/RVSkRw
ZLMJlZNkU+Pr7CrkywmbapxR7SFXf73Puug8lPTMOFkn6Y6cr+ZJzrr21qJ/78n0
Q3kVNCxP1mRtCSgyr3YPIKPT4igLOg==
=gwd4
-----END PGP SIGNATURE-----

--lddmbllmo3szhv43--

