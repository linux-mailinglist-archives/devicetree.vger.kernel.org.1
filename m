Return-Path: <devicetree+bounces-151411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 945BFA45BB8
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:27:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABF4C3A52DA
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49B12459D5;
	Wed, 26 Feb 2025 10:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="AtIPaW51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D3B23816F
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 10:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740565650; cv=none; b=blGaOB+R8fCwMkBIvUshmHZBJkyJhVyb9yfQh6bHwlH2ART+fd/c6fvkhiyPR0tRc1TcYKRHm/Y/t6cHIjsIs7cqJ0fH11lh6shhcDrPTZ3EhC3SlbrzjL9fr5/YoFKM85gDbTTosotyRGmSMqjMtEI5LwpIXVCBQPg0vZQKNZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740565650; c=relaxed/simple;
	bh=XKG8FSINbw81iP5c0I80X1milF36EHFZ6IexSHG6hHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IwroQjgVch/gP/FZrnDnH8Qza62VVEL09DMdvA4coPNFpgCOMvYWJf7LmeGuo8UuNMDJjIm+Q2qNGBp5wVbG57kgeeA8GDu7/4OxU5y5xpefNMvGbBFiZZFYsl7A5zswgyu2+G5fn1qeQ3lakTydEq0HGvi14hRFZDdCzYRGyYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=AtIPaW51; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43aac0390e8so19608565e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 02:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1740565648; x=1741170448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4N3ijWIZv68eyVCzHot+mfvzLN+Qerzb3ZH4lrJQqvA=;
        b=AtIPaW51Yl2r4ShiOrKhZLExpaPxL0gl8yutst7buhfJfwa31Svz5/kDvEEjxJyolY
         QIzoLEIYORVeHg7+dio+0FhAxvhopn3m0ml4injfjI+cLYw+gwwZ7LBBfKHezOEEC+bl
         O2wl7YxjtTxWZQaUG/9FGGpT8hNURzvkjPDF2v2y0Uhu8R8Hy+iv0jri7yXAqJOlVLzr
         qpIgdwFSfWh14wQ8KIqu69sPRM1ZSY7h8GlDS+KUheMzfpmdsXCxvZAY9rcC7cyFGG81
         0So+13/6w5PQuNxRAl0r5Ahsfg7Z+YntlDBcixOr1cAkk/JplAruP5sc+haZriP8vu8P
         7wtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740565648; x=1741170448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4N3ijWIZv68eyVCzHot+mfvzLN+Qerzb3ZH4lrJQqvA=;
        b=qE0Lj1YwrGqZsRn8papuuiszcj5DIwnNZf9QbXTflOXWR4K2JBYr0yzhZgNQo+TAG+
         BiaUXwhToGHSr3f8I3/MYUdqzC88SAOsuXG8OHbdQKd5xQy6tD71jLlZBGjjNZ89UZ/5
         JEWowRQ9XIsCXW1CmSm+bWIy9iH9P7pyxkJj+2W9uyYFa21Qa3LYYETCjQpOK/ZxuwnT
         L6hNStrcxUaayXakqMiVFuGFPAPBVOkmDA4MMWp+0EA39G3ZPAxQA0i1VM18RDKY6Ook
         lJipWWWeHcuCxl18zt2V8Q+2KulrzO3uo5pV1lEXwAnPDHnoxedcCpFnDx1odoP6dVUu
         CYUg==
X-Forwarded-Encrypted: i=1; AJvYcCXMzXxOSFGEUUjrOmWMChGw2zSYqJ98zeSYkv4xOHTwkd30RoCAcDktz3t1OAhdRSr5u9HH3oeE2nJt@vger.kernel.org
X-Gm-Message-State: AOJu0YxdQc+POEAXC5gNx7iQC3WA43ha+kYsJ1wx+04VCTL4sh3dKA4j
	Z1NSx4IHSGSn1qUT5BuAnodQRMJ3XeFKVCYZFyJoRuSmFZxY8pIT7SUlma5YULI=
X-Gm-Gg: ASbGncsGvRd60ExnLsmcNBMGJFHuYkF+5cKQOcGbPFUbGXCPeQ31jJfko8Cb+SBePSg
	Kmlv9H6AQ+G1Gq15tAH/F+nfK+RYkpueUF10e6ob55F2BT40O6l0CD0dQRldQttSNtbOMdX418Z
	n4dYxjNNejgdhbdpWgR8hhTto3WajMDZcZgor0OgAl3pApsKYD3eicwoe9FUH6tVK2Y8ySAFic3
	atyxrYf7BhO/AszO7q7tTr7uL1xSwOJ61RcBtO7h9zq/cexsKWA0+LezWbsUre8rYEt5Fln/uJa
	bysOzvh7uE8zy/uK/gDajOA=
X-Google-Smtp-Source: AGHT+IFvMfF1V9DABzoX85a0pJFEGdD7BWr+NcNzq+PCz0lqB3/qnz86jDYRHsS9ArkWtks7QJIzPA==
X-Received: by 2002:a05:600c:4704:b0:439:8b19:fa87 with SMTP id 5b1f17b1804b1-43aa9545418mr93905955e9.4.1740565647644;
        Wed, 26 Feb 2025 02:27:27 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:7d02:26:5770:658c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba52b97bsm16448205e9.8.2025.02.26.02.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 02:27:27 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Conor Dooley <conor.dooley@microchip.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 0/2] gpio: pcf857x: add support for reset-gpios on (most) PCA967x
Date: Wed, 26 Feb 2025 11:27:25 +0100
Message-ID: <174056564160.36055.17560042378839414084.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224-pca976x-reset-driver-v3-0-58370ef405be@cherry.de>
References: <20250224-pca976x-reset-driver-v3-0-58370ef405be@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 24 Feb 2025 11:03:20 +0100, Quentin Schulz wrote:
> The PCA9670, PCA9671, PCA9672 and PCA9673 all have a RESETN input pin
> that is used to reset the I2C GPIO expander.
> 
> One needs to hold this pin low for at least 4us and the reset should be
> finished after about 100us according to the datasheet[1]. Once the reset
> is done, the "registers and I2C-bus state machine will be held in their
> default state until the RESET input is once again HIGH.".
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: gpio: nxp,pcf8575: add reset GPIO
      commit: b28037d4f375ed36ce8abbbd31107b991792db72
[2/2] gpio: pcf857x: add support for reset-gpios on (most) PCA967x
      commit: 087f8a6b8ce93d582e0b84af538da13d735e2444

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

