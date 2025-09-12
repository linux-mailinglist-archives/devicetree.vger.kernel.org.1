Return-Path: <devicetree+bounces-216268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C73A1B54373
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8362E16FB5C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F132989B5;
	Fri, 12 Sep 2025 07:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IRX327If"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D80C26E6F8
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757660717; cv=none; b=WVt7nkZqioWdZvsQH5BsEkV3NEF6J02/QGg/z1PBmDvImxVg6SQ/GsrFaMahYbEY9YDPtdKEQYHqP6RtSrmAOF7ZfYov5zhLKvn8ldBcrSzUtr1+g9H667lxm3mVWxFsXGW6kjmdV3COVjK2GA+fNd8iO7cpZVDOsq+TAaeYTOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757660717; c=relaxed/simple;
	bh=572DFU9jfopt+pPd0GVuZvfPHZV7rjdAPyzKWts76qY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZRbwUQzc990IQpDATLphGntCDCgxN2618JQZ8oyvZLYniZYyhRAlNsI0CjrfAisA7eeylNuxwF+zaSwyBxwXF9pbmzgMlaiFnQAkp9LAGx7sPVvucrDHPYuRTPqjHuQj7Hz5Zp9+udvUalzBPXyDBpa/OQeztwVZjny4ek2fWS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IRX327If; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77269d19280so1499981b3a.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757660714; x=1758265514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CrCZ/4lfkyLu6sbBLzuKM2Dvm81cgTRaZ1Y0I7OWBd8=;
        b=IRX327If0r7Wk7XC0bdTEumhTg7YG8Y++fjWyt96DaPU+8Eo7uWd+pTLDmANcjvv8s
         D1Q/M9mE3yQliaLg+7qOIkTmGbYiDt5MkMh8T5lF80ppl6qO4Is8OnKHw5CUSIwfECEw
         1YmOB+RFxElIn+f6YH/0XWXJ9zs1eQYDd5vhG3fLGNRSM54M0iK6DMgksfpj+72jSLJf
         MhYDvMKunrVLdd0yEwctXrhgO7c+kV7Pox7KvQHiGzcb76w+Nk6krXffsePXIzYI3UfT
         Fc5cI4BNiQRg/40wP7bRKCuzUolMbN7wP3NKTgaRz/vca33DGeyTiD2N5z63aaX8YYR3
         DIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757660714; x=1758265514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CrCZ/4lfkyLu6sbBLzuKM2Dvm81cgTRaZ1Y0I7OWBd8=;
        b=XCn/l1MyScwQ4thm15NxbJCXGE5Slm4hpN6xja3E0+LQmv2fn4wdLapCVVHIeHydHY
         vZMJzifS7ETJxGBeGnkRGxiq8kkBccWF5uEoSlh21XzHi+i0bandaIeQnXDkkiz7yKtb
         hNYoaMfBpG5/Ax4y7fy3omsEJ3V2gd6P6ZReTsPzPQ1P5l52u0lIN0WzIpqvfl+XDu1j
         ij+e1wgQ0DM6LrwHXeauZWSATrdFL+wzImUHyype450Xa+D6QY8Pl6hrRFsf1WExCxfB
         ANltx+v0QTh1kEbjgRypwmfoGRL8KZmgUdzDCFhxjMX+rW07Y+PfPRzv7wnNjkIipvwM
         5lOg==
X-Forwarded-Encrypted: i=1; AJvYcCUH5o9CVQcHoR35f+e49byG4JZ0067dH1TQKFH8SNphN24Umrj8MtyLYBgX5shvyKiBuMyKYtMLqX8D@vger.kernel.org
X-Gm-Message-State: AOJu0YzacMYxsH/I8EY+hef9ir4/hlsjmfW3R9bsGQ4oLBDhwTT/eJcV
	+cgR0ETbgnG9w2aDLfMJ++fic21OInR5AotmxGj8oVNvaW00YvixP3gJ
X-Gm-Gg: ASbGncv+yfyeVhTSIc7RhdRwbcYrmDxYEwFbcQGD7BH8vE9xDd/aSZqcC2pMJOM7cFK
	zpu5JEcf9iCyJJicBB0G7VUjMPWPC0tk3xyWu+H8iUu7ym0HVCrcm2Ln6Q0NDOJk8N/2OYjnRT6
	aT03ENnoTNsIZIEP/cAJrjKSEZnAYF1+Ad8/romq0o4mQuMqTxGaiuFPAza5atXh3Eb4aVqwbI4
	JT6iTvbVxPyD7/6TAFBLX4EWGsLvNvJDfDdYlCQVlS2CEw8Ygx0PT38mzL2aXCCHK2kbvJAw72Q
	8yRTEwMQV/OYFFejUl9VfRQd6H96qb4bxGLTIigqFbQUuIzUVAoKYCPcC4E5OiPSlpPfGYtylQS
	TFf3lLw8rOYVoEuoxKS15cwhhEAhHcyBMTS/yaryitaJPaWAuTzeFRzUDpCVem2sGug==
X-Google-Smtp-Source: AGHT+IEWEFpoL5MC+MBgCE4p1Z3kBFGvdcN5KhhxsYEkiO1s5V7LSIfR5KPmte2LyppCMRUnCfAeYg==
X-Received: by 2002:a05:6a21:33a0:b0:24d:b11b:e908 with SMTP id adf61e73a8af0-2602a3a4a37mr2268661637.11.1757660714251;
        Fri, 12 Sep 2025 00:05:14 -0700 (PDT)
Received: from af623941f5e9 (ai200241.d.west.v6connect.net. [138.64.200.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a47d7fsm4412620b3a.31.2025.09.12.00.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 00:05:13 -0700 (PDT)
From: Tamura Dai <kirinode0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tamura Dai <kirinode0@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: sdm845-shift-axolotl: Fix typo of compatible
Date: Fri, 12 Sep 2025 07:01:46 +0000
Message-Id: <20250912070145.54312-1-kirinode0@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <38c24430-16ce-4d9a-8641-3340cc9364cf@kernel.org>
References: <38c24430-16ce-4d9a-8641-3340cc9364cf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The bug is a typo in the compatible string for the touchscreen node.
According to Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml,
the correct compatible is "focaltech,ft8719", but the device tree used
"focaltech,fts8719".

Fixes: 45882459159de (arm64: dts: qcom: sdm845: add device tree for SHIFT6mq)
Cc: stable@vger.kernel.org
Signed-off-by: Tamura Dai <kirinode0@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 2cf7b5e1243c..a0b288d6162f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -432,7 +432,7 @@ &i2c5 {
 	status = "okay";
 
 	touchscreen@38 {
-		compatible = "focaltech,fts8719";
+		compatible = "focaltech,ft8719";
 		reg = <0x38>;
 		wakeup-source;
 		interrupt-parent = <&tlmm>;
-- 
2.34.1


