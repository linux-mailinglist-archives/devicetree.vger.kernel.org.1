Return-Path: <devicetree+bounces-13660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8582D7DFAFD
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 20:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37BAB281D19
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 19:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD302137D;
	Thu,  2 Nov 2023 19:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="Q9gWsxFz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E61154A6
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 19:37:58 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B46C4187
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:37:57 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5a7dd65052aso16365757b3.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 12:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698953877; x=1699558677; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uogr7zU4t34ibaqbgxGWB9r8NXGxVylxADwS2sMjoTc=;
        b=Q9gWsxFzXji2qke2tU/bD1uBkN/pjpD1h3fdx73ggWG755DTtOY4wuhWIYR6zvg8vU
         lLJtfLe2JL8uPZW4MUo/upXEXR9rogpekM7ApvsXR1Rdk3/qmgH9P2m/5dZzsk3SqwlH
         nxwLMYJ1S1atpHhWO7RjnHo0modLEOO5NPPSHJiF8+tGn0v2ngEKZf1cnDGYtqqqhrOv
         QgQ/EbkYbEW8G0fCBObJKkoMIn/CZ6zUKiDVHeaRW9VrpkEWXf2atUbT1VjYfdWrxVCE
         IS3lQjJY4GebOAR/TI82lyG78oi/GQZ4YBVvb4rsMhArrFisN50g7hHoJULbpfU7tMXh
         naRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698953877; x=1699558677;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uogr7zU4t34ibaqbgxGWB9r8NXGxVylxADwS2sMjoTc=;
        b=i6CjZIrznlatSFajRe/N/dx7idXHsC0S+Lbtn+5K1II9IdUrQJfqvThcIHo8GytwBv
         8YsicIeiR+Te3v8P+8epvHc9iNLLr33bxZFuWLOgpugnyd19xnqj1INHDGEP9CoNudnO
         ai177aT+nARJ+qtPJfHcC3qaAhVdA+/eovG8lA2ExFbWQLdAnyiaNg3aB3DyB3a6fdVB
         5wO3qxraGdyQyK6cKKPzsfDViSTxHMCTI8MKYpSeXcC7S5meacGDIG/KquBUcPT+P94Y
         p+u+GUz5STUpJ01uMENxQY1ZSMAluRSrYQr5a/bsq/JIv9PCynaURzsY6LlJULyiDWNg
         hT9Q==
X-Gm-Message-State: AOJu0YzT62Qh2hKGvn00ipPfHW1KLU1c+Py/4qX7EqbR82JN0hvtR9+1
	XJ7MrsJCNJ57zoGXoFX8vg3mAA==
X-Google-Smtp-Source: AGHT+IEGxFcOOrtvJ6cU9BZ2CGnOOPvIjlvXGVkgaylmcuyrz36fI4KJRg2FJQTlw2ceemhfetI4zA==
X-Received: by 2002:a81:4a02:0:b0:5a4:3e67:35a3 with SMTP id x2-20020a814a02000000b005a43e6735a3mr664848ywa.49.1698953876935;
        Thu, 02 Nov 2023 12:37:56 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id a10-20020a0ce90a000000b0065b260eafd9sm30654qvo.87.2023.11.02.12.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 12:37:56 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH v2 0/5] Add STM32F7 SPI support
Date: Thu,  2 Nov 2023 15:37:17 -0400
Message-ID: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for SPI on STM32F7 processors. The STM32F7 SPI
peripheral is nearly identical to the STM32F4, with the only significant
differences being that it supports a wider range of word sizes, and the
addition of 32-bit transmit and receive FIFOs.

v2:
  - Add missing commit body

Ben Wolsieffer (5):
  spi: stm32: rename stm32f4_* to stm32fx_*
  spi: stm32: use callbacks for read_rx and write_tx
  dt-bindings: spi: add stm32f7-spi compatible
  spi: stm32: add STM32F7 support
  ARM: dts: stm32: add SPI support on STM32F746

 .../devicetree/bindings/spi/st,stm32-spi.yaml |   1 +
 arch/arm/boot/dts/st/stm32f746.dtsi           |  60 +++
 drivers/spi/spi-stm32.c                       | 455 ++++++++++++------
 3 files changed, 367 insertions(+), 149 deletions(-)

-- 
2.42.0


