Return-Path: <devicetree+bounces-220362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5820FB94F69
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 10:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54E88190377C
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 08:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B78531A54A;
	Tue, 23 Sep 2025 08:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kUgkHBd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8A231A042
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758615667; cv=none; b=ddyNxRy9tnszLhvOXqlYOg6FvSh63N90wsrcx0lJcXI8NIR7PcsXFrGC+uPU37w6DW61UwVzo4IMhN/z2tUrGBUqIOobclrQB1s2Bw2KyN8rUK5ztVdTlwtOaqjSEATfVCBMjQQ1YLl7JMkETkr4eU64txzA6vApdkK/Q1qxRgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758615667; c=relaxed/simple;
	bh=f7re57QCz3hpnfyc8Rk+bIVfVD27d6HuiXpGIteeQ8g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dOus59rc6gkw3WUcZYQyJn3ledcP2uzYUEYomk4dN6fXsHgoAqjbz1ICLKz/YD0wjwxk0KvQ2i+8wmkuPrn7+4uTBPa+2gBNxX4GR4qBwbFk8qe+XrwyPtucdKVSjoq8aLqEceXCCcyQMT51EMeTje8n1Htom91ku7fKmJHayug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kUgkHBd0; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-62fa99bcfcdso7686303a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758615664; x=1759220464; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AhmhfqnvAeJncIKaG+WP0RlASLHv+hRZUaH7TN0Eo0g=;
        b=kUgkHBd0AY+fJQiPpOEzXj2x2J+obg+iLvnYEPBE5npRKj+Hnsyco+iuangYe77heA
         ksnpfZTD4aBfiMI0M14jksUh1CTLqWrLP54QUnQXddKEU2d1m1q6OEN5iSl57GAQEkdJ
         MWQaf+JbUr+H+NAkwV9ryr+H1fbS6jGQbw6ZKJaNhRU+8AlU2cuqcdNCIYOGgNJyroFi
         MbcpoBm4XguiugFcp8n0QDvbIPzuE9tXqyqLeeihW5hwBjfC0gpIkBxKRbk6FtJziJGV
         mydFdb//4I0bDBq4LWcFaSKm5GDkGM7QQiAX3xiyMoie8gMsYWI7QaTM5RZxiZx3ftHB
         +6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758615664; x=1759220464;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AhmhfqnvAeJncIKaG+WP0RlASLHv+hRZUaH7TN0Eo0g=;
        b=Bg4QvDXRlj6pY7FPT16Q/cuNQNBmcrnqJITiMtuf8f9adbINCNLDGD/5tid2rnAgQF
         ojJXW8CGymNQ5lzCoLCKC1pFEBwYTLqC5avWhiPsojHvyWV5StiGX7kOePTVjHOxtz/N
         /AF8CRIrJwsIt1BVFCPTlr93e6jbBfDREWWhKFWuFFFNy7lGaeftw1Hbr/wC2JRGinMt
         H61yjxUQ5dP+epCQSCx+vs9FWav3M73ma/LzqxRdBDqaUJM15yBrVClJ0h1GBOEaLSf7
         O9bmJuWA5qRbHIE+07fv3o/ULNWmBYcHJ/ALHkXYztO0k8w53bUWdptpbIKUi0fjKDXU
         Oe2g==
X-Forwarded-Encrypted: i=1; AJvYcCXLFZ840I3YZMR6+LB4XVGMMiZerUqWfgAbkmBoSzLnFulJZDocndtl3wFsAoEfsd9I4KJc1V4kO1TQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5qPIR5xNj2amdqkc46YAzIfOY48DeWFVuHga001BSTdPYuWDl
	QRt+1ehOFpCBNaMpfBTw6g28D3J2NGmmMvubDcNkHMoDtVxfnlO2gIK7
X-Gm-Gg: ASbGncvv26YS1Wlny62smDJT3PGTN7rGkWtjyyvZTI9S9No5lkWMw9o6VdotHzQS1Pr
	Hi0jtDkMAkVBfZjnU6h7ZR/2UEPudHzImujVASdY0TgQNdlxIX9KdrBL0LvH9E49Dp3FzkA+72T
	719JAijGIw0UvgfA6qgN6tzXdUwaZbi4BvrK/6hYysSpnyGMiCOt0Yl7SXPqcIPtGa0mBmn53E6
	AoAU2cNEYhORogG8nTx8y/SlFRLjk+gEvbH6cCq9of9LQjwaQTKsf9H1vrM6LxTD6VvkwTDipwj
	Vipzwnksl50mhonXxZdduFzxUcLTbRsBYzRS3fkm5cAtsZ9ZXJ5fhAvAOyiYjx6Luves62X9+pr
	3yKfib0EQduBInEQVQLxYe1UU
X-Google-Smtp-Source: AGHT+IGFMtMk1tU3B4zQBbIphTLmZaVJ9Ckxo/UCmlJ6T8uLNCcZMLmNfiD71dDZglBrDEV65/suyg==
X-Received: by 2002:a17:907:7611:b0:b30:2f6b:448f with SMTP id a640c23a62f3a-b302f6b47f2mr152382266b.25.1758615663347;
        Tue, 23 Sep 2025 01:21:03 -0700 (PDT)
Received: from [10.5.0.2] ([91.205.230.222])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b29961979e5sm676840966b.0.2025.09.23.01.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 01:21:03 -0700 (PDT)
Message-ID: <02c26151da7af1e05aecadf0e2ce20552c2908e0.camel@gmail.com>
Subject: Re: [PATCH 2/2] iio: dac: adding support for Microchip MCP47FEB02
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Ariana Lazar
	 <ariana.lazar@microchip.com>, Jonathan Cameron <jic23@kernel.org>, Nuno
 =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Tue, 23 Sep 2025 09:21:30 +0100
In-Reply-To: <3457c119-2f49-43a3-b96b-736b8f5de99b@baylibre.com>
References: <20250922-mcp47feb02-v1-0-06cb4acaa347@microchip.com>
	 <20250922-mcp47feb02-v1-2-06cb4acaa347@microchip.com>
	 <859d8472a8f9e8d28b890ad565f9d3ce11e162d5.camel@gmail.com>
	 <3457c119-2f49-43a3-b96b-736b8f5de99b@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-09-22 at 17:15 -0500, David Lechner wrote:
> On 9/22/25 3:10 PM, Nuno S=C3=A1 wrote:
> > Hi Ariana,
> >=20
> > Thanks for your patches. Some initial comments from me...
> >=20
> > On Mon, 2025-09-22 at 14:30 +0300, Ariana Lazar wrote:
>=20
> ...
>=20
> > > +static IIO_DEVICE_ATTR(store_eeprom, 0200, NULL, mcp47feb02_store_ee=
prom,
> > > 0);
> > > +static struct attribute *mcp47feb02_attributes[] =3D {
> > > +	&iio_dev_attr_store_eeprom.dev_attr.attr,
> > > +	NULL,
> > > +};
> > > +
> >=20
> > Not going to argue about the ABI for now but I don't think this is a
> > standard one? So
> > if acceptable you need an ABI doc.
> >=20
> Here's a random idea. (I would wait for Jonathan to weigh in first before
> assuming it is an acceptable idea though :-p)
>=20
> The config registers are pretty much going to be a one-time deal. So thos=
e
> could be written to only if they need it during probe.
>=20
> For the voltage output registers, we could add extra out_voltageY channel=
s
> that are the power-on output state channels. So writing to out_voltageY_r=
aw
> wouldn't change any real output but would just be written to EEPROM. This
> way these voltages could be controlled independently from the real output=
s
> and it uses existing ABI.
>=20
> In any case, it would be interesting to hear more about how this chips ar=
e
> actually used to better understand this EEPROM feature.

I didn't really looked at the datasheet so this can be totally wrong. But w=
e
have some LTC parts (mainly hwmon stuff) that are also packed with an EEPRO=
N.
AFAIU, the usecase in there is to have some defaults you can program in the
chips (and there's a feature we can enable so the chip can save things into=
 the
eeprom automatically). Now, in those drivers we don't really support doing
anything with the eeprom at runtime so I'm curious to see how this unfolds =
:)

- Nuno S=C3=A1

