Return-Path: <devicetree+bounces-177314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 559EFAB6FE1
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4CD94C3DCD
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2ACD1DED6F;
	Wed, 14 May 2025 15:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="NjIA3K4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB841DF994
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747236684; cv=none; b=Cly/kwM4phY5gcuvr60csL6xmX/Pndnyv1sJ+T9ecR6LC1nEFGFDXTeaqcH4jxWd3Y5XCTRu3KWkXkcA/IQ8H++VFkgto+Q+ZQHEjrbQcZyKzyt/2m0oazRaSz4F1zmISaEcyQnil1uXw0GR53Z1S7CWG+JpkFeOZ3cemK6c1uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747236684; c=relaxed/simple;
	bh=Z1sxsE8kXcUhyoj0n/3eQWxMrwrp8xETdMTl6tZn0Jg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hTR3imDeEAcufsXyFPVVgjerRx+nQ9jb4KsXEulKvrXQr9VbZmRnsugaHViOHxCZU2sSutrtfu3iRo3SaJg8euB6UbP01U52Sr82ou7FrJ6xZNserlPib3Pd+VwlaDJ1ELkmFd/9WnK+AV97nC9KOu/PbohKLFyB9fTrV1vTK6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=NjIA3K4c; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43d0618746bso54318235e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1747236680; x=1747841480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGR4+1BG0FD7hF4WA19BAUgiyzmgLYBs/GSczEJQxEg=;
        b=NjIA3K4c9L0i4et5fKAejFpL9vC3TkQOgER2Q40rHyEPU7b6pp2EIPBjR9PSvmMUZY
         YDnH0mqEpPSEuECdChDLwK6uf0r5onaoNOZUM821+M6ZcVpaPrAw7tHF8kJfK5W36QXe
         PV5bhm96SyQbmG/OaxhRxDYQtHeZ+k9/GvI1BEyI2yYTeY851tmNgOm3hrQjWvk8RjVr
         gKK8xbWstPGRl6XIsBdsB9BAMg2VzAjNKBuGocQulbBLCcsTg60ocAVKusWcSNTrgg60
         sjnRZ2eGFcDyqpplV73xEw24ezGW1GeXB3GIc8sSseGQvTw59C9eds5Os1ZVMLVfnSv4
         ymuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747236680; x=1747841480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EGR4+1BG0FD7hF4WA19BAUgiyzmgLYBs/GSczEJQxEg=;
        b=jsgASjoodSs9HgAd725iP5pLDBZoCUfxwEhQfCwcURAJS1igzt+RHFdFZYMk8Czy0e
         4DfFZq6uSfHcCxbV4i1eDQGrbdwSNN8tXQKScLDNVH7lqmxsRBfl/1pWYpouePEyy7Jc
         WLeQaTGwT2QG6iau6din0wck4UUgATGrpW8y6eZ9D/WC0aahYe4IWludhYbJVkkas+0n
         czbb87KXfhBQ5whKSVQZ5pX01QMx/Q4ziwJ9ounH0JMOPSwyg9Diog5p6AWinsjV1Lo3
         bOO+FAoB0/mnQg6BkuhDE/f/T7bgzMXUeBR5rcYpf/x8rV1Rwzw6OByZT3PLhbGAvWN3
         2/jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJkOHxPL25EOVcijWyyt/ClP/LCLxXLj9jh/iGdsStYw6hqOQFKqqQACG0/a23KcGlcwMEWyxOp0P9@vger.kernel.org
X-Gm-Message-State: AOJu0YyC3vLetipOL32xZQm9v3Oc4wc7IeXmBLAoIKompYMv5DDslkEC
	MmcmZcEX2aRS8StPA88Bt3R7WE2nyUH59OqAet1nUlg4PcdMXYgb2d49jeIfO8o=
X-Gm-Gg: ASbGnctPrltqlsKDYNO+cBgvQPude+lvv0yr443WgVPK2JwGidcm4Y6mzHWHcYW4usi
	DyBNVpVbcyRACS/rSKh99Jq853m2aZRsw3wkACfDkLnzs1NpylTk61JxBRlZmysZAzfzcc4ES7e
	LgCwGZCBVSiz+o9wPjzNEpqNR0WuBiXoiIMrutS1xjuhUvHNegYhC0OXBNWHW6Xs0woHf/7RXbl
	GKDTNCfZn7NVBp642eE7UGNKSIPotC3fGOI4dXejKzEbwQnRclM20TprZV1lGpSEpnvR+qKVaJt
	EFOwO2Efcmn+cj5tJY632G7JD3OJYt9kXmDy4HTO4jqtltnzrqyWgIBHAAkrOesTQtAUDIVoBVq
	1F47GI3dUNXK4NBn49osyTPum
X-Google-Smtp-Source: AGHT+IHOvVPhpwSb7mTZDJYjwkd9um7VINSJBr3N9zogJFPLlegS2njAEUaLrSQ74A/tb/6r6JJrbw==
X-Received: by 2002:a05:600c:1c9e:b0:43d:b3:fb1 with SMTP id 5b1f17b1804b1-442f216c175mr31299005e9.27.1747236680160;
        Wed, 14 May 2025 08:31:20 -0700 (PDT)
Received: from brgl-uxlite.c.hoisthospitality.com (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f337db3bsm32975415e9.9.2025.05.14.08.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 08:31:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Aaron Kling <webgeek1234@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/4] pinctrl: tegra: Add Tegra186 pinmux driver
Date: Wed, 14 May 2025 17:31:17 +0200
Message-ID: <174723666619.14309.2874778168838879633.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250429-tegra186-pinctrl-v1-0-722c7c42394e@gmail.com>
References: <20250429-tegra186-pinctrl-v1-0-722c7c42394e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 29 Apr 2025 16:33:29 -0500, Aaron Kling wrote:
> This series adds support for Tegra186 pin control, based on a downstream
> driver, updated to match the existing Tegra194 driver.
> 
> 

Applied, thanks!

[2/4] dt-bindings: gpio: tegra186: Add gpio-ranges
      https://git.kernel.org/brgl/linux/c/1275c70c4c1ca764cbf9ced01fb4286e4f49747e

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

