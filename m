Return-Path: <devicetree+bounces-47158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9372B86C53E
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FC8B2873D6
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0915D73D;
	Thu, 29 Feb 2024 09:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="miaiGnrt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BD85B5D8
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199087; cv=none; b=m0mIYFlMlQRKeBgEMaPffR4qoJXovShWtamJ+NZ8tql6iFQnVKXqBiYzOoq/oT01XIzYgVOGzJ3nUxZWxiKubTs3j0FhFwfeFeneaP6/cHLeOFmJ/LQeNC43tBQgj5S+KWxnB/JIBQbQu8yHSqQ6RftM9KefEgfw8yXHTa7cakw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199087; c=relaxed/simple;
	bh=yLDH/SmZ8OkNo4IKopG13DYJTMTGxHzaAKTzK5mwr88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bIUveTUQAf/Jqx+k0NX87ljGmM1XU2WCS0GXgjDatZhgkgpTcqp5q4TGravGYiQlPOUQm57YFaQhapUArypXxcbIHqBS0w2N/+x5I7tHv9esHtE0XZnKoWYFdDiIRbiQYD9hQzjapCx3IN95tkI7Q7xuGXkIdjuoBgpiV5iWhSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=miaiGnrt; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dcc86086c9fso767279276.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199085; x=1709803885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLDH/SmZ8OkNo4IKopG13DYJTMTGxHzaAKTzK5mwr88=;
        b=miaiGnrt0Ofo/Y9TQswPkiaTMl+dgvBYegpF6lL+Tla111mA5PVr0JxUPAjhFaXN8t
         YPgwarVt4S8w8FCN8D+M950Teob1tIypeRLnkMqPeU4jRKp8b7TWdBBPT36bwfbkwXD/
         POufNVxJ6LAzDlLr0WsuTatvvFG14Xojy+jC8GYqH4zfcdtn9wyFyr+uDya5ufUSjLEm
         O0olpqp7JT7iqOlii1adZmBrxq5i5+U/JP0jK5Zqfs5vz0G4f5KXA0ieOK3KVyPXedBn
         e40aVi/wAdwxsUEzL+3NTKhqtftZxv2VWjvzGDq3K+7YNRAo0Ir4QXofOrThA4Glammg
         Zs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199085; x=1709803885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yLDH/SmZ8OkNo4IKopG13DYJTMTGxHzaAKTzK5mwr88=;
        b=DYqi11Kf4ssz/YwKoMQsal6C76tSYG3yZTICXBXtBwvMmXAyQvek4tj+1rFycomzZt
         /9gpznoZX3YotA7rL6woKH0p9EinRVlj5eYrsHNTtUGCuDl19DgHuHc5UGtCob8UZc6H
         kDeTpB/xqD97ACadIzgTJHTsaihwngLG091X5L/SSDZdgvcizr/Lqh+oSFwwb2XYU1B9
         0D2xJSfXUItHWfkJfs6B5+xtIjtZFKrtNcYeCPpvbKx0Nf+sNP6jtSAjRlDr3WACGsmJ
         FAxmqn8NpT56MyEBbMppZ+wrDTN9Z9/IYGAQDc0FHVYDCA5POBDRxHTL88lg/MpDGJ85
         ZPqg==
X-Forwarded-Encrypted: i=1; AJvYcCXMSxwdldDtKbW3DG/+hRCS14wkS59+Rn552MmN5ZRE0NETItOl0MaWvx38eQRGEcWy3ZlpEpqhonCKDQI2ZlwRoarBbo5vGcCoCA==
X-Gm-Message-State: AOJu0YzhW/J/5h6kmqx87Ns2lSKz6NLfc9+THMT6iRNutFbAA4sWQ2xw
	/ZBzQVqRg2m5UTsGbdzXpcQum5iHvF89qrcD73yK85/dBzmJkWUJu8L0CGeABwNQvUmYTPYpHKR
	0iXwr0yuWtZki6mupsDanvUtCu8AtCO+Cf7ifFjUs0Cjjp5XX
X-Google-Smtp-Source: AGHT+IGSggpuk2KLmltD3piA3qT24S+sa7pJ2na4Fu/l5Ohz9uHZf9k8yLApEggfc1Jf09gIebRKKbZvOzn1ChOVodk=
X-Received: by 2002:a25:a28f:0:b0:dca:e4fd:b6d5 with SMTP id
 c15-20020a25a28f000000b00dcae4fdb6d5mr1603586ybi.27.1709199085627; Thu, 29
 Feb 2024 01:31:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-17-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-17-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:31:14 +0100
Message-ID: <CACRpkdbUNiK7wmtR0xastCgtsp+QpfEGgXTBf32S+R5xQtxD0Q@mail.gmail.com>
Subject: Re: [PATCH v2 17/30] gpio: nomadik: use devm_platform_ioremap_resource()
 helper
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Replace calls to platform_get_resource() then devm_ioremap_resource() by
> a single call to devm_platform_ioremap_resource().
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

