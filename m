Return-Path: <devicetree+bounces-245512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DBFCB1A32
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B28C304332C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7B822B8CB;
	Wed, 10 Dec 2025 01:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jhwHlcSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94EB22D793
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331052; cv=none; b=OYAV/QoQAUU+Z3c2WTHqm+OjjTx/xGwubCroeP/DfC3IFeP7dYrF3qArPnsitZIkqs5qVyX0fYHTJcRvtNTG4nNQv4SDZJ0f20YTJn+49y+czDWDxhfdzXdfD5glTy0Q/A3sO9HAI9WkTsQYaESlqr6cMUb1oUxPULKTXLk/2ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331052; c=relaxed/simple;
	bh=LXmL+2Ud8K9B81a/ps47BQzEahaViMs6WOczoItxNxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cNMW58MbhFeJZxto1f5sJaTWBX9xpLVihtJJyGe0+aUKUMaumC0Uj6QwkzrxpODAfKaa5evieAe2u+v33dE6g0Q/gmy1QncTsq5gZjQc7Vcg7Cxn6vRtd2gDTgb1LBnPgpOPgdO+5/usqzAuJrg39WgSeMX0nqiAa6BDW0ynrmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jhwHlcSL; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47a8195e515so7910685e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765331049; x=1765935849; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mIRoroTrCwdEAApbWjCwunQZNu3lA9gRM8V7FYg4VSA=;
        b=jhwHlcSLmJUB28Kq5XDs0g+am373zey2gdZ/rwdlhHaIq5k251siOm5nvsBNoOazmx
         Gjg4W16Dk4nYiEjF7dbmqlmwyEQlPrA8FYSVpE3AQ1C5mof9PxOWsSUDFCiwEbKejPn1
         xWhzJRfEj791Ukv36E0YridNUYbV9/sfHai6OQnJtLWvBF5sTPCwup1uHxZHgXos02rg
         MWXwd6wQucHJHLhgqngbXt2HGVY+TBnZMZGie6R3ur5p3zp78l8UOajRWzLk0p2CJxq8
         tT6v1SV2DZSIN5yrdPsUQ2czX56zqGu3y4urYpbjAVEl87wDrYSoubgSgYQs+1KnJ2pV
         0YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331049; x=1765935849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mIRoroTrCwdEAApbWjCwunQZNu3lA9gRM8V7FYg4VSA=;
        b=iCQendPZFnu8J15hxR8lI/OPVjeKrNcOLNDLRuoI3b9BE9YjAtG2ugJkMJytlLtel1
         5IiRz8537GtLX7jviDYlpDBKVzEStPw/iz+yjZYFKnGwKreeZ+y3CJcEQrOYIwMpsgEe
         HWczU47tMtwJ2L2AU5ck3yOMq8cRn0Fo6MmE1yjSluQi4nvqzTivsAFFkLVB/PXrADX1
         T+C4qWnKpZCmgkt3OqHVuZKoD+28ocd+co1bj9vKgqyOCiGWvVVL3w5cKSA20//3gNGJ
         4ysvYo00q0niyTmoy9uO48KZ2VReFxSQ+g9B+KvqKWBqP1CjoRCVPK1d281C3l9FrU/w
         ajwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb2BQp1+8eww2G0tfTLzhTlKhNSxdx7jY+8cKIiBOm4fUqblHUcLKamNV764K7C1JH3Cs82tJxv7CZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwXZ3vUltAVJZ0+DDQlkB4h5F85X5td9T1ndr4FI2Nsp7u0z0BD
	0+0v3dWRG1wavs7HGYJ1OWtdwa8e0nWFBKAqLOgoFDGF3fUMza8ZS8yQ2lFnnLjc4jY=
X-Gm-Gg: ASbGncuQ2UkIRfrwq7kaWBvI+u34vqBIFt4UeUtcttWI1+U4Y9trrcLmWykMWrG61Zh
	km8j3VCTY/UAyyXXe3wn719Js2K5yk7UDPpHrJpDqmfNXq8gh6dwEZ0Aukch41GnSJDJVRJGwM7
	HbAFGVQ3WAvGZD5fHeI9NjvQ1sbvNsx3qmzK0jKV/NJx/uDH4lB84IcI0IvpJyvDSn4NC7+Lz7M
	nx81miOzzvMd8WJ4/TIan6Ibm49WE+XTSTwukgf2Em9DsTo6HbIJBvrGSLp68AHtU1oqeJQdOSP
	snZmXbjscCYNzmQdtH4J45T8s/3HM9A9q7rKJ/E4EzmROpumv4bNdsVResCEMEDfMJjaWfoUeC5
	wSPayJ9+zZrfLv6utQWUZn0k/29ZhvfPRHDzhubWK3pOg4wtL+oY+PqB/b767gFncGTqGXwPxbT
	FRrKWVqJaJqb5YYwL/E3/e4soR2FSKW8rqNYSGsOhTM6ECfRq7VGbK/14hDS/g
X-Google-Smtp-Source: AGHT+IHxrZHyT5JdnhYWsVjRdObYzq/zdfHS0eqhPs7Mg2n/J8NXSme7eVp+eTQMnOeGIvOMANl+tw==
X-Received: by 2002:a05:600c:310d:b0:479:3a88:de5f with SMTP id 5b1f17b1804b1-47a8385903emr4786035e9.36.1765331049453;
        Tue, 09 Dec 2025 17:44:09 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a7000c984sm705234a91.6.2025.12.09.17.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:44:08 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:43:30 +0900
Subject: [PATCH v4 6/9] arm64: dts: qcom: Add PM7550 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251210-sm7635-fp6-initial-v4-6-b05fddd8b45c@fairphone.com>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765331010; l=2033;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LXmL+2Ud8K9B81a/ps47BQzEahaViMs6WOczoItxNxo=;
 b=nXqbJoE88R92aUN0quHB4SmewPu3iqg7cOV6P8Xk5EWQGIr5x8Sw2iBPFd8xc2GBDAuLQHyht
 cYVM3vbboUuB/aziF7usoPX2qgy83uOrX6m7O/kjcNBx0z+9e4mp0C2
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a dts for the PMIC used e.g. with Milos SoC-based devices.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm7550.dtsi | 67 ++++++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm7550.dtsi b/arch/arm64/boot/dts/qcom/pm7550.dtsi
new file mode 100644
index 000000000000..b886c2397fe7
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
2.52.0


