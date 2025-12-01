Return-Path: <devicetree+bounces-243277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE801C96399
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A6873A32C2
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF5792FE566;
	Mon,  1 Dec 2025 08:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f/eCCZNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B1D2FBDFA
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578511; cv=none; b=mIXoymLShraWkigKgu3M8Yxm37xvkXYP5a3nBvxNvJGrYrYUsvaUIdJ42OrUGqHLlvUi8QrlMjmkoiD0AUUTyBzEcdztTHp6ydpUhhT45jks9/df9t1P0CpX4i0Xv1TJDgQuJWlHGaWFthg5Npz3whB8IjsUdi8oKqsoHVFrxzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578511; c=relaxed/simple;
	bh=+iA1K+HRBMe1QkbbTUQfLhkn58XTnSXl6Yy7iQNwtdI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HefMADBJLurajglWc5k+F2aK84XqlntP8LLwEKD+QADNMUi3rrKwiQcBjw7MvLQWI9tGwAqAWE78rX9yCzFWMQSVijjjCusmEgHCBNMCyMBc/7Fnj2JOCX7PVAwGtgMfVyZjByAJ2Jiazx1oOxWYgjeb0q4X0iP5ha+gu2E6i3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f/eCCZNR; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so25392155e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764578508; x=1765183308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ynOlGYR5qfFrdaiqwTIEwtb0mOltRrTgTI60G2801Ag=;
        b=f/eCCZNRQx5C21gIBJG89Dnvb/Tx59TwDBEwn+NnSio4B8tFtZxbgtEgF+Xk4RMxad
         qbgvKcHiSZ7KYo768WOFnUWIyYsa1LEOIChjhhKOn7eoYOxyaPAh71ULZdeGcEKWukSE
         gKAUHO7J4p86xRiyj51e62/2JMzbjXIpXh24n9EdqwAbQqEc3LSBAx7qP+eTSJi9gK9D
         4ZaiCpuWdGyOHAPtRHTrzV+ub2uQ8nldQS3SOpRJh8lmeBXctR243M2P32aLJ2/ak92l
         vSEcS9DmAMfcO23yWvfvZCCvyqhvcTwY5jCHhD56uA0xzcKn7kzOA+IM/oJFzki51oT5
         WJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764578508; x=1765183308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ynOlGYR5qfFrdaiqwTIEwtb0mOltRrTgTI60G2801Ag=;
        b=HV5XREgimcoDZoh3HGjGhM/r1fh8hMh0xu8gmR8NkN1iza0tUyMMmzof2Sc2ysMpdG
         0z2WJZ7B5AfSFcJ6pSDQjxtw9Cg1rSiFdV5cRdGhoQIhSDZSm5VNvkXf191j83kQY8rb
         obeauuXsHZg9hzZTjjSf4tL9Uy2WeeoB78Fm50jH7f5TMKLxzLreoW6AThkibZxRqkYK
         pBduyIvlakZ98tQy+EmL4xcYbdSQY4xUbzpuHEsbSoh1NJMc7HJnZ5ZUBpNnWXlG6CCF
         PJjJTTTbn1trl9RpMPMfUcLhXKNP1fWwaGgCzqWRxOBeqiRDOef9bYL85QfQa9bxkDNP
         QEXA==
X-Gm-Message-State: AOJu0Yxt49bFvGBwvJmHoeMC58uW5Qa0m4vJj2zn/DMDIeT9JZf2bq9A
	tVQMtq/BTtrbtS7jNRaio6hjH4psyCIqI0NPGu+6AaGmTGfgnz29rAX1bxHXODHJ
X-Gm-Gg: ASbGncsfgOH78oc0w5XYTfoiu5QDIirjN/jK2bNK6dIsnFsOEzCWjcXwzy1HS/yEup9
	BwFefLODIxdbxDMGouEkMUeG8mnBBJPY3FCG6yZlEpCdoeFKSGDeLkaUHiND2Kt4c/0Q1fsQrw1
	JP8KKkH4bg73aR5W/iVyIR3kg88rucRUfoptPZF7IyIus8Wn5kUWsu5js36QiO7dntKiojgSy+q
	pvgJjYQ5vVYK2QYNB5epvYblb/dq39HpjC8DYsLe3DSL3e/0EW55kljbfx+keHvf4sSXa8EY3CQ
	p5cKw3ftziFu9pMa2xK3aBmNpJaC4V8OtotIg5iapqrJ+6SiKwo1aljCldiU9zBOC2WLUoEXiU+
	SM0TZhfj4z+areUBxA3bWfW+VcQmso2lo0RJDj2sqd4SlEc71bIgLj5Aymrzk060hGjDMB+f+QZ
	6M/S7vrr96Ru2qs7HHAy8=
X-Google-Smtp-Source: AGHT+IECSZOOzFpRsQBwV4DiBbIBy+ZguLwshUjKK6DnwndqMxwWnIHiJCXqyIrDr0xEJyjk5tiDww==
X-Received: by 2002:a05:600c:468c:b0:477:79f8:daa8 with SMTP id 5b1f17b1804b1-477c01b219amr386219315e9.17.1764578508035;
        Mon, 01 Dec 2025 00:41:48 -0800 (PST)
Received: from owl5.. ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca1a4bbsm24186087f8f.21.2025.12.01.00.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:41:47 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Gary Bisson <bisson.gary@gmail.com>,
	angelogioacchino.delregno@collabora.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 5/5] arm64: dts: mediatek: add device tree for Tungsten 700 board
Date: Mon,  1 Dec 2025 09:41:40 +0100
Message-ID: <20251201084140.376058-6-bisson.gary@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201084140.376058-1-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree to support Ezurio Tungsten 700 (MT8390) SMARC SOM [1] +
Universal SMARC carrier board [2].
It includes support for the MIPI-DSI BD070LIC3 display which uses the
Tianma TM070JDHG30 panel + TI SN65DSI84 MIPI-DSI to LVDS bridge [3].

[1] https://www.ezurio.com/product/tungsten700-smarc
[2]
https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
[3] https://www.ezurio.com/product/bd070lic3-7-touchscreen-display

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Cc: angelogioacchino.delregno@collabora.com
Cc: robh@kernel.org
Cc: krzk+dt@kernel.org
Cc: conor+dt@kernel.org
Cc: matthias.bgg@gmail.com
---
 arch/arm64/boot/dts/mediatek/Makefile         |  1 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 30d169a31b10..85f338344dd3 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -102,6 +102,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-genio-510-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-tungsten-smarc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-genio-1200-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-tungsten-smarc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
diff --git a/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
new file mode 100644
index 000000000000..f1cf2821107f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2025 Ezurio LLC
+ * Author: Gary Bisson <bisson.gary@gmail.com>
+ */
+/dts-v1/;
+#include "mt8188.dtsi"
+#include "mt83x0-tungsten-smarc.dtsi"
+
+/ {
+	model = "Ezurio Tungsten700 SMARC (MT8390)";
+	compatible = "ezurio,mt8390-tungsten-smarc", "mediatek,mt8390",
+		     "mediatek,mt8188";
+};
+
+&cpu4 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu5 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
-- 
2.43.0


