Return-Path: <devicetree+bounces-194572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B90AFE826
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:47:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B9D24E43D3
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC812DCBEB;
	Wed,  9 Jul 2025 11:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="u+xMDE7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771222D8362
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061614; cv=none; b=VZ+eYGTY5Ks3JfLU2nvvnYFU5TSt7PKTMK3Xf29kzdZVtW3CiTzOJtcbim02lsXWGTLYwrm94XIaUDv6ADthKtu9Z9Puxcy2Yev03PT+W/X9YqZPX5wKfkl3st3203B1vQRRzlAMH7imWBY3EVX3ck8wRLv1ShAJUI4HY03gF6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061614; c=relaxed/simple;
	bh=hC4XiUyCXvfKUfUdujggOXgHdLNV4lf1H8qLCscQ3Zg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y1o8JcPnU8sGnVFCp8HWVau4iGnsYeg1UjlPHoIefpd00d/a1VG6K9Z4+yJQaUIdHD188v6w/0wudyJ3RrGmaUIlgQuBirgslkfgZccDyU+hR59JxzdqNvs/FqeZN22hUAqIjxCvVFxUKDCOwmfANp0mWgVdP8LP0YhA84pBUj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=u+xMDE7L; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae04d3d63e6so919780666b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752061609; x=1752666409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9bpa1qe4qe1U2tW+ccEjSHAObelYY5h6LZZSGvF+pGw=;
        b=u+xMDE7L0X3yoC4TxKZQvTud3oIy5LyXnoSeMEHz+v+9PjCqZnmkMHCSi4NTmBXxbU
         6Z3GE2APvlyDmqvoIzH8ohA/qOxz1FBCAJz7yN637L4WAnSUImeL87RqZ0GnuX2mdT6v
         AhPov5DkFGPPHXsQCRWiRajKyz0W+x7ZuXSCZUMSBIMvUaGUScJ6CG9xToal7gE8+k9p
         5h+oAm72VIWgQnwS31O+AS1ezIYUudUNO03QVY2vROv4tyaPpHIKxUcLl3Q3FML6BFdY
         LVlh0Q5za5gdLYYTXY5uyc5ZqFpmF65ma+J70yQi8yW2qlOx4gHC24JySM+UTeQGNcSr
         8ZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752061609; x=1752666409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bpa1qe4qe1U2tW+ccEjSHAObelYY5h6LZZSGvF+pGw=;
        b=Gxd9OeRHR2NTPxVmqhuV9HqaQzN4JAzg/MCB3vWxJBEIm8mhV4ULods5h+b/OCsXUf
         ATXbapV0nBRUXM18Mf7dL8CXMswtsAiPisc6SURZ8WQ4GODeOZzV9fGYinavXpZC1zsS
         GFFWGrRwCfE+d7rsupgapDvdgRjzDoQban7VIn3IgQwLv8Jd6W15pyObI81UBVTCkrhu
         VzS8iWxrSo4ixdWmXuRsG6PRR4sMu7ipPKcjgtdX8LssrTadf+sIrLMt87/d2McW8FZu
         DhINsX0rPr5P2WqamnbNnMI+j8zDFNo2YGik96k37zlQGHa65+OM5ahjm09ytRO53PSZ
         LDmA==
X-Forwarded-Encrypted: i=1; AJvYcCUqocnH6mYaAOaACU1CEWLq+8JkEbvt9i0GS7l2da87BqJvmNYy7GdFOSnx0q/bR12zodl6iphhzVDP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8/QbJnxR1UYq1HDH7oci4MnW6dt47ltFlL9B1mdHKl/FmTt5u
	dvjjHQ1a0419bD/7v58O7djDHph8lEI2iHx0FI+IVBJKJHS6RblC03ORgpKdc0UkM/U=
X-Gm-Gg: ASbGnctIjXtl+ZlJFn1yejGmQpxCUdhQQ6B4VZren4DWzMS3g7txsEwpAE0IEoQFP38
	38ORGg/OPcM3g35Z9L2bdHgLXC+CTaxWNfAnKhefY5jMRLX7x1oE3OKEiLtls+ccyiV9amtbNVJ
	cPj33LKuU/BX1w44PA8w6oE9e/p3KJSa3NEgCGqMNjk/fuvO91mGh0w/WbLC+EsVcJW6e4NriM3
	Uwd04zRA75Jmnfu1hN7DxWM2D2PUeDiID+7zex3IB9eq2FvpfafMyAXMS3aBSdH/3neOmMS3SJP
	803+zBX8LfxNqmiBwomMttExe8Xx3+OY1Uc1D5o7Nh2szrek32pnBZ9toWPAYI/FQ+d15BTgXFM
	Y85g3IHCNX2U4h8apAGi0nMJjZ7MdOvgc
X-Google-Smtp-Source: AGHT+IEa3VxKGGtmpJqSqUpaGE5jivuUSxb7qkbnXKu41EclZPptdV4vVLyJP7ntg8X8h5wcm0ceXQ==
X-Received: by 2002:a17:907:c283:b0:ae0:db23:e3e3 with SMTP id a640c23a62f3a-ae6cf5c0132mr248175366b.16.1752061609399;
        Wed, 09 Jul 2025 04:46:49 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f692e4ecsm1102995266b.55.2025.07.09.04.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 04:46:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 13:46:36 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: Add PM7550 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250709-sm7635-pmxr2230-v2-5-09777dab0a95@fairphone.com>
References: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
In-Reply-To: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752061604; l=2089;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=hC4XiUyCXvfKUfUdujggOXgHdLNV4lf1H8qLCscQ3Zg=;
 b=h+IOj2hBQ3I6W+a+vQJaatA2VbxLX/L6dXEb4kRe5+aHbi3nsUWGLE9ZKVDSnGLxp5qWzVFcG
 c3PpiaHPXufAZcvursiA5Rs+k8oJGNcZ1iri5Kab6VB9Dbrbl1zMCRE
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a dts for the PMIC used e.g. with Milos SoC-based devices.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7550.dtsi | 67 ++++++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7550.dtsi b/arch/arm64/boot/dts/qcom/pm7550.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..b886c2397fe735edc92f2c3f307eb4d206961f11
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pm7550.dtsi
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+/ {
+	thermal-zones {
+		pm7550_thermal: pm7550-thermal {
+			polling-delay-passive = <100>;
+
+			thermal-sensors = <&pm7550_temp_alarm>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					/*
+					 * Current Linux driver currently only supports up to
+					 * 125°C, should be updated to 145°C once available.
+					 */
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};
+
+&spmi_bus {
+	pm7550: pmic@1 {
+		compatible = "qcom,pm7550", "qcom,spmi-pmic";
+		reg = <0x1 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pm7550_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pm7550_gpios: gpio@8800 {
+			compatible = "qcom,pm7550-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pm7550_gpios 0 0 12>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		pm7550_flash: led-controller@ee00 {
+			compatible = "qcom,pm7550-flash-led", "qcom,spmi-flash-led";
+			reg = <0xee00>;
+			status = "disabled";
+		};
+	};
+};

-- 
2.50.0


