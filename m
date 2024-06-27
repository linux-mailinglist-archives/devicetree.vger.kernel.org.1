Return-Path: <devicetree+bounces-80827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFF091A7A5
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:16:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD4481F215F5
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1011922F3;
	Thu, 27 Jun 2024 13:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kYTubqHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5974518E767
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 13:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719494165; cv=none; b=slx241rZGhqzhY6FRCsx/TGcCr1c9M2de3f+gCLQHbE/CdygNxVKdYjWZlhVqk4sm7oX9KkY13qD0JeJOReiV/Jam9j2l/yfahYdVYXeOQtkTeZvWtwaXzUlrP9WqWVSM6++6I6Aml6UcqmeAf4OmgXn43KjmKaTyLj8SEjfjd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719494165; c=relaxed/simple;
	bh=SC2FX1DU21prPHrnU9dyWxxjBa5ZitS4xfAhB9tAp9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ic57eizsWFL9AEMMy/78N+bHxjZNH+p4rbfXtHwwhvCbbRRvP3uqkOkf4y2isrD6v4OqAYPbkd+uSFNVvCYkuQfXuXvr1Ahd5ns71IzcoF5nBdVblEN3inLZVRfA0VgboryoEOVljqE22Pzl06uper9kcOtwTHOadkAGdD0p3ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=kYTubqHW; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a72585032f1so601195066b.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 06:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1719494161; x=1720098961; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzKoz6FKnrRcBnniRyELt0aBuYtPO3F5zOf5PdMzffg=;
        b=kYTubqHWx1LS/0tYZhhenZ97Z7RpO0n+HHqjfDWI84j7PoQQqTWzpxYTp7Z5AWFm8g
         6HWvSigSCgWlt0qsYwx5tkS4F0evdvKgE2YXMKXstdIO7SRqEDtZFqjEkmXBrg1ukdY6
         q56BVfyUJZaiC+E8FGvrjKMnABIue+BEcwRh+et7pyn82IBQZtGsXYVZIxdY5J53T0lr
         gCXO1yXTOhSPH7AvT36baJPk3FQcb/yUsDWeNeVXTEXmwwK3dQ/nWVcGtH9b3c/5bmXx
         GR7pqXncwCH2+TrnIW71+N1FC5g2L957jOrdbNSN0LtivayjGvNcTL9pFip0EnzXyED+
         yXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719494161; x=1720098961;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzKoz6FKnrRcBnniRyELt0aBuYtPO3F5zOf5PdMzffg=;
        b=aRFELgjbxAkqMzlR/KAuiny4vuem7/YD1DjgHSAhB9TNPIrO4mCWgcf+jbEjRiNW6E
         CIYSVU8R40DOSiKDDs6R468P3wUbwV1PamrPNdVzSli0k/8ynPP1pntvW1oKyzbYG6DU
         Px1HbNvwa7t9JQjSJA1VuufHkRTcfKY4nHbfQ7GeVK9nSHtKbtzt7mTPGGCPuP9bmPBw
         liC8eet1p5phLMQ4TAp0ruDtqRz8fxMJ3Y/bT9GLuwQRNfzzuwucW+BXNZxCPo0PVMEs
         rzh7BHogsYhEl55BZKq4tik4kjxMp2X9YZSbVqjSU5pGIc4JoxSKCRYHh19Deq7ewFyv
         D9hw==
X-Forwarded-Encrypted: i=1; AJvYcCU9uc4+hmHLYu0Sn2VjbnJVQWBl4Cb4Smmf8mXplSxox5vMkN0VQrdo3d44YJTdisR9JDPJh9B4WIuWuB5mW0kUZhyTqUuDtymDTw==
X-Gm-Message-State: AOJu0YzahTaGTP6jusdG3JNbggdntDCv2BNtSeYVL9OV6tZsaDxiy8WB
	cY7F7qZQWa6/WA/pGtftonwQ5JTxK7JgZqYKQDdRKe+/3+yglfu5a7e1o8ubXuI=
X-Google-Smtp-Source: AGHT+IEziftjUti0dB6a83oJvbs4LSDunNN7OLQH3Idcx2xB8GHM/2F4I8AwIYzm80iubbLmM4iG4Q==
X-Received: by 2002:a17:907:a784:b0:a72:7bf3:1602 with SMTP id a640c23a62f3a-a727bf316d5mr606233666b.26.1719494160704;
        Thu, 27 Jun 2024 06:16:00 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a729d7b4540sm59495366b.146.2024.06.27.06.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 06:16:00 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 27 Jun 2024 15:15:54 +0200
Subject: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Name the
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240627-fp4-regulator-name-v1-1-66931111a006@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAlmfWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDMyNz3bQCE92i1PTSnMSS/CLdvMTcVN3ERAuzJEsL4zRDMyMloMaCotS
 0zAqwodGxtbUArYUtC2QAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.0

Without explicitly specifying names for the regulators they are named
based on the DeviceTree node name. This results in multiple regulators
with the same name, making debug prints and regulator_summary impossible
to reason about.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 34 +++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index a74f3ac09a5e..4e67bb80a026 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -150,124 +150,145 @@ regulators-0 {
 		qcom,pmic-id = "a";
 
 		vreg_s1a: smps1 {
+			regulator-name = "vreg_s1a";
 			regulator-min-microvolt = <1000000>;
 			regulator-max-microvolt = <1200000>;
 		};
 
 		vreg_s2a: smps2 {
+			regulator-name = "vreg_s2a";
 			regulator-min-microvolt = <1503000>;
 			regulator-max-microvolt = <2048000>;
 		};
 
 		vreg_l2a: ldo2 {
+			regulator-name = "vreg_l2a";
 			regulator-min-microvolt = <1503000>;
 			regulator-max-microvolt = <1980000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l3a: ldo3 {
+			regulator-name = "vreg_l3a";
 			regulator-min-microvolt = <2700000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l4a: ldo4 {
+			regulator-name = "vreg_l4a";
 			regulator-min-microvolt = <352000>;
 			regulator-max-microvolt = <801000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l5a: ldo5 {
+			regulator-name = "vreg_l5a";
 			regulator-min-microvolt = <1503000>;
 			regulator-max-microvolt = <1980000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l6a: ldo6 {
+			regulator-name = "vreg_l6a";
 			regulator-min-microvolt = <1710000>;
 			regulator-max-microvolt = <3544000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l7a: ldo7 {
+			regulator-name = "vreg_l7a";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <1980000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l8a: ldo8 {
+			regulator-name = "vreg_l8a";
 			regulator-min-microvolt = <2800000>;
 			regulator-max-microvolt = <2800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l9a: ldo9 {
+			regulator-name = "vreg_l9a";
 			regulator-min-microvolt = <1650000>;
 			regulator-max-microvolt = <3401000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l11a: ldo11 {
+			regulator-name = "vreg_l11a";
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <2000000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l12a: ldo12 {
+			regulator-name = "vreg_l12a";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <1980000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l13a: ldo13 {
+			regulator-name = "vreg_l13a";
 			regulator-min-microvolt = <570000>;
 			regulator-max-microvolt = <650000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l14a: ldo14 {
+			regulator-name = "vreg_l14a";
 			regulator-min-microvolt = <1700000>;
 			regulator-max-microvolt = <1900000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l15a: ldo15 {
+			regulator-name = "vreg_l15a";
 			regulator-min-microvolt = <1100000>;
 			regulator-max-microvolt = <1305000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l16a: ldo16 {
+			regulator-name = "vreg_l16a";
 			regulator-min-microvolt = <830000>;
 			regulator-max-microvolt = <921000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l18a: ldo18 {
+			regulator-name = "vreg_l18a";
 			regulator-min-microvolt = <788000>;
 			regulator-max-microvolt = <1049000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l19a: ldo19 {
+			regulator-name = "vreg_l19a";
 			regulator-min-microvolt = <1080000>;
 			regulator-max-microvolt = <1305000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l20a: ldo20 {
+			regulator-name = "vreg_l20a";
 			regulator-min-microvolt = <530000>;
 			regulator-max-microvolt = <801000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l21a: ldo21 {
+			regulator-name = "vreg_l21a";
 			regulator-min-microvolt = <751000>;
 			regulator-max-microvolt = <825000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l22a: ldo22 {
+			regulator-name = "vreg_l22a";
 			regulator-min-microvolt = <1080000>;
 			regulator-max-microvolt = <1305000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
@@ -279,41 +300,48 @@ regulators-1 {
 		qcom,pmic-id = "e";
 
 		vreg_s8e: smps8 {
+			regulator-name = "vreg_s8e";
 			regulator-min-microvolt = <313000>;
 			regulator-max-microvolt = <1395000>;
 		};
 
 		vreg_l1e: ldo1 {
+			regulator-name = "vreg_l1e";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <1980000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l2e: ldo2 {
+			regulator-name = "vreg_l2e";
 			regulator-min-microvolt = <1170000>;
 			regulator-max-microvolt = <1305000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l3e: ldo3 {
+			regulator-name = "vreg_l3e";
 			regulator-min-microvolt = <1100000>;
 			regulator-max-microvolt = <1299000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l4e: ldo4 {
+			regulator-name = "vreg_l4e";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l5e: ldo5 {
+			regulator-name = "vreg_l5e";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l6e: ldo6 {
+			regulator-name = "vreg_l6e";
 			regulator-min-microvolt = <1700000>;
 			regulator-max-microvolt = <2950000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
@@ -323,18 +351,21 @@ vreg_l6e: ldo6 {
 		};
 
 		vreg_l7e: ldo7 {
+			regulator-name = "vreg_l7e";
 			regulator-min-microvolt = <2700000>;
 			regulator-max-microvolt = <3544000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l8e: ldo8 {
+			regulator-name = "vreg_l8e";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <2000000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l9e: ldo9 {
+			regulator-name = "vreg_l9e";
 			regulator-min-microvolt = <2700000>;
 			regulator-max-microvolt = <2960000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
@@ -344,18 +375,21 @@ vreg_l9e: ldo9 {
 		};
 
 		vreg_l10e: ldo10 {
+			regulator-name = "vreg_l10e";
 			regulator-min-microvolt = <3000000>;
 			regulator-max-microvolt = <3401000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l11e: ldo11 {
+			regulator-name = "vreg_l11e";
 			regulator-min-microvolt = <3000000>;
 			regulator-max-microvolt = <3401000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_bob: bob {
+			regulator-name = "vreg_bob";
 			regulator-min-microvolt = <1620000>;
 			regulator-max-microvolt = <5492000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;

---
base-commit: 1ce80da8c5d0c297c4e7db33e36abe0262f86b23
change-id: 20240627-fp4-regulator-name-aa86b983f162

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


