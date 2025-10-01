Return-Path: <devicetree+bounces-222977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5ECBB0168
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 299B917D0BC
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC472C2377;
	Wed,  1 Oct 2025 11:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UG+ZJM+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955F62C234A
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759316953; cv=none; b=OwFsFvgyLhy715SGO+JFs7GAkB1dSkITO6CNLTqVBU+UBAWrgULO8o2JgowlBdxZc66kuHY0MoCV/tPZNUaQnjik+jQy8VgBdPeDhp7Gzb/w918Iar8zWMIOeLvp23GmJZxBgNxy0e3xGOyJ6mLCZ25j5N0OA5jJssasvYTHKpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759316953; c=relaxed/simple;
	bh=M0I3kYZ7l8Sp3ipz6zF/OIoci5Fwg8ccQA1jT9mCF94=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZKTzCUiVKWF5/nQjRQMwaydQn7IeFjkrZ/wriMaN+PWswwOnJhBUa5NqyNRaGVPWVBLqRjraazYAy2L1t7yghYpLoYnug3GtboNzDx1Tv2kplxtZIqFtRFXY2xq54LG2e6z3O7eUUWWbC9mnCiS8TAyMbIpx9ZvinvW1yCtCro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UG+ZJM+F; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3635bd94dadso61523621fa.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 04:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759316950; x=1759921750; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M0I3kYZ7l8Sp3ipz6zF/OIoci5Fwg8ccQA1jT9mCF94=;
        b=UG+ZJM+FjpuVvAmGTaFLeqJWy0XF3RQFC4YmF2iA1WLhzz7tmAjBiW0BKOwQw25Kmh
         pQKhKBo7bMDJXnRSRyFjjSr+pJpKXwg6QJOAS0EpG7BTM5iWAPgRoU+GifeTA7+vcYE0
         mcB8ZBsRDQZ6QAl0fY5a5uPcIdhVUgkLH00kTuiR1i4LhKb8YuYa9oAceHTOot8VLkZA
         WAYJIt5bNF0W2inR3EoGtXHGhHNjt+WEVHiAJ/TRAOjdBOW+CSH0we2eQThfqRoEnofZ
         jIhtNzC5d8ID5QD9umE0m5lV8GVWHMVgNlJsvZQ3N5zp4cWzXv2D8fN+vROmen5GXiBO
         NNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759316950; x=1759921750;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M0I3kYZ7l8Sp3ipz6zF/OIoci5Fwg8ccQA1jT9mCF94=;
        b=LKRrj4JiqNEY6fPDAWeXrzuIpBqN3ZPUdCdh+tXQ9pRPOu9cK+RQKlQtWL2FIMvrnX
         zOugUCzi62tAMNSR29iZb8WmEqnxJhQHNJUopq77mocyRbyAHalZG3AcvmZm5QfaS7wS
         AbjNbKN1qQuIUU4S3DIzJTXAF6SLChe2dNu2K17+NNJBccD+sUUONhjDZJCiRhit/v3g
         bRfl2OZTng01aXI53pTmpP2Fll5FHARvmwH3sArD4ez0kZ7iMNfqluLeTZLI4tDuW5gf
         0XAd7HGEiGLu47PzW1zp16zk664FV3E5lZwySMZEa1MGvxgX+1vgKDLV35TSI30bJJZf
         P0Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXhcqRY8/A+gPljDVZt2X5/Mi5LM9s70x//G6VrOT9teEkq2pAuvoSIpSGS+ByLbVl7+oIp+45ipo2y@vger.kernel.org
X-Gm-Message-State: AOJu0YwxFGrYjxYQSM28iHuNKiPdvAvG1fkP6HMv5CPeZFEmmCxm/lMr
	ixHhxC7Ew5KQqHDnhHwvObw/OmrenOZ3h8kqrx2Z6Ni4TnBIlG2KSpGxH6J4uJDjsX21JHLeHEm
	x5jInXj1zKeKQZtkhJLWLTxurpHe2FeEiQb6iiiu6ow==
X-Gm-Gg: ASbGnctagPCo41FtDx2laLei7BeUu5YY6ITVYk141vmBUnoIJT9Y/gWeuAbeUtHwxyy
	GDmuaWtfVyvIH8+Lbj20y+igK9ztZa4KJ4NPwzxcBh867lIH0n+Y01hom4NC/bnDXxVWCkqENii
	P85vyweJ03bp7Hk6nCANPwmvVdFyPrxWLQA37+wg/rESBh/qXdE9Suvotsr4aqPLoG4Eb51+tbT
	9x+XrzxadU89bXKmez91+FXIti7qA4=
X-Google-Smtp-Source: AGHT+IFy9CWT3bu76of2jYZb51gRK/Cq6YQPN0H+wluFSLdTiVauO/GCXAncvl72byP2xI5nDha1WBbbYYwXFWOfJAA=
X-Received: by 2002:a05:651c:1502:b0:372:9e15:8979 with SMTP id
 38308e7fff4ca-373a73b9d30mr8076211fa.24.1759316949664; Wed, 01 Oct 2025
 04:09:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922152640.154092-1-herve.codina@bootlin.com> <20250922152640.154092-8-herve.codina@bootlin.com>
In-Reply-To: <20250922152640.154092-8-herve.codina@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 13:08:57 +0200
X-Gm-Features: AS18NWDfJ_jX8XpCwqHlGuZJbQzWdgArWZS71xjJ6JCb9D_RiGMuZ4KagfHEr2I
Message-ID: <CACRpkdZPURiag1cUQZ319_QA83u+qOCSRALxpe10_+cTcevy+Q@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herve,

thanks for your patch!

On Mon, Sep 22, 2025 at 5:27=E2=80=AFPM Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:

> On the Renesas RZ/N1 SoC, GPIOs can generate interruptions. Those
> interruption lines are multiplexed by the GPIO Interrupt Multiplexer in
> order to map 32 * 3 GPIO interrupt lines to 8 GIC interrupt lines.
>
> The GPIO interrupt multiplexer IP does nothing but select 8 GPIO
> IRQ lines out of the 96 available to wire them to the GIC input lines.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>

This looks like some complicated code to reimplement hierarchical
irq domains.

Can't you just select IRQ_DOMAIN_HIERARCHY and let
the existing infrastructure in GPIOLIB_IRQCHIP handle
this?

This kind of remapping and handling is exactly what the
.child_to_parent_hwirq() callback in struct gpio_irq_chip
is for. This function can fail if you run out if IRQ lines.

Inspect drivers/gpio/Kconfig driver that select
IRQ_DOMAIN_HIERARCHY for examples of how to
do this.

Even if your GPIO driver is not using GPIOLIB_IRQCHIP (in that
case: why not?) I think you still need to use IRQ_DOMAIN_HIERARCHY
for this.

Yours,
Linus Walleij

