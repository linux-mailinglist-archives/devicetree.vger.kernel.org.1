Return-Path: <devicetree+bounces-244643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D0CCA778C
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 12:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 382013029276
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 11:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3696333033C;
	Fri,  5 Dec 2025 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6DPTGCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD06D2FF679
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 11:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764935613; cv=none; b=H5rvWvLEHu/0EPEayaxDD0F0ypMJf+yt5lzD/b6RSgO8S/Omcis7qOCTorPJUmPnt+xrrX0+3tF6zqs5a8y3+ttTGmZwmZUncbor+bwrGJ4CCJx/a9+Xw5oGpFFJ7dhb2RO8PKErROAbIch9oQ1VqLRtcdkohKbEysprGUjpDsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764935613; c=relaxed/simple;
	bh=YJCejSSlp5BLiFi26SWpMkczGtydRQ5mSdIigPCD7qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S416EuTJYOBa4ZZ1+Q7KBJMjwMU7nkLx4+O9Y8uhq+YbAjnXvImqPRMuv6StJ38BS/2feXraOeCvfqSf+KiTTQDWChunXBLPBM5updwMam86xzlKjUHQ1yCekfiaMxpdodeIk2ZiCHCgoDKffAWqvKVJopIdu6cMgPEyeXHpbLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6DPTGCS; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b47f662a0so1590521f8f.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 03:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764935606; x=1765540406; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4oMXK/FjVegirY5SREBrXWKVrn6jX7f3cdMgqorSo9w=;
        b=Q6DPTGCS4Zi/CzaXKQrAHwKxVk0602h0hfMKHe/1NSlNq6gytywKufe/H/uXoSrIfh
         aZvKm84E94W6dBli9z2ZWSbBrH0sg/vKK0YVK2GwxIujtUjYRoJtZ+5p9gBmoVgAvEaT
         Nac5bZee27h+nuzQaRnhytc2sRDnKp4b/gCgA4pFatogtDtQDqaX9wDBXuSHczxc3wyx
         VoEStj3d2RehfqpLtMQdjXcPj+XhY0LQpJFOKLb6C6vbtaZaY+s3dVCcwkhpWJT8qixf
         Po3CgZt2VnYEHBLGpzmISzC38yZwxwYhXF03bN6fT3h0lZr4i8VuTdAIrqL8RnnT0cx8
         Iobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764935606; x=1765540406;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4oMXK/FjVegirY5SREBrXWKVrn6jX7f3cdMgqorSo9w=;
        b=BVfL0VLC5Kudxhjsz8HAWPUqf3467PpgrvtL5u+nw7ImUbQfvgcKyznV9dFhL3VuaF
         zuyZow1Jkynj/idGtDszwLHI3nJvm36M2sOFD0lSpKfMNiWnnl9ABzEwSycd1jGkVhWX
         vlstNDupw0GkoXZc8G9lL9qsz2ajI+O84YdFggU/fzMX8KjpNg/40PCWnVu6MaBCO1bl
         F1MoljWSAdbLdmv1Fi+SqzF74kvfQkvEf+lkSdE/Tf5qkPm7NtEv0/TQhxTx6ZxKXgWL
         L0MKWOc0VhG0nlyT3hJU1pUXXoqwU0FDkn2Od3cUJLoo/uQpmwd7ewOHiCcyozAyomNY
         Frwg==
X-Forwarded-Encrypted: i=1; AJvYcCUYsBcklk15JWqCRBl3aFf0KGJb20I6m0wh1q9DkpEQxeZ9pNHpWga2HsfY6CjjzY7x3MK8e8qXSXM1@vger.kernel.org
X-Gm-Message-State: AOJu0YzERNYABVy9Stb38G8O5R1V0oeyWohQe8m3rBvzwuJHOEYeoMs4
	EA4CrJyUzr7eVuGtq0jiUFGVMjZl12pd55P+kxsrK6H7sWJp6lHDpvRA
X-Gm-Gg: ASbGncutX9ttN6jkm6woPWnES6Rj4s5sgcQ8Fr2FudBaHusgBUIteBtF7OSui8nfwDa
	35rLtpHZHygzfGn5sMoaq7tj5iTzDDr0GQysbz6CMvV5irpF7ymS05Mws00UbQmLrbvvTyYy8sE
	u0MRTX5jImmp58aOMInZGX5QpoPN3mIS2ky/VCvsSCmPTnTNt6uDDmvoMIXjvh8Jm+SjcjW6wL1
	BHP44qFirv1gIpawcQtVw+IEK8sWN+1plTd/NJPlKw1UaV2u403AMfiiNVJ/uLvZGqcSVvFi1Qr
	gj1SPp4///U3reIAL3X6LlyWpmDBfJ4jI/1QJQPH0OmsIKUm3J0SkifFoEdvl1h1bpzniAHX0us
	eg2CSqsG7G/TtwkmEd5yrREvquyuQDlaadCFPmctsmFjs31kvbRuAP5M2sfhLdZacQxAVjPe6sz
	GfcDNFh61c24ipI8sQW38sTJspwEpz/lOBUJgOOvQNKvWVW2k0Jn4ONroS1gOlGPq81+E=
X-Google-Smtp-Source: AGHT+IHyVq1TxDr3VEMt1d+mdj1M0HSV8r65o6SHKi+8hiPBA1XHe+HyzivannicYdrPR2vI4N8sHQ==
X-Received: by 2002:adf:cf0f:0:b0:42f:84ed:ce5d with SMTP id ffacd0b85a97d-42f84ede0b9mr1636999f8f.28.1764935605767;
        Fri, 05 Dec 2025 03:53:25 -0800 (PST)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2001:a61:123e:4501:9c51:c3b7:65d6:48d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbfeadesm8509514f8f.10.2025.12.05.03.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 03:53:25 -0800 (PST)
Date: Fri, 5 Dec 2025 12:53:23 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Jorge Marques <jorge.marques@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v2 9/9] iio: adc: ad4062: Add GPIO Controller support
Message-ID: <egl65ctlz2umzcdzf7ke5c2hnd33ghudklmf4pdgnp64vnzjg3@rpqrludyv4p2>
References: <20251124-staging-ad4062-v2-0-a375609afbb7@analog.com>
 <20251124-staging-ad4062-v2-9-a375609afbb7@analog.com>
 <aSQ2JUN05vmMQC1I@smile.fi.intel.com>
 <rk4hmupbrb5ugxft6upj7ru43x3z7ybrobax45rorpwbcwleh6@vzxrr3m7r6ep>
 <aSgX9nMBwBtAlSyj@smile.fi.intel.com>
 <3izg5lyxjye24pvzoibk4tmnxbdfokr53abkpbjo5epqjoz55j@6wc7i4wsgwkt>
 <CAHp75VfLd46xt_2W35gjoTCoh+PqExL-faZ8snhzfOx=65qXWw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VfLd46xt_2W35gjoTCoh+PqExL-faZ8snhzfOx=65qXWw@mail.gmail.com>

On Fri, Dec 05, 2025 at 12:21:31AM +0200, Andy Shevchenko wrote:
> On Thu, Dec 4, 2025 at 11:38 PM Jorge Marques <gastmaier@gmail.com> wrote:
> > On Thu, Nov 27, 2025 at 11:20:54AM +0200, Andy Shevchenko wrote:
> > > On Wed, Nov 26, 2025 at 04:55:41PM +0100, Jorge Marques wrote:
> > > > On Mon, Nov 24, 2025 at 12:40:37PM +0200, Andy Shevchenko wrote:
> > > > > On Mon, Nov 24, 2025 at 10:18:08AM +0100, Jorge Marques wrote:
> 
> ...
> 
> > > > > > +       return reg_val == AD4062_GP_STATIC_HIGH ? 1 : 0;
> > > > >
> > > > >   return !!(reg_val == AD4062_GP_STATIC_HIGH);
> > > > >
> > > > > also will work.
> > > > >
> > > >     return reg_val == AD4062_GP_STATIC_HIGH;
> > >
> > > Hmm... This will include implicit bool->int. The !! guarantees values 0 or 1,
> > > but I don't remember about implicit bool->int case.
> 
> > I don't think the implicit bool->int is an issue, grepping `return .* == .*;`
> > matches a few methods that return int.
> 
> Yes, the Q here is the value of true _always_ be promoted to 1?
> 
Hi Andy,

The relational operator result has type int (c99 6.5.9 Equality
operators); and when any scalar value is converted to _Bool, the result
is 0 if the value compares equal to 0; otherwise, the result is 1 (c99
6.3.1.2).
https://www.dii.uchile.cl/~daespino/files/Iso_C_1999_definition.pdf

No conversion warnings even when forcing _Bool type.
There are many usages like this, for example:

drivers/iio/accel/adxl313_core.c @ int adxl313_is_act_inact_ac()
drivers/iio/light/opt4060.c @ int opt4060_read_event_config()
drivers/iio/light/tsl2772.c @ int tsl2772_device_id_verify()
lib/zstd/compress/zstd_fast.c @ int ZSTD_match4Found_branch()

I cannot find many legitimate usage of relational operator with the
double negation.
  git ls-files | xargs grep -s 'return !!' | grep '=='

> > Experimenting with the _Bool type (gcc 15, clang 19, any std version),
> >
> >         int main()
> >         {
> >             int a = 1;
> >             int b = 2;
> >
> >             return (_Bool)(a == b);
> >         }
> >
> > with
> > gcc -Wall -W -pedantic -std=c23 -c test.c
> > clang -Wall -Wextra -Wbool-conversion -std=c11 -O2 test.c
> >
> > also doesn't raise warnings.
> 
> Of course, because before even looking into warnings the entire code
> degrades to return 0. I.o.w., the test case is not correct. But don't
> hurry up to fix it, you won't get warnings anyway, it's all about C
> standard and not about (in)correctness of the code. See above.
> 
> -- 
> With Best Regards,
> Andy Shevchenko
Best Regards,
Jorge

