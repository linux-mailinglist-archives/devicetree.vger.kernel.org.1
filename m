Return-Path: <devicetree+bounces-133327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 599669FA4E7
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 09:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8AB7166EA6
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 08:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02BA6188CC9;
	Sun, 22 Dec 2024 08:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CFTzOMtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1677EEC5
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 08:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734857935; cv=none; b=uJho9jeDP3D4jmddM5MW94IZzISqcjXFc9QazYhxF0LHs5XIMQNlftPbGT4vmGVvocLom4fjyZcwLU2dg9mMUKHzizPhBK9WyZ3LmgixvRJZkq1tEqHDxu0xf9nPRART2amycGkEd9It6nH96ubfxhdi4HcLGcUvR0ASlUXhq9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734857935; c=relaxed/simple;
	bh=ydHFUbiWI2donZz3OfQDBbHRjDLFHb07jQfC4ZBZ7B0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CF/QhqmjrnI3DmEM5zLhFHAvNmd7a9YPGLXkjAB9IG2AHmGjywkUh+y2FmBF2kSFTmqjWv4OaZissn/FgyJ0SV8HfLwwLay21IeH2zUdSoKx6Q5v6O+IJKSa5G9rR8IR0JsU+f2LAQSTnbBPTdasifmEwB1VvhFKJRYpGfPqBQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CFTzOMtM; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30037784fceso34876541fa.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 00:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734857931; x=1735462731; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ydHFUbiWI2donZz3OfQDBbHRjDLFHb07jQfC4ZBZ7B0=;
        b=CFTzOMtMV4uODjsiT1BiO2cr/UtATlnQUBaS258cAg+MXjSUtk/sM6bC58qQLcQpHt
         R/UsxjDz24Z+IpfY+jxP9+xC5cA2qZcFo/47oidVMCPOBzVkcUXsFjkbjZYgdlMafB+B
         rcyU4b/Zmq2Hfp9OINH6p16sqRHe+WZkFDuIHeW9MzIxb5Tjbi+mPgoSPbbzuiOYx/7H
         yKZNTNMztOlMYUGTprMORCbd6P8t66BS9PjCp7j8yqzm6A0lEJxc2VvR0FKy+j5f01NS
         +CUtYHNdNFox27xQuo603L1u87PrBQBtrnj9a4UUHruAnTTJA9kNE/zOLBK0nNrdl9kt
         GU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734857931; x=1735462731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ydHFUbiWI2donZz3OfQDBbHRjDLFHb07jQfC4ZBZ7B0=;
        b=XZT9FNHWxjNIdT4zfofFXhuRk1vQ0YdMw9TvtH8XMdB6bhFGbXAzRuNW61w/CExAVP
         vVWx1v9mjrf+LPLeru70dL/VpxMUfiVXhfT3PHnEDdp7lAW67+OqWUY25jnJJ6Z3o2Zd
         MNYI/K+ocrWnTIDMLId0zJwH2mU6gzZ9V9AjUZw5vW7DYGgzav0VhsknIAvh1yfkkitw
         Pf8qbZtWxTxELwf7RcqxgZIxkh+h1d3/vdOSYI3/k/7R5N0CUBxhloxzPyJSeEHhvHlO
         uJwTINu3vuvWM0LevjbXG5NQWjH5h6S60blutLwz26mdfLWVhj1iML+8b4eYqTdt9Nn3
         QTVg==
X-Forwarded-Encrypted: i=1; AJvYcCWeDlKEm/OePOgSs3bzDxAy57iiWm2X6ZrGxbldyWm3zxO9kvdKOCYVv9IyulZ5m6p/VpO7w0EXUIAh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5CMDd9rZJrYQV/5pzXf0dl+yXS4Ko05LinWKp4WVsq6tvUjtI
	8tewHcZoSgOIUwAXqFx3ma42DoK69DqMXOTVdVIghqvOg4Hx0XDYO9gcX0aKv1Sc+tRvJO5czqw
	ZJKO0u2BfbhMTosJXOuY0PniMYjby6NP34HBZYw==
X-Gm-Gg: ASbGnct9P/eGlEdoxWSpk5XN9Ksl3kGhP+UoZpt74YK7PnA2XmQIVxGwcezFfsV0sUT
	kpXPYQvRH/tZbpVE+yJRP/8PcdmLNJLQxmyEY
X-Google-Smtp-Source: AGHT+IF7qlESqqycmwiipzJ3ql72D1nNts6ClqeFtGCJ+61DYyayeljU8sIdBxu4QXjOvTVP/Ruoj4H2b41K46y60Qw=
X-Received: by 2002:a05:6512:1592:b0:542:28e3:2156 with SMTP id
 2adb3069b0e04-5422953feccmr2187706e87.25.1734857930624; Sun, 22 Dec 2024
 00:58:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213-gpio74-v1-0-fa2c089caf41@posteo.net> <20241213-gpio74-v1-4-fa2c089caf41@posteo.net>
In-Reply-To: <20241213-gpio74-v1-4-fa2c089caf41@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Dec 2024 09:58:39 +0100
Message-ID: <CACRpkdYibsJvnKazKaqQjLYyL4Hx1K1MpFpM2UPCRbDN3Gxh-w@mail.gmail.com>
Subject: Re: [PATCH 4/4] gpio: 74x164: Add latch GPIO support
To: j.ne@posteo.net
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2024 at 6:32=E2=80=AFPM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> The Fairchild MM74HC595 and other compatible parts have a latch clock
> input (also known as storage register clock input), which must be
> clocked once in order to apply any value that was serially shifted in.
>
> This patch adds driver support for using a GPIO that connects to the
> latch clock.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

This looks completely reasonable to me as far as 2/4 gets merged:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

