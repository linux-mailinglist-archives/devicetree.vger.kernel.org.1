Return-Path: <devicetree+bounces-157326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29165A5FEB4
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 18:58:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 881C13B36A9
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 17:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7CD21E9907;
	Thu, 13 Mar 2025 17:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D96wErnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305981E8327
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 17:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741888684; cv=none; b=jCWoQsJT28C5TVSpi4FWMSB4ki6PHy4arOTZeFZrr7eyepRamHZtyInasefpz8leiV3jSadbvapm3e3e2KUoqkf7cxZ7OsyyR7hvTzg5T6NX+RviWRhFaOIi+CfoLVrv3Rq+ENS3x9dlXbXr/Pkn/Kd/r+Amlwxh24HfTe0WHxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741888684; c=relaxed/simple;
	bh=DggWzrFNLfD5O7TVhAetJ6h0j3RYwhtWrsdPYbFhBTU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RmQsAMqFnqGq8rzE5Pb9UYbp1Plla7LlV7/ox/HiT4YuFNKT39YkXSOjBVk+L2NTFAziNCuLNkBsB/qz2plyk9mvNrErWAbifMzjTY3kMOvojpQTEsu4oGUjTo4ypcf7cTM2Vi0O7OZR2QYGkor3U6HDwkkllgmUlF/8aTUFxs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D96wErnB; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-223a7065ff8so35428265ad.0
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 10:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741888682; x=1742493482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t7v1Qkb8L6FlMwponX2mZyIWEvjJH1SZ0cHZtJhckdo=;
        b=D96wErnB3nu8bjPq3P+8VkBHFffIfEYBrizb9wQ0DYmBMrqcYQAIeJHHaOfAp+LG5b
         WsiEzEK5Za1Bc7fXrSqX5eNqB1Hh/uoDR7jQkVgQIqKmHbGOL80IzFHHq/DIad7VA3pU
         IGWKKKUTVEXVjXyk3WWCAvhI7+fu7d6t5fh7753Z4fI9Wj9DxmlN3YdkSOs0gWPO8F4E
         0opWMAkrFZvdhUd7FOC+WeVOiln5FwcjENzw8wEzjiTievRnRaG2jfL/fWNvhZtxOpXo
         gG4Oi8CUt6xTDo8OhUOWuZvy3Pi9JhxJZfP3QDgvKCliKDtGg/6b2cHfm8OqTYwJesGU
         bCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741888682; x=1742493482;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t7v1Qkb8L6FlMwponX2mZyIWEvjJH1SZ0cHZtJhckdo=;
        b=Ed1DbWvtKdOlOSb+jEEyubv//9nauNDUtuEAlnerL3y3vOgOz91Lh0qoopRCWbgqpr
         qYGi/e5HFmE/lZfDo1vH0ndLK36Jan1beVMwnWU6sarySZxvusxMz553qpr8ai5e8N5m
         XV8w29wUl9tVIqEq2TRxcBN4v3MqDzaTICTj5wBZs1l/c9m260AjdWDKIniIuVO7AI3G
         Hqqzj6wey7GYjnnMV5ORf76K/U8klxAOHROfjAnDkKyRmp19XmKpUIoGVLBaXJYTMztR
         azrQEOEkkJC4VyoNe5netrqfbxbqodMNNVnNdCX0cntpmMKqFs5GywbqEhtC2Cz8dMpE
         jYbg==
X-Forwarded-Encrypted: i=1; AJvYcCX08KQq9eahH/Vk05Sgqr5e2m1QQUmoAeUWCIYwV9YOT5bY+tURIRlIrppu6Lq0/LrIkwVDfjRvRgCq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg3vncmQDJbiemEdBkVd6R6nZqdPiiBxdnkw60Am6TlGMuD19X
	GlxdrY9sZwALzUZKbpK+TVKgzLTWThXIzxgYDd4vOmFubtMtxj5C
X-Gm-Gg: ASbGnctUOWO3uR2vU7HOmQz99X1SdrOiLCeWJeNJN/AHy/b2l/ZkXMsDfD8U3I6b2aR
	UShKPXwCxBYxPXgnTOLbGatO7HlU6JdmQOUB25iMr+kAk1VmcK++dSk+7U26Cx9kRhlh3D3Nm4B
	yMZwdrF/ZlML1Wa+MDDdeZbIaCZ+dSU/xaZ6dm063S/kVWiJ2ymB5zpZTxs6HTMCg3o4Ao1bqIe
	TjPvRpufhR3k+Gu5YRXCOuWBYojtJkvxRtKgYPHZcBCEMfvdXBJewlMt3Y6luW4umRkLoX2AtiQ
	cCsMR7eVnE1ZA+0zZuCTg5qvUwORAhwfCOAe/kxXs5XtruL/SlUWkqZR7WQ=
X-Google-Smtp-Source: AGHT+IFRRUvqj0O9I5WXVWC/ciIqdS7Vqabcfjv6S8Y/Ld1N1H21yqO9vl98/qGFXLxeYxTxDkE4+g==
X-Received: by 2002:a05:6a00:2e17:b0:736:48d1:57f7 with SMTP id d2e1a72fcca58-7371f0d6230mr500593b3a.7.1741888682280;
        Thu, 13 Mar 2025 10:58:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:abab:f7ee:5b0a:8554])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737115749f2sm1632720b3a.80.2025.03.13.10.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 10:58:01 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx31/imx6: Use flash as the NOR node name
Date: Thu, 13 Mar 2025 14:57:52 -0300
Message-Id: <20250313175752.1532299-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to mtd-physmap.yaml, 'nor' is not a valid node name.

Change it to 'flash' to fix the following dt-schema warning:

nor@0,0: $nodename:0: 'nor@0,0' does not match '^(flash|.*sram|nand)(@.*)?$'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx31-lite.dts         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-mccmon6.dts      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx31-lite.dts b/arch/arm/boot/dts/nxp/imx/imx31-lite.dts
index d17abdfb6330..630f8fa69ba8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx31-lite.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx31-lite.dts
@@ -157,7 +157,7 @@ &uart3 {
 &weim {
 	status = "okay";
 
-	nor@0,0 {
+	flash@0,0 {
 		compatible = "cfi-flash";
 		reg = <0 0x0 0x200000>;
 		bank-width = <2>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-mccmon6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-mccmon6.dts
index f08b37010291..bba82126aaaa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-mccmon6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-mccmon6.dts
@@ -279,7 +279,7 @@ &weim {
 	ranges = <0 0 0x08000000 0x08000000>;
 	status = "okay";
 
-	nor@0,0 {
+	flash@0,0 {
 		compatible = "cfi-flash";
 		reg = <0 0 0x02000000>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
index a381cb224c1e..2587d17c5918 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
@@ -854,7 +854,7 @@ &weim {
 	ranges = <0 0 0x08000000 0x08000000>;
 	status = "disabled"; /* pin conflict with SPI NOR */
 
-	nor@0,0 {
+	flash@0,0 {
 		compatible = "cfi-flash";
 		reg = <0 0 0x02000000>;
 		#address-cells = <1>;
-- 
2.34.1


