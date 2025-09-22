Return-Path: <devicetree+bounces-220160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A91B92619
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 19:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D768D3BEAFA
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045EA313523;
	Mon, 22 Sep 2025 17:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Ch9A2iCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FC931283F
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 17:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758561460; cv=none; b=uOt4CO/pW5wvWZb8egeBgQtfnfXGNa+669IRsxONyxHPBfovlALo3lfWaIQDZKBWpXpBpXp+GeYD5GnvziNYWVDgnmxokeloxpY3IzQK4+5mABUjF/RYG3v4QhUsHbEl7aCl6cx17tzuqvX8ejqXH0kivoe7i87QbEpkHmPETo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758561460; c=relaxed/simple;
	bh=yDCyVsMnBe1oen5dvPi/6dU/2jOJ8KUMFS4IHKbrUo0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=swHs1HaDraBDw4AsV8GNwF/zEo/H3cB3gN62thwY3EhWGpMuQWBP1BSqKeGUs7ECNufhVAGpvJq4nJrS5ntFO1oSisJZgppB4HkXPmb+6DKJwclOcakGkzaQJ3xTpQ81SwaXdExp1V/g9NFbvp92EWMZkyQrWsQz0z1+Q5VHkrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Ch9A2iCK; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-57cfe6656dcso1688738e87.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758561456; x=1759166256; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=UdkfUJcWiIhWIQMyk8FB1DAT7E/1t3lcPeSZOWW85BE=;
        b=Ch9A2iCKWlu/r9bbz/b7q4KA3Yuv3HZ012eCJeLS649Q1gaEYghVQbNL+nANsBzIkx
         OqgyXo3Y9mvzx/JqdcRZMdAQxuE7OXV2ZjUWx+/7TjFBqG4I4kDhV5Ka/w7d8wp5xi85
         AJ7Qcl9ZxPr0V3Au3dDHeixq8hIUr6vlS0XxqCYo7Xkkp3ek2f/4hHb405Jnif1cTSD9
         FJXNYOEUCRvGnHieT7jSo2J85KUhIoXGgkE9Ik6g1BywawF3jhD+HPX7zSyoe9l/23Ui
         NSO1Q068Ix26D4xOZBXDj3n7vkh7LZuBhxIf35SvoGuq+F4Ur3bpsQ156dSARULnm72j
         6Gcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758561456; x=1759166256;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UdkfUJcWiIhWIQMyk8FB1DAT7E/1t3lcPeSZOWW85BE=;
        b=Bdhs9r1Gh/xqtgQ88zqmCxiPQort0YiOjssAQbYuPQB0/F4bAuD+DiwK/GQ8wQ/R6S
         rMS+HlpRxpJ3dc+rln/qfJLmqjsj3Th9VesewbjTJ8vUG3qDyGuovtELP2p3SCghkGtS
         aGwXkHWAVxx8X4IApbL09VAfXIZle5bqrFxSZ6UghMzDhTRuCILSp+wftrOTCa2JR+7J
         Lwgx2LE71c84H2B8/xfGlG0z2QhD0ArnL4TAfXSItj1w6yZp/3loZllbvCYrGltTYD80
         nXsyqxV8MuqEbOFTtsKOyUkjaemKJwELZ4XZQGms4vDlbLf2LGC2JgIfQVJym10SRPAJ
         Qy+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUXwq7YYsHrduUSFL+0JVAuMT8NVU2T3qZzBN58HsfcjtoeRO9t6CsYbvjChqurfb1jdLsZXLuXlDuC@vger.kernel.org
X-Gm-Message-State: AOJu0YyoTo6zS90sC08VbRmiBu4CfA/fX8sbAns3cos519Fz09lpP76l
	qMIDlLqKwO3t/V9/1mvrMrOT7toeiJH7EjJ7XubnJaXzsU+imR3o/ZtiNVJVh7Oz17GMSwVC8tn
	t5wv3DTY4Cv6btdVQaqnd0um+vbYG/43dO6h7ziUpdA==
X-Gm-Gg: ASbGnctm1YJwwEd9ySGRGkW+frdZFvFqgUth+O9j7HT2Sobo58mELHibdF0AGAP+ELq
	LFAw9rvGDGFO/FqyVt+mbOsmDhcmlWyRq9AOdmDoZNmZFE9c6ZU4MQuUDU9+MiecWEXI7pMdhU4
	O12Bb5kQsmKfCMkVlBdMDPj/g8FOWOKKeciEKI+lKSStwJIyw2sRsJAIdjMeDJKDZRrGWfo0/V/
	CON3XR1ePLnNfu1j30IoHP7M+s/Fj598Pwqfdmyhp1XiytX
X-Google-Smtp-Source: AGHT+IHa5VS93YBVnCqLOZY3pYwvG4eCX52nyQdKku+32y1T0vkVAt7IQymvU+hEJRGGd/QSDHyzANnwRnT18WFvHlU=
X-Received: by 2002:a05:6512:61af:b0:57d:6fca:f1f6 with SMTP id
 2adb3069b0e04-57d6fcaf45cmr2017701e87.46.1758561455821; Mon, 22 Sep 2025
 10:17:35 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 10:17:34 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 10:17:34 -0700
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250922152640.154092-6-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922152640.154092-1-herve.codina@bootlin.com> <20250922152640.154092-6-herve.codina@bootlin.com>
Date: Mon, 22 Sep 2025 10:17:34 -0700
X-Gm-Features: AS18NWDyCQX1J8uZYK9LHdZ-e3eFX6O7LUqq1XRGpyCJLmgX9_jhMo9add6DPkE
Message-ID: <CAMRc=McFZ9rDgBEkUBuUX1c2a9PUwX3+ZzOs-KE4jhbU+p6+ww@mail.gmail.com>
Subject: Re: [PATCH v4 5/8] ARM: dts: r9a06g032: Add GPIO controllers
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Sep 2025 17:26:36 +0200, "Herve Codina (Schneider
Electric)" <herve.codina@bootlin.com> said:
> Add GPIO controllers (Synosys DesignWare IPs) available in the
> r9a06g032 (RZ/N1D) SoC.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  arch/arm/boot/dts/renesas/r9a06g032.dtsi | 121 +++++++++++++++++++++++
>  1 file changed, 121 insertions(+)
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

