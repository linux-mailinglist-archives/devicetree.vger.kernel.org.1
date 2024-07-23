Return-Path: <devicetree+bounces-87665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCF393A46F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 18:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A512C1C22410
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 16:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8D0158203;
	Tue, 23 Jul 2024 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x/y2ICbV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB56153820
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 16:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721752395; cv=none; b=W7/Hm8BzI6Ei3y4sowX4/WAXYxW//QpIBb3djjq4p0b7CJDcCf5Drr28aWu9V6akHcba9qJMHz7GGEc5mOq/vHJt+WG+VFrOKxKoy/FEHFbzB1B39wKhoEmzhNh37wM6WRmx//0se6zoC3XD3VT/9GXxBATw3lPcannSmdlXV2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721752395; c=relaxed/simple;
	bh=Rlsm3g465sL7REjC1ICV1eiOlwWaRmEDM1DT0XXv+YA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=adLmzEwZaG0qXzvYMhTpXhfa04jA6p2y971HXe6PPgSeyaLVSnm1V6xBqC9NEXLXkXDnICvFhMbTPlwTwlI73mS7B8tyq6asNqHAriDeU36ofqr5JNG+yCMN/JXpkKcLzun6ovFbE5gGlNKwYoAtjQVo5qoKapWitck4L1u/bgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x/y2ICbV; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7044c085338so3245274a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721752392; x=1722357192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RgQLREszlba2w2e3rfY3g/vnEu09NDSRrgY7DbqY56U=;
        b=x/y2ICbVqcUiU02XjFn/lUWlurBQ2umA/4pmmpitBbu6O1A+qVpdlbN4ziwSjR5QBZ
         PLJkhXvYcPFqoqtqYFlT8+Rf/IikHevM1xRQjtNL3EvC2ia0G/WZQ9i3PNtS1Sr54KoC
         QkTIkBjZEFG15PXcg4EOLw3m4wNeUG3lME/ZvXSNSSfqW4fNNaaeBH92nMTlf4eHz5t0
         kb/3dHoLwijLz3W3KubM7LDbxKYF14O8/m0V74ngylrnDrwXSJnku46uHz1sx45CnRfh
         HfKFFz16xjKgm6YxoE1mhGhX4/T3jpCP+jAHmkaej3WAFZQhTztSvjU0O00VbgwXBa0l
         RQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721752392; x=1722357192;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RgQLREszlba2w2e3rfY3g/vnEu09NDSRrgY7DbqY56U=;
        b=AmHLypRTB9mBLMcQmcnTreXJZN4zQUguiTmMpqeemzo+gyx4KZZQQlUTabpZ2pnAY7
         vFn7cvU8gHRWmTXNeprPi95ZHwr2UJvDT7hBLWe02GKarH70LjvYHKbPUAXkXoibb9qK
         1yYBFyb/0ZQAGNB73izswZRAr9i1QWRYuki186+YEsdzatjTk/cXvTLFaE/63Ql3gFn8
         Bucby2GSS1tr+OtmKTMaLBK8B6s8//Q6bK6VmiPaw2bGwRo1C+mYj39y9PuNu6zLngWt
         tsrQfinhcKyYOmpyntKTWFB366klj20GDEp1SsyJuvamhb+8aV+TV0DMAZMdFimxXUKR
         GAwg==
X-Forwarded-Encrypted: i=1; AJvYcCUlsW+cvzlos+CVo9tE+2jKIPSVg8XvEDMITPo5teS7TGDbVJTNXqFStZvb8oYizxPjLrgn8solT9jMd7BDzQkBlnIhiKtb9xV99A==
X-Gm-Message-State: AOJu0Yxj2HvtC4YLmK07nZQwrNbK7GwHTkjurJ9UzVWoMPmvFiaDImaJ
	dMMHb4lGSlc8zcfThCXzVSFno+2HHKMrrT3YdFP+g9WOrujpPsUF+2xtZsjkNJY=
X-Google-Smtp-Source: AGHT+IGBpe6peQ8ESbWSihyzWm1b4sHXIw/4hvjia5dWTqI2J3ZsUT5UEo2Jo5H2dBkib0oiHWbtaw==
X-Received: by 2002:a05:6830:6f0b:b0:703:795b:f675 with SMTP id 46e09a7af769-709234ca4b2mr449959a34.28.1721752391805;
        Tue, 23 Jul 2024 09:33:11 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-708f61913b8sm2059965a34.68.2024.07.23.09.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 09:33:11 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Mateusz Majewski <m.majewski2@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: exynos850: Add TMU clock
Date: Tue, 23 Jul 2024 11:33:10 -0500
Message-Id: <20240723163311.28654-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a constant for TMU PCLK clock. It acts simultaneously as an
interface clock (to access TMU registers) and an operating clock which
makes TMU IP-core functional.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 include/dt-bindings/clock/exynos850.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/exynos850.h b/include/dt-bindings/clock/exynos850.h
index 7666241520f8..80dacda57229 100644
--- a/include/dt-bindings/clock/exynos850.h
+++ b/include/dt-bindings/clock/exynos850.h
@@ -358,6 +358,7 @@
 #define CLK_GOUT_UART_PCLK		32
 #define CLK_GOUT_WDT0_PCLK		33
 #define CLK_GOUT_WDT1_PCLK		34
+#define CLK_GOUT_BUSIF_TMU_PCLK		35
 
 /* CMU_CORE */
 #define CLK_MOUT_CORE_BUS_USER		1
-- 
2.39.2


