Return-Path: <devicetree+bounces-216235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A75F1B5421C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:39:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 093C41BC3716
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 05:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BAA524DD1F;
	Fri, 12 Sep 2025 05:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EUv/zMzU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E9F4207A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757655559; cv=none; b=YcCcgCSa8o6afqZdSRL1TlyNuxC2zzanWgFNUof8dnelv1qnziStVOuCMEsP0EdtFd56ANALbtpktdozWkaOBQ5kU8rQUWRMklBbu59dhFPC/I7wMcqXQ7n4D5HHxhtv50AtHkTv/CdA7saltEQvhpdJONDFE8THwFKjpZ+NbHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757655559; c=relaxed/simple;
	bh=Cw4butNgp+M8PS0EaOjYSmn26rCmVDJqa5vIVv/kH7g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=umerCc5t9NCYf24jrvNTIZzWVKBq/kkDBzgdEAbc0Vely4rdpAWJJfiCO7KL01b3SiK2ILRTHDdWxv0XsSy1R8lOli+xSWP6/kQLkCl6UU4RwaZUhFm+1COO/k743cjjtOx4EWIRh7KJ9Ea2X08AiDEJUopGngofac7o5ClrMAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EUv/zMzU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b0428b537e5so217278066b.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 22:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757655556; x=1758260356; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vH0Afa714fvtVfmdaqCtg2gFW/ZwCcELG2I0LrcyEII=;
        b=EUv/zMzUSfGcPSrn7giBDe1JM9vRpoGUhhVCt0+PS+YrQYn11+OBZm0D2wnsDWQ8mr
         O1h/Mgjmoy3INkzzqnOZ2rReTTpqb0SNJZdDY7TsR/M/BSmuIni6peoPkwP9wmxb0pKm
         B54qpz5Fet0ETabtUToj50QKrkBanEfTwtgib3Q1Q409cGpHLa6HaTEb1n2P0m1ZgUOy
         K5Uut1niV0ogyucUCg6BarmIMq6tGl5+sjzK/+zHXdQC7u9kmCF7wKph2BvnhmEMRbO2
         g1KgL0SmK1VpYjkmtGDWidqiT61NHp6r2xp4fKuKE9TlhhTee3bs0mEy3ZJudGhc1OYJ
         CTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757655556; x=1758260356;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vH0Afa714fvtVfmdaqCtg2gFW/ZwCcELG2I0LrcyEII=;
        b=pNpJyuCHnHYnoNWO1Kq3qIcjG1RzczZAbpbJakAfQbNgiRzSFpzKKYkdumC6m+nU/4
         Wt72TUy7I5tJw9M5yDphPbO0QyapfGXYA28IR3F9wTPtE+3/azH2OJ/oyb5JMHyiW/6h
         CYQ7q1yUIgT0gyNcdkunu5mQu23fzEsNfptHRBclxdw2ObWr/ATj9H3Y6icOgvvd28Sn
         ahPdOGWeilFBadMdbqPREDnYKqiY0nHn7BWpL3ehPSnLOHOSU6b9hLUnfune8fn3YgML
         gLN4XrOlPf5/wkEb0v8fCmNJ3xu+HXqaZi2qgCuq+prigEpV9ecmIqZiB3pBfvJBh3RS
         N27w==
X-Forwarded-Encrypted: i=1; AJvYcCW16sqv2W6KABjqXfsi676/Dna084mJS2+f+9P8NdKhm3CImuplMHBfuVAU0eGzhS+pt/uEi+hCygMG@vger.kernel.org
X-Gm-Message-State: AOJu0YxSWEuvMtugDIyj2PK/CEr6MSNmeTG6eMKv1bRGVP7rQbJevVdB
	MIeMaIw8O9fvZ0LV2mUkzsXGiHKp2nQ11NeMjXZo+1XT/CBQd6Pt+os+pmleO80gWpXGUWKJzP6
	Scs5M0lv6bagZjFrA10MiSrlhO5gxyqM=
X-Gm-Gg: ASbGncsmQAf7Il8+ml5Gh2GIjYYM35lKlVpvpt3bvm7jKeh0gu36do1Qne/I/+1rFeC
	H9hgKZ+mdKUkpWBUN7zV/7/XluB1D2Ri197+/UturGTxfLZImKWbNzaNP6147VlhMSGV2FkgeHM
	uyFh1hJebsl2/7pyP5DD1Lww535B4xdqTdzwNOi4zfU81VAcg4I1wsvc6UUAyr4Y75F5P4o13lg
	xTz6zO4FecJpxfp1fRsmUiQTJNB
X-Google-Smtp-Source: AGHT+IG60HJ4b1fJ4dk8St0WhJ1SX1AxKjx2gKZnbNVTZ59Vw6b7ERyt7G4PUyCug0AMO75WHmZcgdfhh1sgd5jaOJU=
X-Received: by 2002:a17:907:76a5:b0:b07:c90a:8ade with SMTP id
 a640c23a62f3a-b07c90acd21mr54196266b.20.1757655556307; Thu, 11 Sep 2025
 22:39:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910155759.75380-1-daniel.lezcano@linaro.org>
 <20250910155759.75380-3-daniel.lezcano@linaro.org> <d53b22d1-35d6-4fb8-ae56-3ba4953b64af@baylibre.com>
 <ea57a466-97b3-49d4-8d1c-142fd49a0da2@linaro.org>
In-Reply-To: <ea57a466-97b3-49d4-8d1c-142fd49a0da2@linaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 12 Sep 2025 08:38:39 +0300
X-Gm-Features: Ac12FXwz8S94TfU3YcaY1R7trfgV194Ut6I1vQdt1Jx09BV9gffwQdAifTPMIRw
Message-ID: <CAHp75Vc8u2N2AHWtnPRmRXWKN3u8Qi=yvx5afbFh4NLNb8-y9A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: David Lechner <dlechner@baylibre.com>, jic23@kernel.org, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com, 
	ghennadi.procopciuc@oss.nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 12, 2025 at 2:03=E2=80=AFAM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
> On 11/09/2025 22:10, David Lechner wrote:
> > On 9/10/25 10:57 AM, Daniel Lezcano wrote:

[ ... ]

> >> +            /* iio_push_to_buffers_with_timestamp should not be calle=
d
> >> +             * with dma_samples as parameter. The samples will be sma=
shed
> >> +             * if timestamp is enabled.
> >> +             */

/*
 * Btw, comment style for multi-line
 * comments is wrong for this subsystem.
 * Use this as an example, Also, refer to
 * the function as func(), i.e. mind the parentheses.
 */

> >> +            timestamp =3D iio_get_time_ns(indio_dev);
> >> +            ret =3D iio_push_to_buffers_with_timestamp(indio_dev,
> >> +                                                     info->buffer,
> >> +                                                     timestamp);
> >
> > Is it OK to call this with spinlock held? It looks like it can call
> > devm_krealloc() which may sleep.
>
> It should be ok, devm_krealloc is in the code path of
> iio_push_to_buffers_with_ts_unaligned(), not in
> iio_push_to_buffers_with_timestamp()

This is a good observation, can we document this in the respective
kernel-doc:s please? Also add might_sleep().might_sleep_if() in the
appropriate functions.

--=20
With Best Regards,
Andy Shevchenko

