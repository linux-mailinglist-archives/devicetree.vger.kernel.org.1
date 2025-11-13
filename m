Return-Path: <devicetree+bounces-238340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D30C5A05A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFB7F3B718A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB29322A28;
	Thu, 13 Nov 2025 20:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q4IRIYiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7818B2FC875
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763067136; cv=none; b=NdUtzYn7drD4VwnsU4zhvsKqxy6KyMwAgPN3Q9L+yRZSB/vvxfxpDpIDdOow1cjCQsDJaFOvnLL8aKzwL/luPROVAyDmxFjjzMarDnwmDHUgs2bP09XlJhxjKf5fxuayKCSunSfNTt6lVEBHO7DwiO79lvOc8oVBlAxCdugKySo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763067136; c=relaxed/simple;
	bh=xZmQNNMZsea2hQfm/jvzrIhTWGBHRJVU0auFRr/i++w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AGY6JhklOjsSfaJTTsYZO+i0yuvRRvpyuJwpmEk1Ow0L6JQRbJ2vx8BWIBfKwoMmwPEkW6Rq0lPuTA5ZlyrBDkbrAGkm4fguIPvZVrmW47qEFzB0JOleeaP16KpSXRspW5ldJe6bg4nfI0jSlrnTa3utwu+nZcLnMgwhGE9Om5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q4IRIYiD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b713c7096f9so152320866b.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763067133; x=1763671933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/QpcgoIu2ks3DBOSGB3kqmMN9BZ4kGrvl73/ZFCUn84=;
        b=Q4IRIYiDVpIR2vFDOi18FX2pQNynSJ2XiIyXrX0KuMDhxakIkMvOVGGeJ6eht5zxIZ
         i7RMJhG53hEwk05JHWtO7zmh4MtknCJihPjRvIBJK9t0NfWSYNpUTv5tj3UpB6dFUtCR
         flkpXl5F37kZAYL20i5DubwRwBKgQuhZg1xuI48/mHTXXGbwztvqbnSe65cq+b5dabfe
         KEzV0SZd5E8ns8LO6qN8sf6Dm5LYplpJWu+Y1wEqZyCD340wjHK1q4wNqPkOLiS17ZZ+
         /7tpaF+7qNdCRZOZeuOfU3ENaiR1QBqL5KsW9Son2YOHpsp0/Gk1bejaPJ5Iwc0u1Hrz
         9hew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763067133; x=1763671933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/QpcgoIu2ks3DBOSGB3kqmMN9BZ4kGrvl73/ZFCUn84=;
        b=YwvA6uffXJXLK3mVFHppzuwMrOwz+yr9WiBlSDz0DKB4pALFmIGQ04z7qGpjoEEhNJ
         oB57Gi2F09J9nnWG+Sek8oSm2M8xaqebJoxbRPjvWwEDYvlNm9jWj9GJc8T9CLNFF5/E
         5gcO49DzvqSg/9lflWUbC47f7coPQnfecCbP0xoovCj1BFyQxM3yI8Lj5u42aQrl0G1L
         285LAlU8CFg/gZUKNMqsrCa4hW6quZmEx+eMwvwBLpzL7tsWdnPRJmnKvKHN9AMXUGBF
         r0MUulywRE5/NYNDhOo5d7I7fcxf3HniG/Iwi+ezEK6CRlaUj5teAl//8CwcA4vlVPSr
         c5HA==
X-Forwarded-Encrypted: i=1; AJvYcCVF+83NcuvAkd/4l/91iaZPp9guXHHb9CeEqPis0IXe7dZW3COd9hDM0MXFTZPXqsqU1h7SQfyoE2hr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx1lYd9KXx+NS8KfYNYdrIAIcmoZTvLipm8YKhUesSIftD7sVI
	/lbQddrIlYg7RSwVW8kCb2VDjEXSUDaEN/9nshOL3lm432LDaNSbm2ydZsl+9wO/3kPT7pKtFRo
	7pvhlNE4F+RJK2fFi96qHwH9+HFYxYzs=
X-Gm-Gg: ASbGncty96XzyWWO6oyP+L/z2GRWFgOaB6Xl+otvj1km4LzwE3OTDGCRatk5P0ZYZW/
	FvTNy17nrEXPiAJTEi7ZU0mU4FsRboYxR72u1ADvCuclwb4hvKnehvn4CqyrxVe/OV/LfbKTR32
	mmOserNpGnFmnSbBCPKNxfhh8T6nKVowuGfQoIDhma6xgs3pYeza5v8AWAQBxFw9g+wraxkDAOt
	hOWsRN1Tmb3G2OaYySjzd4/DE0ZV5V7ZgGgQzGozZkhRC7zW6FDcIUKAtJOow==
X-Google-Smtp-Source: AGHT+IF76FljVgG5z/yMqwEMYVX8HeT7TsfOzksD8S8zuJmNS5uYTJqe0rSOdQD0tCK+gdLZla2Cl0YVH4sjvyOB6TM=
X-Received: by 2002:a17:907:3f0a:b0:b73:2299:b892 with SMTP id
 a640c23a62f3a-b736793d1b8mr63382766b.43.1763067132706; Thu, 13 Nov 2025
 12:52:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251110061409.726028-1-o.rempel@pengutronix.de>
 <20251110061409.726028-3-o.rempel@pengutronix.de> <CAHp75Vd9WCXR_QmefqPhWO1niMnESq7LAcN=eYvSiqkWfFrNhA@mail.gmail.com>
 <aRXnQZvyOLpYjg2i@pengutronix.de>
In-Reply-To: <aRXnQZvyOLpYjg2i@pengutronix.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 13 Nov 2025 22:51:36 +0200
X-Gm-Features: AWmQ_bnfzqzApDDqWpvBYYG6NkG5XHy1j8kKi1MuCfjcvQCMsTKPRy_ZN3bL9k0
Message-ID: <CAHp75Vc=90S2wedh2f+wxcLsGYZH_RSvjLasUP1SC-oSpt+nUw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: Add TI ADS131M0x ADC driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Jander <david@protonic.nl>, kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 4:12=E2=80=AFPM Oleksij Rempel <o.rempel@pengutroni=
x.de> wrote:
> On Mon, Nov 10, 2025 at 10:46:02PM +0200, Andy Shevchenko wrote:

...

> > > - Handles both input and output CRC; uses a non-reflected CCITT (0x10=
21)
> > >   implementation because the generic crc_ccitt helper is incompatible=
.
>
> For the crc_ccitt() related part I wrote this comment ^^^ :) in the
> commit message.
>
> Anyways, after some more research, looks like crc_itu_t() should be used.=
 It
> seems to work.

I see, that's good news!

...

> > > +/* 24-bit resolution */
> > > +#define ADS131M_RESOLUTION_BITS                24
> > > +/* Divisor is 2^(Res - 1) for signed 2's complement */
> > > +#define ADS131M_SCALE_DIVISOR          (1UL << (ADS131M_RESOLUTION_B=
ITS - 1))
> >
> > Why not BIT() here?
>
> It's meant to signal an arithmetic calculation, BIT() is typically used
> for a hardware bitmask or a flag. Should i still use BIT() here or there
> is other way to describe it?

My understanding that the SCALE_DIVISOR is not a good name and here is
something like maximum resolution factor, and when MAX_ become in the
name, the (BIT($FOO) - 1) notation is a good  thing that shows
directly how many bits that MAX is based on the HW bitfield or so. But
also note that $FOO =3D=3D plain number, i.e. 24 is assumed here.


--=20
With Best Regards,
Andy Shevchenko

