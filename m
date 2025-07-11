Return-Path: <devicetree+bounces-195588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2080BB022EC
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7477158307A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8165F2F0E5C;
	Fri, 11 Jul 2025 17:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P5sALd14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EBA2EA480
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 17:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752255809; cv=none; b=DKRRRzk7E5M2JHYw+8IWHxy7upOmFCVZZCkA0m8BvVBnPJ2cGqlmOK3Ye8p7KXgil8hsbOpHd1IcLzvl0Z7IAKUHCRGsfzb5vWBMGF3XOrdJvJJN/pBOh26XP6gXLgLAzXVDy/GTfWnD5wrDotDu1yCJH7kISqkh6Jnf8LRUOGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752255809; c=relaxed/simple;
	bh=hBYyXUMBd+7KXf34imR2vb3TQVXmdkbzzqR23++a0to=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kvOej42u5eSBGj6BHY0AQcTwDlyqcJzTvzqikNvvu4MArtFf4/NC6crPiDjEXrbun+gwv7CT1Jo+1Swn8v3RFfg3eJndOBfsRrTsq+xQ1PaHzheORmF0uoK4C9IyAt8lqlCsJFjZzGZ7QZ5b5+ncFRTjrJsGCIEXci6q2mIqQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P5sALd14; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-32b5931037eso17958461fa.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752255806; x=1752860606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hBYyXUMBd+7KXf34imR2vb3TQVXmdkbzzqR23++a0to=;
        b=P5sALd14XNbfOraaZippyyvvJXpbWOlAU5nO+afk7s7yLYJw24kSzsYAiuTPKvzQC8
         CBFmcM2RViUJbWO+LfxuJJTBgv/smsARjb4LSVbpMgnXAoJxaL7mzmB4lXDpFj4l7CBG
         0selz+dpObX6k5NV7Kljs7QrP9yPaalyHLvHIuKJ8mTbaGNKbGrOzNVGpcb3F11gG2KF
         A3b66LGQae8DqaQltjlee5iqvYvuUXWqOSxQ3bc//btiHsVXTrXNIM05aoDBH16Lk6Ur
         U97IQRhVw1W3i/gYXZM++gvKBYYfhIKwl8ybOmXcfbNIJXKSEB2nfBlgREXUJBBPzCWI
         vZYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752255806; x=1752860606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hBYyXUMBd+7KXf34imR2vb3TQVXmdkbzzqR23++a0to=;
        b=BQRQic1CUFWBYCYUvvnE718ydCaXklB5gHoN1fejGPeXMlNoPo/P3iXIxp0N4NGm8H
         u+TOtuDkhVUhcIk/fbgntC7i6akpVaLlFFBu5Krpv3BTtrc7mNFRz8s2MAH446NhEQ7Z
         lkgwIfJL+Jd107jB/A6Ryigb/lFEB62tT+1IajizoI1Kai1Qp3A5v2R7af53ITw7GMaT
         N+1VHIslIL+qXYDQNg1rrvYswKvzj3fKXHQ6MAmBzmFQ01OepjRv/FCeBATW6TtY4an2
         OwXvi4MgoI+8ZlRjiirKkAKQEaQwFU6XhYOI18iKk/8Lj2evyfkmSEX3EYze4AT3o2uP
         ihLw==
X-Forwarded-Encrypted: i=1; AJvYcCVwpqscBA96eBlzucK85yflcDDvdM/bwwSrPOhIvjDlElDLpuFHY4ExZ2eGZuMxnUGMGkdG3xX9Cr2l@vger.kernel.org
X-Gm-Message-State: AOJu0YyvVGkeA5rugZs1L1RgS0A7Ju9LcmDOvuI7gSmsrWbgdnIq1jsL
	VE0+Qe2MXNgDMF3wFacDEdGBxVDAekGcRArI/DCU9CsjQumFDEC7BUk8bA9UyThtswNGBiJwqBk
	AVR+o5gaQ/UwHDPBlVeiEeBbrJUJ9WnXeYS8m6nPU2A==
X-Gm-Gg: ASbGnctmAhaNa0Rg3IK6w9A0IftOrLF2cxN+ju/8PGPzPu6NkCL1KXFH1B1GkPHR5Qf
	4+ThQKNvDnSK4vVJQz4Xioe39n0Ef7og9pd3iExwuUZSm5Zk5a0HA7K9orQq+WdA1FgjUoO7CA1
	2czUFVfGQkfzSkbncp/hYboVDjPZCWWWwFzUtFXEygXcl5l/HOlRa/+fLG2aS1WZk4wPQ+Zyctx
	SpdTVo=
X-Google-Smtp-Source: AGHT+IFf2G+BjhVwnAaVKOD3baeNQou99YqKL5bnStqK1N6hwpimUlctewJeISypbJUHXx97EBEN1zE4x7sNQYPxkrQ=
X-Received: by 2002:a05:651c:b24:b0:32b:82bf:cc53 with SMTP id
 38308e7fff4ca-33055085f43mr14251531fa.31.1752255805688; Fri, 11 Jul 2025
 10:43:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250709112658.1987608-1-ioana.ciornei@nxp.com>
 <20250709112658.1987608-5-ioana.ciornei@nxp.com> <0d0e9cee-2aaa-402d-a811-8c4704aadd74@lunn.ch>
In-Reply-To: <0d0e9cee-2aaa-402d-a811-8c4704aadd74@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 19:43:13 +0200
X-Gm-Features: Ac12FXy8ncwT9MizP5dA-KS5LUC-_phaq4FRA0TbkNqcyhAAKnTK7Oh5Ed2WmSo
Message-ID: <CACRpkdYDTXA7+YN2zRCsQxu2AKEAwbDVq8-m27ah5XTw9iRNPw@mail.gmail.com>
Subject: Re: [PATCH 4/9] gpio: regmap: add the .get_direction() callback
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Shawn Guo <shawnguo@kernel.org>, Michael Walle <mwalle@kernel.org>, 
	Lee Jones <lee@kernel.org>, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 9, 2025 at 5:09=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:

> This is not my area, so i will deffer to the GPIO
> Maintainers. However, it is not clear to me what get_direction()
> should return.

This callback should return the current direction as set up
in the hardware.

A major usecase is that this is called when the gpiochip is
registered to read out all the current directions of the GPIO
lines, so the kernel has a clear idea of the state of the
hardware.

Calling this should ideally result in a read of the status from
a hardware register.

Yours,
Linus Walleij

