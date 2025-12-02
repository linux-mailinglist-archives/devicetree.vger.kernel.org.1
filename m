Return-Path: <devicetree+bounces-243812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 219A0C9D286
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2006734A2C1
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE072FCC06;
	Tue,  2 Dec 2025 22:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z6+Pgv+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825DF2FC02D
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713360; cv=none; b=k60PjzHcP2wE5dln/qplKgzRcSgZaMItRCGnSoWw2a0sMGNiG4wa5B34JYlZ2RXKGf2Q3RU+x6NmIqI5VLkRhbVe6/3YeTyHLShf2RcwsmbtmMk21ScDeG4qRsOQcn0VEMSSSLv5Zw8C9h5fynlL8AET9v5BDNLxQwwg7l7JHto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713360; c=relaxed/simple;
	bh=H+11TnPwC+Mq+Hq6buMg0dY1uoqQ3+P7dRfzirr9Mwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rkh0nVvGoCPNTDpLm7AmXan+J3ejVodP7qeNJxQfvVY6pMf/MnKNkBTJhs++waP+lJHzYrrSt+4S9JvHbLhClxtzsa9pigYcRABPiV8ULkklud8YgbU08ubpq34Bi1IVGmDwwVFwFsesRlHUld7bQ/l2VhkWpEIpCrAL9RccHo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z6+Pgv+P; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4775ae77516so58426705e9.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764713357; x=1765318157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EnufJVfDk1ptEUUud8fdtVXsibf/Uz5iyVkPIydfnRI=;
        b=Z6+Pgv+POg0BiakCvvo0xQ4C77D4sDDgbHpRaU9YpNx+LpEiJTY5BWJjdNTuE5Uwwh
         WZuMSWoWUSvMpSgMhl1Dt1Og8rUWo5nyavTbFHATXn551uSfwvpeJyAukNEs/xQiDBYG
         NQxxO4+cp/ua+guQLov/5jP0Ou5Ue5IJ0GzjNXpY2h+ZWvq+rd6ciA0d+WbI4Gs8uO/u
         N4wBYhqUTFoAOvq8MhRCxNn9cfSk39D6LIIFs/XpDL+VosHN3vdCpFnTc+8ThlgAEoN3
         U+W0upbWXK/9mjl+G7qBnvIEbbHRJQf9Ez33kEwndIVWvXz9m0eS15UdiyvJIFuK3PbN
         O1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713357; x=1765318157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EnufJVfDk1ptEUUud8fdtVXsibf/Uz5iyVkPIydfnRI=;
        b=jHUlk70NEoKwn9uPx1LUGbISQStciyQwE3RYhtDKZ73Ta4tYLYAUsNsnNWr1uQ1y1i
         SOnRLiWskYJNKvuQCrxQ/xNh48Tc96ErbVfmQ2lPtg2azHX/7Nj1CmaTvuvGr4Wiyi0f
         agkTd9l4RxRHrfYbGg2gIIYNyeNLbXGLb5TuWDks40zzvD/RcEQHEN0BFB5ngxs87R2m
         fHRVkuQICj7GSOHLQkGj2mobdq4cOhZVchdC4lrGwGqcq3a9t6LP7cwathK9tMZMmovB
         Mr98LI2YB95p7td8Zzf9a5Hvz3kEAna2Y3WgoV7t4EdVYcjch/RgCNzOjI88x1n3jmw8
         2f8A==
X-Gm-Message-State: AOJu0YwzQvXqqiZoKA1g27107zkg07DsD6AJ+/myT7SIF6Qf0B2PS+oe
	OmgJs0IC0b7BGiJjXXwbOdpe+3WQ43MEtwyDqeAK+6He0EaicSin7Lfs
X-Gm-Gg: ASbGncsq10UchElBu+7R0/8NeJiK9hhgnF/bPiVlkVTwcyplsjPtSDWvSUfQEGeyOUV
	NFUDKB7tRHkoQyvqbpVwQ+HZuPVFqXa8LdeGgDG6B+ExNauijWv4UzkOq71hCVPoRcQ3lQ0UzQG
	YE4KIwgzukJ636XbBIz0fWiRgcR73hMs0lzPAr4XDcyYIPEmRMvzdV2P5aj6QqGfWGnNTPLQhDj
	7Pzmrh644btbAteaCiyPH8ODUSL5X48DtNu6T8+fw0Q2Xghi7ajmaYFUJgbYPG8oX/OL2MmEaIP
	w36J4m95j0UAk6OlZWEqRJ+KTAsYGOgxr4AUO9DC0dSpd7o8Z1IwoAXsbndgFKEwMGTTqOUn4GB
	ylUWoNDJPKkcUgBYsMM42WtsQr3e4M/vwxgWpNLJl9kvukUVWucXgwW28j3pZiTMSZdA33HHHqr
	YTqpxCkBLXYCUFQLKLEEGMQAu0MQ==
X-Google-Smtp-Source: AGHT+IHSDGE02fY0dReRMJgCm6advPHO2AtM2RFxT6ONrmuhjEja/3cTZ0ta85Nk/vE45Cu4bcbUZw==
X-Received: by 2002:a05:600c:1907:b0:471:131f:85b7 with SMTP id 5b1f17b1804b1-4792aef70bbmr1969675e9.15.1764713356647;
        Tue, 02 Dec 2025 14:09:16 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:d253:f5eb:2f9c:dde7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a79760esm11534795e9.3.2025.12.02.14.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 14:09:16 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Tue, 02 Dec 2025 23:08:49 +0100
Subject: [PATCH v4 4/4] arm64: dts: mediatek: add device tree for Tungsten
 700 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-review-v4-4-93f5cd2a0d4a@gmail.com>
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
In-Reply-To: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764713347; l=2289;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=H+11TnPwC+Mq+Hq6buMg0dY1uoqQ3+P7dRfzirr9Mwg=;
 b=VK9xT5IUpCpuVlUok73URtudgickTfBUXpxDjkRquEMjWHUxg4j23A2ZA/QfcjVzPPvrT3K3H
 HlxmvWkwAgiC8tcVnO7VYQ/MdWh2T6tB1Hc1eu0DP2YChYJ/o/bUeBI
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree to support Ezurio Tungsten 700 (MT8390) SMARC SOM [1] +
Universal SMARC carrier board [2].
It includes support for the MIPI-DSI BD070LIC3 display which uses the
Tianma TM070JDHG30 panel + TI SN65DSI84 MIPI-DSI to LVDS bridge [3].

[1] https://www.ezurio.com/product/tungsten700-smarc
[2] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
[3] https://www.ezurio.com/product/bd070lic3-7-touchscreen-display

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- None
Changed in v3:
- None
Changed in v4:
- None
---
 arch/arm64/boot/dts/mediatek/Makefile              |  1 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)

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


