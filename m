Return-Path: <devicetree+bounces-237342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306BC4F998
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 20:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9016B18877FA
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 19:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D2AD325712;
	Tue, 11 Nov 2025 19:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fworl9JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135FF324B38
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 19:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762889200; cv=none; b=eAzmgpDyFYc+2ZD89tUYFcUadkT+FWUXJK8wLgvKXqXVAMzBnm4hZHOpPzNSCC+2wM70IFki7xPcgLYJTJ/PcjNxrNeesX0STA2e3Zjstqff73g7FZfTeyjd3IUinkSPhSFhKyc1PAlli3dFMb29Bu2eUXKUMGX1gWp0YdLaff8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762889200; c=relaxed/simple;
	bh=f5tl5Jvq2Hy4zPlmf7aG3KhINJQaIW2CKTgzdHwDxdg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=apjbwdEs3Tf2NpFs+dK1AMRRq4AjWfwj/qqzADx5QyX201fi8QtI+8AqBhCHj9BoWz1MuClqgQJg1MpWLH/gzZNljPzpyiV0T/46/IlWQma7SGJWZYnF3+q+G+lh7ceaZmPCIPYe/ngGQl4kXk0QXlRnik/YAqUsYHjwuCyX5gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fworl9JJ; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2984dfae0acso796225ad.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762889198; x=1763493998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R3hXO0kohcojDK5N1gDQnbb7SNR3dS5AVJdqaUadyUo=;
        b=fworl9JJ+4vd3fn2WOlGb5AqkA6rYiZCmYBo3d8aQGQ/NqLkXAa0JVpDvJ9nuWPKRz
         d8RiWHeAVHBDeQ+L2pljavh42DtQMbly8l+/q9T5mt9H24Tn0ZevyKB0JjIYrztvMmC/
         +OAG35/iohrb9LkjxkXhwy2Uwdr1kC+w/fjMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762889198; x=1763493998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R3hXO0kohcojDK5N1gDQnbb7SNR3dS5AVJdqaUadyUo=;
        b=O6ZSn/7ght+BlbXihdqfYqR9hh+sFfWTeNjWcLL06PZTE+192pVneJk5xwnir6LvM4
         c1Ms6FjdwXvpm3iBmUoTNOsuSJ1W3l70pLImOhXzKgTcxmAy3iRprJZwHw1/mkEI4Dch
         iuGcUJCT7cPyaXKKLhF3uyZKc8K2BnuPgYraHOt0+d4Ads09acA5N3H21stmj0wyIkdQ
         V6mSiEgAeLMrGbZcit39wHdCPNgt0Ol170IVBTlc6vts8Kk+io+wy9aiYwcr2sNoR1l1
         icRpj0y+1SFsVXzL3EiQa17sqmBHIzHsupB557nJsfeyCFjWZrLx183P8dLeXPNZNZIp
         x8/w==
X-Forwarded-Encrypted: i=1; AJvYcCUEmOjPZiXcSXgT6hCLQVI0HOfOni1oR/MTPnoX/EUsgsPVNYxH4MDtPuPEGrnmhJOX9Ju00fjnfj4V@vger.kernel.org
X-Gm-Message-State: AOJu0YxNEj6HxDn7g7aK9QZM9YicIjK41LpC2Q06na4nY8a3S4D0uFAW
	fiIoxXAi3qtRTcTCmpyxrWR5Ufcgl7znEPM3y+1TTPFKcTjNiGLCK/TiOD3DR78d3A==
X-Gm-Gg: ASbGnctdzdcK9oEyfAu/xWJWYF5qbzDR9wZ2S/1UEnfRatw2lmsWvczNbekS2zJTIII
	g3/ysV9G0WkU0SJYZLm560ZlvsNJ6RPkZJqVgeZZwEx6Y60x5KYFuNeZ4bib+93E5jVihFJ0ckL
	S7ezY8QI5NaJLvjaXIcJGB9J0rAkygu3li5HTp29TYA9IRvFbHvwwPrQhsHNYhMLUCsYk1cMm3b
	ZYBlvRWsmwc4ZJTbjnaUEdtJOFMokyZkHM1TFaDOAGmKk4L6hWroOtIxFTq9wWMY3mEgpcvqQ1c
	GkCjWNIFRqmWlSk/YqgWPVacjEsyy71OC/lqWs5JNWymlcECTP67YkDA0KWxJBqO5a+wdE9hiKW
	dMfcso1spUK7jMdhFurjG/Z3jiFqh87W07MdvZOedyHwmURXzUjVyRfY/ztfvrOsH+BcocPHxHs
	M62kgfPYECobRgSXMITcjIJHU5DJMUtGbMKwWrMorqe5lwWWdtOrSCm4zzGrk=
X-Google-Smtp-Source: AGHT+IGzawljQPfuMSEdjKEu2O+TbUwNMNOGAm74gscUESQKCa416kMewGM3RhTWM1GA5ootFgKOLg==
X-Received: by 2002:a17:902:f684:b0:26a:8171:dafa with SMTP id d9443c01a7336-2984ed49524mr5944105ad.21.1762889198163;
        Tue, 11 Nov 2025 11:26:38 -0800 (PST)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:ba9f:d4c6:9323:4864])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dcd0974sm4861075ad.90.2025.11.11.11.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 11:26:36 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-samsung-soc@vger.kernel.org,
	Roy Luo <royluo@google.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Julius Werner <jwerner@chromium.org>,
	William McVicker <willmcvicker@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Drew Fustini <fustini@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Will Deacon <will@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	soc@lists.linux.dev
Subject: [PATCH 0/4] arm64: google: Introduce frankel, blazer, and mustang boards
Date: Tue, 11 Nov 2025 11:22:03 -0800
Message-ID: <20251111192422.4180216-1-dianders@chromium.org>
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


This series adds barebones device trees for Pixel 10 (frankel), Pixel
10 Pro (blazer), and Pixel 10 Pro XL (mustang). With a yet-unreleased
bootloader these can boot to a UART command prompt from an initramfs.

The end result of the device trees introduced in this series is really
pretty simple, so it's expected that most of the discussion in the
series will be about compatible strings, file organization, dts/dtso
organization, etc.


Douglas Anderson (4):
  dt-bindings: arm: google: Add bindings for frankel/blazer/mustang
  dt-bindings: serial: snps-dw-apb-uart: Add "google,lga-uart"
  arm64: dts: google: Add dts directory for Google-designed silicon
  arm64: dts: google: Add initial dts for frankel, blazer, and mustang

 .../devicetree/bindings/arm/google.yaml       |  87 +++-
 .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
 MAINTAINERS                                   |   1 +
 arch/arm64/Kconfig.platforms                  |   6 +
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/google/Makefile           |  10 +
 arch/arm64/boot/dts/google/lga-b0.dts         | 391 ++++++++++++++++++
 .../arm64/boot/dts/google/lga-blazer-mp1.dtso |  22 +
 .../boot/dts/google/lga-frankel-mp1.dtso      |  22 +
 .../boot/dts/google/lga-mustang-mp1.dtso      |  22 +
 .../boot/dts/google/lga-muzel-common.dtsi     |  17 +
 11 files changed, 561 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/google/Makefile
 create mode 100644 arch/arm64/boot/dts/google/lga-b0.dts
 create mode 100644 arch/arm64/boot/dts/google/lga-blazer-mp1.dtso
 create mode 100644 arch/arm64/boot/dts/google/lga-frankel-mp1.dtso
 create mode 100644 arch/arm64/boot/dts/google/lga-mustang-mp1.dtso
 create mode 100644 arch/arm64/boot/dts/google/lga-muzel-common.dtsi

-- 
2.51.2.1041.gc1ab5b90ca-goog


