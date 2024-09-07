Return-Path: <devicetree+bounces-101011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8891F970010
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 07:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4F391C2115A
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 05:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F99208D1;
	Sat,  7 Sep 2024 05:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kc1p0YEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586174D8C8
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 05:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725685329; cv=none; b=bhsSDe6eSkCa7znwc9TT0nEo4yw+YZnpJGQGUiLOXExNMt73GeLkRPj8VkgEQc1eT+3LtUWq5x5kdKdbfYY6Ngz3p8s52RJsNircVb7DBIhi/2HSOazZWVhZbyQ7vF9CoMG0SbS/kKNfQTwXYC9OEYWXy7zMBX0GEMGc2qt/jlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725685329; c=relaxed/simple;
	bh=D1aq/RQocG348OD7UVm0XytzAgvWjbKs0e4befvJOIA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=awa/KxfJq0HhQc4e6TQl5iTif7rmQxkP32bfZ1xXPXOglmga9aCPHih/q6nVWV7RV/ENSKEHKMa6E90ND1HytO250S/cu5gmRYbY0jE5cuExlkKh9MGjo3flfCe6SFdPux2Agu89PLx6EBijpEjWOJ6YoigdtgbXat1qBwv2N8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kc1p0YEM; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-846d414ea6bso681999241.3
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 22:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725685327; x=1726290127; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQAqhIMKypqklZhoaptNP1nf1GTYRvwTcnfCJhLc3Jc=;
        b=kc1p0YEMKkjlGutYj2dcc89w5lYo0gE/1tJ5BQ7bw8DbFWw3GXXZj/YDhXI2+N9pGP
         0RR8gZcstDqPTvEMLbBK8RiozSFOhC/2cnNHNkPo+hBB5gGK6IwarnvBOBUDCgEZI6po
         KbSaqSwPJmj/A+ZUnxD+fYYEM+h1zjdHQ789q+xrdMelbH2WhDJvKo2uvblraxbhML9L
         FJabFAZewjloY0Pda9lLxgCZXRS/zr9anQ8FXrUY89dgNqpGlKANfrjwzTzVixFurBWf
         IZOeINixqiqYVVADA/76C+h2CKFTLBZZ3ja/wVvGaKL4QNRAhsIvTe8R27MysODWe6K7
         MghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725685327; x=1726290127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQAqhIMKypqklZhoaptNP1nf1GTYRvwTcnfCJhLc3Jc=;
        b=v3iZXfcQrkcNc9NzSrzURKZ/Wa4e6RguUkv9X0EK7DFT+SLPEccOCr6SE4NcmYJB/v
         d6VlsQ5hmL9E8wROlXdMVRKoYfBvgAsOZycUTxue3Q0cFLFj6J3aWWAYqbxtNPAhUqog
         MMO2ufQf2dV5cbcMsHIOYKZAE+b3FORbhXrRJYBU2488Pex5X+MM9RslcMfnZdgLX4NO
         e0ln8C8VXPfnhVK3SS0LiHFzR4ks1rdRNtFHaFna21Graj7Wjhla87wOkKy5nIWqEBxz
         IEEOdpovCGxF2xEA2t7LItZtF8ss3wibsrHx+XTKBMhyvYhvGrKuwMoNWZmz0sX7cnqR
         dv6w==
X-Forwarded-Encrypted: i=1; AJvYcCU9X3cbOY2KKuzErILa4DlCtFZ9KUbt/pU/f15WOdK8IT1vhOuJ++MpG/Ev/xa3THsP1MtNQZhwRGnb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9RgXsvxnjDTw2MVLJ9eMlkCGGh/DHjgeP+eYHEHVc0XaYxtXQ
	r2FsythH99wUGQP60eF4UM3F5lbR6DEwIi9FjnMYhyLY8izMfV6xCUx/B2bVMyZLw6D77lgQ4sN
	fOaan/0BNADlKtRvFxhU3G0cwv1nHZMRINMwqNA==
X-Google-Smtp-Source: AGHT+IGYLP069UXYJAM+qennzi+blh9eqsxz/QeTRHI14ojthq+7+jDAogYcEQOImmmSjIIAahoo0p97CCF716qI7es=
X-Received: by 2002:a05:6122:a1e:b0:500:daf0:8909 with SMTP id
 71dfb90a1353d-502143d4260mr5220112e0c.13.1725685327108; Fri, 06 Sep 2024
 22:02:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-8-aardelean@baylibre.com> <0a7f796a-7762-4c25-85ba-27240a3cd59c@baylibre.com>
In-Reply-To: <0a7f796a-7762-4c25-85ba-27240a3cd59c@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 7 Sep 2024 08:01:55 +0300
Message-ID: <CA+GgBR9AMR8jvU+bTMA=PZWMo7NdZfZwAZBLHeYEd1H-RvcTWg@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: adc: add docs for
 AD7606C-{16,18} parts
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 1:02=E2=80=AFAM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On 9/5/24 3:24 AM, Alexandru Ardelean wrote:
> > The driver will support the AD7606C-16 and AD7606C-18.
> > This change adds the compatible strings for these devices.
> >
> > The AD7606C-16,18 channels also support these (individually configurabl=
e)
> > types of channels:
> >  - bipolar single-ended
> >  - unipolar single-ended
> >  - bipolar differential
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> > ---
>
> ...
>
> > @@ -170,6 +220,17 @@ allOf:
> >          adi,conversion-start-gpios:
> >            maxItems: 1
> >
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            enum:
> > +              - adi,ad7606c-16
> > +              - adi,ad7606c-18
> > +    then:
> > +      patternProperties:
> > +        "^channel@[1-8]$": false
> > +
>
> Technically, we should also have "^channel@[1-8]$": false
> if adi,sw-mode is not set (not: required: [adi,sw-mode]).

Yes.
That's true.
Maybe I'll add another condition here for that.

