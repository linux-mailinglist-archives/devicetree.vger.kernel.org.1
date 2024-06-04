Return-Path: <devicetree+bounces-72050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F31C8FAAF4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 08:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4D2528A3E1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 06:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB7212E1F9;
	Tue,  4 Jun 2024 06:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gxfcCuIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22BE1CF8F
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 06:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717483404; cv=none; b=EtU8niH0FufIG/O71bmRab9dqZiZWSarrP0dx23Pu+YSHGsEl/BT3oXj1Y1ZE/G/LUZEAaK1n78BAYf4ZZ0EsuqMt7G8KLq/O3hR4eBrMWYV/k0Bc6XgZF90FX1PLFWTKCykPVtKbIxvdshUoVKECjNkwWiYEORY0TQgQWgfQrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717483404; c=relaxed/simple;
	bh=2aa68crBu/KDHO4yjInjYQzDEOU7K6uugXiJZ1PLqUs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=VTpxuXct/Q8F2INTXoJBkOXLbJ3KISZ2w1y7SlmEmjVfenIfiUdfmJ/WxvYLiF5DMNYZYLJW20QZAr3FHzrCtJoOjfplWt5Y17MeqAjJq9zLBjwXzNpq3m8zDvRIpTG7ibb6pBsOZolE4wIDga/7ABKPrzONMqq14dqvRnmA8o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gxfcCuIc; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a68f10171bdso248797466b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 23:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717483401; x=1718088201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sBxhYOUHGPOJj+Oh+TP9e12XKFk5G9K5xOSnQRpIOaQ=;
        b=gxfcCuIcrTzulVAqmA52R6qX2Q7OOl2+4RepPfmZL6wKDam/GLZRsJGKrkJ6lGNTEQ
         UZQr/QIFFAmVzzU4UDGKZX3WoS4a9KA07Jr9PuooOQBoRKoeRSguAqdefmbeTJXmyCn/
         1ut4D2JPAYG2fNDggNNeOsRu8igxP1ssbTdPZewDS2XtyzFZkoD2uimzWriF5AyjqtbQ
         Pe67oKWi0TFM0PuOp4hdHBcerqYP2YYZYcgLnqdmt7ZFYVav3K3mBSLZjRaIn9Kta5Pl
         HFxrbaOrnKwA3T5LZWAJSkpDOzepX+PzwS2T/VSmXCXl30Afl03JhgJaGEqJeo6k0sGV
         FfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717483401; x=1718088201;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sBxhYOUHGPOJj+Oh+TP9e12XKFk5G9K5xOSnQRpIOaQ=;
        b=LQKdaZdeLJy7i9hX8iXj1ELQHRKf7PC1N0z2riPws0vS/VUJU+o7rL2lF6fbn/T1BU
         JA/NN/esSFRrDr/uB0vipCTjMwmvlVNFuBYxoZfSLAUcvKB5zQO6he5l+LuWczXhrgn/
         BrKdV1ylw0iq6z0WQGlB7rvl3Ff7Hi/hqS62BFG160mdyq6N9E39u+HaBojM2hKJag8T
         rnLqDlYsus54GTZ+W9eft24E1fmQ34XOyS2qUFGtCfXtatSu02t++6nl/vf8lvENsqsh
         vUF+T8HcT8RYwiaPOeDcT0iDJrd/jHU0sTp2oWJzcD+g08vVtxcw4qKXJwTfAkoJTGJr
         jhDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXG+goXZRPFWEoUDfwmzyYXMY7e2yNS268kT0Kbo+Sztu5uCakit5GrGfbMOthzElVK3J/td57xqlWQ9ds+DtF+4JE0R+tBsTgtIg==
X-Gm-Message-State: AOJu0Yy75HgdSmAGD5tpq8XJi5bEf13p0KTz/Qjzbbf7PSJdz+oD8wKx
	WXz4H9OnOUKd9m0cS0IAZerXeFg/hs7tmcNFvfGkCY4W7ERCIqL8
X-Google-Smtp-Source: AGHT+IFQqMxzojH0qBL1dQPA5ajhEaM/7SsZT+d1V8pDXCIjCCyjz5OqW9edI1UsR6hLYnhJ0ND2jQ==
X-Received: by 2002:a17:907:7811:b0:a66:7b79:3573 with SMTP id a640c23a62f3a-a682022f8a8mr871437466b.25.1717483401084;
        Mon, 03 Jun 2024 23:43:21 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a685b935b5csm547744066b.206.2024.06.03.23.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 23:43:20 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/2] arm64: dts: mediatek: mt7988: add PWM controller
Date: Tue,  4 Jun 2024 08:43:01 +0200
Message-Id: <20240604064302.487-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

MT7988 has on-SoC controller that can control up to 8 PWM interfaces.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index 3eb5396dea22..27098f724b7a 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -105,6 +105,25 @@ clock-controller@1001e000 {
 			#clock-cells = <1>;
 		};
 
+		pwm@10048000 {
+			compatible = "mediatek,mt7988-pwm";
+			reg = <0 0x10048000 0 0x1000>;
+			clocks = <&infracfg CLK_INFRA_66M_PWM_BCK>,
+				 <&infracfg CLK_INFRA_66M_PWM_HCK>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK1>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK2>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK3>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK4>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK5>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK6>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK7>,
+				 <&infracfg CLK_INFRA_66M_PWM_CK8>;
+			clock-names = "top", "main", "pwm1", "pwm2", "pwm3",
+				      "pwm4", "pwm5", "pwm6", "pwm7", "pwm8";
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+
 		usb@11190000 {
 			compatible = "mediatek,mt7988-xhci", "mediatek,mtk-xhci";
 			reg = <0 0x11190000 0 0x2e00>,
-- 
2.35.3


