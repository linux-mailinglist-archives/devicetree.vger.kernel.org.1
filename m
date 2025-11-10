Return-Path: <devicetree+bounces-236783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 24995C4752E
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DBE004E8709
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1C5313E0D;
	Mon, 10 Nov 2025 14:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mrKtTsa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B3B31353D
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786094; cv=none; b=epHKpPzQtiCN0zc1HUbclGOwCsW2ewgmlP8czxDw8aiwd64qKDXbIylqQgJjPmApnubyYWYgkYtCtvDruoTGgvWBGsiFY0eMejQsZWE4H4pTfsEBir9fiGyQDTfdkU+TOTiVyuhuPxexrtoK4uoxaWjqm+aw7o8vzOaojp0FV+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786094; c=relaxed/simple;
	bh=LPHuH34GPzz+FS33GWGiucjUVrgKTliQiQDa8mDrPto=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=H+kYXUoH6AxYnaxDoTcn9McFBf/kruJi/RiWwzNFTsbcBV6qFfrPHYtHTeeT9vXHruB+dz9tWx5/IN6O/zL8OfJWA9BQbj++RAUuFJ+/0Tu1nCQ1gf+aYAUQ5GtZfn69gh9y7XTJY2qteqhhvzgWla0mxWM+RfqtZse3SyU6qSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mrKtTsa/; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so21251045e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762786091; x=1763390891; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LPHuH34GPzz+FS33GWGiucjUVrgKTliQiQDa8mDrPto=;
        b=mrKtTsa/Waj1IsC00cI2/hZIW3lo0cdVW7+7mKXNZtIH+0sINwOiud66lJSMlFl8Lu
         NSegLjc9zyP/bcP4NLVFR+4+B28aocJbymeEVpNYIbBcsutZQCOQepec8dkpVYrvGMMg
         vP+gWyegzSO6Zm46s12EwF/AS1aPcASDEhAbjNhtXu+VnvZIkkwucFIKSr53XwvFrGgv
         NB4YEX7XTSmGkCo646UzXMp1x9zuSfLEZxGD6WKGX9nyKeuh5fRJodobCLquBl+JTgPp
         wwdufxIdXyE5kBIOol8fdoGRNht5nrMPZLv/YUhJ44ekIqC0gx5/7SsFRRcZmrROyzsE
         0Hiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762786091; x=1763390891;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LPHuH34GPzz+FS33GWGiucjUVrgKTliQiQDa8mDrPto=;
        b=iv2wMrrenjOwyoZvgFWKChKJSc/qp+1GEzOR5Ybw9GayyyY0Syz/kOHVImf6iGRHz4
         qzBvl4tqKLAguV16/m6InGlG+azRvgS/jD5uTlHH/fJ63W++Ncyc668JmWn2pklSQL+I
         SpBtxXCFJbgEiQgMFInrkPwsP2nL/IRis4RQoRLsrHfhjQtB9PmPh6jrV4mu4+HV23yQ
         5s1r0A8oBNNllL4+6Ar45veA2u2wEzNxDUn+JWZaEkfrC2fLMe84s7FdjpZEtbHyb+n7
         7730FkD/DAxeHO5lP45i4D0pwjkM805JxQwyZ0ty6beFpxfODlVBPrIgCPLHxu7lzNzL
         Q5jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpd7ay2lZg+LB98gfP9LmClbvMakYHcuw2RPZ3E1erhzSpVKXAQHuxDjhTFYuNltgyrNTQPpJX64dc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4BfxSEmRO0PNhugoctzhs0ZDfZyxBKKWPt6KsihMoXcFhOsQH
	sEGCwa5ZXd/BZk9gDPhNiLMJykjkE1u9PDHTmho4ZFYOpioJFjL80g1h
X-Gm-Gg: ASbGnctMwebqApkdNI7UoctAGNOPmkUt/MdE+4fGmIKCLHFjDhvuGIbnbJP1vsuK3xd
	notDG5C+oiRet5B0RET1yYT+PE1QH8olc78I7zmN8EQXK1CLbXsJ1p7lchrPnj1GNkVRsUqUw1g
	lMI1R1mzjez91kPs2gwuFCpPRaFXHUXpDYtME8r1CmOTRNcxdFKGge4BavGWDBMxpCBljM0IKTu
	8l/Vy8gAbrOE7r9LRJOyxtqoMJaM4ZM/JqxbLzyG3+5wzfsD0GYG4OmIYmrLbLEy/YQXsRqEr5P
	FMpaJmphD071VDmsm+isYzGLQ5vS97wJwaK1jpf3S6IhSMpaIrmZB9Q70Cj1KNR86DiBp1Shy0J
	s3yA3fXH+hfFNUhH/8V9kBH/hAyqHAJf2bWzY4h4yftZ7sRYL0d2zCAzqodLyTuA0+lU1r6g8Bh
	HZOvC/CLDv2ZmPjFq8zWI=
X-Google-Smtp-Source: AGHT+IFyyPGi2h2HdORU5Y7qZAm0mzvGdm657Ujj5pRLIdfkz1ikPx4AlWnK/vjsN3l+QNuYFG0dhA==
X-Received: by 2002:a05:600c:a30d:b0:471:ea1:a460 with SMTP id 5b1f17b1804b1-4776dcbe68cmr86535255e9.11.1762786090588;
        Mon, 10 Nov 2025 06:48:10 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b2e052f32sm15817388f8f.17.2025.11.10.06.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 06:48:10 -0800 (PST)
Message-ID: <5e0ea52e6a77a1d6af861ba5aaeeea5c3d514705.camel@gmail.com>
Subject: Re: [PATCH v1 0/3] iio: adc: Add AD4134 minimum I/O support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 andy@kernel.org, 	Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, 	conor+dt@kernel.org, corbet@lwn.net,
 cosmin.tanislav@analog.com, 	marcelo.schmitt1@gmail.com
Date: Mon, 10 Nov 2025 14:48:46 +0000
In-Reply-To: <cover.1762777931.git.marcelo.schmitt@analog.com>
References: <cover.1762777931.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-11-10 at 09:44 -0300, Marcelo Schmitt wrote:
> This patch series adds basic support for ad4134. AD4134 is a very flexibl=
e
> device that can be configured in many different ways. This series aims to
> support the simplest way of interfacing with AD4134 which is called minim=
um I/O
> mode in data sheet. This is essentially usual SPI with the addition of an=
 ODR
> (Output Data Rate) GPIO which functions as conversion start signal in min=
imum
> I/O mode. The CS pin may be connected to a host controller CS pin or grou=
nded.
>=20
> This set provides just one feature:
> - Single-shot ADC sample read.
>=20
> [PATCH 1] Device tree documentation for AD4134.
> [PATCH 2] IIO Linux driver for AD4134.
> [PATCH 3] Initial IIO documentation.
>=20
> There is a driver by Cosmin on ADI Linux tree that supports AD4134 in wir=
ing
> configurations suited for high speed data transfers. Even though the mini=
mum I/O
> support was initialy based on that high speed transfer driver, the result=
 ended
> up becoming entirely different. Also, because the different wiring
> configurations are likely going to use different resources and software
> interfaces, the code for AD4134 support was split into ad4134-spi.c,
> ad4134-common.h, and ad4134-common.c.

I'm familiar with the odd way this part is implemented in ADI tree :). Ques=
tion is, are
you intending to support the high speed bits? I guess so, otherwise having =
the above split
would not make much sense.

- Nuno S=C3=A1

>=20
> With best regards,
> Marcelo
>=20
> Marcelo Schmitt (3):
> =C2=A0 dt-bindings: iio: adc: Add AD4134
> =C2=A0 iio: adc: Initial support for AD4134
> =C2=A0 Docs: iio: Add AD4134
>=20
> =C2=A0.../bindings/iio/adc/adi,ad4134.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 209 +++++++++++++
> =C2=A0Documentation/iio/ad4134.rst=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 58 =
++++
> =C2=A0Documentation/iio/index.rst=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0 1 +
> =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0 9 +
> =C2=A0drivers/iio/adc/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0 15 +
> =C2=A0drivers/iio/adc/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 2 +
> =C2=A0drivers/iio/adc/ad4134-common.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 200 ++++++++++++
> =C2=A0drivers/iio/adc/ad4134-common.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 132 ++++++++
> =C2=A0drivers/iio/adc/ad4134-spi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 287 +++++=
+++++++++++++
> =C2=A09 files changed, 913 insertions(+)
> =C2=A0create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad=
4134.yaml
> =C2=A0create mode 100644 Documentation/iio/ad4134.rst
> =C2=A0create mode 100644 drivers/iio/adc/ad4134-common.c
> =C2=A0create mode 100644 drivers/iio/adc/ad4134-common.h
> =C2=A0create mode 100644 drivers/iio/adc/ad4134-spi.c
>=20
>=20
> base-commit: c5411c8b9ed1caf53604bb1a5be3f487988efc98

