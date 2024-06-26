Return-Path: <devicetree+bounces-80435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 733E091985E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 21:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F09BAB21510
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732B91922FD;
	Wed, 26 Jun 2024 19:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UTNtSLMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EFA1922FB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 19:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719430990; cv=none; b=drb6mdo272QvMifBHvuz30FmHhveyZyFvzqmCPtD+JIH1HuWlXS/KyFRqZ+uslOniag8+9URjqrqwgqxf0Ejhj1b1ckmri0KLpbAVtdYjR00j/xECFcFTfpmauAD+iuHi3cA/GgPLEO9nfOhRcRAe4AbfncZdwqDtBv90+1zL3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719430990; c=relaxed/simple;
	bh=wQfLyPSaduwhoXhyw7tCofrvU/aH1SkdI6MXu0jHKKs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K9VZxtYPU89dLR/Oqvolex3dYDZ7FQhQw7FlqgfVDzqrqREB62rFRzuGQ0IS4VIHZJxv7H4OhB4abVcp4uBR1alNMq5PHftWvUP3HHHBd2xNczB1h70I+dR9UG4moanV/OB75V7CZpclnQ/5gtrQg1mXa7eEYL54C9eKyjmKb/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UTNtSLMH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421b9068274so60182745e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 12:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719430987; x=1720035787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fnjsauIL/CcAxAa/bQLK55jPhlKZNz6Is4DxauRo/E0=;
        b=UTNtSLMHPX6W4Z5ZTUik5X0mZtVQGth8+tRfRkfP8FWhXBztW4jN0GwCfb0zcoSe4d
         CCIpKNW0qUTqfIO66Y5ttnKoNvTgIis9fo1mAcJ0JjascqfQYDgOCyb32pC66qn6lQzV
         mp45YgWQKL7HG2S3502mqTQkH8ge5iT9EGe3vgFhCbDkPpNA6ajmM+GBgZ0ZVM0WwJv5
         BBOZwrGLyB8oUGCyAJ1hE07nhSmAmTiCQ6zUvfXrR8PkHaYIPKyYDyLf6yIUjMu3pT+o
         m7AdNN4PH1lUVnvGiWAvh9I8bph8m7G+DNLMn+0EFC6O1tD4/7ieQauWTzka/Wyds84B
         fN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719430987; x=1720035787;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnjsauIL/CcAxAa/bQLK55jPhlKZNz6Is4DxauRo/E0=;
        b=dyXTetq9Jd/O89yzOG0lcaTjwmm1T78mznho5jb9vZfJRU5HBQPf2cyY+GRQ4X9OBw
         5x4e+DqDMAzmET9yXqlFN5/25FEFYifQhyDLC1L3d6Wm7PG7U+mvPZIx6aODJwirpNFo
         kPpCCrv7IQOvRYi7sgq12X8qlKK5wQg+g8ERuCI5kwvq/Y0DE3oP98NkGpX9xzgWrPyR
         vs+iTpMlzmsF16TNEd7dKYKAcf2SEB5+cXT6mQLrVgbthGOIIIZBSUDsk3pCHS7NKGLf
         NPNA9T4rAIuBkqun5Wp48ddMAT+KyoSt8iv36/wF+nn3Zj57R8LOUQViNbr5CUuPmtYf
         bGxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9QpDIlj+ZRRnZpJlNoa9OR/oXHTO1aSEareC7T83BXOqmEBWwgJ0mh/vT26IXzoELHMtR9FXKZ4TkRy8i474jsR+qHMMEG5Bglw==
X-Gm-Message-State: AOJu0Ywahc7YEegCFEBsSw7ZS80tKcy9TWrTUtRjH/wGLDeXyHvdXQcq
	SozfGAz7nwwWGnecWe5QoL09wz/XEK3sfh9Vk0t0wXSKvAYxt4jphE54UxoAraI=
X-Google-Smtp-Source: AGHT+IG2LSoOJQA11RV0AZDKvrStmKskCO7Ie8cnMZ0Kw2R/ExVN3FkSauKy1goNEMtUgpFm9FC1NQ==
X-Received: by 2002:a05:600c:3510:b0:424:76d7:2cca with SMTP id 5b1f17b1804b1-4248b9363d3mr74795175e9.4.1719430987018;
        Wed, 26 Jun 2024 12:43:07 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:24d9:a20a:2de5:8eda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c837eb2bsm36728905e9.39.2024.06.26.12.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 12:43:03 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/3] Add syscon-reboot and syscon-poweroff support for gs101/Pixel 6
Date: Wed, 26 Jun 2024 20:42:57 +0100
Message-ID: <20240626194300.302327-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

This series adds support for syscon-reboot and syscon-poweroff to gs101/Oriole.
It has been tested with reboot and poweroff commands respectively.

Note the syscon-reboot/poweroff has *runtime* dependencies on the exynos-pmu
and clk-gs101 patches in this series, as well as [1] which was just queued by
Lee. As you are the maintainer for exynos-pmu and samsung clock drivers I've
included those patches in this series.

For the moment I have left out syscon-reboot-mode dt node as whilst it uses the
same SYSIP_DAT0 register as exynosautov9, and setting this the reboot mode is
correctly reported in the Pixel bootloader. The bootloader is also checking a
scratch register in max77779 chip that isn't currently enabled upstream, and
thus the bootloader doesn't actually enter fastboot.

Kind regards,

Peter

[1] https://lore.kernel.org/linux-arm-kernel/20240621115544.1655458-1-peter.griffin@linaro.org/

Peter Griffin (3):
  arm64: dts: exynos: gs101: add syscon-poweroff and syscon-reboot nodes
  soc: samsung: exynos-pmu: add support for PMU_ALIVE non atomic
    registers
  clk: samsung: gs101: mark gout_hsi2_ufs_embd_i_clk_unipro as critical

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 15 +++++++++++++++
 drivers/clk/samsung/clk-gs101.c              |  2 +-
 drivers/soc/samsung/exynos-pmu.c             | 16 ++++++++++++++--
 include/linux/soc/samsung/exynos-regs-pmu.h  |  4 ++++
 4 files changed, 34 insertions(+), 3 deletions(-)

-- 
2.45.2.741.gdbec12cfda-goog


