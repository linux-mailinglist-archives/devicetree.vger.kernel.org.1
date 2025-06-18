Return-Path: <devicetree+bounces-187060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E049ADE8E3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6A543AB5CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 10:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36D4292B41;
	Wed, 18 Jun 2025 10:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="CoUrotv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727528FA9A
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750242145; cv=none; b=VdcTPgn0pXSTHYQNIXiXMboXR6TN/k+KLNTihEZl8AjQoXubZPrUyKtAH6kpoBcV/z18MY0v8l4HVkBx1OdawjfE0VJ/BjfyMZTh0nocw+w4gfTKzbicpdxNc5WQkrZzb95pnLWVwTlOD/MbnabA9A8IYiNXv73hp5IsFG5h2OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750242145; c=relaxed/simple;
	bh=+qOQU17OoM8/KAmW2Xgq7JH5nbAjGTw3ExvQ9U5cu7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C1REEO62sCEF0e07/FJcBY/t8qfV3pUSTQybSa5x9FzqhlTkqw26JkiBAOFKESd2y17ykP7voWNwgjvFgdhL4jTULpnXTt4WdMJn+YAhlcZVli0m+Ur8nVXVNZihCPcv5orUvy9iyaPw5AtexLhgjBZBdaz1a29qmPliGrzBdfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=CoUrotv/; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-451d3f72391so75115185e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750242142; x=1750846942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcY0E63xRmQxwqQZ0aZVZsL1+UafBW6eRdmA8hP7p/o=;
        b=CoUrotv/z3TvglJKc4tf/X3/DHlMUI66sYQSzgfxbU02AFZUkZmoSee/nKHJgCvIzw
         d0I5q+9khi/TN1Z4gSQS0xWCekA8ynsY7kgZYyDm/Yrtho5i3njGJVbHUtIDQAWIkHZI
         xujqpCINLCSgKNQT9deB/wtCq6Qis0aqE+pa+N7fyYkg3kDI1Hw1mzHwlMCPR1F101+0
         nNelRJ3WzG+EFNxesNf/jmXo+VsNECFv+O3eRRYitGdoDMW6+aOEk1YXG9CnOm2v9Wwf
         LBYupTbXNPYuiq2D91uCga9L/qYQXF57+3DT6Sx818ejkLprDrj4iEfPqMylagKcWqNo
         l0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750242142; x=1750846942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcY0E63xRmQxwqQZ0aZVZsL1+UafBW6eRdmA8hP7p/o=;
        b=oEZUKweZTybqwyVXx2ggBkezCwSECZcfG+fBUM3ZCB48xycIkmwkXH/EMpoeiigTq2
         EVmUQ3BmKkwS3tv06KLzA06xjMDiFObyF0fkPDDus1iCg9P06RYd2Khsh25kaiPOR2jP
         uOZCsPI5o7iAOkcTnN5LHi71XmUjzF/xy1T8w0q7S5fpmcOf+jjgw0ESf5VJegXyqJTQ
         J08v9uHwORFTv2GTKxOj3T+TdB/y75iXG+1SEaL3yCOxVnL9L7x2Brvf+u0oKZj1S4im
         q+hYh+ytfxnAcakXMQGxxE4PKrCel7r7dfCeQo5uMU0yP8IhxjpE95UGrx8Duz/gHzph
         3+8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXn+gFczHoP6p7otBGzTXk7+XeMTpax4gEfMtOHZXKd1puboYp5hIBhfYc9zOkRF7uVwAOzkzohES4a@vger.kernel.org
X-Gm-Message-State: AOJu0YytCFc8nKMb6zuAEYIkB028vva1ZTGT5/m9wW4lyFxKmc2qU30S
	VU8Iiyl1QkJ2Y2wTpzmZOqUi07xeNlk8crU58ngbMsaXRy3+eIrJSwvJ4pGBUhRdRvw=
X-Gm-Gg: ASbGnctI7ufsvqGhGcPqBWe0v5qlXYuusv0AZ9lqMttRuINhN29v5rCklz6Brp/0FbY
	FihPF8ABc5zzsMLDdz9JGVZP8PUxmYoo2dmuV1ViJbJuIOGXqZ0fI5sf94vI++JHBZRodO8SuAd
	KN1dDmg1bdgdyd1amaui4NPMPkWnwpWCNDIfxG0Tb9TBWTr2v4iyZYxAhUwQGR02YG3kKdmtT45
	1hArQMLxwKySBcJj3mx8fnVjavHhUBf+oeqcLXuVdUNC6itV1/2edm/gccId6SpIVA4HiPT2Xa0
	zyDJBenCDZaNfi1OKH/LFb2EOjrtp/EklhVK3YdlIwfLdavAbHHNNekybacOvg==
X-Google-Smtp-Source: AGHT+IHn0n3NmTaxbvzRw1SdIFvw3ZSwW9W0E1EQegpOOqY+iv4O0dkFwIU4AIp8rNLGr1+PEgFNrg==
X-Received: by 2002:a05:600c:3e19:b0:439:9424:1b70 with SMTP id 5b1f17b1804b1-4533cadf928mr161514965e9.30.1750242142318;
        Wed, 18 Jun 2025 03:22:22 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:ad8:9ec2:efc8:7797])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e13d014sm202946185e9.24.2025.06.18.03.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 03:22:22 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: arm,pl011: Drop interrupt properties as required
Date: Wed, 18 Jun 2025 12:22:20 +0200
Message-ID: <175024212201.53500.363665357985105443.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250609220900.3035642-1-robh@kernel.org>
References: <20250609220900.3035642-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 09 Jun 2025 17:08:59 -0500, Rob Herring (Arm) wrote:
> It is possible that the PL011 doesn't have any interrupt connected and
> can't be an interrupt provider, so drop the interrupt properties as
> required.
> 
> The LG LG131x SoCs are one example of this.
> 
> 
> [...]

I changed pl011 to pl061 manually.

Applied, thanks!

[1/1] dt-bindings: gpio: arm,pl011: Drop interrupt properties as required
      https://git.kernel.org/brgl/linux/c/7b20980ffc11514d8849811857d915001236bcfa

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

