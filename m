Return-Path: <devicetree+bounces-62937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0023B8B3168
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A50A02871BC
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 07:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B32913C3E1;
	Fri, 26 Apr 2024 07:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nwUdAWLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800313C3CB
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 07:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714116818; cv=none; b=koCFR98w1EuSi7ZVBBwBh7eI4W0JuLehhhXqoLH9QqfKiLxvwybVRAFyUIdwpjsM60yeaRg0YHOjRRmN2GGD23fU0f/+O7NbEQXuIWsGw/z9K4uAMk3Zo2EpMCU4RXsIzYiuR6BEL340em1kJ2LLOG7Nw7eO1lZPvZtg+WEl7OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714116818; c=relaxed/simple;
	bh=9ePKGoQQ03Kw1+fDy3bdzYL0h8yQNi0slcWIGi8PPz0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EA1Pi1Cegaej9/Ykril+D2U0A9HoDGlgs+rQJI/YjGBudDo/qo1K2xdRe55RO0jrOXBWl6lELR3pB2eodVjHex5kCbXz+Byajtvy7Wbq2EPGlLJ5GP7oSLPaN46A5ff9IBcWBS90v3xqKYyK1HuKv9LV63h3DE1BZxMlrKeDVE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nwUdAWLC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-41b5e74fa83so9140635e9.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 00:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1714116815; x=1714721615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZHhtC7yB+LEmKe67OSuhKeCGfLVnVMhlXHLt/YBxSQ=;
        b=nwUdAWLCQAVibxOIv9dBJjOWMuCEynyJf8vmZGTSY1cZGSYEtHfijdiFNxGSsjUnuV
         5fADZlrt2oxtVDmhZoD2/kDR+dDFGmDsQYgIA68hvgM0/8wkrCVSIMJz1R1gy7yKLbBl
         FFGBk0aLhRqK56NvVhcmB709dNJXoAlgzkdqCKZZiI8qfKkVZSnIhokh0wOwK4iRPBAG
         OpOw0GO8uysmQnc5CdNJg3QD1g8BsezYh4muj1bCHfFHsqQpFjOYhDV78RH131PoKxQ/
         hHox7UA8I+qOrIBZfWDat/UPVTjGp3uOq1j0JPvoqI9/12+MDjIzHt/3ydcHfW9mG7Fe
         OlnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714116815; x=1714721615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AZHhtC7yB+LEmKe67OSuhKeCGfLVnVMhlXHLt/YBxSQ=;
        b=kjCPHd1FKrSNvYgXBgDomn20eoTAcvIB84SoaiwMWtkZuvDh4FyiiB27xOZVezdL1F
         rdbqeqvLPyxqXZ4uxodoahAsdET2e6JiVkHdxWSomI3Ar44+CY5sBi3MsZMP0EIL3Qoz
         3Ie4Xt8Y/ClVaAL+KGvIar4xatlwEaplSUpT2ZPb0/Bfe7tXdsYgDUAAsyl4qiI6TUL/
         J4vfJOrB38Vf6zIaOPLNfI0egJ8WpgDUYeYTYjgZY1VP2Gp8gq5dxdbkhfTBuTwnN1je
         L+98xxR+hY7aug+tiwy1o5D53InmnKlHQizWVD29sUhorpANNLEDL5vbvqKG9Aotn3bd
         4yDw==
X-Forwarded-Encrypted: i=1; AJvYcCWYrbiLMSLUoO9kRq+I4eO3OZ/feCJaRn2KxzsRL2jCTu87lVcpnSbo54sxhzBJ8GHaFztSO03Gbajwad0ej6U21PRph+6xq2xfqA==
X-Gm-Message-State: AOJu0YxKeagfE3fSQd0Bkk6/SJzV0d6YocdzbdIiSMybaXKkwOtV7dD1
	SYxuumV5olHVV9jjYn7uuszA+74DoJjqxdKJs9Awhx55Bsa5wIifXs3QUyDs8f0=
X-Google-Smtp-Source: AGHT+IFAYmHbznrVYvrFyG3S4RgGzbE1l0SOZYxWBq+xKHGXgg5E4ck93IiPSX+DZnp/DKsyl3rmgw==
X-Received: by 2002:a05:600c:470f:b0:41a:8374:7eae with SMTP id v15-20020a05600c470f00b0041a83747eaemr1364455wmo.31.1714116815390;
        Fri, 26 Apr 2024 00:33:35 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:3e63:d6ed:67ba:fbe4])
        by smtp.gmail.com with ESMTPSA id q15-20020a05600c46cf00b00416e2c8b290sm33935449wmo.1.2024.04.26.00.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 00:33:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Doug Berger <opendmb@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Phil Elwell <phil@raspberrypi.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] gpio: brcmstb: add support for gpio-ranges
Date: Fri, 26 Apr 2024 09:33:33 +0200
Message-Id: <171411680836.6435.15788506275238936215.b4-ty@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240424185039.1707812-1-opendmb@gmail.com>
References: <20240424185039.1707812-1-opendmb@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 24 Apr 2024 11:50:36 -0700, Doug Berger wrote:
> The Raspberry Pi 5 includes Broadcom STB GPIO IP as well as
> Broadcom 2712 pin controller IP.
> 
> The community has expressed interest in linking the two drivers
> with the "gpio-ranges" property in device tree. This commit
> stack implements the necessary changes.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: gpio: brcmstb: add gpio-ranges
      commit: 7c66f8173360556ac0c3c38a91234af5a0a5a4a9
[2/3] gpio: of: support gpio-ranges for multiple gpiochip devices
      commit: e818cd3c8a345c046edff00b5ad0be4d39f7e4d4
[3/3] gpio: brcmstb: add support for gpio-ranges
      commit: 5539287ca65686f478e058a1e939294cb5682426

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

