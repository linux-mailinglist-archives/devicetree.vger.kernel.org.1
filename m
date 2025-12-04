Return-Path: <devicetree+bounces-244514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D0471CA59D4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 23:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F8D83053E8F
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 22:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A14233508C;
	Thu,  4 Dec 2025 22:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EaD5CKhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B81F335066
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 22:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764886933; cv=none; b=dNFINJqJ6hKmoJltTLV8eGQkXoPKEdC3aN0aUIcRcpt8IN0eNTaPdjYyng/K11fePbMWtBW/7UI8RfiHa2pXypDQaOtijFxPcOhDJ24l4AaEWf69WIeUtM9j2AeQ4//DiD9ODWrJjbSLJug5j9RvZiB1nc9D3nr/kw1ratrvBWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764886933; c=relaxed/simple;
	bh=D6xxe3fyua+TN2tZMgy2Gw80PyQe/N50HFczCYjzibE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m9xOGvX2A9pap6aPyTuE6og4g0vp/lyl19jVjYvKvKkapwqvWkLWhUCwxEacawyFysY6SZaieE+/dTE54fuTv5mMAoks/+EEEFqJXIilyIFhc2brEygvnneSqX0JOONRIbRwXBNfYRFgIOSLN0n6fzbykyp3322/uU9r7FgWgZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EaD5CKhp; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b79d6a70fc8so232613066b.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 14:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764886928; x=1765491728; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XupUstTQcKQfp6Q5f2R4dwsrOpNjG+W+mOqffMiqwlg=;
        b=EaD5CKhpYXcP3CDF1eZZYnnEolEN4pOOOAc88koxvn2tYY03BjA/S31Fpv6rAi+KIZ
         u67N10agjF9wVRjAoWtCg9psyombmYJ2iUFeiI1k4tQV/yhbJdbyq0GsaFhIu/24hc+t
         XpA6r+DM0mA4iMx6xYAsVePFJaSJtZ10RTKAKeQ7nyluEJd91Mr7HkzQJCntIEIk29Ub
         hJR9B0KonMSUf2o2vgYkda7jfZZmG68hXVYrN3uJmYKvLi5zjJdbuQnOtScdtA+p9BIK
         JddlF+Pch8cxCibFW+zKrXq+5jcdcJwhhzBi3GX5mkV/Jh+nzS1ojvOIqmj2niVdDjuF
         Vrug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764886928; x=1765491728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XupUstTQcKQfp6Q5f2R4dwsrOpNjG+W+mOqffMiqwlg=;
        b=kUABq0T8JW3Bab6NuEuNNwvtqg1C4muoOPGWCMMsL4l5x0MOzlDxMq+NrTgDqXfbsh
         ETPGWyqzjgCMoiFcpk6Mq2XwUS883wGmN3AWhPj7O5Oihcvp+doDV7XQP+EDXRRl10yu
         o4hKOthxXqIbeK5U3C4Pj8fHLRla387BvkDX99gxZVgM+FAGVIRO7MY64my4v5W8cIgm
         8SNVdSPPKGzXledQZdFpUQu6Wl6fD6X3Gay+mSo4tP+yROtQDIxBH5ABHBSRe7NUpynL
         xQWlaHklG9EVLnaYuWCc0fjF4rDhpno6X3tX9/3zP/ULAOgomwM3JtRqvGOqE9gr3b0U
         miMw==
X-Forwarded-Encrypted: i=1; AJvYcCV+LyCGUQyNjUKGAXzNAHkDVGjjPGGU/PEN/4FD4i+9aUmmKf4sVJXns3ox9+cb9LZ6vxVrDs8QuvaI@vger.kernel.org
X-Gm-Message-State: AOJu0YypnNg7CAcgms4FTNcc/KWcXcDjtKJBJAiv2tjBCmczziQ/3h/w
	mJ3Uw4xjDvOqEiJ2t1rrMPsy2kW9Vb0sKZenD+3S4SfEfQ5sYynR+T6lvjY3WauQktgKjKgqdQh
	7cJqjaE06SiUbeYAOkdL/z2pLrdUtxE8=
X-Gm-Gg: ASbGncvJEhPhWbvo8bmQD/P6QabhP77Rk5SrytGFrl5xW166jkEx2gXWLUEwFanSqtl
	8UZIJAXFvnBqHbfB74RtAs88TFRWtdMi+Ddh5SuV2dqdxfbu2En3K+/oUZczVhcIEYonvcBF9AM
	Oea0Xwe0sVR10Y8U+cqX/A82QNsZkpjPhahbbc7hFp9TVUqf7WgcET1jlGWW0yxSGeaX0gMSUvS
	8U95vUEjMFRfM0XP2avBPbUM9TNNtO/d4FkKiVWiGKMvUARnLjjXd5idvrGvSRoUwEPSfEl34IE
	i/omfq2wT3n8F0j/cpdsoXZpCX03ve6UwbYgsbFC9foAIswjFDPn2LaHp2pgX3ZOzmluhY8=
X-Google-Smtp-Source: AGHT+IFXDSgZzBVz1g8UK31AUP8phQfiDKgwk3r9slHtleurRlUBKv+w/ggRRvanZGRCWmJHejrKRrmxiRrqkTM4yJM=
X-Received: by 2002:a17:907:2d14:b0:b76:7fe7:ff37 with SMTP id
 a640c23a62f3a-b79dbe8bdc6mr841679666b.18.1764886927851; Thu, 04 Dec 2025
 14:22:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251124-staging-ad4062-v2-0-a375609afbb7@analog.com>
 <20251124-staging-ad4062-v2-9-a375609afbb7@analog.com> <aSQ2JUN05vmMQC1I@smile.fi.intel.com>
 <rk4hmupbrb5ugxft6upj7ru43x3z7ybrobax45rorpwbcwleh6@vzxrr3m7r6ep>
 <aSgX9nMBwBtAlSyj@smile.fi.intel.com> <3izg5lyxjye24pvzoibk4tmnxbdfokr53abkpbjo5epqjoz55j@6wc7i4wsgwkt>
In-Reply-To: <3izg5lyxjye24pvzoibk4tmnxbdfokr53abkpbjo5epqjoz55j@6wc7i4wsgwkt>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Dec 2025 00:21:31 +0200
X-Gm-Features: AWmQ_bmbCUOw3LqhyL1NA8ZmvoQjfRd9vbO6kMBuNW89E9IZztlzzePVnfkiPE0
Message-ID: <CAHp75VfLd46xt_2W35gjoTCoh+PqExL-faZ8snhzfOx=65qXWw@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] iio: adc: ad4062: Add GPIO Controller support
To: Jorge Marques <gastmaier@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Jorge Marques <jorge.marques@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 4, 2025 at 11:38=E2=80=AFPM Jorge Marques <gastmaier@gmail.com>=
 wrote:
> On Thu, Nov 27, 2025 at 11:20:54AM +0200, Andy Shevchenko wrote:
> > On Wed, Nov 26, 2025 at 04:55:41PM +0100, Jorge Marques wrote:
> > > On Mon, Nov 24, 2025 at 12:40:37PM +0200, Andy Shevchenko wrote:
> > > > On Mon, Nov 24, 2025 at 10:18:08AM +0100, Jorge Marques wrote:

...

> > > > > +       return reg_val =3D=3D AD4062_GP_STATIC_HIGH ? 1 : 0;
> > > >
> > > >   return !!(reg_val =3D=3D AD4062_GP_STATIC_HIGH);
> > > >
> > > > also will work.
> > > >
> > >     return reg_val =3D=3D AD4062_GP_STATIC_HIGH;
> >
> > Hmm... This will include implicit bool->int. The !! guarantees values 0=
 or 1,
> > but I don't remember about implicit bool->int case.

> I don't think the implicit bool->int is an issue, grepping `return .* =3D=
=3D .*;`
> matches a few methods that return int.

Yes, the Q here is the value of true _always_ be promoted to 1?

> Experimenting with the _Bool type (gcc 15, clang 19, any std version),
>
>         int main()
>         {
>             int a =3D 1;
>             int b =3D 2;
>
>             return (_Bool)(a =3D=3D b);
>         }
>
> with
> gcc -Wall -W -pedantic -std=3Dc23 -c test.c
> clang -Wall -Wextra -Wbool-conversion -std=3Dc11 -O2 test.c
>
> also doesn't raise warnings.

Of course, because before even looking into warnings the entire code
degrades to return 0. I.o.w., the test case is not correct. But don't
hurry up to fix it, you won't get warnings anyway, it's all about C
standard and not about (in)correctness of the code. See above.

--=20
With Best Regards,
Andy Shevchenko

