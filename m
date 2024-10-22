Return-Path: <devicetree+bounces-114222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B219AB06F
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 16:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D4092816A5
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 14:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7029C126BF2;
	Tue, 22 Oct 2024 14:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="R9JmfeIM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A8019F10A
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 14:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729606124; cv=none; b=I/x52jAC6eOEnAfqxPCAsz5pwvmAhaMh+ewSTyHgLHSffTz+4rPHwBrfwPWbZlVQ8IFS5PdtmTIL0tgxASqVkc/Syo+aG/H2Q5CEbjugQjFUUA3skW3JMY7p5dt7Q9T7i5kVm/WUbAcKdCK3ZYmoyKxC3p6SZR85gWx7oTd6JbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729606124; c=relaxed/simple;
	bh=tjVA4wPBkfKQ6ZoNiKzIHXbVCvS7+Rbsc51rfzCNOx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JfouzU2eMwzhZo0ZmN3KhdcuadUEoUom0QF3ufFmeXBm+nHZmBNIGhE0dN9KnBB3u9RVoBoozx9qXNTSbTmTlloZtwmoVWVOp8Kgh2PfWYecamdsAPmsmFXvRHYxt441LTnUbI0l3VHO0zjylNicn0nCzfSWge5W3isNm3Sx2o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=R9JmfeIM; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c984352742so6076487a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 07:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729606120; x=1730210920; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tjVA4wPBkfKQ6ZoNiKzIHXbVCvS7+Rbsc51rfzCNOx0=;
        b=R9JmfeIMQAEVQzvBsalawxYCDtX0z62qckE07990ISr00Iy31tYHwoAXztiyWv5Zrr
         G2qHGXTYmqNcprwWODuoYhv2l8/0u4IieniKMQHNj2Yg4KP5roqGaV9DlVAGVRagfVs0
         3iGk5OOGwyFfSB1dTloeu1RsvMAB7RHrjflQPEFmNn+BxeKNPTSJEWerJuqNbn9Kds6k
         keiIHIJWxcMSrC+6veBUky++PtTu4o7UYVi4vPkvsddBdCPPQ+oggW9Q4ID29UvAq9L/
         D7nakc7CNPmwqziyPfrIMg0Hw7EDlJ9w9I341M5/r16I07WlyA1JVUwa/VLkqklKnh1R
         5d+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729606120; x=1730210920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjVA4wPBkfKQ6ZoNiKzIHXbVCvS7+Rbsc51rfzCNOx0=;
        b=TwGsMw86eiHAnTe3NnGyLpwl7pzBmxezYQAYSy9ErIWVzbvKi9HrlsgTA/apRRCFeE
         f9ydvRrSv6Nw5PHUOt9L8z3bpE8iAHyBuT8EqvpWR0/hcOZTwPFcmyvOui/HC8pmg0TC
         QWe5ZIHebYzt7C4ND6OeVaVmIFHQK+gZccJaJaZe2wvnJTDcfXr3Jl2LVI0Y8Q9ehDHS
         4ve99/NEpg9woHNWEfqe8F2x9/8HD0uokLGVNL8BoNQHjtjxAaUZ//xzQyOxcSo55HyE
         9BEKv7Z/PkJz3nBO8AQMQQE5LnZ9/PZuApT/nSuYprGaaIgPsaNPGYE7uw0kQ3/M+PBG
         VjIg==
X-Forwarded-Encrypted: i=1; AJvYcCXTElIRg1LeAN435FtvowKh9dkcZBDSFHPqmk/Mi2Cg/9y8cmi3IIAaszIwYbgAhoclKByAuTpHLYWR@vger.kernel.org
X-Gm-Message-State: AOJu0YzvDt6Qbzu8Ei44rrXkRliRZjAF8jZbc+9huXTjUa3fCjtibkJ2
	7F94EitibCzHN3F+dyOqsypAU71z00JOVpLU+hyQiGHNMKguVLFJ4VN1pymhII8=
X-Google-Smtp-Source: AGHT+IHy1obOPdSFTH4jEevE5QmadRhAziwbxrTbJrKYjpgU+/yYf+kYZD5Q0NrExPaDKLAdoxSN8g==
X-Received: by 2002:a17:907:6ea8:b0:a99:c9a4:a4d5 with SMTP id a640c23a62f3a-a9a69ba3a3bmr1316016866b.29.1729606120245;
        Tue, 22 Oct 2024 07:08:40 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a912d633esm340973466b.43.2024.10.22.07.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 07:08:39 -0700 (PDT)
Date: Tue, 22 Oct 2024 16:08:37 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Guo Ren <guoren@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property
 for snps,dw-apb-gpio-port devices
Message-ID: <gtwdkkeckdtcfkovfljfoaplrhdjabqwagcvvub7zdnwp3dyqj@lztfrve6zhmh>
References: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
 <d5vjohhftbx5zlsay6hfij7p5qbcrrebnj2sspsdtkgrkz4scq@aifcdtxcqqqd>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x5jtz4itd7bqp4n5"
Content-Disposition: inline
In-Reply-To: <d5vjohhftbx5zlsay6hfij7p5qbcrrebnj2sspsdtkgrkz4scq@aifcdtxcqqqd>


--x5jtz4itd7bqp4n5
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property
 for snps,dw-apb-gpio-port devices
MIME-Version: 1.0

On Tue, Oct 22, 2024 at 06:04:17PM +0800, Inochi Amaoto wrote:
> On Tue, Oct 22, 2024 at 11:14:30AM +0200, Uwe Kleine-K=F6nig wrote:
> > snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
> > ("dt-bindings: gpio: dwapb: Add ngpios property support"). The
> > respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
> > Add ngpios DT-property support") which is included in Linux v5.10-rc1.
>=20
> Please add Fixes tag.

Ah, I expected that the usage of snps,nr-gpios in the dts files predates
the deprecation. So we could add:

Fixes: a508d794f86e ("riscv: sophgo: dts: add gpio controllers for SG2042 S=
oC")

=2E That's a commit that just entered mainline in v6.12-rc1. But I'm not
entirely sure backporting to stable is sensible.

Best regards
Uwe

--x5jtz4itd7bqp4n5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcXsdkACgkQj4D7WH0S
/k7QPgf+JxwQoGZ/K4UUbdU+7wqGmzOQqJdDhhxUXWrsDBv3wjlgykocbHF1MBUU
Y9kF9HmpHU+KyNR4cEiVQlNeTjvd7NSLVaxhYGXxGC9de4O9jjyV/+Av7A1SRmzd
6laTt1pKt4YgTQfHKnxSNs6zY4JbZ9oXNaGE0xg9R3nCemaC1qKPtTTF6vQW9BGi
kHFCSCEyUqasnvIjFcF0+v5iuIyEGdbKfOn/LyZ5nJc1YGLzktcbW7/onZvPxabL
uXxEisOFZiy5Jq1JWoNIBDTheS6k2m0FLBbtCs3rPk9ucU8QpzTJfby6S/lIEWyS
fNuFcTmWcA2GAbfrw07KD9OttRL5Hg==
=8VtR
-----END PGP SIGNATURE-----

--x5jtz4itd7bqp4n5--

