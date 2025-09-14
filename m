Return-Path: <devicetree+bounces-216911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7F4B56850
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:08:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66B323A9237
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024ED25783C;
	Sun, 14 Sep 2025 12:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZyHOSFR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC922B8C5
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757851718; cv=none; b=pfOb+Ox+iM/Og6ZeVLE6NHZlEQ5B627erSwnqaxh4H2RV+VCWU/ad8s/cCH5vA+0xi2FktXYeZyCdiLL3kYqBeASmRQotTQ7FCnraqWP/18h96pUlCZpI0ThVMZFIeq/8gnV/Mkdu9qdaA/GkV9w0a4GTEwKz5z6xR302ArELKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757851718; c=relaxed/simple;
	bh=EigXt8LqTfePC/LqOfQhPeqk7WEnREgVUKFouhhjbzY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lCfZs7oDWNaf28CAiRB4dL4z1WoEJfgQF017HpHnBjqpf0P5Zo2/I344BMCpqh9Ai3449YNK5WXcpEKMZzteOgIW7dPzaZ9wnE2H0dlj7WaPokPIuKpu0Um/92en6CXGqNE/g2DHOQaBWuR5xjix9Yo6Uo8NstlcEGcgVdBKx/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZyHOSFR5; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afcb7a16441so493965466b.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757851716; x=1758456516; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymLIEuumg4YCNkpQZsBBfzaLM4aMXii3QJ3NddaKZEs=;
        b=ZyHOSFR5WRT+InZlRPr6YfavsqxoQ0ewZD8KGP5DrtVlTkFIwxetYM+p9AdZSVVRcZ
         XwVxJPJM6IEhDVNI+nmcFOEP0QMdriMG1Y3bohRPjInQkQZN4XEqmvXr6wsC2G6BIehj
         Dhy7eudCOByaNf10gkTj4S3QQLVfV1q1EyhhdQ7dbntUbwlfq+dq6rmt4kGycsHcEWsZ
         UD37z4WiEJ1gY/UmwFLEZ6TJhmThRf56mweRInX+T4/PiDWjT0O6Ypc6F5/pSP2ZPGqJ
         du5947VXhPd1TtYWHb4VRsfGXI87FrYFtxfgnGXZT0QscgkOmTpCvm/G0dqlMnD23yI9
         Mimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757851716; x=1758456516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ymLIEuumg4YCNkpQZsBBfzaLM4aMXii3QJ3NddaKZEs=;
        b=F1C/J6gD2lJi1I4ld99OQVFfy+xy7tcSowK5xvUSxOlYkUJSKoOpgJrG4Jn9X6zSlV
         hcE24Rlg/FZ6ndtM+xmvA4EOzkXRD+2olHZactZYVTcexQW6lNVvmWZNW6Y3DvSyDucV
         RuoaI4UOKVkHmZY9kCKpBwLGZ9uOjs7ufOEQlzC2zsQUov6vOv3fiPnuckITx6TcTNtY
         4I+2TUYevxRXK4EyDcoHf5fMt+CT/v3lkF2mYnsDqDgnwCDNTdqeRHP/OFNp77usvpma
         1o5QkS8LOLquPluuHcyPDjGEeTTDe8BClxbg8Aknm7aAwgFcci2NBLzvHiea11Y0PQXX
         zxrg==
X-Forwarded-Encrypted: i=1; AJvYcCXNCaIJveAo34OlG3/c00OqQVn6hT+qP5an8uy4dhxeKdbrPVwDYycRasHtctwgjOqtX2Uvv31GwFu3@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ18cVdFZzLgAxl9MYDiA2Txp0K2FkxabqRZzCUrtiozpKQb0q
	Y3b9jGnwrdGI15EWfiCtDnQwdyNavVrZEbyA4cvtt0mNQMxNQw0b/cKfVnHj4ij4B7v1017MTCr
	z/kTWQ3pTXZ6U/20RB+4DUi+tN3I8AxXcU0d6d4o=
X-Gm-Gg: ASbGnctVT8wy+Bgywpb8yN9KA871WcFwQQtbdooM0MD9l+mVT4M++NM8AHjFl6hjT3Q
	HLuA2kSnk5pVuiDdrzSUDTyEY0hghuc6avhfucNf82dMU5x9Rqa6PIE+CBJ+jyaBO0iMeK+SOlv
	k+8QDCKr6X3cFNV04IqEpOm6jVLdEVwkA3pzXKdhOPnLo+wxVdfZ8LHtt1JFDz/0N/Vj+jjK4Os
	iykAycqwLN2Pzi/xUBMfxyM2BpW
X-Google-Smtp-Source: AGHT+IEKkbNP3MW3lSi/qyjRAql//emEvsvwlMA+9H36XPYpDZpeNQ0Wlwf6V3nUlHWa6e6uCNQbNFf0xyyBqH3XLew=
X-Received: by 2002:a17:907:7f05:b0:b07:89ff:5ff0 with SMTP id
 a640c23a62f3a-b07c365fb66mr908806466b.51.1757851715422; Sun, 14 Sep 2025
 05:08:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250913-b4-bma220_improvements-v3-0-0b97279b4e45@subdimension.ro>
 <20250913-b4-bma220_improvements-v3-8-0b97279b4e45@subdimension.ro>
In-Reply-To: <20250913-b4-bma220_improvements-v3-8-0b97279b4e45@subdimension.ro>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 14 Sep 2025 15:07:59 +0300
X-Gm-Features: Ac12FXwgIGwTL2oMKLhNSJfFYEfKocLrB2d6dw-jdxsp4PGcNAww3JU4P4nSCzA
Message-ID: <CAHp75VdPdSrXDyuiwvOyC64qDhoTRZ0YFEDjHnYCX7dvBE1P1w@mail.gmail.com>
Subject: Re: [PATCH v3 08/18] iio: accel: bma220: reset registers during init stage
To: Petre Rodan <petre.rodan@subdimension.ro>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 13, 2025 at 6:40=E2=80=AFPM Petre Rodan <petre.rodan@subdimensi=
on.ro> wrote:
>
> Bring all configuration registers to default values during device probe()=
.
> Remove trivial code duplication regarding bma220_power() in _init()

...

> +static int bma220_reset(struct spi_device *spi, bool up)
> +{
> +       int i, ret;

Why is 'i' signed?

> +       /**

Same comment as per previous patch.

> +        * The chip can be reset by a simple register read.
> +        * We need up to 2 register reads of the softreset register
> +        * to make sure that the device is in the desired state.
> +        */
> +       for (i =3D 0; i < 2; i++) {
> +               ret =3D bma220_read_reg(spi, BMA220_REG_SOFTRESET);
> +               if (ret < 0)
> +                       return ret;
> +
> +               if (up && ret =3D=3D BMA220_RESET_MODE)
> +                       return 0;
> +
> +               if (!up && ret =3D=3D BMA220_NONRESET_MODE)
> +                       return 0;
> +       }
> +
> +       return -EBUSY;
> +}


--=20
With Best Regards,
Andy Shevchenko

