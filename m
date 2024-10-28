Return-Path: <devicetree+bounces-116745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 337389B3D9A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 23:18:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C3241C215B7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 22:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22AB61EE01E;
	Mon, 28 Oct 2024 22:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BhvBuG7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E973F1DE3A3
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 22:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730153931; cv=none; b=bDMxZQhbtSX6UkfLKxADRlyfFzN97BjRdpkcPX8PkzbsrQbz29QqlWsDuNpnPdaVvy0Cq3aF6C7nBBR93WmtJz0jXrxCqgcFZvyLqdLz0VjYjJhIhcMgqUyava2AiJH/Sreho4RZ3LmnJIiO0HHzxrdNYzpb4OFlU8nGzfKIAHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730153931; c=relaxed/simple;
	bh=fyDzP1KDNX4YUcpzq6bZDMAMYCXTmjZ5IQwgWmqRgvE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=feqZ07hydCPhNItcYX/+XljtkekQmUm2zGFYrIK/YH4caqZ5KLehrtamfsN0kouf2xcdaauZ0PFTtN9GlUx63BmMo5a5+OKLM8ZetE8G13L6enXMr/TUgYzFvhz830y2FrbSGFNXDZ2/35aiPliPA9NwKedZRpvXfEBQgQPjtRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BhvBuG7R; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb561f273eso43233871fa.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730153927; x=1730758727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Se9iykGyBG/chmZUoFvEpKM3NIz9y6V7vYmAmFmIKg=;
        b=BhvBuG7RO4OmO67/x4sJ/xTIjH/D5lvsAqSvJ2S9uLwRhhxl21fJ+BYWVRnfQVYrKR
         uKIsmfHcZt0nsZapDx+Vo0XUHHB65gvvb5z5YL5WmJg3BUy8oe20Zm/FixIWGLhJQffy
         0w++IT0fGuwvKFJ7dFfL+JRRSm8A/E03KGQzUT+8dXZJcNq33H6auF9moaS7bABPlbvO
         ehHwQG5+ghl0qTieKnMjTrMaNpVysS0FdHNceaSANTwsa0hfajDU+LflxUCPu6PCEyDr
         gEosHgOhrwBh8HwxZXQJjxEMsSwN5heebon3PhN7kL7uBA2bGq8L5Sjs2ORr+ATQBG8I
         b7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730153927; x=1730758727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Se9iykGyBG/chmZUoFvEpKM3NIz9y6V7vYmAmFmIKg=;
        b=eM9C/57I7Ga9WO0SsIXqpQDSDELKUwNouaoAoZIF+8UnSn7UGj/7Gfgz9qwazsFxc6
         QjalwoyMAhdeRO+aL0FBH6TDvmBHpD1P0/SrvzTHi6H8srzvEpEwxa+NsX6lIKNxNlld
         Jb0+iYOj/57fq9JQo2A+dErEaRdav94A0P5Uruq9nkNyG8t+TI+rGmQvhHCXnOfOxHWQ
         G8VUNZPow2JFUV2s3NACVORQnDkB+CrCqKcahc8YjfT7CgIQ7RWz4eiGE1RcVY9ihR1n
         p0qiwAA9iAUL0fdZWYmjlsa3aeieq+Q1laaXUHyEpnmtDXgCipGr0RHBIOXVisn9qWgR
         omrw==
X-Forwarded-Encrypted: i=1; AJvYcCXeZBg971dm6reN4CtLGRFfxFNQWQN7q/fbGfEaxROb17QXyOJQHCIFOFOW3BKcHlG5dZmlWp2rfbYP@vger.kernel.org
X-Gm-Message-State: AOJu0YzqkJBF8gfM102Re0FbBTjJLPWVn220VI31VHvKZe7zOZNFGa86
	ksqQ99HjkrZw4sg2c9u5BMHfA64KqmkinosjPr43LfntgSf2ROk0WG0CHxDjIqVo6KeHC6rFhWU
	PNWFRzyA/5ai0Prm2ODhXsxZBMagEDR6MjauPjA==
X-Google-Smtp-Source: AGHT+IHaahqy5DPShaY8Y+oAdhFIt+zH9Ye+ooBv20FjvxHxSAXvsJDg8v4Gn3ijuKz+t3/EBWpVyq1RsiK+6mnMrto=
X-Received: by 2002:a2e:be9f:0:b0:2fb:5bb8:7c00 with SMTP id
 38308e7fff4ca-2fcbdf5f01emr41441461fa.2.1730153927011; Mon, 28 Oct 2024
 15:18:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1730123575.git.andrea.porta@suse.com> <b189173d893f300e81b18844a1c164fe4ad5bc20.1730123575.git.andrea.porta@suse.com>
In-Reply-To: <b189173d893f300e81b18844a1c164fe4ad5bc20.1730123575.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 28 Oct 2024 23:18:36 +0100
Message-ID: <CACRpkdajY9efD_DMwoE0wpKDVf=+kcWzYQXOQMHC+pQS-ntsvA@mail.gmail.com>
Subject: Re: [PATCH v3 08/12] pinctrl: rp1: Implement RaspberryPi RP1 gpio support
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Derek Kiernan <derek.kiernan@amd.com>, 
	Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>, 
	Stefan Wahren <wahrenst@gmx.net>, Herve Codina <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 3:07=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> +config PINCTRL_RP1
> +       bool "Pinctrl driver for RP1"
> +       select PINMUX
> +       select PINCONF
> +       select GENERIC_PINCONF
> +       select GPIOLIB
> +       select GPIOLIB_IRQCHIP

Just a quick thing:

You don't happen to want:
depends on MISC_RP1
default MISC_RP1

So it will always come in tandem with
MISC_RP1?

Yours,
Linus Walleij

