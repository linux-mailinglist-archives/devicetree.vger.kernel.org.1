Return-Path: <devicetree+bounces-43060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CC285915F
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 18:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 335C11C2040B
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 17:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312DB7D414;
	Sat, 17 Feb 2024 17:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="c+Q4Ob/r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0BB22094
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 17:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708191880; cv=none; b=Wsi2bmYiryqPUd7gPL58Au9SOADJnebFuHYvXMkjfx5XdAYt5+fh7SKbYt00XJqHx1WM5mEq2zI+2XgUt3Qle+PfmaXLLiYKvj8cAUxn7Dqr2ySXiZLxeEpAyno5yeZpI8GqN9QknlGvX59Yg2qCQ/7SkvDBu+iVdCmYOnZaZgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708191880; c=relaxed/simple;
	bh=CX1u0lykeSga/DiDNtxquoMPqdU3LaqhG1zIJl+j66s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=svMKJz/Ve0f+FOAQtWbx0DAV3VKVvx9gtxOa+S96O9EKgr5PX/DMDcYCFNN80AKhtE3X+TpbVbvoLo6oPeI7mfg67Y4bpAFfNNZetBB7Ryz32FHC88vZcUFe9lGIjOjT2d75HyqmXuv9bEeQ3d7wx00AP94McIgyCk0QnaE68vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=c+Q4Ob/r; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B82EB40CBA
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 17:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1708191869;
	bh=K1I3Xe6qMPJRuxkw9XV0vnDH1h6TWduWqAabd4p6cd8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=c+Q4Ob/rvN1ncbR1YDftnf9UNuCMXBzHOySnVLXVUnXhpi+T6vVTCplNFqmFF/02/
	 An8qQU8H8lxljRhqvlQRYNGnIIHjdnallSfvETHfUD/7nNeWRIDYKCKssB5Lgeezck
	 9rheVbQu+WOnUkejCvITtSkUlSYfF7mU9S8Dx9c+w3/wS01eQxJe39htOLRsZ6GgAO
	 E9eCno0vrLUEejXILEA2TkZzlrTqatWrcf9m51ViyVbp6Hxa/IzxEIM8BTHm09rQ0Y
	 jQk37wzxChaVksiOgCEf0XoIB2uSdb/FETkp4WX29ZmJlcP5i52P9IFPatux0bJQg+
	 L7PuwiEKbaZcA==
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6dbdc7135bfso3368117a34.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 09:44:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708191868; x=1708796668;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K1I3Xe6qMPJRuxkw9XV0vnDH1h6TWduWqAabd4p6cd8=;
        b=TKN3VDzVRhdrKJ7sb6xwECz1ggqWwdD4dPnD9PR35JIkPM79wj+izGgAFvvRhk/SX+
         KoV2QLXmXciqJrwfEF1FKUs5ycUNxNf37o9KPWXzjM/lo7lBZZuTxWIlw2Rl/8vZIgPf
         C8dkosRDx+Oys19T+jnwB6jrmMnTWd6NWku4HoL3UzUCOetgKPG1guI02hzyqC4LWPH7
         flvpNBHolUvbcoBNFlMSDHERQZ+C9jyh/izmZbTEkXd6l3kXG0eKXq3ha8C5gatPlNdl
         C+mqfGCYEfHkbQLrqFCTCJd/vI33UBz/QYeo53tM7mBgVD+ffxE+dMGRq+EIrxQ00bJN
         Et+g==
X-Forwarded-Encrypted: i=1; AJvYcCXX+u2JZZF8/FI0dy3LQN+aI1NXCO6xI6HNRwhi4K4qsRdEKe6FT0L14I+2+fVcoFlz8FFz+VqP7RbolRlIWBUMbpN6pdocTJ2Kmg==
X-Gm-Message-State: AOJu0YwIJY2ZACIjjHSRqbVNvRjQOH7nkvL049Z2zVG5PfLy3eBeGqwp
	HDIgCwGjxK6IAQjLQR3kog3AeVb83+uJm9o7ccgFnHbQphOeWqF9NenycdiqruXyBznBluzFFhi
	f9o2M8dVIj/1YT4Acu50U53Voo3FQs6onrdcyOP9m66NChy9C//ndgJr1IbBEx0ciXFfX6CPsMs
	wL/H9pc+VgkI1r6sB4P3n6r+hc/DaQ873YqMjHkOBQQkk2ABhBdQ==
X-Received: by 2002:a05:6830:1cc:b0:6e1:7b0:fb99 with SMTP id r12-20020a05683001cc00b006e107b0fb99mr8292115ota.21.1708191868267;
        Sat, 17 Feb 2024 09:44:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1c/Q8v1VsSZFiCSUMkcB0Mp+pfSmBlYWI/cfD/c9vVTlEeIuj5fm4wWpojkiZlGtjZz+W8u85E1uWYJLfwwA=
X-Received: by 2002:a05:6830:1cc:b0:6e1:7b0:fb99 with SMTP id
 r12-20020a05683001cc00b006e107b0fb99mr8292101ota.21.1708191868045; Sat, 17
 Feb 2024 09:44:28 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 17 Feb 2024 09:44:27 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZdC_g3U4l0CJIWzh@xhacker>
References: <ZdC_g3U4l0CJIWzh@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sat, 17 Feb 2024 09:44:27 -0800
Message-ID: <CAJM55Z-t9e8L2_iFfdbCDpOzi7UxQao6-L6VU_W9OGBciJ46bA@mail.gmail.com>
Subject: Re: commit f34fd6ee1be8 breaks current dwapb gpio DT users
To: Jisheng Zhang <jszhang@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> Hi Emil, Linus,
>
> commit f34fd6ee1be8 ("gpio: dwapb: Use generic request, free and
> set_config") breaks all current dwapb gpio DT users, for example, getting
> cd-gpios will always fail as -EPROBE_DEFER. Before the commit,
> dwapb_gpio_set_config() returns -ENOTSUPP for !PIN_CONFIG_INPUT_DEBOUNCE
> then gpio_set_config_with_argument_optional() will happily ignore
> -ENOTSUPP. After the commit, dwapb_gpio_set_config() will return
> -EPROBE_DEFER unless the gpio-ranges are set in DT.
>
> The key problem here is: almost all dwapb gpio DT users don't set
> the gpio-ranges DT property, so I guess current dwapb gpio DT users
> have this problem and the commit also breaks old DT compatbility.
> So could we getback to previous behavior?

Hi Jisheng

It seems like the gpiochip_generic_request() and gpiochip_generic_free()
functions have guards to handle when gpio-ranges are not set that
gpiochip_generic_config() lacks. Could you try the patch below?

Otherwise I'm also fine with just reverting the patch if this is not the right
solution.

/Emil

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 8b3a0f45b574..e434e8cc1229 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -2042,6 +2042,11 @@ EXPORT_SYMBOL_GPL(gpiochip_generic_free);
 int gpiochip_generic_config(struct gpio_chip *gc, unsigned int offset,
                            unsigned long config)
 {
+#ifdef CONFIG_PINCTRL
+       if (list_empty(&gc->gpiodev->pin_ranges))
+               return -ENOTSUPP;
+#endif
+
        return pinctrl_gpio_set_config(gc, offset, config);
 }
 EXPORT_SYMBOL_GPL(gpiochip_generic_config);

