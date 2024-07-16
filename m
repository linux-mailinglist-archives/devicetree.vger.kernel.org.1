Return-Path: <devicetree+bounces-86128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 905D79327DE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 15:57:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3D581C227A8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 13:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7FAA19B3EC;
	Tue, 16 Jul 2024 13:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kKrRriEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA4E19AD72
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 13:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721138233; cv=none; b=Es71z9ghVKTjqFRiwt/Hv/Ga1FjHO0xOkY2O//gz0KdCWXirYbkHARUE3WIdEFMqQJCVelEvpFH1ET0gb7X3Xyep5FKT/6mdsz4RkewT3qkVfgFx9ZwGB2j9oyjQtBTespEbyOs9H8PDJrmsZqdZN8V+R6DMdS578DUzT909Q+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721138233; c=relaxed/simple;
	bh=6ielWizRopPkxt9Xz5NhoZmUGUPDJRFuNHGi/CU8TFs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j/C4jyzwEl9C9vKjW9KZZLOn5VcylyUImehUDanZOq6KBP8Bo9ED7Id3zfS0//UwE//u1EDXT47cHBqPWSl5pYyuEyn+kayFoxkDEoTZMBOuRCTpNsO8/whhh/Ybw37xphE4lIvGVyWVsz4YbjgaH+rCr/mYHuHon3NuExH3D+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kKrRriEF; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so43889165e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 06:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721138229; x=1721743029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AD5pyTTXIBOHwrPdHnxMSU03OrIeYJeJpP0/KwZpIGo=;
        b=kKrRriEFOCiDCMHH+GikMXjV3iMpeVUMjJzt8VvVCfnU9EAj+Lwxjx0hjBurjQ50t2
         +5Z6wvK58cAMc9So5WEvRwbYUcOyfEQJ1TsTvlmX9FbXOIA5N9Dzjk+3K3sSpa7LnCwE
         tEwWI5DWMuCdrBDBglUOSZkF0hFVBLk/Qn+8oRv07ZnDTgT7d5eIiQS0Iy05CQ9FOuNU
         EEutZgibVBPbAWsFE8WCsqv8rQL7wOMdWM9KWdbNGqCgaLj4hHA939okGkzwY2sHqsnx
         7NF24ltNiAR4pUzsR40vOPkWjEjXMR/6BabC/hc7ucv5d7n7vnl2ZL6i/KlYONuY6qDz
         gE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721138229; x=1721743029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AD5pyTTXIBOHwrPdHnxMSU03OrIeYJeJpP0/KwZpIGo=;
        b=ZZjI0j0LM7MRk4VbF5aiYDWeILJRtzpc6Ta6VSxSfYktKreSk54lWKE9zPngtqSfWF
         RyB9oAuqCF3X5Q49pID3CM24OG2eRFdErK9hFlzlQz54qpkbp6MqfreWL6JodKyCT3pw
         uyu2do+TqEoADyFld21mcqKrIGC2n3vIBSFJhsLwWMvPUF61vWgVVBFMoqn3z3nmDnIh
         LpCvOUQZe4lQdCZerbfxpLvgx9I1Y51+4eYd3apA3Oi/40HDbSPvVXpVzllOQ8NdvC29
         f4CdQexbEpZmfECBYJ6EQkOW97s3Fm88k4ehPMuKDhhrE0oW7eLEblDPIPy885NUWpRo
         A1kg==
X-Forwarded-Encrypted: i=1; AJvYcCVE5l+txw7dNey9XiDaXyicHqLMGNNMn4qqyXlo5qXxjx/WBFo4DNXtiCUSBffMT0IwKs5Qlf/oC4+G9JHyYt4OTXcibN4qKRpEig==
X-Gm-Message-State: AOJu0YyI07hT7TWHDmeO9WIk9O6caKdfJoscompnLLIYNGK6MC/sg/kV
	4NWFbtObI9WaBdxm7HPtquC9Ux7d5ewAoaL8uBcAM46VnpfOROjqeYoSePsj/EQ=
X-Google-Smtp-Source: AGHT+IHfXvfzcFPFhmELdhCG/Exp1aFv5Ieq9lSZsPGvNiqjb3fzPq3o6IHorLqxOsRM8yer9Q8BXg==
X-Received: by 2002:a05:600c:1908:b0:426:5e1c:1ac2 with SMTP id 5b1f17b1804b1-427ba650391mr21090175e9.8.1721138229388;
        Tue, 16 Jul 2024 06:57:09 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427bb99a23dsm19118905e9.1.2024.07.16.06.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 06:57:09 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: msm8939-samsung-a7: rename pwm node to conform to dtschema
Date: Tue, 16 Jul 2024 14:53:38 +0100
Message-ID: <20240716135339.87192-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename the pwm node from "pwm-vibrator" to "pwm" to conform to the dt schema.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts b/arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts
index 91acdb160227..ceba6e73b211 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts
@@ -198,7 +198,7 @@ touchkey@20 {
 		};
 	};
 
-	pwm_vibrator: pwm-vibrator {
+	pwm_vibrator: pwm {
 		compatible = "clk-pwm";
 		#pwm-cells = <2>;
 
-- 
2.45.2


