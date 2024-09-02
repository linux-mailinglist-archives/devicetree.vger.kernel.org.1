Return-Path: <devicetree+bounces-98976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B00496839F
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 11:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08B0F284A20
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 09:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E46E1D2798;
	Mon,  2 Sep 2024 09:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="fQJmJfM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8137B1D279F
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 09:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725270625; cv=none; b=PxhopzrP+Tp60xRIqjHcrTunB6DVElzFqUR/ZJLPJIay1Ea8beQ9jnxu1mdlnJ5lTWsnTHi8r+FDO+6kMDvUHO0NeuMQTcIFA15GY+bNmIEpczPm7Krs6g52wintSII9zUJs5IvHFvPF3zvWJ7IEhv3AuexZfgn11QGqHb2WLP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725270625; c=relaxed/simple;
	bh=28McJcVKs42ZY9Sq0kv5hG33Yboh2UqyM8r6czZX88U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BvgzNVmyIC/1MprzG3+tBg2cd+bDYfcQQySQuYhrTn5594WXW5/ZfMY3lspk+ZAZDGFmI55SvxeIm1YrDUw7VNX1LYA4EPPTiWpeWPVT7AWrV4In83JCAv2nc7d78CkMHzCf+GoW1h1er7Nkya0OlcujstLje2RlndkYxX60FIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=fQJmJfM3; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2f3f90295a9so44096531fa.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 02:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725270622; x=1725875422; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28McJcVKs42ZY9Sq0kv5hG33Yboh2UqyM8r6czZX88U=;
        b=fQJmJfM3bxDIA8JgfCiwG8tAZrBQpb0Ta8h1hshKZR/wqjq8diVlFu3v5wISePnfmr
         7CBwrfOFTRVhSJewyZjTjigC0RqpomBTVN7QrNfKtcsOR9kLdYYPWKm/xL3K5CcZjogK
         8eV3kqoZVehKa/zqDVIwTH6JLClY8E2mi2bJO5KZT0gLHe7/vnRqIFEhmjoXVZshTDGN
         aUTOIkcOesVnEmkHqGnZKjzw5vLC13Xk6kCSratOYjSB5z8sJRDKsdYV2ugLwJWvRcmf
         GqD9OniP1NrpiJnZrUlQtKPQIWzpDjXVdFO01JdJkHWA6RkPANZYkdrsyiML1wRyOkSD
         0Yig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725270622; x=1725875422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28McJcVKs42ZY9Sq0kv5hG33Yboh2UqyM8r6czZX88U=;
        b=mGjhfMEOKTUKxgmDaRPRavW66Clw/lxL7ry4hyI4IRgI0b6RHWQ/imNUnU1MUU6Ihn
         D4qLtuBzXmX9RVMNL2CuHOQw0g2Zxwx09FFNuBOphk5ZfgouvQGxaoRw/JbXEQTfVw+F
         9rLIL8X0dC6atwFHGyYdIfjF/SxMzQn7+WjxKTGGSX5QLqhoQnLMbkmMJVdnA1F+TiQ9
         6B7DEmWx2GMep/5i0T4O9gqq6Zu1bm11Yo7ykATda2O24CBb8DvH/Kn0o2uK8mpM6bir
         2kxioi17SnmgSCtSk4kxnKg++EC8lV/VopDidBk9mZlS5p1sIgNOFBUZKLJVUcAYzL2d
         hD0A==
X-Forwarded-Encrypted: i=1; AJvYcCUpf/cpdf4pqFemqTQT7OrWLN6WDwz23jxkX2ZIh/npXZMPkn1QYRKn0iNjF3HDC3R0OP8YXCQ0ICZd@vger.kernel.org
X-Gm-Message-State: AOJu0YwBHUe6xUFFcJBsy2tERDNSdc60Uhukac0mfaqprkMHOEpJ/P3f
	wFahJbmc6uKWX+kUh091CzJyBaUgNCixVNFETfVmgJGM3m0si+qyztlMYx+0Muij8bkff88DmNF
	bI+5RNiQIVjIBnwoetnzT7sKZRYej3waaNqo9uQ==
X-Google-Smtp-Source: AGHT+IHzAjC82O5fFXZUuxREWWYMeyebjNflKtG1tJUMYRTIdDHBfO7anU/6cm0HwOYbXK/491VB93Nh9ac09yNZ/4I=
X-Received: by 2002:a05:651c:552:b0:2f0:25dc:1886 with SMTP id
 38308e7fff4ca-2f636a04470mr20450581fa.10.1725270620988; Mon, 02 Sep 2024
 02:50:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240828-dt-bindings-gpio-hog-v1-0-63b83e47d804@linaro.org>
 <20240828-dt-bindings-gpio-hog-v1-2-63b83e47d804@linaro.org> <CACRpkdZzF5yJQnnDsjU8cTr9Fpe7wZZXoW3K-wFYuAq2vv8XxA@mail.gmail.com>
In-Reply-To: <CACRpkdZzF5yJQnnDsjU8cTr9Fpe7wZZXoW3K-wFYuAq2vv8XxA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 2 Sep 2024 11:50:08 +0200
Message-ID: <CAMRc=Mcv9nfiG7N-ttS_A=Ay-5Wv2mYpT+41G1u8G4GrMQAuEA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: qcom: add missing type to GPIO hogs
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Bjorn Andersson <andersson@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor.dooley@microchip.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 31, 2024 at 12:32=E2=80=AFAM Linus Walleij <linus.walleij@linar=
o.org> wrote:
>
> On Wed, Aug 28, 2024 at 11:36=E2=80=AFAM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>
> > GPIO hog nodes should define type, otherwise "dummy-hog" boolean
> > properties would be allowed.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> I suppose it's best of Bartosz applies this to the GPIO tree with
> the rest of the series?
>
> Yours,
> Linus Walleij

Ah, I picked up the GPIO changes separately. No problem, I'll pick
this one up as well.

Bart

