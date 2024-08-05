Return-Path: <devicetree+bounces-91003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9188947651
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 09:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E0DA1F21279
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 07:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7075149DE3;
	Mon,  5 Aug 2024 07:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mLieDjX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142751494C4
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 07:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722844138; cv=none; b=BDADBqtKVtj04htuiK9aU2mAfpEPdL6IJLIuPg9RhRzYAAK0nD5W70zx+NDrXl4gvZXZRUPSXdQd+FFI2IfYezB0UNW8j8Vf6HAuVbLv1NqdcYKO9y+n7Sb5qT0Cc9O5f3vkLbtOPV7Ds8hqlQZYHN/hwSYF+JkUIJDB6PlX0YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722844138; c=relaxed/simple;
	bh=m9jMRwN7D/g9ylb+qVmMEn3jD7LEDE289u1oCoCvFi8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a2Ti5x6ywu5lNmTiNh8VHeypRF5kEQIWnWWIrC4uquj/vO5YCpCadlBwX/QNGKdbMx9nKQk491QbOzvte7MaPQD4kfQsCAPLE0Pvjy9AeGMd4m17v4E0sRALfb99kWsDoTYDDGplsbkNLALrtVuqShG/pwtAaDXIMX8/SgylbJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mLieDjX+; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52f025ab3a7so14060541e87.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 00:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722844135; x=1723448935; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKGwudayEl/s2GCBYHOT4CD2FeDk2bfVh99IyAaA7Kk=;
        b=mLieDjX+ybcjyqDxAWUTrN6CMPi7egpoKP/n21k6SkBYqNWrg4A96qqqqkmYTwERQ7
         tiaLtnNR/b67ulxpzEP6gWwfFhmge91vc9BQY2iC7nqIaL+ZpkGsX29k6PC13XHlpqIF
         jnlU04P3zw2aUYgyCfPzrn1OoTk+xdj1AxzL0doToiuJR174MbB4EBH2UI4YMH99M2Is
         TCjoPMk7h0TR3MNj0qyqAL4MjFcG33mQe5AAgKRw0hf4RCOyJjX99Qi6HfucJANzQCrJ
         2MENfNueYAKUE0JH4Mn0Ann/P/ntgJ67I/hJV9vCM2uVxVTv3pd6I/NczL3Si9PF7oN1
         94Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722844135; x=1723448935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKGwudayEl/s2GCBYHOT4CD2FeDk2bfVh99IyAaA7Kk=;
        b=UkIVliwUQDFEQKLs6b0jUrb6s2mVM87Qy599H/0tVrsXAJ3XNH6JL1U4HoKqQMH3p/
         hsSWROSeTrRtmCaPIDivK7vdaYDi+KID3WMlPCyk+bWIXUZ5TKP4AiYCdB6xK9raeg9H
         AuYPxW3WCAGNPW9LGhzYJjimbvguttWctlCqzYsnnI9y8P++XiilxDw5oQ/XMr/ObAXn
         ci5hr6ewZgM39Zdo2IHYDVaYowibDC+ws3Xv01lm4DIo3OAkP/TeOvFwDO1WdhnOsfBj
         7N7FZMSZthIBhrE8T9U0bh8vwsBaWJQ/VCB+87JvLRjK+KOMdM2VU2xeJFovWBq7QE2N
         /4zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRv7LEat5ZgMnmiyPvyD8SGbmf+gyX0I6ROhgTYEdadXPtmn/Z9oL0VVFE6Ew3OtPt0K69HhQWOqDzKufqAb3MQsn4sgdnBs+GNw==
X-Gm-Message-State: AOJu0YzcA4/RpzwhA194XA/DXTql54wK7o8bbiLQFJvzTVwqvWcLSevA
	p5RZ/1CyrlzBnRccIIxObAEKENAU2oPbxheUpr1wbHNYCb6g7tXeFtVjZFwa5Q72DRxS/quk0C9
	SnwM/vobHh9vl8KxAppm2cki8pIily/puEwvk/Q==
X-Google-Smtp-Source: AGHT+IEXIMB9nJG0TyIkPR9yKzdJtpYi5iceZ1E2YZ4ASFuMPTP6yq98iQjwWp8kP8YFpv+0ZSWlHsT8AQDqV2sKD8k=
X-Received: by 2002:a05:6512:2804:b0:52e:fc01:ddfa with SMTP id
 2adb3069b0e04-530bb387c7cmr7077635e87.7.1722844135078; Mon, 05 Aug 2024
 00:48:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716-adi-v1-0-79c0122986e7@nxp.com> <20240716-adi-v1-2-79c0122986e7@nxp.com>
In-Reply-To: <20240716-adi-v1-2-79c0122986e7@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2024 09:48:44 +0200
Message-ID: <CACRpkdaiG+Gr+asDHsztR3A=iNNCUsCFXfrW2ZUidWYLn9RcVA@mail.gmail.com>
Subject: Re: [PATCH 2/6] mfd: adp5585: add ADI adp5585 core support
To: Frank Li <Frank.Li@nxp.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-pwm@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Haibo Chen <haibo.chen@nxp.com>, 
	Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frank,

thanks for your patch!

On Tue, Jul 16, 2024 at 9:29=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> +struct adp5585_dev {
> +       struct device *dev;
> +       struct i2c_client *i2c_client;
> +
> +       int (*read_reg)(struct adp5585_dev *adp5585, u8 reg, u8 *val);
> +       int (*write_reg)(struct adp5585_dev *adp5585, u8 reg, u8 val);
> +};

The read_reg() and write_reg() accessors looks like a reimplementation
of regmap.

Can you check if you can just let the subdrivers access a regmap
for the parent MFD device and use that to read/write registers?

There are many examples of this in recent MFD drivers.

Yours,
Linus Walleij

