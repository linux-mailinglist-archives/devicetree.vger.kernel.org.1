Return-Path: <devicetree+bounces-62936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F468B3163
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9068E2811DE
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 07:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F2513C3D9;
	Fri, 26 Apr 2024 07:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="u9exqb7n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F9613BC2B
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714116755; cv=none; b=a+VddGMQs1470n3SwoZvLYRVhOdoxn+G6nhFcU7ynO5OsHDh4VLL6t/7wyxqA/7GGwdpgU+Kc6gETIr+MXFMGd0/74iPIhLj74ms2oRjDU84anTYfgrBgLMHftl8BOeF7dj/W2njO8lnH0QLV50qfzPjvW2PHdP74fkOfJ6SyZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714116755; c=relaxed/simple;
	bh=N+K4RoNFc+zB+X+QmQp6JiIrBFtjE+TzhQnlD2BBvMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AMdHQdoLJ9/+J58xvBU+opWj+qfi6nJHS9hgIMQ5yMpOZrEpTsbw9moGuBu1OcRU8o1t93u55GQbJUG4cr/8i3LdjbniDRWysjnAM6Kof2gQB9YqDyeti6h6qzGskpnLBuZyiOJfdv+MzRbprfziTa7GuGnW0/d9SVokazBEzIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=u9exqb7n; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2dae975d0dcso30190821fa.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 00:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1714116751; x=1714721551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+K4RoNFc+zB+X+QmQp6JiIrBFtjE+TzhQnlD2BBvMQ=;
        b=u9exqb7nBakiSvecNO+dmYaK7oBLCtP3JSYaZivMWqMQvmNL7RPRQXkOmTSB0fy9o8
         uMvQ5cQjOuHqraXto91UAZC+rRNfnlTIb1ifCYN2OFNQAeFXN28UHd5lUYXlhSQIlNgk
         nKLgTua/wbVkLqzcfA+l3jnfvepyDmuHC4Gy+kYTVZm4h8mcNW2J9rCz763t35/uWK4C
         9NqtOqazEfiO0UC2++H19zZWOi2kFmQK95ELl4tY3ianwjsq6DV8B//tjr+4XinIjCnb
         JIVs29Uh3htIpLt38/+BGtJfrphW1k+mCtDxXiUftRHuSNggwqrVGKJrLuftpvJEQeFS
         d/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714116751; x=1714721551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+K4RoNFc+zB+X+QmQp6JiIrBFtjE+TzhQnlD2BBvMQ=;
        b=o8U/acOlMuXzDUhEa5r5kSUIm1pcJkaTMVRGoUqi1UIGkAZZ9eLok32jSRUykXakif
         RWzHxvnbN/OcI71KCfiT6+eIDcKjyj7rpgDFF70rnKf8rXvrZJ5yUaumaxIFL83tU09z
         9A26QXqPrxYQVT4dTnn3wZft9w5aDU0fCdkM+zWGxNKLuxQM8ByfF9OGZA4fAGpyGkPt
         2IpMcNfrAJq9ipfQC4henysQ3pqjrRAIYEhEl8DBJC1ltj3XPDKekuaVIuUkAoFIUh5J
         bZoRViVBKMukPm2jUBOOvTmjiWC8k+hzAT3eW8hY5vOK84TQoRE/3LuMoJ8t9TXTBZNC
         NqAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFAXX5xk/XVwkgf0yFhe6N8cqDryh5kFalj0X0t+vlra2Q+dABbs6Bk31doOlPIoJQM6iu2MvhzpYwkkvDRi1JD6bEf6CR77Futg==
X-Gm-Message-State: AOJu0YyyzjgSPI4ZW+9e4kHnoLK6ipjjz9x2pM1+05sA/W5GVSF82WKk
	ElKyeloQd1446GF68NmC4gGzr9d5uoWktCz3pIIdY4D6xZTfwvuT11ibSiADqzNwudq+cStnPBk
	Fs2tl++2CKIbln4rFfH8nIlY7ViJKZXLNM81y9w==
X-Google-Smtp-Source: AGHT+IFYGegiQeOjrbC7jab8L44FbjsL8B+Dm+eXafoa/lYhYMDXPnVhjneMaXH+VDajJaBZTMTFwcHDO4cfrTiAxXo=
X-Received: by 2002:a2e:b163:0:b0:2de:6f52:5c8d with SMTP id
 a3-20020a2eb163000000b002de6f525c8dmr645023ljm.21.1714116751252; Fri, 26 Apr
 2024 00:32:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424185039.1707812-1-opendmb@gmail.com> <20240424185039.1707812-3-opendmb@gmail.com>
In-Reply-To: <20240424185039.1707812-3-opendmb@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 26 Apr 2024 09:32:20 +0200
Message-ID: <CAMRc=Mc4kreNL9Zu3Hfd02Nm8WK0x6yb3rfCgPebGi1GGygcNw@mail.gmail.com>
Subject: Re: [PATCH 2/3] gpio: of: support gpio-ranges for multiple gpiochip devices
To: Doug Berger <opendmb@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Phil Elwell <phil@raspberrypi.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 8:51=E2=80=AFPM Doug Berger <opendmb@gmail.com> wro=
te:
>
> Some drivers (e.g. gpio-mt7621 and gpio-brcmstb) have multiple
> gpiochip banks within a single device. Unfortunately, the
> gpio-ranges property of the device node was being applied to
> every gpiochip of the device with device relative GPIO offset
> values rather than gpiochip relative GPIO offset values.
>
> This commit makes use of the gpio_chip offset value which can be
> non-zero for such devices to split the device node gpio-ranges
> property into GPIO offset ranges that can be applied to each
> of the relevant gpiochips of the device.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>
> ---

This is a good improvement, thanks!

Bart

