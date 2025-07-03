Return-Path: <devicetree+bounces-192687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B053AAF7510
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:08:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4AE9167F78
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 13:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004C52E62DF;
	Thu,  3 Jul 2025 13:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="PWeSYD5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62C2AF19
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 13:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751548090; cv=none; b=Q1Zm3QQEcMTi8XFqMRq4H6nEHq0jdoIpqKt6xQVogvgt/+GP5x2jfdvOlLUAhk/FaKUs2BnJizB/SmCEDXfJlbe11X6iktvdAFmzYetSLg4JNrOPlj9LdadqyP6yRqYAJyo0/tzNv0CoceQefTPvXXYKJ8bPIT+h/boHNpsQ2Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751548090; c=relaxed/simple;
	bh=JanBi7K9weyr7XmGzKurXsUQYBOqj7Q+2l2ycsuOc8k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dKLSzBCXwe8h0P67MFXRfM31rCFxAOnK6FGE2imJFYPf74F8P/atkhG+BWgwgAFo0F7N+uOlRdjDMEPH4H1Fz9kw+QQcgoZxsXpxV9IsuijnpJ42UqtAC2uF1t/rmNEWBm7nvScQUXlaR7t2dzcKk5axEczxBtryWt69xNl4XP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=PWeSYD5S; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-553b82f3767so6368453e87.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 06:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751548087; x=1752152887; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GK4OKlfFeC5d0xwGKjxMnVvoaWzs29QyrzbuIGizZlk=;
        b=PWeSYD5SWBijTvkMp8+pdC3F42Wvc8bShMdaIarmiNHYsfTwGUu4cjj66QiRndUosu
         owYgOcbIkhR3gAczs4Wc61L7kXgHXAkbNx+2O7PQ4Jd0S2zLips/ZViGXmjNeKmAZGKS
         rrq+z3SXmEVtRJP1OxYEOUT6BJWmxY1+eXsG6dzjvgkUUxWf9vmZKo+ve2WNZAl2Z/BZ
         NUSuo6z1V0JvVQx2/3NAvvHb6PVNzeU9z1kjWePYgPwLXb2nmbqreGls7ths9z3tsxbF
         mIRhzI8KqTZk4Oe8R+h2alG3xMQeaJszZcNmjbxtIhva6mPUFiKPH6pPaHT8SUbtyVG0
         FezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751548087; x=1752152887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GK4OKlfFeC5d0xwGKjxMnVvoaWzs29QyrzbuIGizZlk=;
        b=chdA9Nj9ZaQqAocp75wXVhiUf2BNi3fv2e8zG1XRklv28iUcjRWEaOQ6Ex4CHHAqSt
         HBW7fxjqDb4kVnb6PXGlSZaI6q2rX+PtfUpy/aG+Y+eIC9kP9XAlCLjaDjfXJMxhZAm+
         C4UU5fdOKtDBrqSwwftwsEeCXNTLkPY5nHYqaitmS7YvhCZfb9ZC3my8Cw6hbDn5wfmd
         n3bUWxCDaNOJoYRgtLGX24KifERiT/qYGZs5arifFspRmdd6aHmVkb8VtZ1JAnqohzHS
         t6xKUO0WbSF+V5ndgt6vwlmthh3RYjRfNnTxH4aR55UKXLYmOcU0qefdGQ0Xi7Ixt9W2
         o7Sw==
X-Forwarded-Encrypted: i=1; AJvYcCV+BVv6zKd1GbwbZ9dqLyl63KGCkj4dGwcL5ZgM5o9WvB015UbhU/8ni/8qN6eDcc0/duqyWfBhBAsS@vger.kernel.org
X-Gm-Message-State: AOJu0YwVhiIIG62OVgT78Q2q8yiATfBza4tQE6LgjqhjyOnJdGmGhHQT
	Fb7zUYw0BqkVX9+VCStSizYx0lrmoWeeINuRO4AMy/VyiXawu265Ubgc4PFYeSYY/0eDnPKni9Q
	SuXJW2aKBEJg8RbtR9KcAvarE0wpVHflfOgOgsARNVf6So7wh9SL0ah8=
X-Gm-Gg: ASbGncuNs6jT4X+JEdKKonbqMI52P2cEwcscUO9n+TMof707lPwz7MRpespIpLsV6NA
	3GUEB3x3ShLtqDLlkaAJ3VoqQ5A2wfInQ+xK+Zq3EE7UR0XF7zewHojuw254ObElJbYpoLxI1cE
	h4xBYz60KropQfqss13qqsT4TBrMW2bAbjwOYMHmtkjxPqdhWHJu6Zuyx8vGtXQ/UdUvFLOr+po
	Q==
X-Google-Smtp-Source: AGHT+IFBpm7cQyJ+Bp1kO1gYZd6KKdHwC5WEoxgmE5pWV9k610l17z8/GvmnTu9RQrdixKBfL2RDfjtMmjSVA+fh0hc=
X-Received: by 2002:a05:6512:68d:b0:553:2375:c6d9 with SMTP id
 2adb3069b0e04-5562838b7c6mr2703310e87.55.1751548087045; Thu, 03 Jul 2025
 06:08:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250617204402.33656-1-mariagarcia7293@gmail.com>
 <20250617204402.33656-3-mariagarcia7293@gmail.com> <CAMRc=Mftput7DO+nmOA0yMcB0SvtsDf5U25ukkMVuOnV4XfX=g@mail.gmail.com>
In-Reply-To: <CAMRc=Mftput7DO+nmOA0yMcB0SvtsDf5U25ukkMVuOnV4XfX=g@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Jul 2025 15:07:56 +0200
X-Gm-Features: Ac12FXy6w3XoUynazt1SiD5Ofkz80TXW3KXY7DW_5eZ5Fql3aGlbenMkOR_6Sy8
Message-ID: <CAMRc=MeEj574YPgX17S8z5Z0miaksWw-2NQMhpwsjNL0z8FT-w@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: pca953x: Add support for TI TCA6418
To: Maria Garcia <mariagarcia7293@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maria Garcia <mgarcia@qblox.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 25, 2025 at 1:53=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> >
> > +static u8 tca6418_recalc_addr(struct pca953x_chip *chip, int reg_base,=
 int offset)
> > +{
> > +       /* reg_base will be TCA6418_INPUT, TCA6418_OUTPUT, or TCA6418_D=
IRECTION
> > +        * offset is the global GPIO line offset (0-17)
> > +        * BANK_SZ is 8 for TCA6418 (8 bits per register bank)
> > +        */
>
> Please use regular kernel comments, not the networking style.
>

I asked for this under version 1. It's still not fixed in version 3.

Bart

