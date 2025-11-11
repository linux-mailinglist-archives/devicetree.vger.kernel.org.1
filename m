Return-Path: <devicetree+bounces-237126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 414B5C4D2AE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8E6244FD21C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B9234FF6C;
	Tue, 11 Nov 2025 10:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CC45D6IN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B2434FF6B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857779; cv=none; b=DbwEbdZ1+0/nFyvudO6zyNBk6fl1pdP/J57j2vZrBDuzxXePP4ofyo/fnx93tM7aCrszzangelwhfkToltemzieXbTiNS7C9n95i8RH3ILr8sv423DFlbUZb8K0gkJ68Sz2t4bvkXgYEh8uBKtu3yxWikSsnzRRLt+ab39/eXeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857779; c=relaxed/simple;
	bh=MPJETMYI7dWOLt6/n9IzJSMzQlKG2FVGqAgOqOZYvV4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=skpmboY5uhdhSoJHtp5i9t6JWSnpqmoutW7w2pawCrXiz5ZLz7WG8QEsc38c4ZwzIn62OWPP7L28VGd6SXznC/N4w9n7zz6U0C3h3OGKGyOZqvYvRSLgw+qkcaFVpKmgXMVmNb/BkJJnZg+LpebdyXGOiyvm6zC8E7i7tNkL2rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CC45D6IN; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b5a631b9c82so3357246a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762857777; x=1763462577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGRhGlZHAoccrsdkNElXy8I6EJeUpk9FFBinfWP92lw=;
        b=CC45D6IN4UzfG/BSstS2NCVKzWLqwNYvZ9QLgE6duLU9zSMx1DcJIrCgIJzMM9IZwh
         R8x6rU0ifQ7f4ssAs0AzqAutqzllL2xvi2cBaP1cikO++v01iOQfyp0Ra7PR+9cQ5vkB
         v8ysMbSsOgkQsAw4axslm/JJOrPH5jLcoxD9U8SnjJq6V5hwbHEmHXTeozQaO9hrOu7x
         ByEZileKrGyR1+QmRXJJ1mDu0DYYxU1R0FqfSUF6k12J4miMQGHQHcvILfnS4oh/qfUS
         fFmV7XEIp71bowxqr92VtiM5G4eofUTgo8sz6hGYuOrNw4FqknT1ECbVtlsApSI00U3/
         +YhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762857777; x=1763462577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vGRhGlZHAoccrsdkNElXy8I6EJeUpk9FFBinfWP92lw=;
        b=eBNQkDbMFq7C0zgNloya6rDcaWJKmpnLn36tsN+4hw61P2q7pMGGfkKbXJcZWqifij
         q0cGeMn/LIA0ueJZOZD4HxomoYJ7HBgzIyYFCBDIeQmIZ3PcmUA6tIlLZFE5tJLQ6Z3y
         JqDx4mpNazqsRCXl35jaYuogblm8LtfALMqbHxRQc+P4SHt5Ypg+uy65GI0m3QhGUVqy
         1GFEWA3fN4/JjiP4GTqEXuwYCub++xFl/tWL750H1NwjJWwyz1zfrCgHqcz/Dq84rmbS
         iEYz/uycwlC9XGj6Uyh3Oi06BuLj5BYW5NkWRWkhqy0mRu5rAe/6KDymykTd/IfMLJfz
         QscQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeRUu9wXJO/dmJAXsHLBdOmAXOVLIKGR+vDTFbD1X9XAKm1HJpnbDRA/aK/KfCkSUmdKdYT6sJTuFF@vger.kernel.org
X-Gm-Message-State: AOJu0YwgNCyoure6J1T0ujJ9wy4nVRakE0UVSGhNAt/tOfg8fvHSrsqm
	NobPaBUEYte4Iq+iIQX8VSNEAQIE/AcL9fFtPuf1rLGnDUuTNH9k0Xxd
X-Gm-Gg: ASbGncsiFRWlf/GikY4w+NZCrHY1G6Li/vnIsIWImbmKAkcU9SRhvc3+PpOmW779c6b
	jHo8TWYzW8MDdyeNrtkTE3dM61HGe9uB6xDceRHFml62lzpFAIpElVdjq0NfhM2zxJPbbUdO7Zw
	0mMZB8KRHhygldnoelqw0Es574NS9XyKfmDcA9cyEUdtNNSuTmp3zR2F71PMneGZhm9wY1j15gT
	DQdiGFMWNuaAKH5qu60KVBNf0L6pkv02qjMzqv7uA3pHFpmDg9++kOZfanQnBptI/47nYgmz1Ms
	B+W9dyGzUBr8+7Uf45fy414eJQdpWLW3vBkkWCUpguSqZtGOgZ5ccuPAqbqEzk4My/2+VesNBBS
	+4uXtE7d01+bvhUij0NmTTdpj3Xgz2VqMN3odUWFXs8PXXxhat7xDlKxbecAFhSGqmLkryvPqq9
	W11s0T6BFsTCtWecNAcyysvp5zww7U9qVXIlac
X-Google-Smtp-Source: AGHT+IHJsqK3225QNg/lHSnOP7SQXHe14YnI4hlpXDxBwQPf4by5o2ZcPMaK6uU7gFSHpt1eiaYvcQ==
X-Received: by 2002:a17:902:ce83:b0:298:ea9:5732 with SMTP id d9443c01a7336-2980ea95b02mr105165995ad.41.1762857777500;
        Tue, 11 Nov 2025 02:42:57 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29846334db5sm9875235ad.32.2025.11.11.02.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 02:42:57 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: qcom: Add support to validate direct DSI
Date: Tue, 11 Nov 2025 16:12:45 +0530
Message-Id: <20251111104245.3420041-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251111104245.3420041-1-tessolveupstream@gmail.com>
References: <20251111104245.3420041-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds device tree support for the Waveshare 10.1-inch
MIPI-DSI panel on the QCS615 talos evk platform.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile          |  1 +
 arch/arm64/boot/dts/qcom/talos-evk-dsi.dts | 43 ++++++++++++++++++++++
 2 files changed, 44 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-dsi.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 282d744acd73..d5a3dd98137d 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -306,6 +306,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-dsi.dtb
 x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
 x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
diff --git a/arch/arm64/boot/dts/qcom/talos-evk-dsi.dts b/arch/arm64/boot/dts/qcom/talos-evk-dsi.dts
new file mode 100644
index 000000000000..8a6dc8b6bf8f
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-evk-dsi.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+/dts-v1/;
+
+#include "talos-evk-cb.dtsi"
+
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	display_mcu: display-mcu@45 {
+		compatible = "waveshare,touchscreen-panel-regulator";
+		reg = <0x45>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		enable-gpio = <&display_mcu 2 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l11a>;
+	status = "okay";
+
+	dsi_panel: dsi-panel@1 {
+		reg = <1>;
+		compatible = "waveshare,10.1-dsi-touch-a";
+		reset-gpio = <&display_mcu 1 GPIO_ACTIVE_HIGH>;
+		backlight = <&display_mcu>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&panel_in>;
+};
-- 
2.34.1


