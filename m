Return-Path: <devicetree+bounces-228396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A78E1BED116
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 16:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F004934C5CD
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BCC19D89E;
	Sat, 18 Oct 2025 14:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IvWGG/wU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C3517BB35
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 14:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760796989; cv=none; b=iBS3ja7sxcAxyrr4PzsQBEq1o5+DHw2Y8CF2DwJyKaYw27CmF0WXfkPXUlECEJv1v1mzFFjVa6qb4idtfL+K31jRZwrOn1r7toiPkdzF5j3+f/x1Q/nhcCE3oiZN9wgm4CYX8irDlEQEDxS8EMDMmXWA0D+zrLZePHsPcDtVqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760796989; c=relaxed/simple;
	bh=X29ameIskitCKG39iDo9fnFG74io4N0elFSW5JYWjCU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RphkRzbIF0QLGpazdAQ4ysebc7NdzkQcD/TmjaNd4wvXW4Mpk/QT/BN9ZTC/VvXZSl7MzmB44dQtXKorhbBKzsmCJt5z5Te52j12N9AQhpn7Hb++SqsPM1fCH+Zo4LSq4XENx/IWEuRT+WCOWQRdPO/Zvr2pwpzVa4QCPq3mPUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IvWGG/wU; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e542196c7so25330815e9.0
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 07:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760796986; x=1761401786; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IlCRwb6ZxMUe1+qjY84Z++qKGjm7fl4y3NpRzyLl6u0=;
        b=IvWGG/wUtI48CVMZIi9Os8g+nfjkPY39YS79IHWMLT0tVBRwPXOgf8LDfqH+LEcRJ5
         tx76ayt/kII0DAvvry2RDzch4AdRaKXf6M786FkJR4ES6WADi4A7vhVLStCZTfJY9sxm
         /SmeQ7F9tMPrTyQKBtPMFxwstaJVZnzeVNzKbYWMAt9ZLLejxQt9IJDn/313AMjPZOsG
         vPaJFC1HrUgYEFvv2rckwnC6koMxbwMPbcGUWxLH+kPOkcNeiN/XRMO+5MoVtHDoPpUa
         Z1B9h/EhFHFWI6kyKyUjwq81JvdTW/YmM84hOgkOtaU5ra1S7DoVvrpyzDkjoXgvneDN
         SyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760796986; x=1761401786;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IlCRwb6ZxMUe1+qjY84Z++qKGjm7fl4y3NpRzyLl6u0=;
        b=IQYfIQrWV2zykKhZx4Rr01/QZ4yvyKwMDb2DP00yvmjOOdP0E3uefKK/q4qKLg1bTX
         LgAKIF/B5xnVajzKX+x01XtdtxwZJI3VkQRRalMxuUSCu4iaktHbBlrzfpaBYqKzbh4M
         Qe9Kqj85ad8GJXSA7GqrWTCshjkLWmH654rBMtNPOh143uZvTk8EJl9T66jIEW19VTug
         6JJ+vtlIFS+SM93Xq9NPChyG4/oO1BUGarDv4nY6vxhOjByJM7Yij1l3i8/UM+sgTuw1
         n9WfQlx5M1A8kD4tRHvPSlSVStxIKACEss3GY5w3HArsLLpqPOuTjGSuFlSlDEaT3wBi
         L1dA==
X-Forwarded-Encrypted: i=1; AJvYcCUtWkn44ieC36bb/48h3w5fKTtGUD+E+gAs1glKyNW2gAIYHgBz5q8CW3UQqaw4VkLWfdHVLhGkZkdi@vger.kernel.org
X-Gm-Message-State: AOJu0YwPpvIf6px3Z+kcLFUBSFSNAtMXogI4uA+th8PswCcNr7HzX18t
	MbmMr4CadWvq5XjYnyozjEh8QsiSWt+ul4wFrqaeh9SdxW9uZX9pDHFu
X-Gm-Gg: ASbGncu416anRs8ebZFoSXzfXxlTy1L5FczEDOgSSiUC91B9AhtZE8cKv+FaovQTRc3
	XOax6gONco15/0R8CZLYcYZo7jIByhlubqrslQ2uZ/gJfl0BIaX+rRJQCpKQ/gFC/0UiaXxFThX
	pVk2cAJF5lz7giiP2HkWKxdo9Omw+U/lf5o2oLPgtUdyFof2SUKdxA1nK6IB+UaE0pXtxMokMEf
	Tt6+KYl40OM7kBr1HV/7H2v06izmH3Bxl2w3XhziFm0CzNc1TvPZ/SO9dBJCY5lZhfiCj9aSRK+
	nsVEXSWiSa2qGELXqoqDIXx6FayYy4W//tvBfsFrsERzJT8TXPGDQT9uU5GxljvR0S1TXpNcdAk
	ACzWWoGoiyVhzrmVF/PkXEyo4djvGsjPyd1fPMC1zPcc0TvivXd2LKJeIGxZzmOHkq9SwvjksaD
	T/MD1hZ5wU
X-Google-Smtp-Source: AGHT+IG3AlPGTUhBjZicoKO2fafPrO3Ym6F/9eWov1dBZ28BCJY0XCxolDXbuHb3nvEg1oKZJQkcwQ==
X-Received: by 2002:a05:6000:40dc:b0:414:fb6c:e369 with SMTP id ffacd0b85a97d-42704b3db2dmr4898244f8f.5.1760796985415;
        Sat, 18 Oct 2025 07:16:25 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427e1be5d6csm5297975f8f.0.2025.10.18.07.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 07:16:25 -0700 (PDT)
Message-ID: <a5cc1d4850b17569900124e1e4cf7549cedc7692.camel@gmail.com>
Subject: Re: [PATCH v5 5/7] iio: adc: ad4030: Add SPI offload support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jic23@kernel.org,
 michael.hennerich@analog.com, 	nuno.sa@analog.com, eblanc@baylibre.com,
 dlechner@baylibre.com, andy@kernel.org, 	robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net, Trevor Gamblin
 <tgamblin@baylibre.com>, Axel Haslam <ahaslam@baylibre.com>
Date: Sat, 18 Oct 2025 15:16:57 +0100
In-Reply-To: <aPKfCbZSXxaHICel@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1760479760.git.marcelo.schmitt@analog.com>
	 <c12569f251962ad6034395e53cd6d998ce78a63f.1760479760.git.marcelo.schmitt@analog.com>
	 <5e3a1d31f3cec340650e2e63db79903b78ab9a1f.camel@gmail.com>
	 <aPKfCbZSXxaHICel@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-10-17 at 16:54 -0300, Marcelo Schmitt wrote:
> On 10/17, Nuno S=C3=A1 wrote:
> > On Tue, 2025-10-14 at 19:22 -0300, Marcelo Schmitt wrote:
> > > AD4030 and similar ADCs can capture data at sample rates up to 2 mega
> > > samples per second (MSPS). Not all SPI controllers are able to achiev=
e
> > > such
> > > high throughputs and even when the controller is fast enough to run
> > > transfers at the required speed, it may be costly to the CPU to handl=
e
> > > transfer data at such high sample rates. Add SPI offload support for
> > > AD4030
> > > and similar ADCs to enable data capture at maximum sample rates.
> > >=20
> > > Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> > > Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> > > Co-developed-by: Axel Haslam <ahaslam@baylibre.com>
> > > Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
> > > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > > ---
> >=20
> ...
> > > +static int ad4030_offload_buffer_postenable(struct iio_dev *indio_de=
v)
> > > +{
> > > +	struct ad4030_state *st =3D iio_priv(indio_dev);
> > > +	unsigned int reg_modes;
> > > +	int ret, ret2;
> > > +
> ...
> > > +	ret =3D spi_offload_trigger_enable(st->offload, st-
> > > >offload_trigger,
> > > +					 &st->offload_trigger_config);
> > > +	if (ret)
> > > +		goto out_pwm_disable;
> > > +
> > > +	return 0;
> > > +
> > > +out_pwm_disable:
> > > +	pwm_disable(st->cnv_trigger);
> > > +out_unoptimize:
> > > +	spi_unoptimize_message(&st->offload_msg);
> > > +out_reset_mode:
> > > +	/* reenter register configuration mode */
> > > +	ret2 =3D ad4030_enter_config_mode(st);
> >=20
> > nit: if ret2 is not being used at all, maybe just
> ret2 is logged on the error message below so I guess I'll keep it as it i=
s.
> >=20
> > if (ad4030_enter_config_mode(st))
> > =09
> > > +	if (ret2)
> > > +		dev_err(&st->spi->dev,
> > > +			"couldn't reenter register configuration mode:
> > > %d\n",
> > > +			ret2);
> here we log the error code. We only reach it if reg access fails after
> something on offload buffer enable have failed first. We cannot reuse ret=
 here
> because we would be shadowing the original error code.

Right :facepalm:


