Return-Path: <devicetree+bounces-86750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE79375F1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 11:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 097381F243D0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 09:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985FE12C81D;
	Fri, 19 Jul 2024 09:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZImnCz6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E767E583
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721381989; cv=none; b=MZ2ZC4hsULLMPWIJG48PZvmAhlKTTJNjlREya46kB7hQ+UFUFUWqiaKi6sPjl73eAT5CmpTr85D5I3riolnjlcK71YSrApBKjlLyOlkSAoKxnVexQit5TLdxJ9vNWfwqLcA2mUKA64w/K9NhFWr8nZlHsbcsDrp5/8Hv8VXhuTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721381989; c=relaxed/simple;
	bh=ci+KcHwAigtpkpMNemilRAChZcTSbPV2xvcRYGetHnI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CY6Che7iFA0kB8DkWpRSn4OuSoAP8bIYtMfxQ9vqSF3o5tPzlJ6OVcpRZC4hatqVphdNIT7S8i+KH7QuSPcHygH2GYuFqAi2kGHd7lMhQTB9UDJRzidQEqQnsirx1SORu35rRCBhEmU4xbchuLstg7uk9/6A6xP1HmWgaq++pI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZImnCz6Q; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4266fd39527so10714755e9.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 02:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721381986; x=1721986786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rEbHlu47gMjntr/0lWZ1HMtnTqXHStCt809hwXsuo8g=;
        b=ZImnCz6QdOO94SYv+5u/IVcyKMeeqTBSXtCgIJc3gq+EbRk39g5uhO2hPjtLtXqoTZ
         V6WIUrksnZ8uJ2+MoRJuJP8VU7IAgu8oC/VMH5nILnOHRgV1KArPJ0SHH0gv7FPg/o7d
         JKVtBaKYT7mz0sOKmbaPrImMQPalRd4kyndrDnl7KBqcAFwRBsLFDDWbmnXdDK9RbY3e
         iPZTUVutIxqtIoLmr+B0An289Dg4Ehy0oEFHUkw1/s/1AGdU+8TFTBtnZDOa8UwpF4vM
         CCWi2i8rowy256NEnm2vFYco9YNV3pjiN4Q9f/97zd2WCGf2pJLOAN8V5U4KAOT0fQoM
         aqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721381986; x=1721986786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rEbHlu47gMjntr/0lWZ1HMtnTqXHStCt809hwXsuo8g=;
        b=RsyzVGemMZILJEGJY/KTfYXQZU0L0Qhv/iLKg0louv+yqoVMthWXdOxs04Wp+TY3ZT
         Rj/1At00LodjdWjF+ZNuqoC+cdTADlGCr7PIRBTKx/2cbPTTAr+I/DLboWldXAmCT7Oy
         OPW5871c4Q+LkjfMZhTeRKU4fB9cNytVCyGLLFaciyKs6R4lgA7V/ybB9WPNOGf4xQc+
         IFSIzy5Ol3aEQBHhYD6AdRmcoRYWU4WiHApc4k/zFylEGupdb5pAQ8g4hSW/Tn/QMFPE
         dd9GlDaaqMfy6e0CJgw0fhgN/2OnfMe7cc3UNTJsWuTMKEGivTMahaQOkt0Q4qwxEcVr
         Owow==
X-Forwarded-Encrypted: i=1; AJvYcCXqb5lqCNDVTv5zdcKNIgUoiClfTKZYYkb35/YRs6oiDwEwpqzWJJe2OPRN+JQq7SrWS/m0/IlbiSgQG6wbdkCHY3W3cM2z4sqLMg==
X-Gm-Message-State: AOJu0Ywml4Ogz+i6AUxBt4Zz84Nn0fwn98VsNnYxhQiZeyz1xkSeM3Sp
	7JnxYHPKx16t225H/IHCLaOhFBuZcbHeKRrgDaQbuBxiUIbSUKsLADcR9rFWuc4=
X-Google-Smtp-Source: AGHT+IH4BxZr7nNiWWbM+lEJPkijyLd0iYBXu9qVNkbqOH0Fb5f61iPqIYleOo5sy/iDP8q/46Z88A==
X-Received: by 2002:adf:a112:0:b0:368:71e9:4ee3 with SMTP id ffacd0b85a97d-36871e94f3dmr1106799f8f.18.1721381985670;
        Fri, 19 Jul 2024 02:39:45 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:5ac4:5655:4dfe:ce97])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3687868bc91sm1100956f8f.45.2024.07.19.02.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 02:39:45 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 0/3] clk: meson: sm1: add earcrx clocks
Date: Fri, 19 Jul 2024 11:39:29 +0200
Message-ID: <20240719093934.3985139-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset adds the eARC-Rx clocks on sm1 SoCs.

This pushes the maximum register of the axg-audio controller up
again so a SoC parameter is inserted to handle that correctly.

Jerome Brunet (3):
  dt-bindings: clock: axg-audio: add earcrx clock ids
  clk: meson: axg-audio: setup regmap max_register based on the SoC
  clk: meson: axg-audio: add sm1 earcrx clocks

 drivers/clk/meson/axg-audio.c              | 38 ++++++++++++++++++++--
 drivers/clk/meson/axg-audio.h              |  2 ++
 include/dt-bindings/clock/axg-audio-clkc.h |  7 ++++
 3 files changed, 45 insertions(+), 2 deletions(-)

-- 
2.43.0


