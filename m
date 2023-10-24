Return-Path: <devicetree+bounces-11151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0BE7D487D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:26:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 953C9B20C7E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EBE13FFD;
	Tue, 24 Oct 2023 07:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g32Zahco"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B7B257D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:26:17 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7E23B7
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:26:15 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507b96095abso6177983e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698132374; x=1698737174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SajmAecm5mKN7RvhlaA9mXLu4gwidk8OPT5kHbgM5i0=;
        b=g32ZahcolAkOc4NC5ILk1TvN5ulLeE8LczpuZGEKNKHq83vgtasFr0HkpjFX/KFDwG
         +KyBCADaHND8RSnvWBh2jLDUqU+08COnjMK8ni3Im6hZX2+3d2SLlFmiWanZLffoIOhB
         bb4tBOXPyG2mbwvuqPBqrFxz4D1p+jtbqJ2S21AZuCSgJ/JO7o0n8O0abC3TXBjQZ4gv
         IgRTcB96wAe2wggARbJoCITrV12l0gehEeVUXurzEbfiakNygSOC7I12MLsF8i5sPGTw
         qL5Ph0OUR4tdeHiv8ZuLak5R3DchRHK5E4DNb8f+m/jHC1tKVtg3Knzpj/HAkhFcwgol
         VQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698132374; x=1698737174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SajmAecm5mKN7RvhlaA9mXLu4gwidk8OPT5kHbgM5i0=;
        b=tweziBsHYytRTj0b2SdPbSwsml5Wh4Lr0OPz67+S8Es8cuBnSl/+PJoUecdKAMl0ke
         6dNZBnHOcvdJf7qbb+o2zdUT2+HDS8KTnwEO2+NE7L7piv6YJsHFk5J2mi/dp7hTaoIJ
         wFHQO03r7GBfpHte9l5Rh2L8Z2nUNi0k+lRloWpYn+Js3oGx5b38BHaPnAN1DDg1Axsp
         XBdaNkB+9Re8uS4l8bK5Ek19xIuAQ35DKff0958Obz4QZzZgbj2wLKOdfnjzjScvMhRk
         q5vXThw5dSeymPWX4zomeBsS4ff3DDlnsggCZUdNoYDhrcfFZLDUyQ7+EOyLNvAJij7C
         YcyQ==
X-Gm-Message-State: AOJu0Yz9iwYA85McOeZQ1doMWYdg1KNxmD/hhuw5XvI782tC6+B1wIrO
	O3JrmBXIsv1jwe5c38fgCIs=
X-Google-Smtp-Source: AGHT+IEdz3/KwH4BbMVkvNMeixr/iYC5VfLJlHE9SdwJNw+r8DaPrabm24NtRwxgkaUHKPS1pXsNQw==
X-Received: by 2002:a05:6512:3b8e:b0:502:ffdf:b098 with SMTP id g14-20020a0565123b8e00b00502ffdfb098mr10171898lfv.6.1698132373930;
        Tue, 24 Oct 2023 00:26:13 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id t22-20020a056512209600b0050097974ee0sm2028120lfr.224.2023.10.24.00.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 00:26:13 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rani Hod <rani.hod@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Set switch ports for Linksys EA9200
Date: Tue, 24 Oct 2023 09:26:05 +0200
Message-Id: <20231024072605.32517-1-zajec5@gmail.com>
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

This patch was developed as OpenWrt downstream change and was recently
confirmed to work as expected.

Tested-by: Rani Hod <rani.hod@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 99253fd7adb3..2ba5adf2b7e7 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -47,3 +47,41 @@ button-restart {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			label = "lan1";
+		};
+
+		port@1 {
+			label = "lan2";
+		};
+
+		port@2 {
+			label = "lan3";
+		};
+
+		port@3 {
+			label = "lan4";
+		};
+
+		port@4 {
+			label = "wan";
+		};
+
+		port@5 {
+			status = "disabled";
+		};
+
+		port@7 {
+			status = "disabled";
+		};
+
+		port@8 {
+			label = "cpu";
+		};
+	};
+};
-- 
2.35.3


