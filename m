Return-Path: <devicetree+bounces-245120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77104CAC5AE
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 811B630125CF
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 249BA238C2F;
	Mon,  8 Dec 2025 07:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IcSMIFxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EC224DD1F
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179211; cv=none; b=kcNolnGtXTb79C0LVblZEzhHNjSsRUoSDQlC7zveX5yb4Di/yMmev8NxT2RGAmHXmILzx/3r074lAMplfbWg+luT9cHJ2JK16s10ee1TiCI0OFDQ6D3kjZuvl2zkXBFnOUlR5BWs57+maAYTzb8FtXprRVSIYWng368Jj+IjEGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179211; c=relaxed/simple;
	bh=dgsL85HtQH4N6Gkpd2wP0Y9dRnpZAZRObKliYeGH4gs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QUIsrCi+hH4hhbW5qy/nQS7+8JSttbcZHkZ1UZu2UA1cqL9bmJAvZKtAo9gGtvjIKGx465qZ49v8gM2lHge33wWZ4+EUAiXNCyWeTeHrc3AbrLdEz+Y7hBlrm8WjXz4w0VmYO1Jh5fSrN8uU/PeAS2TojlToKQAY1TMuPMnfaqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IcSMIFxc; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso4782697b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765179208; x=1765784008; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yk1cUWmBl5XhhK+g/p4690RHmYDgOIsh6ZzYZ8NiuW0=;
        b=IcSMIFxcjXai0vLoCRETN4HmASuU8xizh/JG6tp3wXd4FbvjmIJn9vGwEb3ia9u+Bt
         jbO/DKobVdzNAg2NUuQaXaKCyuXz94WSfKd9jvjwAsu2FCjdl/8bMiuKGtxIx2QdBkrY
         sOz/nhZdYlFtbW1E+q6V7L84ILhWSdlSNcTWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765179208; x=1765784008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yk1cUWmBl5XhhK+g/p4690RHmYDgOIsh6ZzYZ8NiuW0=;
        b=JbrmET+8bxrhE1sGIFWHpCQ73Th5hGxaihxh437KFIXXdPuI6C/Qeqk9dqjoDoXCCb
         ZMjJs0hM/aNm2bKoBbr8J0gZK3e9xdkfW0Dua8GXpaBFUPC9T8D3H/LonLrgXERD079Z
         nJR+pdNtSJfRfkhYSCkcTSkq+c9D4PF+fWUGkO5rmDbaIqsyyyVWdI+p5UyAhzGtzwq4
         +1OH664ClGGtmCGpiTQN8VJTBcCjRzxZGh0dzWZzqooMZnARlU5FLuWYDn32tRv/lPZF
         JWWqj0KU/gviuMTxZxxH47nD1sDevswaUax5BJVOd5iHmNMSfnM4khodgZtk4NVqv4+8
         saeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPB4taE9lziSNPPpY1EOaaD/xV9ay+Z54TGZFeN5rdp6930KMwTeI3nOjH3bph8Glt9UNurNkk8FiR@vger.kernel.org
X-Gm-Message-State: AOJu0YzM+vwtIwHwXfhdZ1zcQ3WZOZSmZpwS+DnCtOlFegaUXTMYavUL
	avf2xCP0HpYRzBMDS0Hh2ER7cs1FCbv6O4qN8H/EjbMM6VTULaiXGy0jzF745LVji4OxbdzRPP5
	JpJAy8g==
X-Gm-Gg: ASbGncu3SbGk7FYbzwxkB3D+o/HHFNZxA7dkS1mkcfr48ytnW8by5f/WIeT7Snyb2qW
	7FOQBVqtw6RtP+WUcDagK1g3X/uJ/A6hUWvtXDyPXVmw1Dz2CWSCxuzV1fMBrl72tk5XfUxmuLH
	RXoQCBeJuU/Hrsj532yY82ay7H46llSyX5HVgjxTf4HmB8RTlMk0PruFn/JdT7zgsPpcTZRb+pP
	s5xAfyQOuorujfDNH99VmvOoKnoxZJwMEGSO8p0sKtFtjZcn/nyCDp0U1sShBGbIqE8QlaKt3JK
	4cAYHMVR4mlIUzsyZesNsyoR6Nj4U3I91FCA5uthKzHD/H/8rkSRRmpwCBXbhzSJ6SpY4r6xBSL
	k9HatIcxfi64g8bJkhnjB5EJ/c9Z7r5o8JHdjiT4JBpatBRcBQ9fFCpW5Fl3DbxRiawagSvwe5M
	905oP8PKj6xR7mUp9S+ycN9R7El+/BNdnsE6usvxNDowgBbqxgLjt1csIkqvabvy+3P3u+
X-Google-Smtp-Source: AGHT+IH03+VWpfw72JOyBUA2/6zHYSF0GZ6M4iF47ZhbShTJYVZdsObM/Okmg4+ncXpzCQ/1sI3Tkw==
X-Received: by 2002:a05:6a00:a8e:b0:7b7:8aad:99cc with SMTP id d2e1a72fcca58-7e8c0ad15ecmr6144301b3a.3.1765179208186;
        Sun, 07 Dec 2025 23:33:28 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d31e:c84f:5cc1:d554])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29ff6b56esm12127686b3a.20.2025.12.07.23.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 23:33:27 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/3] [EXAMPLE] arm64: dts: mediatek: ciri: Drop SKU-specific overlays
Date: Mon,  8 Dec 2025 15:33:04 +0800
Message-ID: <20251208073306.75279-4-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
In-Reply-To: <20251208073306.75279-1-wenst@chromium.org>
References: <20251208073306.75279-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The final SKU-specific overlays only set the top level board compatible
and model, but add nothing else. The specifics are not super important
to the kernel, and could be removed so we don't have to have so many
source files.

However, the ChromeOS bootloader (coreboot / depthcharge) selects the
device tree blob to load basd on the compatible string, so the mapping
from a SKU-specific compatible to a DTB (or a series of DTB/DTBOs) needs
to be maintained somewhere to build the FIT image.

Move the SKU-specific top level compatible strings to a separate file
stored with the device tree sources, and drop the SKU specific files.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

---
This is meant to serve as an example for dropping SKU-specific files
that just have specific identifiers that the kernel doesn't care about,
i.e. doesn't need to be present in the DTB itself, but need to be
preserved for other purposes.
---
 arch/arm64/boot/dts/mediatek/Makefile         | 24 +++------
 .../dts/mediatek/mt8188-geralt-ciri-sku0.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku1.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku2.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku3.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku4.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku5.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku6.dtso | 11 ----
 .../dts/mediatek/mt8188-geralt-ciri-sku7.dtso | 11 ----
 arch/arm64/boot/dts/mediatek/mt8188.yaml      | 51 +++++++++++++++++++
 10 files changed, 59 insertions(+), 104 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188.yaml

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 39a844386366..5123d15c62c1 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -89,36 +89,28 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-evb.dtb
 
 mt8188-geralt-ciri-sku0-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-boe.dtbo \
-				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo \
-				mt8188-geralt-ciri-sku0.dtbo
+				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo
 mt8188-geralt-ciri-sku1-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-ivo.dtbo \
-				mt8188-geralt-ciri-audio-max98390-es8326.dtbo \
-				mt8188-geralt-ciri-sku1.dtbo
+				mt8188-geralt-ciri-audio-max98390-es8326.dtbo
 mt8188-geralt-ciri-sku2-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-boe.dtbo \
-				mt8188-geralt-ciri-audio-max98390-es8326.dtbo \
-				mt8188-geralt-ciri-sku2.dtbo
+				mt8188-geralt-ciri-audio-max98390-es8326.dtbo
 mt8188-geralt-ciri-sku3-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-ivo.dtbo \
-				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo \
-				mt8188-geralt-ciri-sku3.dtbo
+				mt8188-geralt-ciri-audio-max98390-rt5682s.dtbo
 mt8188-geralt-ciri-sku4-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-boe.dtbo \
-				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo \
-				mt8188-geralt-ciri-sku4.dtbo
+				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo
 mt8188-geralt-ciri-sku5-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-ivo.dtbo \
-				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo \
-				mt8188-geralt-ciri-sku5.dtbo
+				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo
 mt8188-geralt-ciri-sku6-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-boe.dtbo \
-				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo \
-				mt8188-geralt-ciri-sku6.dtbo
+				mt8188-geralt-ciri-audio-tas2563-es8326.dtbo
 mt8188-geralt-ciri-sku7-dtbs := mt8188-geralt-ciri.dtb \
 				mt8188-geralt-ciri-panel-ivo.dtbo \
-				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo \
-				mt8188-geralt-ciri-sku7.dtbo
+				mt8188-geralt-ciri-audio-tas2563-rt5682s.dtbo
 
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku1.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
deleted file mode 100644
index 884a7b2d943c..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2023 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku0 board";
-	compatible = "google,ciri-sku0", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
deleted file mode 100644
index d3ed6ea535d7..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2023 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku1 board";
-	compatible = "google,ciri-sku1", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
deleted file mode 100644
index 3f9d38bc2ad2..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku2 board";
-	compatible = "google,ciri-sku2", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
deleted file mode 100644
index e6a6f8f06141..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku3 board";
-	compatible = "google,ciri-sku3", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
deleted file mode 100644
index ee5b28c4ef00..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku4 board (rev4)";
-	compatible = "google,ciri-sku4", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
deleted file mode 100644
index ccf8d2f0eb70..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku5 board (rev4)";
-	compatible = "google,ciri-sku5", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
deleted file mode 100644
index 773c702b59d8..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku6 board (rev4)";
-	compatible = "google,ciri-sku6", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
deleted file mode 100644
index c22860eab9f8..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2024 Google LLC
- */
-/dts-v1/;
-/plugin/;
-
-&{/} {
-	model = "Google Ciri sku7 board (rev4)";
-	compatible = "google,ciri-sku7", "google,ciri", "mediatek,mt8188";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8188.yaml b/arch/arm64/boot/dts/mediatek/mt8188.yaml
new file mode 100644
index 000000000000..7808ae20060f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8188.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR MIT)
+%YAML 1.2
+---
+- dtb: mt8188-geralt-ciri-sku0.dtb
+  description: Google Ciri board SKU0
+  compatibles:
+    - google,ciri-sku0
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku1.dtb
+  description: Google Ciri board SKU1
+  compatibles:
+    - google,ciri-sku1
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku2.dtb
+  description: Google Ciri board SKU2
+  compatibles:
+    - google,ciri-sku2
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku3.dtb
+  description: Google Ciri board SKU3
+  compatibles:
+    - google,ciri-sku3
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku4.dtb
+  description: Google Ciri board SKU4
+  compatibles:
+    - google,ciri-sku4
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku5.dtb
+  description: Google Ciri board SKU5
+  compatibles:
+    - google,ciri-sku5
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku6.dtb
+  description: Google Ciri board SKU6
+  compatibles:
+    - google,ciri-sku6
+    - google,ciri
+    - mediatek,mt8188
+- dtb: mt8188-geralt-ciri-sku7.dtb
+  description: Google Ciri board SKU7
+  compatibles:
+    - google,ciri-sku7
+    - google,ciri
+    - mediatek,mt8188
-- 
2.52.0.223.gf5cc29aaa4-goog


