Return-Path: <devicetree+bounces-227156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F858BDF215
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3EA5F4F4915
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE7726F44D;
	Wed, 15 Oct 2025 14:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OVBg0GvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751AB24E4A1
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539361; cv=none; b=DkIF+20nt1XU6ywcDXBFYDhWf+wv23wVtswENK55RlKB1XJA7hyaKu6KCiUz4BQPhM2lKn3QJWjadr4qkm/5+Y5uNerBhH8L0knXjHZBEGqvKpRA7ITqyKQRfs1e98UJl3ytd3Z+hb9MjB0+9sL+QCHXS6SetM/DOn/owjYJSwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539361; c=relaxed/simple;
	bh=R+RZb2wy9J/5TGQx2voNXnYWcNOyJFa/k1JK4V1Ksu0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gighV3jU7rTwmMWhfMNYfHkYvbU6KtfeIE+3al1LmyN6EPuBEKCId16F4bf6WWI5qyn5SuxhkLKScLZwmhjLyDAC/7s8pm8hRaa1v9u1JqrbascRpzHExlHkbpu31xB5wpZeeGVnZLMy4EQOoNidHD1Bf448MpSPbfh8jUJGvHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OVBg0GvA; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4710a1f9e4cso119505e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539357; x=1761144157; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R+RZb2wy9J/5TGQx2voNXnYWcNOyJFa/k1JK4V1Ksu0=;
        b=OVBg0GvAufKKjNANUbPU5qdauq//nlD1dAnPvRbSrz1Y+ZAzUffczf9Fl+wyN38cVd
         oG5p9V3F+peXwaVdCXWIzQ30OIPb1VUNXEu603Y/y+yNgjpkyVNpbJiwEyzNRUt+fjpx
         qF2ljfIHtO88eJPUA71dC4M2IlYOEgv3UsvhBcE7PEwBqzfgEGGCKemaXkXgv5G0nh4Q
         wNrHJXERsx/4hnsa3YqRLSE1hk1Ym+bW7Qmiw6EJXgTdhylm/OBypaXRxPSTd05AI0XY
         d4+URkVSMsjg58G2XIfodrUd3hDUT+d211gsmcjXg1y2LLY0aLcy8yPP8lwvIeWVF7E6
         xcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539357; x=1761144157;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R+RZb2wy9J/5TGQx2voNXnYWcNOyJFa/k1JK4V1Ksu0=;
        b=CMrRQHlHJuDj/6hEqCp03QdFuyYCDpg3lOqszTSFyVXr/buajd+A3mtDyDuE78aJiS
         qjSmk1LQt8nSUXKdwibqcJUve6dRqXT5KaxLadch969eb7Q56q0YvKs7T93G6dWxcmlD
         8mUvxxBJ7+8vC8PQzleR+TDgFFeAy+o/5ZA+3MiJMFPQY4F84D5yRIY9H3VTppNtpPsj
         ML2ijNrlgAgH88620UdESSDrvD5EDjPeqgovP9HmrOmPhh9WqTWPOw4eEescP+QnlOQX
         9/AVCJKyUeLQRsLScK7oUi2OyYOcMCbpBibDWkpN6JAr1B7XwBBCzdNNLaqkvf2bXf/7
         TiHw==
X-Forwarded-Encrypted: i=1; AJvYcCXwQirF+pw8gKN0+k+KX/NCq0ztFtOhDx9aV72+vWL+m8d0eUk78Fb/XVMJ8+nGw94gOceEHRthGz0L@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnt4CT6yT64JpEn32FLYeER4He4LGiWpOhX1IpQP8PkMc4DOUT
	pF2JBEqvP9bBIoc7ZF40Gryjv4h0XE2ZG4MItu1+ugIO1NEiLkqlq/nmcqNBDg==
X-Gm-Gg: ASbGncswypSz+fjzc+cEaN0R4jDX+d5WflM91l/n42chh5yHd7b1E4LmvvhQA2GU2Jy
	aox/NQY1h3oiNYmRk5OgMiAvm66XJxIQqKExB8BG3nGYuLpqBQZ0v1/IEqgZQgWXSkdqbLzWLFe
	u4Vw9bsvVaejSjIplCafuVnpZzejZjbT1aw7wNOKyWY00/BkIh/XxWxzXBvuKV/t0kexdomn2hO
	RE+I2O7v1A17xE7QBU/kVpviMMFiSvrcvQL2kTtMxz2Ue2M1Gj0w2/5iN0+Zq+lODyrirEfzWx3
	LUZE0VDKkkK1hbo2KC8L2w4cOcumHLmG/Z4E+Wx4YG+eOoU34WH5XCBx38RojROWp0f8DBe5pBG
	+7q7M4beLhWQQeHA0GmofQ4HrJWy2Vfz8iD9cekJ1oq1g+GmsMQwzJWI0l2s3
X-Google-Smtp-Source: AGHT+IGuuKDzjH39vAEfmkO3f4qqciGa4DQ7MRGXfSIWlyO+usok8I3WtHonwMRrUViH02U0toSKjQ==
X-Received: by 2002:a05:600c:1c23:b0:46e:32a5:bd8d with SMTP id 5b1f17b1804b1-46fa9a892d7mr210880025e9.3.1760539357068;
        Wed, 15 Oct 2025 07:42:37 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489ac60sm309551655e9.16.2025.10.15.07.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:42:36 -0700 (PDT)
Message-ID: <12db0930458ceb596010655736b0a67a0ad0ae53.camel@gmail.com>
Subject: Re: [PATCH 3/6] spi: add multi_bus_mode field to struct spi_transfer
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt	 <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,  Nuno
 =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, Andy Shevchenko	 <andy@kernel.org>, Sean Anderson
 <sean.anderson@linux.dev>, 	linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
Date: Wed, 15 Oct 2025 15:43:09 +0100
In-Reply-To: <409ad505-8846-443e-8d71-baca3c9aef21@sirena.org.uk>
References: 
	<20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
	 <20251014-spi-add-multi-bus-support-v1-3-2098c12d6f5f@baylibre.com>
	 <9269eadc1ea593e5bc8f5cad8061b48220f4d2b2.camel@gmail.com>
	 <409ad505-8846-443e-8d71-baca3c9aef21@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-15 at 13:01 +0100, Mark Brown wrote:
> On Wed, Oct 15, 2025 at 11:16:01AM +0100, Nuno S=C3=A1 wrote:
> > On Tue, 2025-10-14 at 17:02 -0500, David Lechner wrote:
>=20
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 controller=C2=A0=C2=A0=C2=
=A0 < data bits <=C2=A0=C2=A0=C2=A0=C2=A0 peripheral
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ----------=C2=A0=C2=A0 ---=
-------------=C2=A0=C2=A0 ----------
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SD=
I 0=C2=A0=C2=A0=C2=A0 0-0-0-1-0-0-0-1=C2=A0=C2=A0=C2=A0 SDO 0
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SD=
I 1=C2=A0=C2=A0=C2=A0 1-0-0-0-1-0-0-0=C2=A0=C2=A0=C2=A0 SDO 1
>=20
> > Out of curiosity, how does this work for devices like AD4030 where the =
same
> > word
> > is kind of interleaved between SDO lines? I guess it works the same (in
> > terms of
> > SW) and is up to some IP core (typically in the FPGA) to "re-assemble" =
the
> > word?
>=20
> So combined with the existing parallel SPI support?

Not sure if this is meant for me :). parallel SPI is for parallel memories =
and
the spi_device multi cs support stuff right? I tried to track it down but i=
t's
not clear if there are any users already upstream (qspi zynqmp and the nor
flashes). It looks like it's not in yet but not sure.

Anyways, IIUC, it seems we could indeed see the device I mentioned as a par=
allel
kind of thing as we have one bit per lane per sclk. However, the multi_cs
concept does not apply (so I think it would be misleading to try and hack i=
t
around with tweaking cs_index_mask and related APIs).

Given the current API, maybe it makes sense to add (in the future) a
SPI_MULTI_BUS_MODE_PARALLEL or David already intends to support it in the
current STRIPE mode and I'm misunderstanding.

- Nuno S=C3=A1

