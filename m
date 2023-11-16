Return-Path: <devicetree+bounces-16412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB6A7EE8B9
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 22:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29BA3B20A3B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244C72F862;
	Thu, 16 Nov 2023 21:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A205B0;
	Thu, 16 Nov 2023 13:17:44 -0800 (PST)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1f00b95dc43so660892fac.3;
        Thu, 16 Nov 2023 13:17:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700169464; x=1700774264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qnTKqQWM65hHmGWrh7eGkwdIKG6NV9DIncGlNOoqLgY=;
        b=ax9MXv8UIQLPoWRVd3lBeGX3GcvztvrCZuAirWtBhDfj9zqQWxbMxBobJxQqL6Oef6
         rwT7RO++2lQpX/tIrACjVtDMgQrMAudTQgjzUN4/+/tqFluM7vOx/AzWWpbOljTIuO2Y
         t39sWO8LOcjwgaWLh5yDonosT5GIosNhYYfBLCrxVZP5b0MI/8zK6XtlVwht0fl+S7sL
         lW4qggmuEZz0YYX+ogChV0Lk5v2URVVnc0Fsoh3C1xE7h2epKVA2K8fhIYOFXid3/4b6
         yFgafai0Ov8uOXg7CcCuC0FDQsiiEpV8cW4RMqIGSK0iSJv0BWlG1U0I4g+eXUTKXSjm
         MMrA==
X-Gm-Message-State: AOJu0YyOseU+ANelQeqM44lLsN1GssoxSmVklbgGiN5GTQ6eCQYYmEwK
	1wPEoLOFuqJ4PIG/VGSB9A==
X-Google-Smtp-Source: AGHT+IEBU/vTNTcV7kR70vkC1wTuSFY8n7ps0aTSJs2J+hUbwRB6rGAjShACA+o2CIuo9Vr35pp0ww==
X-Received: by 2002:a05:6870:2102:b0:1cc:c744:d320 with SMTP id f2-20020a056870210200b001ccc744d320mr22303935oae.53.1700169463720;
        Thu, 16 Nov 2023 13:17:43 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id mo49-20020a056871323100b001ea689d8969sm33233oac.48.2023.11.16.13.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 13:17:42 -0800 (PST)
Received: (nullmailer pid 3228341 invoked by uid 1000);
	Thu, 16 Nov 2023 21:17:41 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm/arm64: samsung: Enable W=1 on dtbs by default
Date: Thu, 16 Nov 2023 15:17:38 -0600
Message-ID: <20231116211739.3228239-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung platforms are clean of W=1 dtc warnings, so enable the warnings
by default. This way submitters don't have to remember to run a W=1
build of the .dts files and the grumpiness of the maintainers can be
reduced.

Signed-off-by: Rob Herring <robh@kernel.org>
---
Well, there's a couple of warnings on 32-bit, but they look fixable to
me.

There's a few other platforms we could do this to. Sadly, they are still
the minority. Otherwise, we could change the default and add a flag to
disable (I_STILL_HAVENT_FIXED_MY_PLATFORMS=1).
---
 arch/arm/boot/dts/samsung/Makefile  | 3 +++
 arch/arm64/boot/dts/exynos/Makefile | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/Makefile b/arch/arm/boot/dts/samsung/Makefile
index 7becf36656b1..b6a0e2beac00 100644
--- a/arch/arm/boot/dts/samsung/Makefile
+++ b/arch/arm/boot/dts/samsung/Makefile
@@ -1,4 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
+
+KBUILD_EXTRA_WARN=1
+
 dtb-$(CONFIG_ARCH_EXYNOS3) += \
 	exynos3250-artik5-eval.dtb \
 	exynos3250-monk.dtb \
diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/exynos/Makefile
index 6e4ba69268e5..45c996fba5e4 100644
--- a/arch/arm64/boot/dts/exynos/Makefile
+++ b/arch/arm64/boot/dts/exynos/Makefile
@@ -1,4 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
+
+KBUILD_EXTRA_WARN=1
+DTC_FLAGS += -Wno-graph_child_address
+
 dtb-$(CONFIG_ARCH_EXYNOS) += \
 	exynos5433-tm2.dtb		\
 	exynos5433-tm2e.dtb		\
-- 
2.42.0


