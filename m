Return-Path: <devicetree+bounces-187434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E6AADFE66
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 09:10:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A378D3A2054
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 07:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87DD22472AE;
	Thu, 19 Jun 2025 07:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="zR6pnixk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC15246799
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750317013; cv=none; b=H+SA3AAmavL3E4wQT17V9ZZS5/m692LmFMbEeLO7udbwn/eF5vcMp2zT/WWKrgW0xJtJ/yCOfMA/gQXItYaeTEKj7NWU8FRDnwmdsCPwzg17U/Zy0H23rf555ms26kd+ThcwKJ0WPOMt/GMpSw/60gejgzsJUMWoqFg8ZHcgZhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750317013; c=relaxed/simple;
	bh=idDFcxqcaZi9ITOA6O7O8mllE4ghKzrrd7yNzSOM2L4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AMRyox25pCFYIhnNEC/a9bP11vsmVKqp+bP7aQDaYvRc6UMbiHubcHSwnuBEOT7OfSQGOr+BFdzCKBUt6PxgxVmIGV7eZOl3oJ7F2JGvszY3/ElcvKvYuQ/eRzZuUFuMeUrq94XSGqkVL3UkwlYS4fShrZUAxkY9UZEfvyA6Uv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=zR6pnixk; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45310223677so3640665e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 00:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750317010; x=1750921810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xJ7WKC8SwlHWnkxUpPjJRL3c4L2d7RoKGqvzAae/doc=;
        b=zR6pnixkCp6zsjJXT0jpVG9em6OAYlr60twEB/Tnwh9XI+3ZEmAHkb9wA/wD9NEQKh
         vqGFjJdypKx/+/2nRpH5UPVmgmbFDEstlJxOUccLZRv7YDNXGGpWdtJyvYAua3eE1b3c
         eETtsyfiSJYQrJ+oQBOzBX1C281aLpvRIcpGmy9BOFsr/jvNCdhrFpjaFD3OJ1tsmLgF
         t+4BawXxhbMYqDS/2r5h4Jr9La1wUdzdyVlfTZTxQInLMc6FyPAk4z7BpyymRr4ceSLh
         c4IKRk37UuTtsn+iGXzcPv9wvXOf5NpYNp4dKPCGb1VFcZI6Bv3eDejNZ12+LQ8ph3rW
         sMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750317010; x=1750921810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJ7WKC8SwlHWnkxUpPjJRL3c4L2d7RoKGqvzAae/doc=;
        b=r0QC2+3oXWZtBGa0/RHiY2pJwlYxkiGGQN3KncuZVjcTLIpRVEF3emRLOnq3xg3ZJw
         6DFd9iYqXpj7oBN1CC3mt8/D1RuSVtoWTTtwwJJgXQdhFu1c8uWW6CmowlGWVBf9CSGh
         42Foa5sabLM+q5pVJfsLNb4zeyzkhYXSa6ShMcvoVUo5vXMvnjk4uBA4yudBbV1x+t6r
         TEuiA0wAEA9NMhN3Jz87E/DrR/kRm+J00npRr2Ti+H98GcimBIjlNkdxmF4L2LgfniRL
         eKjT8bI9EViEvi+ccgW5Fo8C4azn5dWLpVfOsKIbBlLHu6IoBPf3wMoLOXHldU2hdTxT
         5oVA==
X-Forwarded-Encrypted: i=1; AJvYcCU5un++2R1Q0ATuj44g9UoecSHT8SI/TPnWE19p2rWyUm3kp1h/BMGNAzMRgP/uyFlsIyhOrn8o/aqA@vger.kernel.org
X-Gm-Message-State: AOJu0YzcXvbN+oFMSIg0ihAqrBTj9aRkQmjHezpva1Hn5FbvdaOGoURR
	wGjIUFSY4mwFaHlimdn7AT6DR80dvewpS34ErbHMuzR5RA5uogsjxpkDLJNDGvYjMSk=
X-Gm-Gg: ASbGnctslw0R01EAtvBVPgfRd7Z43c2HWsqo9ypj1nQKBhl7BlPlLg7Yj0/UtdQZwOw
	Xj05H5WiD2bIGfyuXJIf7KQLpyQNSj5D8f8IgBSHKj0tKp+fSmPRqn4wY0vdnCI6jw025PztcR3
	xleTFT3979NgebE5bpiDrC3QDvCMU0DV5XXFGagYTO6j2JkVkIm4WLxS++FhXt0xkiDutrboC5o
	9F1mhcPqsBV2u9lJjomTpl166n01aZfB9M0H2pFPyuslL2I2cRLUhrZ5q6lEHN6/+nS/46I/rdi
	e11FCKtGI/NNZoPOhbsWf2a26RCgpnJTsDJkjAYRGJEFQHPXwkGaeDzBII8vIdw=
X-Google-Smtp-Source: AGHT+IHzP+i1T5dB4ay7/aTiSPYaINe2A3Zw6rt9PEf6xWeqmugHB7dSuPeuV0xJhfe2MdtyIcwRZQ==
X-Received: by 2002:a05:6000:1881:b0:3a4:e5fa:73f0 with SMTP id ffacd0b85a97d-3a572397846mr17415430f8f.20.1750317009976;
        Thu, 19 Jun 2025 00:10:09 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:c485:fe15:c9ab:c72f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b628ecsm18982991f8f.92.2025.06.19.00.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 00:10:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Cl=C3=A9ment=20Le=20Goffic?= <clement.legoffic@foss.st.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/9] Introduce HDP support for STM32MP platforms
Date: Thu, 19 Jun 2025 09:10:08 +0200
Message-ID: <175031700235.8154.11042956002137082224.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
References: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Fri, 13 Jun 2025 12:14:11 +0200, Clément Le Goffic wrote:
> This patch series introduces the Hardware Debug Port (HDP) support for
> STM32MP platforms.
> 
> It includes updates to the mmio gpio driver, the addition of device tree
> bindings, the HDP driver, and updates to the device tree files for
> STM32MP13, STM32MP15,
> and STM32MP25 SoCs.
> The series also updates the MAINTAINERS file to include myself as the
> maintainer for the STM32 HDP driver and adds the necessary
> pinmux configurations for HDP pins on STM32MP157C-DK2 as example.
> 
> [...]

Applied, thanks!

[1/9] gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
      https://git.kernel.org/brgl/linux/c/deefc7083414de81aad102b60f0390f600d7eb79

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

