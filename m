Return-Path: <devicetree+bounces-57385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8F089D602
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 11:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8461F28449E
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 09:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E9C8004E;
	Tue,  9 Apr 2024 09:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JBIyS//V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59B8003B
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 09:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712656368; cv=none; b=GHTR/rr8MNLhEKHWWRQ/l+VEVf/bdPsHPmyBZXbw870Cqy83GQNxJeKebneV2MzMMjP0uAgLHPrah3gHYr4ceU0RoU3sBbCDSuI7VXPQfd3WVGnxYUa9xp4M2+GAzt6zTBLsq6D5RCnp6ZqnvBJNg1oSc8oZ3MTMbKTg5bAFLo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712656368; c=relaxed/simple;
	bh=o46lc9Q8YdggmxxMFiuacXpzbP0DIwh3ZSk+bba9AeQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UaLFP+KngikbghiOGGwx4JqiExstxLu2jIdn/EVD9M/IG7SsucgiooN/xk4YZ3OXxGs7QrXIpJeRyHMbdnhUqTZuKnKPgDyuil4TLKUGpJITzcf25EVPtHTsHuLo+eNMa5vn0jTIIT4stuy1LNN9ocb3qNrbyQVK5sidivS//fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JBIyS//V; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6ed054f282aso3028517b3a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 02:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712656365; x=1713261165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qq9SUUh2shlwi+HSCpikmSF5BpTnfRa+mJbDP7CI3P4=;
        b=JBIyS//VD0l0wyGGKVDlAUpdO7bCC2fNHYqIp3BSRi/XmMQ7I0T8yADQgJkTFNd3G/
         GA+l176dzm/Hy8o9D1C9UovJBJUL58aU1HFOdR+Nvm04oG839xC2TF/g4meTkhVn0WIu
         kaxceuzlJmsfghpDEfHbNYxnE3w3ZEEpH9/n8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712656365; x=1713261165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qq9SUUh2shlwi+HSCpikmSF5BpTnfRa+mJbDP7CI3P4=;
        b=vRJYiHF4WLVif/srC2i1vp5N05NjDy0kdICNQLI5rAyY77C6isFWvswlSbMsPErn5b
         pihBHFEii0SZPq7padN10dsG6gajDjd1HBLIJdgIKc/NjkzOTgfjlqOE5uEtXM6OeEBO
         msWW5W8Czu8j1jryaiC/o83x4b1ZvbNhJkUk11qugJ15qSzt4hqAj0uL75Uvb1XJH5+L
         zpmPAEntochOhzy87J0Z6wF4pTMGxim/XDbzC6hqLF/lN4Qv5WOyTf2Rf89ZghEbES0S
         yX7VqKH5E7y6kxhQxZ1PP1f9m4y+mTxsfgraqPoZ9KqSdjQyKckKTjW5p+pkwAjKkeOS
         TYdA==
X-Forwarded-Encrypted: i=1; AJvYcCUURhtqZD+mlB1UVw1szaTXDlqMuttCYXxCnR6T4niDi623i03wWmsDRMin4c+DOUVVqIwPM6LAv0bpR4Z9TPbAiL5KjznqrpWa5Q==
X-Gm-Message-State: AOJu0Yz2grjYVZNhh8iQB2nykuJ7JJV9LkjeM2l30PBO0H72WaCgvjA/
	sEMLhcYceHfQ/7fvN7AiMmOScaF5W3emjQ+P0163WFf0wkTMrtEt5zyIh1aR2g==
X-Google-Smtp-Source: AGHT+IHTIYMFgIsIpfetDHfBOIWNBd2HP00jBw0bY4nV4zUEdvlm/8j6ySitJ5LHkNkBYsJJiw13jw==
X-Received: by 2002:a05:6a00:1782:b0:6ed:6b11:4076 with SMTP id s2-20020a056a00178200b006ed6b114076mr3371667pfg.12.1712656365506;
        Tue, 09 Apr 2024 02:52:45 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:cf76:4647:8bd3:d341])
        by smtp.gmail.com with ESMTPSA id h18-20020aa786d2000000b006ead792b6f2sm7931509pfo.1.2024.04.09.02.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 02:52:45 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dianders@chromium.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH RFC] arm64: dts: mediatek: mt8183-kodama: Split into base and overlays
Date: Tue,  9 Apr 2024 17:52:38 +0800
Message-ID: <20240409095239.627000-1-wenst@chromium.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All the SKUs of Kodama share much of their .dts, as evident of the
inclusion of a common .dtsi file. However this scheme builds each
.dtb file as a complete device tree.

To deduplicate this, make the common .dtsi file a .dts file, and the
SKU specific .dts files into .dtso overlay source files. Have the build
system assemble the SKU specific .dtb files from these components.

The final composite .dtb files increase in size by around 54 kB, or 22.5%,
due to the inclusion of symbols and fixup tables, and extra phandle
properties. This could be slightly reduced by dropping the symbol and
fixup tables after the overlays are fully applied if desired.

However if the bootloader can assemble the end .dtb using the base .dtb
and overlays, and only those are counted, then the combined size
decreases by around 165 kB, or 68.7%.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Hi,

This is part of the work I'm looking into and will present at EOSS 2024
in Seattle [1].

The idea is to reorganize device trees so that devices within a common
family, instead of having a common .dtsi file, will share a base DTB
and apply one or more overlays on top. This allows an upstream [2] or
downstream [3] bundling script to be able to deduplicate the base DTB
and get some space savings, however minor they are compared to the
kernel binary executable.

This patch gives a simple conversion, but we could even look into
converting the entire MT8183 Kukui family, which are all based on the
"Kukui" hardware reference design.

There are some issues, hence the RFC:

1. The base .dtb doesn't have a valid board compatible string sequence
   yet. Suppose we used the sequence

     "google,kodama", "mediatek,mt8183"

   for the base .dtb in this conversion, would that be acceptable? The
   base .dtb would act like a fallback.

2. The composite .dtb files grow in size substantially, due to the base
   .dtb file being built with overlay support. The symbols and fixup
   tables could be trimmed out with `fdtput`, but there will still be
   extra phandles, and also nodes with /omit-if-no-ref/ that would
   have been removed.
   For this I could maybe come up with a program to minify the DTB. That
   would also work for existing composite .dtb files in-tree.

3. Such a scheme would require more awareness on the maintainer's part,
   and of the .dtbo authors. The maintainer needs to be aware of how
   the composite .dtb files are assembled. The authors need to know that
   certain constructs, such as /delete-property/ or /delete-node/, won't
   work.

[1] https://eoss24.sched.com/event/1aBGe/second-source-component-probing-on-device-tree-platforms-chen-yu-tsai-google-llc
[2] https://lore.kernel.org/linux-arm-kernel/20240329032836.141899-1-sjg@chromium.org/
[3] https://crrev.com/c/5412876

 arch/arm64/boot/dts/mediatek/Makefile                       | 6 ++++++
 ...ukui-kodama-sku16.dts => mt8183-kukui-kodama-sku16.dtso} | 4 ++--
 ...ui-kodama-sku272.dts => mt8183-kukui-kodama-sku272.dtso} | 4 ++--
 ...ui-kodama-sku288.dts => mt8183-kukui-kodama-sku288.dtso} | 4 ++--
 ...ukui-kodama-sku32.dts => mt8183-kukui-kodama-sku32.dtso} | 4 ++--
 .../{mt8183-kukui-kodama.dtsi => mt8183-kukui-kodama.dts}   | 0
 6 files changed, 14 insertions(+), 8 deletions(-)
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-kodama-sku16.dts => mt8183-kukui-kodama-sku16.dtso} (90%)
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-kodama-sku272.dts => mt8183-kukui-kodama-sku272.dtso} (90%)
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-kodama-sku288.dts => mt8183-kukui-kodama-sku288.dtso} (90%)
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-kodama-sku32.dts => mt8183-kukui-kodama-sku32.dtso} (90%)
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-kodama.dtsi => mt8183-kukui-kodama.dts} (100%)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 9234dadfe1ad..6986d7a2efaa 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -46,6 +46,12 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu-sku22.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-katsu-sku32.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-katsu-sku38.dtb
+
+mt8183-kukui-kodama-sku16-dtbs := mt8183-kukui-kodama.dtb mt8183-kukui-kodama-sku16.dtbo
+mt8183-kukui-kodama-sku272-dtbs := mt8183-kukui-kodama.dtb mt8183-kukui-kodama-sku272.dtbo
+mt8183-kukui-kodama-sku288-dtbs := mt8183-kukui-kodama.dtb mt8183-kukui-kodama-sku288.dtbo
+mt8183-kukui-kodama-sku32-dtbs := mt8183-kukui-kodama.dtb mt8183-kukui-kodama-sku32.dtbo
+
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku272.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kodama-sku288.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dtso
similarity index 90%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dts
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dtso
index 7213cdcca612..20675de68823 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dtso
@@ -8,9 +8,9 @@
  */
 
 /dts-v1/;
-#include "mt8183-kukui-kodama.dtsi"
+/plugin/;
 
-/ {
+&{/} {
 	model = "MediaTek kodama sku16 board";
 	chassis-type = "tablet";
 	compatible = "google,kodama-sku16", "google,kodama", "mediatek,mt8183";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dtso
similarity index 90%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dts
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dtso
index bbf0cd1aa66d..46ab97a18003 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku272.dtso
@@ -8,9 +8,9 @@
  */
 
 /dts-v1/;
-#include "mt8183-kukui-kodama.dtsi"
+/plugin/;
 
-/ {
+&{/} {
 	model = "MediaTek kodama sku272 board";
 	chassis-type = "tablet";
 	compatible = "google,kodama-sku272", "google,kodama", "mediatek,mt8183";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dtso
similarity index 90%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dts
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dtso
index a429ffeac3bd..e27b56f1826d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku288.dtso
@@ -8,9 +8,9 @@
  */
 
 /dts-v1/;
-#include "mt8183-kukui-kodama.dtsi"
+/plugin/;
 
-/ {
+&{/} {
 	model = "MediaTek kodama sku288 board";
 	chassis-type = "tablet";
 	compatible = "google,kodama-sku288", "google,kodama", "mediatek,mt8183";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dtso
similarity index 90%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dts
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dtso
index 5a416143b4a0..d9a13ff7abf2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku32.dtso
@@ -8,9 +8,9 @@
  */
 
 /dts-v1/;
-#include "mt8183-kukui-kodama.dtsi"
+/plugin/;
 
-/ {
+&{/} {
 	model = "MediaTek kodama sku32 board";
 	chassis-type = "tablet";
 	compatible = "google,kodama-sku32", "google,kodama", "mediatek,mt8183";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dts
similarity index 100%
rename from arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
rename to arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dts
-- 
2.44.0.478.gd926399ef9-goog


