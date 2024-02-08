Return-Path: <devicetree+bounces-39679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B5B84DEE0
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4006A281CD3
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C796C7994D;
	Thu,  8 Feb 2024 10:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MY3F0J2H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B2274E3D
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389601; cv=none; b=jcys+jhau290PereKPA35okGOUllu5C5ZwXkEswAcmkCXF7y1yLVmI8kWdoXZ0Rt7kjHEg5gjXsKZI7XymQDEMWQqIoBn5XWIR+8v6/Lmde9nO10Mf3TiTfH3MBNfu4PQ97b0NmLxIO1g5k9g/iwER2zn1jg2KL+zy43kwc2zy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389601; c=relaxed/simple;
	bh=IhX61F5ZWrhs09AKb+S9xz0tCatO92AzlygoaQgfIb0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BwmNycftOG711H+JLVr54hIQpu0fE5Jreh3pO+T6m/Yk0TW8Byq6EvrVyl3C/hseyClyGs9wh8k7W/sXoETMY2zhu7IfiCjhol8+X94awxFNKkCcNPSkJHiGDvqQs4MedX5eYYj2ayNViT4kTJMvj8nOmTffcO6AnvPs5kfAptc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MY3F0J2H; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3394bec856fso444694f8f.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389598; x=1707994398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/xXtVcQq4F0IJ5rQ4kr4zqr9xUHE0mRRlVw5HL8tLXU=;
        b=MY3F0J2HgE9b8z50vu+GR0kewLnxaZ4M8vat/Qm53ylaG1so6Szi5aNABHm/YtddxS
         UEmQ2743p5vFeOo5u66zs80I6sNmF5pEJiS7TEqJbV7/qyWKYPlO2ERJSwyFPC+X+xqu
         lL7YGlqnsTAgWyvO9/fFT7gaK5KNhxchpdJ94NIooEMhCG53wtWd+hlWlLJfisqpt/ZL
         d696lyJq4PHVeSwWcPU6bHQ6MLaJXxjfzYnSeQusD2v5OIopWl2nvo+W0+oTo/JL8dKu
         8nKCHmDUJw62H1GtI564LjufO+ZdpVNVFc2zn48lbzKCb7rG6w0PLZHC7/AL00A9foQ8
         jKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389598; x=1707994398;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xXtVcQq4F0IJ5rQ4kr4zqr9xUHE0mRRlVw5HL8tLXU=;
        b=TmcA8BRZE+rzHtGQaov4xgFQW6z+5bpED6cg6SJ26VpqlBmKIH2Q4l8Q7EOQwp80jM
         CGuEwZtfxX1zsgBUjB8fD/3Hw026Ah7Jitk9MNk07GQzq0uehqbLiwFBM6GdgthbeJ6E
         r/10+SvK/HBJibfDHW877QEXygmHcUdBEvUXZaffzmWo9edIC5dubXiDhM4izuH0gxSB
         ga+iHQkg8XZVPjouneVW/rtY6whi81xwNx9P44tzY1XZy9NwXa36FTM2I0WYpSpdXLx5
         nCpKyQptD7bgO7JfSkCY1HsI/QnEamMHkqCjCvyIQLw1VGvxzaMIo8zPmyxCZzW8QRPB
         8WQw==
X-Gm-Message-State: AOJu0YzRZjsTCjZxoQvMX+mMejCtmLAKZojNbOqhWqKewXYQgx2CMjCl
	/j2UDy52sm7oM4mTCRddp/gEZQEfQga9Lcf2w/iLf+o3timHV4xkaqktSDR96aI=
X-Google-Smtp-Source: AGHT+IEIn7iYoF1h7XCfLQ/7VLdMj22rIiawQixU3IrPFGOnCuhScwNyMFjkfbzqz57M2sopX7vkTA==
X-Received: by 2002:adf:a31d:0:b0:33b:1aed:c084 with SMTP id c29-20020adfa31d000000b0033b1aedc084mr1916672wrb.22.1707389598242;
        Thu, 08 Feb 2024 02:53:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBeR08/VSNhYPIsjNPp1CAYb42nJCJStZF5A/2IQBIkpKVa+e2O+xLGtPl638NOjl9IFOVjfVmcGnUjVP07oVBTXGo568xrfL4SHWx/pYJZ2mkIKfmxuFp1wAxqIwR95h73QdVnhQb/1NeMauQlKJliMWB1zw42vSa8+afRtBKy4WAk7vVfDb5CEBEHyGdNNl0TzwnIPCqaJlltoonDVYTK3OuZjWi0aDEAdMx7k18nDwcCMoc7jVWOLCM94i5OaVsSnCAg+ixA1sqhrIU8cbWVOJHiFrW3huLZaG/Wr4a36q54rxeqZ7Jt4t/2A==
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ay42-20020a05600c1e2a00b004103fec2bc6sm953239wmb.1.2024.02.08.02.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:53:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Brad Larson <blarson@amd.com>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amd: use capital "OR" for multiple licenses in SPDX
Date: Thu,  8 Feb 2024 11:53:14 +0100
Message-Id: <20240208105314.129095-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Documentation/process/license-rules.rst and checkpatch expect the SPDX
identifier syntax for multiple licenses to use capital "OR".  Correct it
to keep consistent format and avoid copy-paste issues.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amd/elba-16core.dtsi      | 2 +-
 arch/arm64/boot/dts/amd/elba-asic-common.dtsi | 2 +-
 arch/arm64/boot/dts/amd/elba-asic.dts         | 2 +-
 arch/arm64/boot/dts/amd/elba-flash-parts.dtsi | 2 +-
 arch/arm64/boot/dts/amd/elba.dtsi             | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/amd/elba-16core.dtsi b/arch/arm64/boot/dts/amd/elba-16core.dtsi
index 568bcc39ce9f..6c1b7b8fe354 100644
--- a/arch/arm64/boot/dts/amd/elba-16core.dtsi
+++ b/arch/arm64/boot/dts/amd/elba-16core.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
  * Copyright 2020-2023 Advanced Micro Devices, Inc.
  */
diff --git a/arch/arm64/boot/dts/amd/elba-asic-common.dtsi b/arch/arm64/boot/dts/amd/elba-asic-common.dtsi
index 46b6c6783f58..d12e9a7b5587 100644
--- a/arch/arm64/boot/dts/amd/elba-asic-common.dtsi
+++ b/arch/arm64/boot/dts/amd/elba-asic-common.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
  * Copyright 2020-2022 Advanced Micro Devices, Inc.
  */
diff --git a/arch/arm64/boot/dts/amd/elba-asic.dts b/arch/arm64/boot/dts/amd/elba-asic.dts
index c3f4da2f7449..20b0fa0807a1 100644
--- a/arch/arm64/boot/dts/amd/elba-asic.dts
+++ b/arch/arm64/boot/dts/amd/elba-asic.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
  * Device Tree file for AMD Pensando Elba Board.
  *
diff --git a/arch/arm64/boot/dts/amd/elba-flash-parts.dtsi b/arch/arm64/boot/dts/amd/elba-flash-parts.dtsi
index cf761a05a81f..6ea2d777c8c9 100644
--- a/arch/arm64/boot/dts/amd/elba-flash-parts.dtsi
+++ b/arch/arm64/boot/dts/amd/elba-flash-parts.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
  * Copyright 2020-2023 Advanced Micro Devices, Inc.
  */
diff --git a/arch/arm64/boot/dts/amd/elba.dtsi b/arch/arm64/boot/dts/amd/elba.dtsi
index 674890cf2a34..758bce0a0b2a 100644
--- a/arch/arm64/boot/dts/amd/elba.dtsi
+++ b/arch/arm64/boot/dts/amd/elba.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
  * Copyright 2020-2022 Advanced Micro Devices, Inc.
  */
-- 
2.34.1


