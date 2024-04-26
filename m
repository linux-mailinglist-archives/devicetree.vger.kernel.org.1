Return-Path: <devicetree+bounces-63028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4548B37F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 15:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD1331C2275C
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 13:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20041146D64;
	Fri, 26 Apr 2024 13:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mYtsuPaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FBD146A88
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 13:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714137053; cv=none; b=fsAxD6mHtPHht1vrxZbs/8+VcPHOqfwX4PoYo2K/qDXujZb4YT+TpgJmj8DuafqNv4cbmL6Hr2ifoYZyQ43eA8tCikpr68M2+v8EcRerh9ejLpl+w2T4EtoxI2GVaWJg7IjD7FsiGxgxpGcjYEfN2kMF8Cr11kyKSIlsTDrJUbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714137053; c=relaxed/simple;
	bh=VE7wD8KokW+7zCXO0HYd2htMwnpzd+jqE5ppA5VzXgs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g0PSqT6AShnJNvBZoSfYPGn2E/BO206+Mlvr6LF2MoKZGGaT7R3G2qCz+EJuFSm8rL2MH6TxnpnBxoRSslhbSpPGliSb96CBtfyq+XrByI5z3ShvoWtpeehk1zU/QA6+tnGW+8pRqt6ZiDYY6YUSuwOwW3Xyi9QgidlNMGHLPSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mYtsuPaQ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-51967f75763so2505428e87.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 06:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714137049; x=1714741849; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=up/TvhMZAZY6yPkfNvqYk9mm7CB0BvgIE99o7dPUwOo=;
        b=mYtsuPaQ0gH2j5OLE9kTsQa5Xi7g8G06kk+9t8fADcEYyG8rjWqsD4SLF6GX8I58a1
         dL+Ad6SCcG8zEwVqAcI3QHpF6ZE+UStNK1Ur1eZT5pxnJaNhf4WK+XoHmoQm5TR5vo5f
         6BPQPRPRCL5XQ/RturGRVMC7C9+caBID225aLif00Ss/hFgAmElJzikih2cRQFvVp6V3
         U3Bw8e+eONY6XhGKgXuSOilr8K+WulprjFJxc81KYDOyU5RAdkDYzAE1KeRjTc19LhoG
         3tsB6NZ1D2QGSSjjygnW6yOCxOVZnO7Y0sSB1fYSwso9VJypiNNjzPVfE0s2dJ8R3Hjl
         nREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714137049; x=1714741849;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=up/TvhMZAZY6yPkfNvqYk9mm7CB0BvgIE99o7dPUwOo=;
        b=elNaSNIM6/JCdiXOigqEA7OtwBY181EjWPqqpXKbteuFFwzWAWYwg2FVf3gRi/UCAg
         m8Ovp91BYV51m6o5DSD+NQhhUqSCPe14BMyHidq3pTBwQW+jgswz1MrXUwy9FDYE+mlN
         AeBHSIhrXqURut+mZ4VcYfcpzWDQzHqvgIOF79Z0WSmam9xZ6PtWA1ogE4UihNAhlZ/K
         ALgETea2hv3u73RGI/GYe9cRddE0qa6s1e6kBmb30eeERpex1+0FouOmJPnf/AlAfkwD
         eA1pbE3mDsl11st5VtrJr7B6foFKgfEhEjJt6lnN9VP5J4TFWw1eH/IKDOQVyQq8dB8C
         SRuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrRSVpyWmKoht9LyuoeGoKvHs9xinS2jIMUI3B3JZP2pA9R/AlCQUQOXH9yh4XFMjKUh58/ySaCDGY05DRjv/ni5dnvpe7Q0VHeg==
X-Gm-Message-State: AOJu0Ywu69HM3QH2FtVzwTS9ko2VjcXMi0poT2UO3uVoAKMDDsz+RnES
	fzOWx38bQJe0KbnXU1+bf/o7CUP6OrxfhYg7MmAzBMMzWF3qb3D2IG/tSs5qJrI=
X-Google-Smtp-Source: AGHT+IHL9UxI1NEY1QMkE6e22sU+Za46bYeedUI48dL8mkZVuEGHt9uH/8OUBtMER64Ua4ymrFeFUw==
X-Received: by 2002:ac2:4248:0:b0:51a:90dd:698b with SMTP id m8-20020ac24248000000b0051a90dd698bmr1749320lfl.65.1714137049284;
        Fri, 26 Apr 2024 06:10:49 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id u18-20020a170906c41200b00a58bec2ae2bsm1396948ejz.39.2024.04.26.06.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 06:10:48 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/2] clock support for Samsung Exynos pin controller
 (Google Tensor gs101)
Date: Fri, 26 Apr 2024 14:10:45 +0100
Message-Id: <20240426-samsung-pinctrl-busclock-v2-0-8dfecaabf020@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANWnK2YC/42NQQ6CMBBFr0K6dkxbAasr72FYlFJhIrZkBoiG9
 O5WTuDyveS/vwn2hJ7FtdgE+RUZY8igD4Vwgw29B+wyCy11KUtdAdsXL6GHCYObaYR2YTdG9wR
 VKadP3bk2tRR5PpF/4HtP35vMA/Ic6bM/repn/4iuCiSYi7FaStv62txGDJbiMVIvmpTSF6gIH
 9fBAAAA
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This series enables clock support on the Samsung Exynos pin controller
driver.

This is required on Socs like Google Tensor gs101, which implement
fine-grained clock control / gating, and as such a running bus clock is
required for register access to work.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- propagate clk_enable() errors in samsung_pinmux_setup(), i.e.
  struct pinmux_ops::set_mux()
- move clk_enable()/disable() outside bank->slock lock, to avoid
  possible deadlocks due to locking inversion (Krzysztof)
- fix some comments (Krzysztof)
- use 'ret' instead of 'i' in samsung_pinctrl_resume() (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20240425-samsung-pinctrl-busclock-v1-0-898a200abe68@linaro.org

---
André Draszik (2):
      dt-bindings: pinctrl: samsung: google,gs101-pinctrl needs a clock
      pinctrl: samsung: support a bus clock

 .../bindings/pinctrl/samsung,pinctrl.yaml          |  17 ++++
 drivers/pinctrl/samsung/pinctrl-exynos.c           | 112 +++++++++++++++++++++
 drivers/pinctrl/samsung/pinctrl-samsung.c          |  95 ++++++++++++++++-
 drivers/pinctrl/samsung/pinctrl-samsung.h          |   2 +
 4 files changed, 223 insertions(+), 3 deletions(-)
---
base-commit: a59668a9397e7245b26e9be85d23f242ff757ae8
change-id: 20240425-samsung-pinctrl-busclock-151c23d76860

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


