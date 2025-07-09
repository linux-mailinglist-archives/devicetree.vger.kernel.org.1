Return-Path: <devicetree+bounces-194550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B97AFE78A
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:22:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C0F81C8076B
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E2829B797;
	Wed,  9 Jul 2025 11:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="04dw6U7E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8273D292B2B
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752060161; cv=none; b=Oc/fMrXNMr5obAI7TX2nl1P366gBNdRugWPcWEU4+tBAADqRWHmUSaIJZx0Ecb5veD+QVRfuQVdz0R58HG4F5PcUkNH7oKt2KvVZA34FDvO0AhruAvIHek3lVzrY7zE9573A74pAyM5B6I/wbKIlDHkfpLEh6o3disnPICqaS9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752060161; c=relaxed/simple;
	bh=v8W3GINcz/JRFuzQFTXnjEqR4QhQwIRLE6x327OiNU4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XokcpilecHvI8Y5DX24KzSBnUCXeLagHDeBiW1NutK8DIdQtcelgMppBVpFylM2ytuQHI9o2+XkaqSQc+E9aB1LAF23Elgx1BFTLzrXyCQvqTGkC5uuNNnUpTdYv0jqMl05mIIupFLBeY2Wsq8En1sxMfPvi4YB3iTzNfN2/kP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=04dw6U7E; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ae3c5f666bfso881669466b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752060158; x=1752664958; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4dOumLNf2zlAbgSAyMPBNKWH+vCfQ2X+/X62wCBIXk=;
        b=04dw6U7Ek5LafvOGTqY0m78dHoV9wA1VGICE/nKznHED4BeJFMVmQLtrFoWgCleQgf
         7/VWIGFQsDy6+fVmn4nxdXklMjHnon6xqNc1A5nah/broM73B957q0XCooLAmkQ6bE28
         2DzHmqba0pGXDRNFRhUotZ8SvB0EK8QUfHyMfEAqkyMevdr+FaJJUXzp1fEDKLrie0ch
         QxK4WJj+lBVpS1MAoWSIHF4mwX5MlgcZRKKCn9GDacyzHg4b8b9TvG17aNTSl5t7kngZ
         5O2xf9Em9fBDcHyNuhu/3bseXRrnvxlvSMSMpAKchsECGyi5LY0wIRgXvMz8Xmv2S5hg
         xcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752060158; x=1752664958;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4dOumLNf2zlAbgSAyMPBNKWH+vCfQ2X+/X62wCBIXk=;
        b=kymOzSPY0Lb7Edb57CcTqUW81KQa+VRiHqSQKEghEuq04cuJoF3/adBbGAc3rnkCoJ
         gXuhhoMFcuXRyMf8PnksQ7YygCOZRDrKcS2HZ9tf9xNFcVDZyKe8KMOoG/MC8HZSFXUU
         7+DjRgX3DuqATIn6ZvLR+XiZ0qsjt4rRpjfksdFS+Vdh+7kRFzOoza/Es38BDHCj6B/n
         RHnTfh3Wp2xkGKHpHwqB8YrbMgEzgIa0czYSzIhZTH0DzMCQHqMh8VPpt/F+/vjRea/n
         9vokP6DKP7dOaxws/8XiAOipLxNjhh9Kj7DG/M4y4fJHyCg/g5GDWfJWYSKp0oZ6mbX7
         sXZw==
X-Forwarded-Encrypted: i=1; AJvYcCXIy4q1lcJ3jZPqiTeDkV/tpB/YrVTrvZ36XykmMdM+iHzPzRWj0bs/xeKmpr0mxcCgBzXrH/A5lmpG@vger.kernel.org
X-Gm-Message-State: AOJu0YzQPIEhWWHdRqZZANK8sahFZI5ZKWYXjLz6aW/FPzi90DlBH4HA
	nLIrcepTysOaTwVY++h+6KC0XnCmEJ1IaDo59tlRgSK0uNu0Pwc4LQmNjfJU34KHk43JS1hAgG7
	F8B5Q
X-Gm-Gg: ASbGnct96lT6tvR5SmK4hSCNX5F1EBFbXQ3UBQny1SI1n/xkL8T6FPFj6aEUcaDfz6u
	JBf1R6UzCZotMKHUVKWiQkWiHP47Mm/6XRFK9HsvjkH8BHvuJutEt+VarKkC3Xd995t8ftj/h3u
	AegH3EawFB5ZYeTPQCM9+LCVHmpVtNpSSVORXuHGsejknFDf4Jc8ra2dverQPi4rD/17RudqrQH
	FM24R9iH3iy6hiWOXHzwPj9HryEjX1h/UnqtI1Id2rRA/QC1d4aWp7Hjib1OgvcD+4WdpG3JzCd
	pL0MqRTCslWuOAmq3zIGZechAxudBsCvuQClzwJYX3JNL9GupdErkSkCDOWXI77/VHU0CwZw0K3
	3ikNazHSB8pnDaULR5O94GiDYGzgaxq9v
X-Google-Smtp-Source: AGHT+IH9vnwKDQS5PWwwot23KnBBMguALefUJ1bpdte4R5ZQwSrr0oNdJ1eGm7MuBqcVRYX5nvBBlQ==
X-Received: by 2002:a17:907:7e89:b0:ae6:abe9:8cbc with SMTP id a640c23a62f3a-ae6cf58d2b7mr206062666b.12.1752060157745;
        Wed, 09 Jul 2025 04:22:37 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d93basm1079861066b.4.2025.07.09.04.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 04:22:37 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 13:22:26 +0200
Subject: [PATCH v2 1/4] dt-bindings: mfd: qcom,spmi-pmic: Document PMIV0104
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-pmiv0104-v2-1-ebf18895edd6@fairphone.com>
References: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
In-Reply-To: <20250709-sm7635-pmiv0104-v2-0-ebf18895edd6@fairphone.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752060155; l=892;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=v8W3GINcz/JRFuzQFTXnjEqR4QhQwIRLE6x327OiNU4=;
 b=Otrw6GqfkCGtNrkH58EJ4GUrammLwH2oknPOBewjtua7t9KC5rGMlkhlpPhzPUwHFelgxeMT3
 +qMFSSdu4mSD2v5n3Q0vKlNgtFDFVb2k3tYJ5KIh+u+xDXf114lit1D
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PMIV0104 PMIC which is found on e.g. boards with Milos SoCs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1e9ceb2187e988ce7c9514ff6dc2c..c416f25c90d6d9f8404947d1fadef91cf664e666 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -84,6 +84,7 @@ properties:
           - qcom,pmi8994
           - qcom,pmi8998
           - qcom,pmih0108
+          - qcom,pmiv0104
           - qcom,pmk8002
           - qcom,pmk8350
           - qcom,pmk8550

-- 
2.50.0


