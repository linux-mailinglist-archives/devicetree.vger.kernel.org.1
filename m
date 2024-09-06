Return-Path: <devicetree+bounces-100901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B893696F62F
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 16:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2CFC1C20D81
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 14:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925121CF5CB;
	Fri,  6 Sep 2024 14:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="t5HUOzoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9128B1C9EC2
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 14:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725631442; cv=none; b=n4acXgNBhnFjSVRE7NZQNl/z6ZVjLvvn6UkWzS3d88mIoXE6yHk0iGVpoiyZ+AfCc6rYcoa8rMJpathlB0VGlKYNBVegs5/KL3+iTo9II7toyeGG9yLGPr8/d1LMDEjhccdMOdhuMLGnYpmi07e7v4FbboAWpESrO6RTDQq5+gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725631442; c=relaxed/simple;
	bh=TWm++yHm+ticvSkpxPLAyti5B/a/nVIvW22N4O9cmnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SsqD8PstwwRA8FbnWnBTj5UGAfVlPDhCbBUgU/t6keE+WQkm+damrLrV8Xi7y5E9wh/0qK/2rLIAkJXht0s7KS7chM5OzO9/o+GY2fCCl1UXthu3tNxMDROYEf6IZxUaKijOucZaH6hqg5Wq4CheZ7GegULMWbGX2igN0L2r6lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=t5HUOzoq; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2705d31a35cso1229043fac.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 07:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725631439; x=1726236239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trpCET00jcBb2iDnuftwsHMgMss5swacYU3IbyIuopk=;
        b=t5HUOzoqx1Jfv3I8ME+Unyi3cY+efSd7fd9W+wYegAsj0m+aC8LNgSMLd28vtEJSrl
         pCQdeZLL6GXAGpeeujDbB7fETuEPzsdvaFUVZRnzHDcZek669TbMhMwES3SvEI9Szxtz
         +9vYfxWsXAnXbkB6MXRE9iERv42HAV5mTZKBZeY6Qo5xZpMU4/yw22jLVAKGN2wasPbR
         zHdSlBDClOUHN4+MO/3hMFNvgf58mb1/21OfUTqy6D+1b13wkbSVrjwe2YvJFYVGxc8N
         9pHC+zt8j9kF/BYExcX+wawyiSUR9d7wgCVnjqXScPODWZ40x0zf5qovFoEXejYT/LTO
         zSAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725631439; x=1726236239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=trpCET00jcBb2iDnuftwsHMgMss5swacYU3IbyIuopk=;
        b=O1qpWVL9McdR9a/nJhMIeq9XAI67mxflPFN861ZGAmDhWZl5s77Tk3xZnUBit+kI/q
         AE+fpSK4v7zD2ckz/P9j8Yuc39feb3T1hpkgX4byekatPyF72C/xhlRKNg2Y9pEFsA79
         mwl8jI9rrYCvs5E5ZpnmF/elpaw76g+RhivJCEWBuVBucgdQUiFV4rZeuAFlETfgkj1W
         u3fhy9W95cecBa892qFAckzDT7t+FYhTbY9dQp4otRJp2Lj0yAsU5lOy0vy6XW1cVv5z
         7UdbJydHEKv9j9uZafUkBjZB44I009Aa2JvCCuSlOfwwLft2Ey136CcalH4OsJr8EVla
         IxZg==
X-Forwarded-Encrypted: i=1; AJvYcCUoOb584XHO3NmaZEwB8qhnpeD85AP0aF0YyWyBGtsj90qOvzLGjR1HWrNzxTZVasKREn8EVgeg5JVP@vger.kernel.org
X-Gm-Message-State: AOJu0YzeilZkxeX45QAldLu370yy2Vb+e0/CpulgX/JQDJvdIvDTYavo
	J/TV0I+nS8FerIEf1/KIzg/JclAbeTdQ6qwUyyGwlxc2Zy4RIZNafCS1P1zdBs58HKdVO5CAFor
	JNLcWfFXwmn2lCVJidRMEa/vTb3fryelvDljQ+w==
X-Google-Smtp-Source: AGHT+IHEymvMMei4A6Xe5mwTIwf6bMo1X0AHc0S8SPQjJWdqiePKLpRe9Ze2zH6IR5h5hZDvGENKiaCs2Kdq33ZADv0=
X-Received: by 2002:a05:6871:ca6a:b0:260:f50e:923f with SMTP id
 586e51a60fabf-27b8302a3d1mr2886683fac.42.1725631439482; Fri, 06 Sep 2024
 07:03:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-9-aardelean@baylibre.com> <2bf78e47-909a-45c0-bebb-6a8d38cdef7c@baylibre.com>
 <CA+GgBR9=unTe5WVq0G2zowbL9FnLfCwoAuZp=7VD=xZOt9Gn5w@mail.gmail.com> <52eb0187-056b-413a-a64a-6fd001c27132@baylibre.com>
In-Reply-To: <52eb0187-056b-413a-a64a-6fd001c27132@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Fri, 6 Sep 2024 17:03:48 +0300
Message-ID: <CA+GgBR9sKzBptH3dm0Eg6Gi7-369vvHerC6EQvzTC_qBe82LYQ@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] iio: adc: ad7606: add support for AD7606C-{16,18} parts
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 4:33=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On 9/6/24 12:34 AM, Alexandru Ardelean wrote:
> > On Fri, Sep 6, 2024 at 2:30=E2=80=AFAM David Lechner <dlechner@baylibre=
.com> wrote:
> >>
> >> On 9/5/24 3:24 AM, Alexandru Ardelean wrote:
>
>
> >>> -static int ad7606_read_samples(struct ad7606_state *st)
> >>> +static int ad7606_read_samples(struct ad7606_state *st, bool sign_ex=
tend_samples)
> >>>  {
> >>> +     unsigned int storagebits =3D st->chip_info->channels[1].scan_ty=
pe.storagebits;
> >>
> >> Why [1]? Sure, they are all the same, but [0] would seem less arbitrar=
y.
> >
> > [0] is the timestamp channel.
>
> Oh, that's weird. First channel but last scan index!?

Yep
=C2=AF\_(=E3=83=84)_/=C2=AF

>
>
> >>
> >>> +     if (ret)
> >>> +             return ret;
> >>> +
> >>> +     if (storagebits =3D=3D 16 || !sign_extend_samples)
> >>> +             return 0;
> >>> +
> >>> +     /* For 18 bit samples, we need to sign-extend samples to 32 bit=
s */
> >>> +     for (i =3D 0; i < num; i++)
> >>> +             data32[i] =3D sign_extend32(data32[i], 17);> +
> >>> +     return 0;
> >>>  }
> >>>
> >>>  static irqreturn_t ad7606_trigger_handler(int irq, void *p)
> >>> @@ -124,11 +176,11 @@ static irqreturn_t ad7606_trigger_handler(int i=
rq, void *p)
> >>>
> >>>       guard(mutex)(&st->lock);
> >>>
> >>> -     ret =3D ad7606_read_samples(st);
> >>> +     ret =3D ad7606_read_samples(st, true);
> >>
> >> Shouldn't the sign_extend parameter depend on if the data is unipolar =
or bipolar?
> >
> > [c1]
> > Sign-extension is only needed for 18-bit samples.
> > 16-bit samples are already properly sign(ed), but to 16-bits.
> >
> > It's a slight performance improvement, that may look quirky here.
> > The idea here, is that for ad7606_scan_direct() we only need to
> > sign-extend 1 sample of the 8 samples we get.
> > And we need to sign-extend it to 32 bits regardless of it being 16-bit
> > or 18-bit.
> >
> > In ad7606_trigger_handler(), the 16-bit samples were pushed as-is.
> > Which means that we need to sign-extend the samples at least for
> > 18-bits (as it is a new part)
> > The question now becomes if we should sign-extend to 32-bits, 16-bit
> > samples in ad7606_trigger_handler(), as that may break some ABI.
> >
>
> Sign extension should not be needed at all for buffered reads (that is
> what scan_type is for). So sign extension should only be needed for
> the direct read when returning a raw value via sysfs (raw read).

ack;
will remove it then from ad7606_read_samples()

