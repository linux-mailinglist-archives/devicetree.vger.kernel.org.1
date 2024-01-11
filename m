Return-Path: <devicetree+bounces-31348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FEA82ADFD
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:56:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B93F61C22346
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294AE154AC;
	Thu, 11 Jan 2024 11:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a3KtQVZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8014D14F88
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a2c67be31edso48907366b.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704974184; x=1705578984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QnyOSeliUEDDA1xBgS0BNCovekxhNMsbjC0ENB6yzoI=;
        b=a3KtQVZ+7BA9CN21+wgE8ZYcswHlkbqTWu7g5GcHvKJkgamjAGzHaDzChY2JpGK98c
         4yqqBKDE02nkRHCJJmsLi/sq6oUFZ7eXpt7g+wowCznYfMMAxNIpDUGci61t9aGI/CtI
         qUTVMcLP8EF4pXuGnAuLJynoM92XhDTp0WDmqZUmaBj5UYp4817Ut6DGbVHAy/4cxc1Y
         N3tIRCjHKdTyJwxRQ/4y7D06MR/3Bpy0hq/adOecUNNsMoIC7Edbh376DPN2A65ScRiq
         K8qYO6Y0WS1qOTTTyuqjhffQvcnLsyTloWCOUtfbnIafB0u7qKAOipYMLzRVGLC20LlE
         SAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704974184; x=1705578984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QnyOSeliUEDDA1xBgS0BNCovekxhNMsbjC0ENB6yzoI=;
        b=pglZrt6XnFpm1tIGFam9Tb90KlOqEQvRjG81O5lLJjhUwMRUCbvhYhcKqzF5d7o8ab
         Q+4o54yGwRFZ/SFgweJFo6YnC5YcXPmX36fJhrJJ5TNh+QlJY+lohSrOfY5BOx9ydPuh
         ZxLfYGyiZtsUDNJ9Ch6xeOqyfVLqeX3IMCtSLjwWUKLE9+NpX8pRWcq4vAs9xHjPowo6
         JG1HoRDCZUlYMGPijg8ldTJM1UNkdez7UYwDniGmah2mUzxVA9fK+syOO2DTalVWUWWx
         Vzpz264ExNrOCdco0OyP8gTLaSSZDKanZgzlxaP6gNqyMcJNyYJPVxwKRDPG0MXmwz77
         tAxQ==
X-Gm-Message-State: AOJu0YwSBYd4lh1mpnsQgBV8iCMPtUKk4mJDUxMMlprl8Ejm+LEGDTx2
	4xrdgVJDNY42eRZ52wo+t5mfpu9Y9kA=
X-Google-Smtp-Source: AGHT+IHEmH7/mOxp80Dn0lQRkX41YRkpI95WO2kg9diYiy3gqH0AUKV/VoRf92nhsJUyEvwtpkYePA==
X-Received: by 2002:a17:906:6592:b0:a2a:ec72:8f11 with SMTP id x18-20020a170906659200b00a2aec728f11mr257222ejn.277.1704974184330;
        Thu, 11 Jan 2024 03:56:24 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id v26-20020a1709060b5a00b00a281f88f2ebsm491295ejg.38.2024.01.11.03.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 03:56:23 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: use NVMEM layout for Asus GT-AC5300
Date: Thu, 11 Jan 2024 12:56:17 +0100
Message-Id: <20240111115617.12072-1-zajec5@gmail.com>
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

Defining NVMEM cells as direct subnodes is deprecated since commit
bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout"). Use new
syntax based on NVMEM layout.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts  | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
index d94a53d68320..a48fa913837c 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dts
@@ -181,16 +181,17 @@ partitions {
 		#size-cells = <1>;
 
 		partition@0 {
-			compatible = "nvmem-cells";
 			label = "cferom";
 			reg = <0x0 0x100000>;
 
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges = <0 0x0 0x100000>;
+			nvmem-layout {
+				compatible = "fixed-layout";
+				#address-cells = <1>;
+				#size-cells = <1>;
 
-			base_mac_addr: mac@106a0 {
-				reg = <0x106a0 0x6>;
+				base_mac_addr: mac@106a0 {
+					reg = <0x106a0 0x6>;
+				};
 			};
 		};
 
-- 
2.35.3


