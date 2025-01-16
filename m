Return-Path: <devicetree+bounces-138964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77764A13632
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 051E83A116B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A990E1D8A0D;
	Thu, 16 Jan 2025 09:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IQ4xu/k2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E7E1D61B7
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737018547; cv=none; b=DA9roaW8KISQNxA9BacXYiVVKs8grvSzxDmGHap1Im32xKjTPUp0I5Fbr2fKvUIj2fPOMcqzKZf2Gud6XJPxEEP0rfhCEI3APnU5MdxQyFHBlyZ5TGnhkyYMO8YBU/1FU+W9FEZLef4mtSxNQp4iEROHSP6LduE0F0ZL1KxdVz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737018547; c=relaxed/simple;
	bh=6oElNuHGnh2SndiJKSmzP3b2+Y0n7fF/o6Bw/SCWA8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ACHvZ/2cunKuRYXUpoDJeIYQtXOtAHe6CWgFwhBoJxw4Jc1dBSgE9bbCGAa9nPDOG1Atl0ZbrKf8RIb/aQOLRtc+yRDtXQe9KFLZl40e2Uyh0SUsMA+Mg6cHirvSCc51spoZWh5JDsB5TnKyMOz51k9tQRqKJxAVHOmVziCVHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IQ4xu/k2; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3003e203acaso6644901fa.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737018543; x=1737623343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oElNuHGnh2SndiJKSmzP3b2+Y0n7fF/o6Bw/SCWA8s=;
        b=IQ4xu/k27KRRWT8+BR952Rp6sKVE/VBK5DV2ZXczu1NXcUukvmSRhxYLL+0UXBIJ4c
         3XLFDkgeNmHYnmaZ1Y+a9giINHrU31aBwZYdr2dnFxiFW1/qGxFPCUuOm9gPYsHh4oHG
         0vzH+G0XYL84pZEwCnLOqSj66IjfcnuQlbsgN/qIvOrhWppNR7wGIUs1hexzLPxTpmyt
         3hbCRYP/n4ekMfXpEKGouRTTopOyA6dAL2JuiYN7x087ZTdBG7STUK9luWQEInOjkGUe
         hBgxFng++giL4qYxSLhDii9GH5/I3L8nHqsV4VGu8zTpo4mXnEuh6k3KbDxJ3Mg/WwBz
         L5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737018543; x=1737623343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6oElNuHGnh2SndiJKSmzP3b2+Y0n7fF/o6Bw/SCWA8s=;
        b=qc5MtBGa0X2/zv9hc/BZ1V7+a1RaAF8MYJbu6/4QDG3Qw0SMBeVqe633ByhC5HYVsd
         REFflWLjoEs/yvQJQL7nomJK1AxuPkzlJ4fp3AVrU9/asxnOB4q6QPFfrDvBJqU988LU
         4VXlYC1M38HizIbsq0jc9e5puf0zrUolAUYlQ97/USUr/+Xi0t90KvVWSMjxGhKUa/pD
         lrPr8PAXjk8lKKwPLgjdnurL6rwEI4ixNnJxDtYVKF9qBYks9YDzIMUdACD1NHsjvadM
         +IaUkcUyO9xrz6mu12NCVqY+kB8/noDTKPzXPAaTuZNfiLRnJLBS3PaXW6sDa209eL/X
         WB5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWywz+qF4ps1yP0fjEch8SEmkC7RWLyrWnszofi56+GmVWrJaPceqk2uuwKcXUrpyaGWhLBShmDRdH@vger.kernel.org
X-Gm-Message-State: AOJu0YxN8aJMx03nsLu+fxML2lEEYZl+/eJURqkEiTRN9vmlhNqHNvOG
	xesldq54l8ujeeIvMKT1saHf5yTjNQ5X2ZbpqcBDzAqPWdsXaK7tL0+KXxLfuk3/IcPVblNHimk
	jHR5EdHbvhqtSyARYFBN+lOdXgCkfuKR1fEvobA==
X-Gm-Gg: ASbGnctnohHBmnGiVXz+VvcU384hPwsPRGjXRbY1ZC5AD0R2YnOyN6kGqOWM4ikFM0E
	HGMHKIxR53oIC1XLle15Rq/ablyIZV2HhWN5m
X-Google-Smtp-Source: AGHT+IGshDnah7yTVkge7frSzXP6u6YQ9EMlI5n0k71zbBXiVfkDniOTr0RXn5mT0CNZhOwwkIPYxH+G4Ml04S4rkI8=
X-Received: by 2002:a05:651c:221a:b0:302:1e65:f2ab with SMTP id
 38308e7fff4ca-305f45dcb78mr119399301fa.20.1737018543217; Thu, 16 Jan 2025
 01:09:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123923.270626-1-szemzo.andras@gmail.com> <20250110123923.270626-3-szemzo.andras@gmail.com>
In-Reply-To: <20250110123923.270626-3-szemzo.andras@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Jan 2025 10:08:52 +0100
X-Gm-Features: AbW1kvZEtDtDDV1b-JCy06VodlCu92OcKCF4KhRqyAArlBqTeeutEPgAkUkNoec
Message-ID: <CACRpkdZ6yNvtqjYHaWC6ynP4CdkGSdt5AH9ZrZDqYq=wTehu-g@mail.gmail.com>
Subject: Re: [PATCH 02/12] dt-bindings: pinctrl: sunxi: add compatible for V853
To: Andras Szemzo <szemzo.andras@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maxime Ripard <mripard@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 1:39=E2=80=AFPM Andras Szemzo <szemzo.andras@gmail.=
com> wrote:

> Add compatible strings for V853 family pinctrl.
>
> Signed-off-by: Andras Szemzo <szemzo.andras@gmail.com>

Patch applied because stand-alone, clear cut and reviewed.

Yours,
Linus Walleij

