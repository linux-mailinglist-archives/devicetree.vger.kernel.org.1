Return-Path: <devicetree+bounces-248220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8FECCFF85
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A5CB30EC2BE
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98631324B23;
	Fri, 19 Dec 2025 13:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YKoQLMor"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85C72DF140
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149325; cv=none; b=OFn5PUm+iWjNweCG96OxTB9XSj/la5e5ywGmBQVdZR0M88CcydJYiikxvd57zZ9ikHAdTgtvcWk8Ee6/JEunMljPLbbV1todrnS2OqgnPZPvK6v59B26liDRoth1MHg0LK/V+8JH6YIftnq1gBnMVtvEAtxoig5RMVmXIfoVKc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149325; c=relaxed/simple;
	bh=f26vqX1MsTCBTlZUhohkUiFdKOZcgzwakoC4ZMDUOYU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=svY6yfAeugjgsgUPsW0sY2x/oRycy/a9DJo6WMVAeAFfsOeo9lZPBrPEb8KK6JMN/1SVAEiIeDReAho/tUkyKnjIjy/0Ga+d6iN9H/5xJoyxFzfzLGm5/wuCHciQK5ulJmkhBhKAfMypSz/NLiUXHj+2h8HkuY5RVsc6EZxiYAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YKoQLMor; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso1715259b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766149321; x=1766754121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=24yMvMWLE20TGqIKZ+WjeZL7Jsjdd4RyEuPRvODfMUs=;
        b=YKoQLMorgCWWtcJM3ztn+6LRVZoj9lPS6VGqWVxlPE8pku5yv/7TG2zv2q1LPDu/Ju
         klb1+eBZUKPdK2q2hihESPl8UY0yup7RJi7Ft9kXeYUsMctXeNE5Zw/QkjzY/P5Z5QV5
         3ZakhefNB/cVEMtYlNbwCMxroNFWA+OxvS/mZ/+1C3C3ZChP/SDqrVzxtF69gp+NnKGI
         D4vNMr7pIU6V/bPGKziallTEgwiE2122OH+Uu4SZFdot5nc3R4i1Td3gHJjCWRPswbSV
         x93J0lGqaQI5IPjm3KDsGRJpZdqOHt/l0wNhNZydy8X/v5tQv2EfQqKhX/PcZ6xaBEjm
         u5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149321; x=1766754121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=24yMvMWLE20TGqIKZ+WjeZL7Jsjdd4RyEuPRvODfMUs=;
        b=UrhDIXcHNHP/sDaf57Tdp2S0t2uQbrghQav6H1iA8ZtBNiiUDk5dwwO5gBPkL5ACeP
         umI55pQx9ZbSSmd66WIz+L1g8YMg6fdGxACoV00NQAmYMjpYS9T22VU++T+CkmgMBBIn
         z1ws0kBg8nToGYTmOXMBw/lyv8/2OTrrE7+j5AbCKuyYr2qTBEM/Ovx1loi6QkAMsivn
         5GQFGQtPTriXCGGdyhdjsOjemzEGWiPvsZ70MDCOLEK9x1YdLGzDpyoONEOLrqe+KBJI
         gB4Qdb0tZPcohLRkqAFYGE/Yx9+9BWATcqLgQ/ZOzk+R+45+z2Shkbfzq3Ya2OegB3UJ
         XaiA==
X-Forwarded-Encrypted: i=1; AJvYcCXzZxeyU+02Th97vh9XMO95XJpbPuW7UqflRSDaYFON4/BFCRzgVOSXp5rgwmmZeFiWHzMTi6wV5UwL@vger.kernel.org
X-Gm-Message-State: AOJu0Yyda/3w3fowkTn6EmRdt8xySQZ9RObUFy8e76eQNb8kgOzXVBkH
	LynVRa5EFwRd3MXyU5x3cm1fwdRY98Ib94EoZ2E5kG+nyIMGVLZapWKe
X-Gm-Gg: AY/fxX74RCb3KvhN7UcsURelJ6oCkv7Tmlfa06vJ3pzxlG1gYEVUv8IZN0dQHKI71Gp
	hSvpCSb8EMD1sS0lBEfp+JYvZdiSqcYwVCYXtL5/vsyUQQF5BhDs20IWtVDmKOMl++DB6MPkEjO
	+WtqTrF8uJKOg9ii58KZhSZWlN/krpFs+DfbdESHZxN1N8BpOZ+pYaMt2pDzxmBN5XVkfC8kZzj
	QFcOXpBLnWsjP2DcsR7F+bQ0tItVGmotfxFC+jYyp9KeRtd4eIFbG+hOm4WE+fnXPpsHOEthaoY
	CU2oeMxMPc0eyu5LcjJVk0q0IMPKJXi5FlFvFIXgzM6JVHesSfp0QstLO6ZNnH8bK4rfMnulbHL
	6b8yyDx10r+vEpzX7ciS05OAtAzbdsPmib3LQ+2Q5Gzez01gfmFjfMiwdu94NsFZXq9m12nNsLC
	gruqj8GdXf1M/7g4xFT+iihG7XyI4iHHnwCdE=
X-Google-Smtp-Source: AGHT+IEBqpXOFOWi9FGHEozwoDXLvtpUzvbmhTqq3flj5sLnIKGcxLY/pvvsjMhuIZGpBau79KLMHA==
X-Received: by 2002:a05:6a00:1d9f:b0:7aa:f791:4ece with SMTP id d2e1a72fcca58-7ff6430ce50mr2560201b3a.11.1766149320567;
        Fri, 19 Dec 2025 05:02:00 -0800 (PST)
Received: from localhost.localdomain ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e797aadsm2401152b3a.61.2025.12.19.05.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 05:02:00 -0800 (PST)
From: Khairul Anuar Romli <karom.9560@gmail.com>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <karom.9560@gmail.com>
Subject: [PATCH 1/2] arm64: dts: socfpga: agilex: fix CHECK_DTBS DTC_FLAGS warning
Date: Fri, 19 Dec 2025 21:01:54 +0800
Message-ID: <20251219130155.13727-1-karom.9560@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add start address and ranges to eccmgr. This change corrects the warning:

socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/eccmgr:
missing or empty reg/ranges property

Refs:
  Intel® Agilex™ Hard Processor System Address Map and Register
  Definitions
  https://www.intel.com/content/www/us/en/programmable/hps/agilex/hps.html

Signed-off-by: Khairul Anuar Romli <karom.9560@gmail.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 0dfbafde8822..a977402cfd10 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -609,7 +609,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgr: eccmgr@ff8c0000 {
 			compatible = "altr,socfpga-s10-ecc-manager",
 				     "altr,socfpga-a10-ecc-manager";
 			altr,sysmgr-syscon = <&sysmgr>;
@@ -618,7 +618,7 @@ eccmgr {
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			ranges;
+			ranges = <0 0xff8c0000 0xc400>;
 
 			sdramedac {
 				compatible = "altr,sdram-edac-s10";
-- 
2.43.0


