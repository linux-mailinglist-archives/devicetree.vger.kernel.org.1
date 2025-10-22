Return-Path: <devicetree+bounces-229825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FDABFC870
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C74836E172B
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D435C34C126;
	Wed, 22 Oct 2025 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gK6xSnc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC10E34C15E
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142892; cv=none; b=ZThxWZQoGN8GflzsG7lOA3uGpeBTi2Lyru0+cAQszrTFAG8o4yGC8HUJ0DgjJXlKchSlzSLgUx7o0xOo9jCksdUmOw/W6JnL8M+6WWfMu6UVhKSRoMD9jqekQB8OAqMMDu9MxDJvqeb/RnZt4kw/fuuCfd3KO4k2cu3JoLWyJPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142892; c=relaxed/simple;
	bh=7dAHRT2r7ftPVN1rS5b3fLL9XXBwlAPnHlEMfM9TlgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=InkRa+numYwzgkyHHFw6IRWo6L+PVjq2KLE7MDrW483n831ktyp2XlMBOuFnJzV3sKON5FUiA18ZQGAL0HF0DL7zn9UetBGqvXKRYLykZmAxve2hgsRR3bQ6ziOBiC/Qr1QHNFosYK55gMpPNfOPURphLDIiRk1GYxQTOU7+M2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gK6xSnc4; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4270a3464caso2988075f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142886; x=1761747686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/43znEe061f/mLeX5mGh0JaDqN09K9lxSSjlK2dh/Q=;
        b=gK6xSnc4kplXFq0FvB0OSozSxeUmexNZj3sclk+TPZN14oIEyEl/Tpx0iLLXClzemG
         9wyMGf4xs1EOzYGKchwspjuNrFOJGPIcIh+FaFiU7IAPxpF+IqINj6EXj4/O5bHk0oqA
         Hs6YYL/iPgbP9DDMrXy7qV0ic9kssFiP+G4NlVB2aS4dZZeKjMGiUQMK9EAkMEKoJd7l
         NizIqAs/QpH4MXnKdTct5CXnLfwsw3ox0Vyv0KOvMM0TJioBbRPvO1NNwSXloQHtpN/D
         Y9Xp+hT7NIXDcJdIP0nB1raNREj1xbKDtmK+jA6WutDRvrrnl+y/ue2MinxuRpp62Ybs
         K0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142886; x=1761747686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C/43znEe061f/mLeX5mGh0JaDqN09K9lxSSjlK2dh/Q=;
        b=PyOVxBRk6ztYtC73KI/DuOfZleljM3UL3WUY1MpTAkfguh2ngjI6SWxTR8d1bjsEmZ
         5tonF20C5wxMrk/QVvQOw882Fjc2K4MJDu12IK+I2tCAww58F637rK4Y58BwmWuikGuZ
         BcqJ7TkBwgZE2shrBBKvcLKSEQIUSlny0JhFtmxp3eTq7pjXgF4Pj+G3U0NWqhxnh2tJ
         JcxFYyFhviY1bJR/2H7MsDxXj8X7hfaCCY/rTbg5BSoa/QphjcV5wNqPS8Z97QtDYL2c
         jk6NQktsyNdkK0w7S6CZ4Ons8WKnmZfQR1cF/kpavJbKQFNZeE+qDBwL2nFHuKcFfs8d
         msZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMhjAADds5Q9AGq8a9iGZA3mxkdabnbiHNoYNkE/ag8li44F75c7D7CAnDWuIPmJunokh1gBhd2ja6@vger.kernel.org
X-Gm-Message-State: AOJu0YwZEBGriFKVtULbq+b9CBZb/HE1Jbi6/ARvkTAhIvW7TnlntAjS
	3zGca7Jx+y2/NVK8vR8EWnaEBrU7uCGaCtEEETA/tgayTrG3AXYkdxfV
X-Gm-Gg: ASbGncszTsrPaKoaUnlheEE4vDpZcXytKjz3DfaXHOGkx6cko46U6ua3RojdNXll+gj
	rGXWUbacK26+R3Y0b9Xcd7tVWcS+OsdTmX2ECugK2VlIOcT5Nr/t21FEm3/Q2G05JuTHeFCeqtm
	OSTNzsGhDXgV08GhYp/EgelyY9MrtpBYc6EyGFqu6R+0WZsHbk+4OII9nUqa3RfOp9uiB1XnDmh
	+PCNj08deSlD0r+THyTSOmLxWWpRjrGDu487A+wsXE6T2TyC41/1BvcXKKh+XwvAmOoOubEkvBG
	1er7kEaeJdrmmBrciAX37nKAQS6t+SiQMuD9nMUtnn4KZoq0i/jatvGtfI55QuXtxIxyjG799nT
	RzGvOHYc/5PKUXQ2fe9s7yVomaHwCPhXhNitvuYiBVMy437jpQgi8wLYzEK33AXaycpVAD7vZYv
	ufBQ==
X-Google-Smtp-Source: AGHT+IFCY+Sxhr527k6+OJwXsM0mYpA87pB8vo+egXovwmlWxMOKiHZRGcuNGUJAN41+XF6ergNZUg==
X-Received: by 2002:a05:6000:3113:b0:427:7ec:ea41 with SMTP id ffacd0b85a97d-42707ecea7bmr13107185f8f.57.1761142886167;
        Wed, 22 Oct 2025 07:21:26 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:25 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 02/23] dt-bindings: clock: tegra30: Add IDs for CSI pad clocks
Date: Wed, 22 Oct 2025 17:20:30 +0300
Message-ID: <20251022142051.70400-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tegra30 has CSI pad clock enable bits embedded into PLLD/PLLD2 registers.
Add ids for these clocks. Additionally, move TEGRA30_CLK_CLK_MAX into
clk-tegra30 source.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/clk/tegra/clk-tegra30.c         | 1 +
 include/dt-bindings/clock/tegra30-car.h | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index ca367184e185..ca738bc64615 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -53,6 +53,7 @@
 #define SYSTEM_CLK_RATE 0x030
 
 #define TEGRA30_CLK_PERIPH_BANKS	5
+#define TEGRA30_CLK_CLK_MAX		311
 
 #define PLLC_BASE 0x80
 #define PLLC_MISC 0x8c
diff --git a/include/dt-bindings/clock/tegra30-car.h b/include/dt-bindings/clock/tegra30-car.h
index f193663e6f28..763b81f80908 100644
--- a/include/dt-bindings/clock/tegra30-car.h
+++ b/include/dt-bindings/clock/tegra30-car.h
@@ -271,6 +271,7 @@
 #define TEGRA30_CLK_AUDIO3_MUX 306
 #define TEGRA30_CLK_AUDIO4_MUX 307
 #define TEGRA30_CLK_SPDIF_MUX 308
-#define TEGRA30_CLK_CLK_MAX 309
+#define TEGRA30_CLK_CSIA_PAD 309
+#define TEGRA30_CLK_CSIB_PAD 310
 
 #endif	/* _DT_BINDINGS_CLOCK_TEGRA30_CAR_H */
-- 
2.48.1


