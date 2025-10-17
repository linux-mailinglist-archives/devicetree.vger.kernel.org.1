Return-Path: <devicetree+bounces-228074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A370FBE753E
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2885B35AF49
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0022D24AC;
	Fri, 17 Oct 2025 09:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="CkdQjMkM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598912D1901
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760691654; cv=none; b=MvK19xjwfx0STP+6SHDgz8caRffvom8WwdvpVyWz1Q3Ugwe/4xcu7QYt46LOY4NoxgBJiTjXVqEsPMtq0lKdrFfDgxBxiy8ZRxZySnjDJUvvd0MfbwsE1kByGT7/kNtSa93FOO6ov4iewdW1x4NP6Mt6Bo/yiERh4gLoSV7X7m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760691654; c=relaxed/simple;
	bh=o2unYdbluW1Z+y1R5k5exjJD7xPDhjFMTxohbYaU7P8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k9msbVal1rOs047gipFkw9ihiXrbV6dI6ndCmHfeM5kHJGEI6zEkQUqYHpZXiLEx8uoeIen1dcXLJ7F2tWANJzFoxYizsfs8QnvEoFnADAUuv+gnjk/HZmcntDmcllBpSK0Y1aKPqUxjvXdxOsYi96sZZZVVyst1Zdm+8gz860A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=CkdQjMkM; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-781014f4e12so21803357b3.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1760691650; x=1761296450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uwqZleTIDiUaAY72cnewgW3ek2rn+IL2kLV7EXZgYnA=;
        b=CkdQjMkMBG99UCbfQ0O4MgJZ7ADpAaJzueVRDhxaxyG2gUt3LixzuMLTJnufr6jCck
         OsfNN/pcZgS60qsxoCQXh210uVcJ2+fgJ6xMfYgn/7QSQsPMDLfsAm25nyh0ld9RugKV
         g//aCZ3TE+e1ZoRcx9DfcP4AhrQfbXGtnhV+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760691650; x=1761296450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uwqZleTIDiUaAY72cnewgW3ek2rn+IL2kLV7EXZgYnA=;
        b=Qg7tJdMIQsAqdr0mT4bCGbXK7OfwgsTpWFOp9B/Bm/MDl6tGTf/U/ECyiIhVgDdV96
         LrD2mhQ+DaEcBUEr+XO5+9p7rJicHDGnN5YfHC5g6qzAdtBWsv9mu+ix8DD5spfwo2Vi
         0h4R0uVIw5xfbN4cy6fE3J8qcKZNzajZ3yj7EURtU9UJgkx60gLO1mc2ir+xqTULOOrq
         Z4c45R6PUg8j1IQiLQjoKIPhw/eUXXlliV2sOVwD0dOpTpXZO1Qi63CS8cDpCYbgJDXu
         ImUTS6aaAtl5qiHzOOkeTvNJR+theKYGhzpobFDF7dvNnSYEGYOp85KtZIbrc/JhlA+C
         tpng==
X-Forwarded-Encrypted: i=1; AJvYcCWxH8buDxoahrxD3ng1FPTuXq187bwqFwRzJHdbKyn1KnW0Kp9oT3KoJSbxYw7jqTOfedEBVPcGmDgk@vger.kernel.org
X-Gm-Message-State: AOJu0YzAgTzUaMnGSXANlA9U2zN1m/vZOPUXCBHpWCmglKxJqHDxOEzb
	QkcFfhKu8JDP+hge9oHomSNZMH491yseQJ4B/Ju7S8XyDEe45eTYq1Z7t++pjTj80HP6yGsoC0a
	rMmfkt2fGEvVEjnsXBoL7FyOqzPqmUklUgLb+JK0DAQ==
X-Gm-Gg: ASbGncs4GBAyFaMPHDfG2T4TdSRjCEKrsITmnG3Kzz9YLGDVa6Ghh5SwZdvjjGk5d8L
	sxJctEU7MQaqsqVwVhpJRrdGIlxaYSUIlkJIitTr3SKkHKpDKUuyyClNoEcLCrHUjnLqLgXXS+m
	9Fe6zDy5tqO3Z9X/MuaGYRG0JIzc7bYjyYxOslzeeOCsialTJy4AC8Vbd9djTS6F0SrEm813BWP
	xavO0g5IkTZTtZoc/1GyIpZGv/5IDMRXTCbIbf7GUa0OquImMTESySWno/9Io3dY10eaHzf19n/
	4v7pVAKeXcIXpGC8Tyw=
X-Google-Smtp-Source: AGHT+IE5Yi8fhsEehPxy5GJvNImSjw5otDpaKTAtoCLqiAZtdjIs8czq9CS+B6SwkI41+mx3O4jIWn9BUXmt32pT6+M=
X-Received: by 2002:a05:690e:1401:b0:63e:1e08:daa8 with SMTP id
 956f58d0204a3-63e1e08e659mr637758d50.62.1760691650124; Fri, 17 Oct 2025
 02:00:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007065020.495008-3-pavitrakumarm@vayavyalabs.com> <fe4d7cd9-0566-4d1b-97c0-91cc1f952077@web.de>
In-Reply-To: <fe4d7cd9-0566-4d1b-97c0-91cc1f952077@web.de>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Fri, 17 Oct 2025 14:30:39 +0530
X-Gm-Features: AS18NWCF7ilfnimqJ0juzX5edKoNldB4hCt5XQCmgPU4bAn0tksOTOoAPtkyp78
Message-ID: <CALxtO0m1R0kf5Am+oEPAgqommQph9zs6+xfTM0GzGHV+YEXT3Q@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] Add SPAcc ahash support
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>, 
	Manjunath Hadli <manjunath.hadli@vayavyalabs.com>, Ruud Derwig <Ruud.Derwig@synopsys.com>, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Aditya Kulkarni <adityak@vayavyalabs.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, T Pratham <t-pratham@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Markus,
   My comments are embedded below.

Warm regards,
PK

On Fri, Oct 17, 2025 at 12:13=E2=80=AFAM Markus Elfring <Markus.Elfring@web=
.de> wrote:
>
> =E2=80=A6
> > +++ b/drivers/crypto/dwc-spacc/spacc_ahash.c
> > @@ -0,0 +1,980 @@
> =E2=80=A6
> > +static int do_shash(struct device *dev, unsigned char *name,
> =E2=80=A6
> > +{
> =E2=80=A6
> > +     sdesc =3D kmalloc(size, GFP_KERNEL);
> > +     if (!sdesc) {
> > +             rc =3D -ENOMEM;
> > +             goto do_shash_err;
> > +     }
> =E2=80=A6
> > +do_shash_err:
> > +     crypto_free_shash(hash);
> > +     kfree(sdesc);
> > +
> > +     return rc;
> > +}
> =E2=80=A6
>
> * You may use an additional label for better exception handling.
PK: Ack, I will go with an additional label.

>
>   Or
>
> * Would you like to benefit more from the attribute =E2=80=9C__free(kfree=
)=E2=80=9D?
>   https://elixir.bootlin.com/linux/v6.17.1/source/include/linux/slab.h#L4=
76
>
>
> =E2=80=A6
> > +/* Crypto engine hash operation */
> > +static int spacc_hash_do_one_request(struct crypto_engine *engine, voi=
d *areq)
> > +{
> =E2=80=A6
> > +     tctx->tmp_sgl =3D kmalloc(sizeof(*tctx->tmp_sgl) * 2, GFP_KERNEL)=
;
> > +
> > +     if (!tctx->tmp_sgl)
>
> * Please omit a blank line between such statements.
PK: Ack, will do the cleanup in code.
>
> * Can a kmalloc_array() call be helpful here?
PK: Ack, added
>
>
> =E2=80=A6
> > +                     kfree(tctx->tmp_sgl);
> > +                     tctx->tmp_sgl =3D NULL;
> > +                     local_bh_disable();
> > +                     crypto_finalize_hash_request(engine, req, rc);
> > +                     local_bh_enable();
> > +                     return 0;
> > +             }
> =E2=80=A6
>
> Please avoid duplicate source code in such a function implementation.
PK:Sure, will fix that

>
> Regards,
> Markus

