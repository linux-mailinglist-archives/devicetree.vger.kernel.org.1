Return-Path: <devicetree+bounces-240933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D82C77C9E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id C11BC2C086
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3421A2749CE;
	Fri, 21 Nov 2025 08:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="CDFQbRxh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EFA227B94
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763712071; cv=none; b=jY8oloJwfSrFlMHiwfCGoTSBxe2iKslaunTNezD94FVFLxL2vOEHhd7pVidOzmrfXh9axQcwh5xa/OMp29o7/0l3tifG0IdSCe6r6LjT7NV1XBDXKizYvtL6uT55L1BEk/KOE5ivWTj4K6yoFkNhwiT018Y+mdvBEz39/7gSWpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763712071; c=relaxed/simple;
	bh=p7uVlvE3Qm03vihPsE08vYaawKMxPv/DQrOZ33uA8iU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cwnWE7OSoq3J9xPuR5deiPPzn8wVBw/L4Em7bjatdxlfXl+DpY08zeUxU8YsaRR0be2tJM4PdbBxzFW2v5zUckgF4nyNxshLJ1ZcYIt+3lkSlUGRzbBbvL8wRweEGyw5TqDqnH3T+utQPXBoNFFNPMr9E9aCti2DPiN1/UwZ3tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=CDFQbRxh; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-63fca769163so1825758d50.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1763712068; x=1764316868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1tvndMjP9HAoDprqdYPBtu6xsScYiQegulJGgBItgE=;
        b=CDFQbRxhpK3BEgEhyY8klRbYdf0Bo9A0y2m2pgDH+qfdVc9ogFEpVpumfHSxD+1069
         /cvZgw9+SqH1h0bCfXtPQeu3lwe1GrJ+KC69HBV7xH7EwSy84C3WJPs78Cdw730uuGT+
         S4y/e1TavZ7fLR4DAYquPWYFoKmApW47WyioA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763712068; x=1764316868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L1tvndMjP9HAoDprqdYPBtu6xsScYiQegulJGgBItgE=;
        b=OROQr3oNpH3B4rf757Fa6+hzBVPL6cOPRPjgzKgzgJkRtQ7obFVHsM9n4KG/vWG88/
         +alZJpe4QC2pFC5VIzuSBiKLsed1CrAO9Nxv38By8qCu6aPJ0SpejizGtsXRrb10caH8
         g1qfAstOLRp0INDK0KLU3Co+GI8A+suPQ6FSQOF/VkiPP1lM/vxbtejgYnEAuRUQ8iTw
         yExh1DXlW6lzRXbNmyruH1ljuj/po5DkmgZYU5CvUcSw/7IDRBoNvETvIz7SJOsNdb2k
         TxzVkkunsc7ZBL6lwnK9KUBX9TxZLWdWZhsB8Ubh1+bRK5g9awL79O5wNLrUpEYnjJsL
         wRGA==
X-Forwarded-Encrypted: i=1; AJvYcCWqJthyZX/pOJw8djRzPEqtAiFj6m50TpHbUcbUF4CC9BmUnIETeSGv2LM3/W3jRcXA4+OOCtEaOF7i@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk8SCwm81TbrF4T+OOmDfsRh/knUvsukc4V7pJKauJU9PoJLnu
	VbClMbDtwQ22rVtGvlZPJMQXVRbb28JNf26ExnnGzQxDVq+3ZqHdymF/823G5qObtcdTRIqp7VB
	AcVLbySmSsKQkntq55TERxKVziWdgKiGt/2g/J7mHuw==
X-Gm-Gg: ASbGncttFABdaHX/AQqYdqMdSMqQZOKnI0JqoNsIkgOYrqfeTbzdKjntDO9njFXbKH3
	QK0ojeas0t3/1/0Md7L/8imPQwt8wc5GZx6W/B3bqyw9NOLz97pYYBH1JQJRhtcgoCCOvlggZJQ
	byPx0H8bKnjFtEqIcTJCGsGHxayeIh/mb/BZV8BPJ+1w/jKBHg4UzR9cLRCIQdFmK7n29qAgeDJ
	hSrSj61gak73kfVAnBFV1BbSY1L/tCHLCZvUucOl/NTyngL+l21pxtuX6KJ5/cKXLyz47Z1X6Qi
	o70CNCpFJPOkIyMtXDZlk94arJD5
X-Google-Smtp-Source: AGHT+IEl8KOODStMI8dm5m76lMMQQ5gRzTphkTRgniUf/5r0P9q1EzWrX2kDa3Fv9kZPz1574X5k0b+ryB9WLwLycEY=
X-Received: by 2002:a05:690e:190c:b0:640:d255:2d6f with SMTP id
 956f58d0204a3-64302a568f1mr802060d50.34.1763712068236; Fri, 21 Nov 2025
 00:01:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031044803.400524-1-pavitrakumarm@vayavyalabs.com>
 <20251031044803.400524-3-pavitrakumarm@vayavyalabs.com> <aQw-ugxNqclAqDkg@gondor.apana.org.au>
In-Reply-To: <aQw-ugxNqclAqDkg@gondor.apana.org.au>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Fri, 21 Nov 2025 13:30:57 +0530
X-Gm-Features: AWmQ_bkOmSF2vdQ5-_vP3HC8nfm7o6gE93J9cVBanb22mvJUTU4-cuCIGuUYy3g
Message-ID: <CALxtO0=LxXg6Cw+PKnPQLhurkPRxvTOn63pyK9gFFH=y+F=hBQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] crypto: spacc - Add SPAcc ahash support
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herbert,

Thank you for your suggestion regarding removing dynamic statesize and
reqsize usage in the spacc_ahash driver. I reviewed the
aspeed_ahash_fallback implementation as you recommended and updated
our driver to follow the same approach, including using the
HASH_FBREQ_ON_STACK macro.

With these changes, the ahash self-tests and functional tests pass
successfully on kernel 6.17-rc1. However, the same implementation is
failing on 6.18-rc1. Since aspeed_ahash_fallback is currently the only
reference driver using this new fallback method, we wanted to request
a bit more insight into the expected usage patterns.

Specifically, it would be helpful to understand:

Whether there were any additional changes in the ahash API or fallback
handling between 6.17-rc1 and 6.18-rc1 that drivers should adapt to.

Any constraints or assumptions the new fallback mechanism requires,
beyond what aspeed_ahash_fallback demonstrates.

Whether the stack-based fallback request (HASH_FBREQ_ON_STACK) has any
new limitations or expected ordering requirements in 6.18-rc1.

We want to ensure our implementation aligns fully with the intended
direction of the API, so any guidance would be appreciated.

Warm regards,
PK


On Thu, Nov 6, 2025 at 11:53=E2=80=AFAM Herbert Xu <herbert@gondor.apana.or=
g.au> wrote:
>
> On Fri, Oct 31, 2025 at 10:18:01AM +0530, Pavitrakumar Managutte wrote:
> >
> > +static int spacc_hash_init_tfm(struct crypto_ahash *tfm)
> > +{
> > +     const struct spacc_alg *salg =3D container_of(crypto_ahash_alg(tf=
m),
> > +                                                 struct spacc_alg,
> > +                                                 alg.hash.base);
> > +     struct spacc_crypto_ctx *tctx =3D crypto_ahash_ctx(tfm);
> > +
> > +     tctx->handle    =3D -1;
> > +     tctx->ctx_valid =3D false;
> > +     tctx->dev       =3D get_device(salg->dev);
> > +
> > +     tctx->fb.hash =3D crypto_alloc_ahash(crypto_ahash_alg_name(tfm), =
0,
> > +                     CRYPTO_ALG_NEED_FALLBACK);
> > +     if (IS_ERR(tctx->fb.hash)) {
> > +             dev_err(tctx->dev, "SPAcc ahash fallback tfm is NULL!\n")=
;
> > +             put_device(tctx->dev);
> > +             return PTR_ERR(tctx->fb.hash);
> > +     }
> > +
> > +     crypto_ahash_set_statesize(tfm,
> > +                     crypto_ahash_statesize(tctx->fb.hash));
> > +
> > +     crypto_ahash_set_reqsize(tfm,
> > +                     sizeof(struct spacc_crypto_reqctx) +
> > +                     crypto_ahash_reqsize(tctx->fb.hash));
>
> Please stop using dynamic statesize/reqsize values as they are
> being phased out.
>
> The API now provides a fallback directly that can be used with
> a stack request.  Grep for aspeed_ahash_fallback to see an example
> of that being used.
>
> Thanks,
> --
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

