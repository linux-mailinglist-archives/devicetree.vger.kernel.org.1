Return-Path: <devicetree+bounces-247168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8098CC51E8
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 216E6300927D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 20:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61112283686;
	Tue, 16 Dec 2025 20:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kGKVs8b4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A3D24A058
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 20:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765918167; cv=none; b=BUXKlrVqm48Myk6k1n660JyGH/jab8la1BL7zsqTIk+bZrIoGU12p7lT4/JfrryMVHBChk+H0IyGvIEAdtVFmYcIKe7AVQXtAgVFqV7if6Wjql3LBAHRaoGC6XiCDeRJQdE/NCHL6MHoj3D8l7z2aERLX1BDhnONAzs+ouHrxlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765918167; c=relaxed/simple;
	bh=R7S5XBixF3uYt2ltrMgrPEDqaR/EhDDXEQ41SJyHdbs=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=GzR54m35tq5VoBonGpreis/lT5z65l85ypY25RrFdlusOXAJGUteM+0Npkc3skItrXhs1LE1Nbo/oZ9VfrqJU+1GiMItPk6yAy4ziBzysvAvP3LhaOtgbdpKhq/AW84Srm6NzupCj8PkGpx1RB5LKIol8MPiaDA90TB3/5KkFVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kGKVs8b4; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5dfa9c01c54so3313926137.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765918164; x=1766522964; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dxKHiLj7ErsPLc8qt6gIwV3RiYG6xR2jl3i32WC7oI=;
        b=kGKVs8b4CQBMWy8QamnEBYsJSYi6Xq+KkqjVKWmDqdgWEQInOASuVyrLfne1aFXMqV
         DMgQrYSoExKQAvAQUNq+VdmfyZ75mkuyG1ece8kn7WCS2H/UxqT7ItAP+O1DM5s+CNHB
         cC4BQ3MhBq3Y+9k6vKdlT6fe2yYd82PpcAc91PR2Iw6QUkE1arQK/IW9smodsFOcmRXg
         8tsQsCDNFAtnADUNg1iJkHbFHaIco0wFf+2b3fbU8xvDk1pjarOFR1oQxIdnXpZEG22G
         U/0+5cr+oHlH3Ec1UW41cr7LC3CYhct6ExXA3Wk2eUqvDUkj4HrITaqfi4bgTdLYi8LX
         Moxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765918164; x=1766522964;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8dxKHiLj7ErsPLc8qt6gIwV3RiYG6xR2jl3i32WC7oI=;
        b=kYwN8oUjsb7fJBqPhtRiYkfKorc+CRF+6oEcgXql8iwt3t2QQCsrkClAuBOulqj1+Y
         rz/xwshga5YY6D2ago20NeZi4MJVimIv4pfi0w4PqX3MAkaDFi9UP1FAWyxjxgybqhla
         c/Gjmw3EcerRB3jfojSEaCCRaiM9cJrHZdoQze8NUVZLLK9foc/4MHgSwlnxc+qWAnsj
         /+4lMLHCxIuSi3jLh/plI7sYbMYQe44WTbGwAg5kkHxOYSuGlehQDrv9VQu1l3OkCwum
         POb3fvZKbmGVXnXCbqNFcebZreUyMqPgK8PRliDgj40PW/sS6VqM8DBQ0vTuuGvKJZuC
         InbA==
X-Forwarded-Encrypted: i=1; AJvYcCVk0SD/YxnoPl3mooUzrYnm5jD7vs5cWy8kc3EPH7kQo6ztMiyAlVlgWHLT7lOGj+W3PO0kY1wmLlMa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8FuE6g7dEL39Tb2XT2crBfiMMWd93h4NmBWGFJKa4UwlCZTfO
	g+G7r3Ibrqcf+tx5M1YT2UnOOTBArX2GUIz14if/0laLuTX0giceFBSB
X-Gm-Gg: AY/fxX4Bl2bAAwfvQmYQcA2uICI4T0vqaH9YfiicoY9q6EpEDqHSZFD0mM/LW7j93oZ
	m2N/OCN3KpI2Sa5/AWFNnbP6KFnGyIkjVbC/GV3uxeTeKR96YdHmh9QB9gHD5UTAoRf235HzI60
	b+tL0YtgCalGf9bF6CpQar+Xj5NBy2SK4c298+ejvR1lg07w6V/8p8KRCrhnHfWHrtdzLC3kQWU
	YDzbkAVO/PGf+hseoB6i+MTuHVsEklNt3edDDqbhSg3jsUPMFCO7Sb6QA/cUlZD30YVLPP0Hk2/
	vOFurHuFFqOmRmbdXGUJe492+UPzupfb6Vrs8EGaDMrFKqI6uL8/XspbnSNWoCxpdCxIsl0fcgT
	lP1vuj9FBX3WcPOcm19j3sna0RRPawzsgH/H1vRw0vNR2p5yFhEfvA871Fzw21cvrN2xBc6YtRl
	zBswm6BQ==
X-Google-Smtp-Source: AGHT+IFA0ZxxYgAsVtA9i5elaqbLDSzPCkraW+M0I1/U7o+x0Y5JFSfqrO5PMnkRvovtXH6qMbPNsA==
X-Received: by 2002:a05:6102:4412:b0:5d6:218a:66bf with SMTP id ada2fe7eead31-5e8274895demr5093041137.6.1765918164559;
        Tue, 16 Dec 2025 12:49:24 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93f5acacc12sm6316965241.1.2025.12.16.12.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 12:49:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 16 Dec 2025 15:49:22 -0500
Message-Id: <DEZXQS9JU593.3TJMIOOJXD1JL@gmail.com>
To: "Jonathan Cameron" <jonathan.cameron@huawei.com>, "David Lechner"
 <dlechner@baylibre.com>
Cc: "Kurt Borja" <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Tobias
 Sperling" <tobias.sperling@softing.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
 <064e059b-5c86-4c41-8de8-b6a728361fd3@baylibre.com>
 <DEYY46ZUJQ35.YBNYWLGZMRYA@gmail.com>
 <bef2e71c-fd76-4e73-9e53-422f9fa96757@baylibre.com>
 <20251216182106.000051c3@huawei.com>
In-Reply-To: <20251216182106.000051c3@huawei.com>

On Tue Dec 16, 2025 at 1:21 PM -05, Jonathan Cameron wrote:
> On Mon, 15 Dec 2025 12:09:31 -0600
> David Lechner <dlechner@baylibre.com> wrote:
>
>> On 12/15/25 10:54 AM, Kurt Borja wrote:
>> > On Mon Dec 15, 2025 at 10:55 AM -05, David Lechner wrote: =20
>> >> On 12/11/25 10:25 PM, Kurt Borja wrote: =20
>> >>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> >>> analog-to-digital converters.
>> >>> =20
>>=20
>> ...
>>=20
>> >>> +static irqreturn_t ads1018_trigger_handler(int irq, void *p)
>> >>> +{
>> >>> +	struct iio_poll_func *pf =3D p;
>> >>> +	struct iio_dev *indio_dev =3D pf->indio_dev;
>> >>> +	struct ads1018 *ads1018 =3D iio_priv(indio_dev);
>> >>> +	struct {
>> >>> +		__be16 conv;
>> >>> +		aligned_s64 ts;
>> >>> +	} scan =3D {};
>> >>> +	int ret;
>> >>> + =20
>> >>
>> >> =20
>> >>> +	if (iio_device_claim_buffer_mode(indio_dev))
>> >>> +		goto out_notify_done; =20
>> >>
>> >> This should not be needed. It should not be possible to
>> >> exit buffer mode without triggers being stopped first.
>> >> (No other driver is doing this.) =20
>> >=20
>> > Previously I had my own lock here because ads1018_spi_read_exclusive()
>> > needs locking. =20
>>=20
>> What exactly are we protecting against here? I.e. give side-by-side
>> lists of possible concurrent function calls where there could be a
>> problem.
>>=20
>> Any call to iio_device_claim_direct() will already fail without
>> calling iio_device_claim_buffer_mode() here. And since this is
>> an interrupt handler, we don't have to worry about reentrancy (it
>> can't be called again until the previous call returns). And nowhere
>> else in the driver is calling iio_device_claim_buffer_mode(). So
>> calling it here doesn't actually add any protection AFAICT.

You're right. I assumed threaded IRQs were reentrant, which doesn't seem
to be the case. Thanks for pointing it out!

>
> Agreed we shouldn't need this. Given these comment and my lazy nature,
> Kurt, would you mind spinning a patch on top of this series that I can
> squash with it on my tree?  That should be easier to review than
> a full v9.  If you prefer a v9 of the whole thing, that would be fine too=
.

Sure! I'll send a patch later today.

>
> Thanks,
>
> Jonathan

--=20
Thanks,
 ~ Kurt


