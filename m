Return-Path: <devicetree+bounces-188778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D814AE52F2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 23:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 103D01B66324
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 21:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCEB21B9C9;
	Mon, 23 Jun 2025 21:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="C87dIOdB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A1A42056
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 21:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750715325; cv=none; b=Qm6ft4raaQjMCWfno2FXX2rGod9jGJY7umjcUFtJ+5sSEC28hunBoy8z0mZyWmg3+ZQ9TWT4zDek/M67Zqg6STsZx1heGKmJm6yauGtWRdHx8A6DiyhquxFNo/qokYEYQiDo4Nr5mWZ30OMGVbXs7xfNKVv/CVxN5ArIQ0FXUpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750715325; c=relaxed/simple;
	bh=4bYjjF2yI77Na1nfsIj+g4X8U6tLp5T8SWhZcd9HNQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cpJz/E90GKaWJt/PX0yZ+RY7sB4mXTmhoGTli+ssRlOGbSBkTi1qnJRJWx9LYsqeeA84yrR+0wn3oWvdPMMyVQWH6B3LcIVCOL22NYr7N5XeYawgMWPqUIH1nl9X3zuc3adrTlK7UoDi8xpX0VLm8zzcCNqwQ09k4h5td6gvwvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=C87dIOdB; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32b595891d2so41404061fa.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750715321; x=1751320121; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lnU+QVcxCYxEYL6PbzPZLje0addWyJna8P/l/C/lVg0=;
        b=C87dIOdBKEHiRR4ASB6zeIVNydIg4vXXMHRB2eSnxdu6Xmg1YM/ZB/XV/UH+dnKX8y
         Fa+b0QGkAGRh+BY03nBCQroT2iyjAqOBatlfLU4iPmVgRCxFa/9urbBVLAATmI7pYCVy
         ArFGjm94IyXezHc0arYfoG1Gjzg4bKRyE06HKJs6zOg+4HDa0QY8Q8QpKaiUOk9EvkWE
         6JcQVmglXz8LjQTt34uShPjORshpZIgvpnOomAPhtvLG5aapyx+Mf7SBNwAWNNSCSiJv
         t337DfPivHq8AUIHLn9UaItSg7/ad9v8Xjm+8zR+vF2CnOkKYia72VUSzCfjHk/trSOH
         h2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750715321; x=1751320121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lnU+QVcxCYxEYL6PbzPZLje0addWyJna8P/l/C/lVg0=;
        b=LDOhhxs19et88fYx1c102KdIrUVxRP/WBrBDez4iNDjFH9GVFQv6Lcsykcs09GVL6l
         s96Cmuf5ElCah7lrXx9jOUHtLSNY0E15DADkA6N4pO8SUmv0uqjVA6XehvcoA+wuVzzh
         kze8kTlpanUlExiZZygQWWRaYbBuGljom0yW6UG2wL0/+EDt0WrjMOtqr4ee/rWXtP5Z
         eG4AYjfIS3W3ZuXBKXTyWYnaXjqh3WrZJI5SqSoMsIyN+tXLGxgyQ5V4/HgWt2UKleOH
         7lfbKmrbtf2Z0x+MbD88z02R96Q/K4JyGB0N85TPIxar7X4EKUIa+0eZj5hWYT5/ylqL
         LmBA==
X-Forwarded-Encrypted: i=1; AJvYcCXotfkROtpqr/iXTajyWzI7TOs1uG66f1dEbaj6LlP8P6a5X3RWN3Zqtp7xZYXA57j5SRI3dQeSLLR5@vger.kernel.org
X-Gm-Message-State: AOJu0YzM3PodfU7nrZrQejbGttx+qQk8RE14XQ2AOoaWWXwB/wMamzY5
	FrKtHN4GZ1lSsmrv4pdb3QzlKiHnkKHDe8shfIHTVbOyE0JKUMXTFiW6gXKn5jdW/bq5K8y0qbw
	lO7xwkSWaNsr9Avxc379PAuYuNkj/akEntNUP3xWNNg==
X-Gm-Gg: ASbGncvYFWl0vQ6wkQNidBE0uXjGACgzw+qhVFKQSxPxyiJNm4T6PTLy2oqK1ZhguOu
	Z+lJ8m4ZuNiFuI99wlT7gI7Ajjdn/MQSvuouHnCn5L4DIziFIZselQXq3zqATDMQ2UYmkJYlt+V
	y9Y1Qh/+U3Ec2aZKZ5tB+RDgO4SY4D4YJ2q64Y0/Z56MJG
X-Google-Smtp-Source: AGHT+IFEqza0DpEdoJWsbOSXs+4vZVjClIQT5f7IxRB12yNjDJQmhlzB577QjPcTEosoLth3err0U0r4QBcPWJHQ7Rk=
X-Received: by 2002:a05:651c:1a0c:b0:32a:8c12:babf with SMTP id
 38308e7fff4ca-32b9918b02fmr47960381fa.2.1750715320985; Mon, 23 Jun 2025
 14:48:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250620-iio-adc-ad7173-add-spi-offload-support-v1-0-0766f6297430@baylibre.com>
 <20250620-iio-adc-ad7173-add-spi-offload-support-v1-2-0766f6297430@baylibre.com>
 <aFj5eEvn2uw_HSl0@smile.fi.intel.com>
In-Reply-To: <aFj5eEvn2uw_HSl0@smile.fi.intel.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 23 Jun 2025 15:48:30 -0600
X-Gm-Features: AX0GCFtsL-oycWVZVWTYTg3bjp_VLHo3OYdhTaf-OnhrFfyHZtM-ORpccSVZDA0
Message-ID: <CAMknhBHuJY=8rxgJsMhvRNxZskmPhEZc1jJMQnHzQHFFoucWRA@mail.gmail.com>
Subject: Re: [PATCH 2/9] iio: adc: ad_sigma_delta: use u8 instead of uint8_t
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-spi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 12:51=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Fri, Jun 20, 2025 at 05:20:08PM -0500, David Lechner wrote:
> > Replace uint8_t with u8 in the ad_sigma_delta driver.
> >
> > Technically, uint8_t comes from the C standard library, while u8 is a
> > Linux kernel type. Since we don't use the C standard library in the
> > kernel, we should use the kernel types instead.
>
> ...
>
> >       unsigned int reset_length =3D sigma_delta->info->num_resetclks;
> > -     uint8_t *buf;
> > +     u8 *buf;
> >       unsigned int size;
> >       int ret;
>
> Wondering if in the cases like this we may make it to be reversed xmas tr=
ee.

Fine with me as long as Jonathan doesn't mind the noise since it looks
like I will be doing a v2 anyway.

>
>         unsigned int reset_length =3D sigma_delta->info->num_resetclks;
>         unsigned int size;
>         u8 *buf;
>         int ret;
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

