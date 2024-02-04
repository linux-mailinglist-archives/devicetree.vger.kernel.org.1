Return-Path: <devicetree+bounces-38434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E387684911F
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 23:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AC8F282989
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 22:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72BD1866;
	Sun,  4 Feb 2024 22:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jt3NFkWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36625B676
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 22:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707086888; cv=none; b=Qy5ZPe2njjAMBHWpFfSrJgX3yEtuLQtbQ0jHW++FxQnzTGrq54CInla4RRiUCIADwqJY8aGP1A7zIONfJOHD9irMm/pzzwY7yH12Fv0FRFQJepz2gJZzE4/g8+fvWVdViNCjKSTos/1L3WMAEIyn3G4grserdWNQqi5obeBWkBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707086888; c=relaxed/simple;
	bh=kD6KAqTBArB2SIqT/Vwa+OJYFmHJmT6pAMJN7lY/K7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kR8pA9qqx+XebEjeaceH05vFdxcGbu8r4Oaqwqhogw6oCLkOnqVr7EnaK0iap0OmuijK+kLYdkvGJBVLjVeABOY3U2onbY75hG/3ZNIghIT2OhbpROmjDRz/pgDgueWm8yLYV249/TF1/H95SWfVp84U9+TsX1qzkj6dL97Rb7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jt3NFkWJ; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-603fdc46852so39955107b3.2
        for <devicetree@vger.kernel.org>; Sun, 04 Feb 2024 14:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707086886; x=1707691686; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kD6KAqTBArB2SIqT/Vwa+OJYFmHJmT6pAMJN7lY/K7I=;
        b=Jt3NFkWJTwPAWRW2YUXKhx0d2Bxl03kN7mLsBSni4gxx1VHCcQR+ihhY9HavHUg4qo
         /uxYqC2rsTau8PybccPuixOfw2Xw8SqWm6bDsUupkEOZcvlTz/oBgc9mALxAQrxNXg5q
         5VzOySTeIWjvqHeyLMHxoBWoczZ0xhVia+9KbQ9itW7taAXWAK6ELIWuaesYIfKFGxW7
         YYV8N8fpPoLtZIvLcCc8Gkd+UHQmpHnQHeM4dZvXxiEZooOHEfdK61ZO69qW/1OBfD6s
         g1vqw6SNsSjL61uhcDPxhuRVX8EhglrrRdARp3hYRkMQk5rNMpvK6AL+MDGGByFddHun
         RIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707086886; x=1707691686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kD6KAqTBArB2SIqT/Vwa+OJYFmHJmT6pAMJN7lY/K7I=;
        b=d/jaL7weBHmr/gwPWGEzE2Lj7FxEuZwCIJXjRisPYw2F0StGAmsSszVf6pYmP0Rz6i
         Y/vRlKZ+bLNzudPf4w8Vk6vXM3W6gBtKuTPgB6MraF6sfiEGiNQL8yRtP2nA7OThZ3x4
         BScuHzO2eONT0+HS7WkRbNumSHm5V4Vcue38WI7cmkoPky92pIKFajkH26G2YDSHDvEG
         81VT539QTk1wO+gtWPg7bGful3XOFbWx/Mbc9MaTTwUoAD4ACHeUBIY6oLMawsaRjHQU
         kmVGJhFMcriUPh48GdAzo8ILpGJyANU7GsBZvvCXJHNKwvrnVN1/4KKrBgrUhL4aaGj6
         jYiQ==
X-Gm-Message-State: AOJu0YyB9uknv2XsxNDHb3Yz94gcL47+KSD212ocWuXHao3bjIMdohlT
	1jO9dWj4X/EsHdz8djCMxyyCIwUtnE5I7jLAMFVBAl0vWTiHN12uBaKKgt8RaEz724pNPNCBhrF
	VSyuqv/g/JTRFZiEBS7po3SFjN5p5N0eIw2G/rA==
X-Google-Smtp-Source: AGHT+IHRgzJB6CueGHeivyFsdKulZLOKYp4MBw07acceiUDs+aIfWuO1UqeXXr2XEiqME7pqYmnX4ATtGQg/lGlPcew=
X-Received: by 2002:a0d:d611:0:b0:604:e15:81a with SMTP id y17-20020a0dd611000000b006040e15081amr12206726ywd.52.1707086886066;
 Sun, 04 Feb 2024 14:48:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204220851.4783-1-wahrenst@gmx.net> <20240204220851.4783-2-wahrenst@gmx.net>
In-Reply-To: <20240204220851.4783-2-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Feb 2024 23:47:54 +0100
Message-ID: <CACRpkdZvG4hU+7Etu+1sfiSHoeypX0kiwrot5x8bOxkw+oWP9A@mail.gmail.com>
Subject: Re: [PATCH V4 1/2] dt-bindings: pwm: Add pwm-gpio
To: Stefan Wahren <wahrenst@gmx.net>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Angelo Compagnucci <angelo.compagnucci@gmail.com>, 
	Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Nicola Di Lieto <nicola.dilieto@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 4, 2024 at 11:09=E2=80=AFPM Stefan Wahren <wahrenst@gmx.net> wr=
ote:

> From: Nicola Di Lieto <nicola.dilieto@gmail.com>
>
> Add bindings for PWM modulated by GPIO.
>
> Signed-off-by: Nicola Di Lieto <nicola.dilieto@gmail.com>
> Co-developed-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

