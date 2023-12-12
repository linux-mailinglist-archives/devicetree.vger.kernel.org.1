Return-Path: <devicetree+bounces-24185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 555F880E534
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA003B21A99
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA6F17985;
	Tue, 12 Dec 2023 07:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iQuL0XEO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEE28F2;
	Mon, 11 Dec 2023 23:54:21 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-286b45c5a8dso5576697a91.1;
        Mon, 11 Dec 2023 23:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367661; x=1702972461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ub1Mj5QhW4GYsiqkx+k8Ak5A4JATw8yMZFp7nxSVbQ=;
        b=iQuL0XEOdydTpikhEh/l0J2TzMKMJpjShAkXrinYqfXMYaGutiFGxUXKKcsx4sCu6n
         fbEZpRlUEslvG6m7a1vwNht02YG35RtvydWsV/J5TQ+G+BN0To2RSWFly8SfXcqSplxB
         nY78zz5ifkbwdNQkp1yuncq6E/4mGc7NQGUOJPd6ZtlPrVwT1dk+qSPJ3JDBx7z0mY83
         k2F8c85cUKWkJczBv1oPCFNPHTrHiDssJmX9YOGWrbRb4OdbvQtnTHAJcaOCE4iUClXe
         iXv69txIScnURvuEB3+mrPndOQqfgGFhq7Td5g/uqbMUDJFoSFRj4tt76T+0AGLMt4o9
         OQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367661; x=1702972461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ub1Mj5QhW4GYsiqkx+k8Ak5A4JATw8yMZFp7nxSVbQ=;
        b=COzRZ/hsCutHB6SkA65EnY3O0aqlHyId6DZ/e0IHrb/0Yct3aMsRoun8HjKc4YX7PE
         avE5NsCjldQwtBtAjxZXtI0D8ZPLfVMV5ynJErHZTI9ZjpOw//Ur2j9dR8vpVLeZ8DPK
         Mym3HqQX7Sfuygcnza6Yp18wdH7vylThymyf6a80b8hlg55BHNnUlWjvWkbWhxpYgknZ
         sIzAPSG1iSjPu/u6HTJ+NoIz6nHQ5MfjEXXCQtGNe2nmkbknVeC+1cIr/LlKgGXXX61J
         2kxwYgkf2bybxVpybk2BNUWeaA0gLPRs8K+Py+G0xpzSvlewEW3SaSiF0crvqHxu+BNO
         jSig==
X-Gm-Message-State: AOJu0YxZPFz8qrdNeYugipi5mYVRfWH4ovwpWUsw6W+u80fjBN6qzeyY
	j/vgtHRYnHhtJW8uW8s6uo0=
X-Google-Smtp-Source: AGHT+IFc2GRXDPOs0KJgpeLIDeiYAzGM8hIgYjADbg0H7JznPz1hDW7A0FKXOTQVVBxbRjK3yXC14Q==
X-Received: by 2002:a17:90a:e2cc:b0:28a:c6c7:1eb with SMTP id fr12-20020a17090ae2cc00b0028ac6c701ebmr148300pjb.86.1702367661194;
        Mon, 11 Dec 2023 23:54:21 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:20 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 06/11] ARM: dts: aspeed: minerva: correct the address of eeprom
Date: Tue, 12 Dec 2023 15:51:55 +0800
Message-Id: <20231212075200.983536-7-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the address from 0x51 to 0x54 of eeprom on the i2c bus 1

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index 783d4d5a8f3d..f2a48033ac5c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -123,9 +123,9 @@ temperature-sensor@48 {
 		reg = <0x48>;
 	};
 
-	eeprom@51 {
+	eeprom@54 {
 		compatible = "atmel,24c128";
-		reg = <0x51>;
+		reg = <0x54>;
 	};
 };
 
-- 
2.34.1


