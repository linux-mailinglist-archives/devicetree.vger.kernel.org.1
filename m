Return-Path: <devicetree+bounces-208322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED31DB3203D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:14:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CAA1560321
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 16:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB632580D2;
	Fri, 22 Aug 2025 16:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=watter.com header.i=@watter.com header.b="ZnNCh69a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91694239567
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755878826; cv=none; b=q0vHqOmLYK0rO8RwpQvV35jTFCrRfoPc8ESt5+pbuMB1QVjHr0QHNYpqKC5LKpp0pYDJvMX4vPJ8DJUF9fOGjKZvUiNenzZWTBki5+Pj6u3uRvQHx0Cax2qyfxoWAi6woR1zMMKTbWpnuRx+xQEztpsckGnWsJQjZMtm9DdUUms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755878826; c=relaxed/simple;
	bh=PeFWqmKvO1chHjKzpamnENPM1xecjmZuSEwZ1WqrNeU=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=oTZkD0YhXxGfFaVIoN6WzhmUBEVu59N/Vdk1yYYMgmm7d85BgeJmLEegEoHVn4X/bAuQZN7GgLWzVRlhZ0P233N9VEUNmyMrkIs5cEmq9+L9+WyBicMf6UbAy0gfSDswBVkxQyxrYMl//HPcu0SX5Uiqye1CNY5nEukfdOG2z7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=watter.com; spf=pass smtp.mailfrom=watter.com; dkim=pass (2048-bit key) header.d=watter.com header.i=@watter.com header.b=ZnNCh69a; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=watter.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=watter.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4b10c1abfe4so35342761cf.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=watter.com; s=google; t=1755878823; x=1756483623; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v3a0v0yEWcj3RiPcDwFFeqOwhcQzYtQNA5v8wZVyGNw=;
        b=ZnNCh69aYatPDomewHW3izDxvTaBbOmll+HCCioEBkaP+q8OoqigkBu19KJDsO8pa9
         D4DmSAlBX5a06MTjjFc3iWNcwg2louEdBB9YwV/gxXN1IfOLyZhHqrEnamHwHOdOU/Hl
         zaXim4jO71kDYLCI/4gMc/F4jmEB0D5KNSM6YOJ0t+R5vtrAPLN9/xVJzgNUZXFugMCY
         /+j5qR6x2OCUGpTWs3Qf+Fw+cACwMTomXD1KjEP0S3fxJ3l9K5tCpNPDZolaDpTSxulv
         zXuK9RCIItVPnjyoGv6L3PG3O79kghlBAqQdrVpaokCMl/eHiMqN1aGd71uOOnHvENd2
         Qbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755878823; x=1756483623;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v3a0v0yEWcj3RiPcDwFFeqOwhcQzYtQNA5v8wZVyGNw=;
        b=qYkrwTQovLH+RpujULYzXRDQ1zS+377RJ2fPcRP1pmTHKmBxeviOaxLpdz1WqWGJ61
         nVY+BinJCnrOU767GgQvUJ+wSuZXTYymFjxhbNuZGH+A2/4NrtwtST7nyIrZaAjImOWQ
         oIIbU+77POYoux7XzS1FjKX7qm55MQNBw+wfWFuGlQZcG4TZpm1pEGUB7q/erDnHeN7P
         m8fK/4edW8kIGxTL1kdtU4VwFAoflW1zWzil0AmM+ip4w/Lffm2TmAjZALwIu24Vzalh
         VhPQOh9HazwJeqyjJ/AFu4RqwKxLu8ZFP6vQMaSL3ZxlUFHT15E3Ui9r9/uNGn+qPiwm
         ExSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXabMGTxP7bTuUHL2RwJZ/5CwbO3fkqkiDp0EbJ+JAvvrPdwmsgopOjjYEJbSi7gvU6DDUTk0H9OkoY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk5Snk9/Tmj2/6O0kYEzFtEwPVfGQnSkBbLY8HXCHMhh/qmJH8
	TD/tXAVnRGEvjcEq5UFRYaWocTQmIJvZhY2t+qUbZQ59yc59Ea+2SWxN4hhuRmpqPQ==
X-Gm-Gg: ASbGnctf+VO0B9aUk7YiqRBvqDehb72IpSXnRh/zYaFZmeFS/vQK2vDQdjLeOX2HZof
	ePWK6yNYPLW91C5o25ZpD/+yH5vY2KR9AzzkaBwLY2z2L4o/2XjUI4Z6SbIzlmBC/KwWuLut1gP
	xwIwLDJqOEJwhBGeByhzVKAME0SQL3KG5FzLFf/GovkrNDIXaDNvCOp/bMCgoMikbD67fPySeI7
	Xfxaizm2x7AU6f00nH1lNvnFyaznrhhXQFkY3UvgmLl2cu6eyB20LTpL1j1j/gjqdvj7uGeAVHk
	SeyHoykh1yEbpejvzrnx4omljUDIEIcfCu9PaDMcvdEvhltQQOmhq6ZYfpbLTfWXdaetx1AsPfM
	qjlAn7AzgnGX4J1UgD2ljl41StvufHs1G+O7mXl8B7g==
X-Google-Smtp-Source: AGHT+IHAD7H5L6yCdeTC6tSubZLEJn8ENm+E+LtaoKzBuMfi/WRcDB8L8WglMrH9i33FpqnhIRJ71A==
X-Received: by 2002:a05:622a:4e06:b0:4b2:8ac4:f07c with SMTP id d75a77b69052e-4b2aab8ac98mr53224851cf.78.1755878823153;
        Fri, 22 Aug 2025 09:07:03 -0700 (PDT)
Received: from smtpclient.apple ([70.32.192.89])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2b8e514fesm1661981cf.50.2025.08.22.09.07.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Aug 2025 09:07:02 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: [PATCH v8 4/5] iio: mcp9600: Recognize chip id for mcp9601
From: Ben Collins <bcollins@watter.com>
In-Reply-To: <CAHp75VdMCY3=bL2t7zWw0D1WqtiLXrWi+ptjpaxK16b8J1KVSg@mail.gmail.com>
Date: Fri, 22 Aug 2025 12:06:51 -0400
Cc: Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andrew Hepp <andrew.hepp@ahepp.dev>,
 linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <7C976B5E-781D-472B-B2C8-3AD22550E036@watter.com>
References: <20250822-upstream-changes-v8-0-40bb1739e3e2@watter.com>
 <20250822-upstream-changes-v8-4-40bb1739e3e2@watter.com>
 <CAHp75VdMCY3=bL2t7zWw0D1WqtiLXrWi+ptjpaxK16b8J1KVSg@mail.gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-Mailer: Apple Mail (2.3864.100.1.1.5)


> On Aug 22, 2025, at 11:57=E2=80=AFAM, Andy Shevchenko =
<andy.shevchenko@gmail.com> wrote:
>=20
> On Fri, Aug 22, 2025 at 4:24=E2=80=AFPM Ben Collins =
<bcollins@watter.com> wrote:
>>=20
>> The current driver works with mcp9601, but emits a warning because it
>> does not recognize the chip id.
>>=20
>> MCP9601 is a superset of MCP9600. The drivers works without changes
>> on this chipset.
>>=20
>> However, the 9601 chip supports open/closed-circuit detection if =
wired
>> properly, so we'll need to be able to differentiate between them.
>>=20
>> Moved "struct mcp9600_data" up in the file since a later patch will
>> need it and chip_info before the declarations.
>=20
> ...
>=20
>> +struct mcp9600_data {
>> +       struct i2c_client *client;
>> +};
>> +
>=20
>> -struct mcp9600_data {
>> -       struct i2c_client *client;
>> -};
>> -
>=20
> Seems we discussed this. And my suggestion was to defer the change to
> when it will be needed.

And my response was that it=E2=80=99s needed in 5/5 where I add the =
mcp9600_config()
function. That function will need to be before mcp9600_channels[] in the
IIR patch series.

So either I move mcp9600_data now, or I leave it and put =
mcp9600_config()
below it, and then in the IIR series I=E2=80=99ll have to move both up.

Didn=E2=80=99t seem to make sense to move 30 lines of code later when I =
can move
3 lines now.

Regards,
  Ben=

