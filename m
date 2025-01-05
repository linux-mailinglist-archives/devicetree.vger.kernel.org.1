Return-Path: <devicetree+bounces-135649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4CEA019E6
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 16:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE4643A2481
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 15:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B27442A93;
	Sun,  5 Jan 2025 15:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DWPFrcqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FC91C6B4;
	Sun,  5 Jan 2025 15:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736089443; cv=none; b=QLFpp2W+wCdtBkjPgtDTDPMbE5Vj+dEUiAWPoLG/9RG1hvAobDJ10L7fA3NJYG322zLPbekFCmG5V2jFJwL0BqQ2g6SpELSxlQp15+iwCp6kM57eFCAd0J6/1FpvYpOgjeMM3kYxjqkSyR4TOubExSRaQpE/Mt03spBDW4eQgws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736089443; c=relaxed/simple;
	bh=11Qo7Xr/r2SdH62lSmOgUDrwY4Kp55cvBL1Nwb0Ehes=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=jmM0v5eugzk6NeWRsZDokDdp4PWdu0fG+3COFQz8jpu5S0Ec6SpebNYLrrmsXcD6prsraiCUenwjhFu0tOB3J8wJ1oOshS+kwbouQDcin5/oGglDVfYaSOdGo8IEIKYkRKINWMWkk/BMDv88Rlbxflwvcan3N3594rKC16+OLrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DWPFrcqZ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43618283d48so98201655e9.1;
        Sun, 05 Jan 2025 07:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736089440; x=1736694240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SZYwc4vBlldLtmS7t8q5HbKKN19HNEjLlzpxgjKSx50=;
        b=DWPFrcqZa6A7CSlcqSfjVJFE+xJzQ3OuFva8u60F1oUT591TAcXsdh/CEA/gcP0vA6
         mw05WzeyfTX6FQhuoOt2ssaeqwHUUZIJFqZWNebwARlJ4ItX+Wpmh9ULaNMq3CYHtwQY
         ycMQaumM73aTdx3/jZyOj9M8nYJIIAhGzZDM0RUkykCyUISZLd30b7j3uVcQSwksmKGJ
         qFV718w1TgveK2hYXB9KzyAin/4kFvvZgdGEselmjQ9VP+hOXqvhn3yuVdY1kEL58wMf
         b9JdCEgzwoylQFX4nkiqgMkF6bgrsVEhFBbqtdPFBcY4bcbZVs5KCnDSOF7CFWQ7pw7K
         c/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736089440; x=1736694240;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SZYwc4vBlldLtmS7t8q5HbKKN19HNEjLlzpxgjKSx50=;
        b=elHhwUGtg4xBVLiJNLD4oZiByau13k3jUO5vJT4mL4cFVuiRr9PWYPLN58FrNXZs9q
         ozZP6uQ6sQqlJAqG42GiMsoLcTmPbwse8/GVOa2D1Y8Ro22Et8Jk8lgRmlEqM7tpQl/J
         e8Lb/2elfyyIBQVsQ2dBj9YwcbW0zHjtwG67RSP6N8mi6gZdU4VXJ5W9SDLTGzRxtwi0
         4fPfByixQwAL0WsMEOqRwgreWf43dVDwnqTy04ut6OgcfRqnOQ5xp9R4Hk+zuNVauPvS
         ZOWjkkgys/1fye41cBd9DR2ilmBbpsxk9EQ3yteHuygKpFH2aPe8y/j7gcYcGoGNCmpp
         6nzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVV/UnAulAysNQUw+JC8QVekYNDFvlDPLkY5pVsPblh/Hrwh0ZSYJZr2Lb+S1fC1VR4uEqhvgT/qjxY@vger.kernel.org, AJvYcCWZ63AsSpPxulJYI5iiYDX9B8aOSlQ9KMQJxxFALSgtNA1lildiLeRaFbMaIdnVR5lQJUG/ebmO6F99YLRS@vger.kernel.org
X-Gm-Message-State: AOJu0YzH9UTcXDKU0rZ7qX62vm34CGqqMSDQRKgsmbk1C/6nd/bSJYeq
	xVCbUqvSZbFh41qE8ufxbUNbfGBQDIPYxytlbrMnkZb5chuxm67R2OGxrw==
X-Gm-Gg: ASbGnctHOe6EVMe54/8FjyghsBy+C6IDwMUmcAUILT6jJ9jt75n0kqeQTSyYDBNIxeJ
	VJ1Pa/Ya9i1QpZme2kTCUAMAgPDZxaZCbbDayX7ADQZDROJSByEJKEAceKk9Qs1gLsvPUvUxcgB
	2Zp0WvTIoKIgOD4fZkdsrs3eW6oX1fpo8bCj+2s2xMrfIa9lomEuboqgi9OB7Tpjbflk+eoZMAM
	vRF9M6I2wVuJ1G+HOXoXUbobUkL2zoHjkr7aR6AcgBXbJwLlRsja7FU1idbwORRWBrvpAi1AnvF
	A3+dsUpuAqXpZsMf7JkjdWN3mS9OPbN1QUzewj3/Tw==
X-Google-Smtp-Source: AGHT+IHebaAAInYSXzL9iYrnBo2kfWHp3RSAI5cBP+sHWmXA2QcdnbuRh4mwWoMTcHs0UGfwg1l6cQ==
X-Received: by 2002:a7b:cd95:0:b0:436:30e4:4590 with SMTP id 5b1f17b1804b1-43668b7a1d0mr407669125e9.32.1736089439765;
        Sun, 05 Jan 2025 07:03:59 -0800 (PST)
Received: from localhost.localdomain (host-95-246-253-26.retail.telecomitalia.it. [95.246.253.26])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4366128a62asm536258685e9.44.2025.01.05.07.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 07:03:58 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Daniel Danzberger <dd@embedd.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH 1/3] arm64: dts: airoha: en7581: Add Clock Controller node
Date: Sun,  5 Jan 2025 16:03:02 +0100
Message-ID: <20250105150328.15172-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Clock Controller node for EN7581 SoC to correctly expose supported
clock for any user in the SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 55eb1762fb11..f584409e72cd 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -2,6 +2,7 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/en7523-clk.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -142,6 +143,13 @@ gic: interrupt-controller@9000000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
 
+		scuclk: clock-controller@1fa20000 {
+			compatible = "airoha,en7581-scu";
+			reg = <0x0 0x1fb00000 0x0 0x970>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		uart1: serial@1fbf0000 {
 			compatible = "ns16550";
 			reg = <0x0 0x1fbf0000 0x0 0x30>;
-- 
2.45.2


