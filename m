Return-Path: <devicetree+bounces-125000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DED9DA7CE
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BAAB162E6E
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B7B1FCCF4;
	Wed, 27 Nov 2024 12:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CLGiVwav"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D411FCCE7
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710608; cv=none; b=m5cqxAx11d1WI2NmTwvUxpU7X23ggannPAvwD/MU7+3UeXGlOceDb8S0rfvoMupyraA+FzrVSZDTZc7IloDgAtXSoo/s8ltLHuw2X9JOREdupqLvpAbWdy58sujPCTscXh6QD6TouVbaEY9Kn3W9he/uroJP/l/tzOdie8L7LL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710608; c=relaxed/simple;
	bh=ljf3EWjEa4SU6KMOMq9ZadlQfPXvljFceyph2YSyzOM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tdCNZEKRMC3lQ+TkD1WS+b2nnazZg+eTGrS9OHGhLwYhlXaYfExR5gB9aMiEe4mcQgUPYOrGURh4NqFbEVadlWx5TWQz7fr4yzkHg36fipLuEu/2B6VYvaMjQQVtBwaTOuXuHMXEPjH4tpgiXQayuYLhQs+8czdLn+Xr6G9Ccn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CLGiVwav; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53ddb4c05d1so669071e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710604; x=1733315404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7o3A4R5t9bwg6LdcRtL+5UJZhCaVKgO2KxdIZtFgVSU=;
        b=CLGiVwav1Go6veG8gibP0CnE7a7d1q/pfD18NfeoWvbm0k0l17j1kh2XxiMHxaCZ0G
         HczaOxYf6d5Bv4iDZkO7JfiATAWTtxTnTn+r5X9A735W1T06RuU3C66kfk+NiPAAGglS
         svcDRbRs35agM8MwB1nWWxVdrKxV8f0FDinENC4k//gtBhZSd1f6pxU5P/0Xpq0hUGXk
         PxMeWuMgPIbp4+hur/Lt7/hbHdHKJfuVvhy0WQyRuVo0wDP6kvWBJcYM9L6jpSjrPkr/
         QvHMUv5tlpwkBtNtstQfN0UMFcrsUUGYhCcBgO28a43qcnRd18R8qhEMFwo2OaeA5tIF
         VmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710604; x=1733315404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7o3A4R5t9bwg6LdcRtL+5UJZhCaVKgO2KxdIZtFgVSU=;
        b=vMFSK1b2hJqLzw3wQqsuRGiZrcBZZXNJEf6VTCK+j8vje11KT3+Gxo4cHzkqhmlxyM
         wo6ai5lTnlpnLjD747G9v3XhsNod1yWT4bQ6typNowy6OKndAsRcL/EO0/ZSooTzG9Bm
         MsbO+OD3+ZSbfzoZ2pd1CCHsF+pu8w1lfd/laLDMEDZqCIbbrOu+CtenmCXKqQyK3Zjn
         NIJIF6vTXboRGAdLI8L4F89JxLAm/bCDwKmwkxdRmt1Qj92+GRvxZQrUzH7sifhf6CIG
         No1jEGAxqe07knv0ILy06omX1NzwfnPL9Sp9oc1iodFcCZLuOJkcbWqZQXPJlzS9NNVP
         TsRg==
X-Forwarded-Encrypted: i=1; AJvYcCXBWRanq+gxscNSGi1NfDfN/BWZNdZJyeptA0rIIyVKiM7ppx4lhN0YT3QV6Tsp36prQh0shOz4C30N@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz23QvaNrFXJmiagUkLnSGahPkreqo9qZQX97J3HLQRjKKPlLE
	Cv9epIORbSmfR5nCh/szOL1DDPTw6PCV3OtMA9WSsi1vzz5hFtF0zyx1Hi/vDOY=
X-Gm-Gg: ASbGnctwMT7LWD5v2YwbjN4CUVITPEYRKeGC79nmrDuJnKGC6fBtWPJngaxgaiB2Yxu
	J5j+JF7iV8EMBp+DNyuypCLy0euPfHCBtONCpfiy4OD3NKjjdOZhQZ3uNq+mdmg/kbj26ZWyOQI
	1ddYbXp61UZKNynD20xxvnEhYmeahkl1UeOMd5GEUbJzuk3LNOi79sPjFZdwYo9+/9ZfVTWFb+o
	C4WdYjEVcmybJdn9BOLGfnDsnF8BWXIi8f9+oYB9KG0RIikPYY61cSoKUHtazWFgeXSTMYsdUb2
	u+4WULsTqPYsTso01N6HPDjAa4chy2E8CadyoGM=
X-Google-Smtp-Source: AGHT+IFjcgZ4S9xhgLpc34LY3lmR9lrDlkZkRhb/uSO1L6Udr39fMvdOIIofvmxI3TOycExu5vohwQ==
X-Received: by 2002:a05:6512:3a93:b0:53d:e544:3fe4 with SMTP id 2adb3069b0e04-53df01150e8mr353178e87.14.1732710602811;
        Wed, 27 Nov 2024 04:30:02 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:30:02 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 4/6] arm64: dts: qcom: sc8280xp: Fix interrupt type of camss interrupts
Date: Wed, 27 Nov 2024 14:29:48 +0200
Message-ID: <20241127122950.885982-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
References: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm IP catalog says that all CAMSS interrupts are edge rising,
fix it in the CAMSS device tree node for sc8280xp SoC.

Fixes: 5994dd60753e ("arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 40 +++++++++++++-------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index ef06d1ac084d..6722134aebc9 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3900,26 +3900,26 @@ camss: camss@ac5a000 {
 				    "vfe3",
 				    "csid3";
 
-			interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 758 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 759 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 760 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 761 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 762 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 764 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "csid1_lite",
 					  "vfe_lite1",
 					  "csiphy3",
-- 
2.45.2


