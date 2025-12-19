Return-Path: <devicetree+bounces-248221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2851BCCFF9D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8922330F0161
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E45324700;
	Fri, 19 Dec 2025 13:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="doJBWl7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647233242CC
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149327; cv=none; b=sL8SC9iE0ypWfq5YIB5jubT/EqaG3Q3/SThwd8g+2n2PShVssN7H+lw0IYLr+9625/KZZH8w2whlNn3N0Wcf3Sr5gLoHJ+IvXVyt9npYD1FKBgg43xEGOVMbQJw0IO6m82YcvX20uzBRGZSSLIp/01T6AjF9aopA65dF40uZIuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149327; c=relaxed/simple;
	bh=iTUKbokLySiAuL/JB1R0e+SK54dkKVZR657P+V2Vwog=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IknZwp5BajNSPS0v8hfkcbeSrprQpUB7y1VQrWmYZbOb+gWBSSMNyCuNFaxllvqr6f6dVUry+96KbbkFUyIev0SpDarxMJM/s/newZbHnT73oNK8qvkDhzhWxw7cd5bifaWNWXFy9hCYPR0SlizUAzYoEB9lXFHLpgyNhNbpdvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=doJBWl7h; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0c20ee83dso21455285ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766149323; x=1766754123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzHX/1+gO7BOmCAtaoxauQ4HekZNBtK84PsIjHOWEXY=;
        b=doJBWl7h3eOK4w28PVJqzb4BBPDTPVDOvlTk3Z21de0M0wCfNt3YQkhI8S/OhKfSL9
         Fkslv5K4QX8xDbuC02RuRLHLsYF1rwU1CX6lcxPSST9yx1goPNKaI78/G9QnTYntW7n3
         sSMgxZ65TMnfEQmqyugyt14P/GFu5xq/XX6rIhHFFw3EwkFr/JWWkLLmX0uJDLxESOyb
         Ua0YabXjwQDjpg24RH3k9i5vRsn0eqr7A+yE93MLSRos5zuQlgXvdNnrC+W5D6JqhC8N
         G3gn28Jg8OuSZl0Hm/2A6uxupaqerpW5ehX/oNg7DHGXp2WgEdNwVrcwa+YphcOwNQqZ
         bKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149323; x=1766754123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qzHX/1+gO7BOmCAtaoxauQ4HekZNBtK84PsIjHOWEXY=;
        b=O5vAxWqcm6FyddifhGXpqCP1Ha1UsOM2xO1awaJFDR3QDsU+FBMHLA9D+mJwKkoHQE
         0pvJUdeA7F+N3KOoxIOrOMlzZNdcOcGjzTPfae1jIQ6WtMUaBvpEmA54cyZAasHxrh+a
         /RHK+bRNr+jUw9bCP4xmoEFGDw0ntWwh8dGiPFBKVW1AmA70IbhS9s4ztICHDt4L0qWX
         a8Zyh0XlzRieaHX37gvOmvRFJ7sNTXJjbUfRI2RjSH/ZhJMTHWSTo9zuZdp+yqouka26
         IEDwdM3T2zBh5fHCMYqLZYThpWqvRwQ0Bawd8FFThKEyzWcWXMhBBmnnDBH0jpzQPKJx
         w+QA==
X-Forwarded-Encrypted: i=1; AJvYcCXTKm1DQTb2JqhE+cdY6VHCXC8rRacq9AWiTGoP6rRx1bC/RNaM2XWO5t2usaTlhc56AJ/OjG9/gnhz@vger.kernel.org
X-Gm-Message-State: AOJu0YzhRHMf3qDT4GjzjmwTMARhWEmPFtbt+41NACXDpnUbOzbwsjCu
	g0v7D9vxK7al69v+umEi7ysodITr6Acgq+VGAoMztCKcrBVxTVgI7vBd
X-Gm-Gg: AY/fxX6Qp4AJ4Lh9TSbYF/sSfRaolEw6/yjVQua1ORhbVrYpjPvO08U+1JYZCdNK1Zr
	XVsVjWpLEzrNV+3EGwf/MC9clEAFE5tY3FHsCIcRqRpRT4eocsng9oaZzFf3mc3ZzIzzMuocvSl
	OC/y8XKBgAWjjgdHMqPMwfK5qZBOuZRJa7mXG1XdpQdB0Au+AhEtkl/SJzLRCclR29/8a/u5Dce
	pP65Gf/xruemuBxReonSB0adk1ovMEW9GC3Rt2zfuNmaQEGQt0YklP0ONlG+YTxovCHgMWre7E7
	V7KItGNBRzywUpjL+40OvDYtq6ESBrAxGT3JIvzNCiIH9tP39z+iCTttX5xydGL2LAoeIGpe3td
	3xkrqMkMh1Y2dMFUvYcAz+pz+trWQ76Bgz7DR38FCwt2U28iObMrSI1vs9TrB4erEWm0PrF5N/J
	ksiVLrf172Vuff6leGxdyD10OiLJ7BB7QpifQ=
X-Google-Smtp-Source: AGHT+IH6RnvVFhzYGelO2twosqxpIhPLA2JRk5W/fh3hrpSTiy3VQvGIWh9tA+JJOCWbU57KnYerYg==
X-Received: by 2002:a17:903:1b04:b0:2a2:acc7:f1ee with SMTP id d9443c01a7336-2a2f2527a64mr26524535ad.21.1766149323416;
        Fri, 19 Dec 2025 05:02:03 -0800 (PST)
Received: from localhost.localdomain ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e797aadsm2401152b3a.61.2025.12.19.05.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 05:02:02 -0800 (PST)
From: Khairul Anuar Romli <karom.9560@gmail.com>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <karom.9560@gmail.com>
Subject: [PATCH 2/2] arm64: dts: socfpga: stratix10: fix CHECK_DTBS DTC_FLAGS warning
Date: Fri, 19 Dec 2025 21:01:55 +0800
Message-ID: <20251219130155.13727-2-karom.9560@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219130155.13727-1-karom.9560@gmail.com>
References: <20251219130155.13727-1-karom.9560@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add start address and ranges to eccmgr. This change corrects the warning:

socfpga_stratix10.dtsi:584.10-642.5: Warning (simple_bus_reg):
/soc@0/eccmgr: missing or empty reg/ranges property

Refs:
  Intel Stratix 10 Hard Processor System Address Map and Register
  Definitions
  https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/hps.html

Signed-off-by: Khairul Anuar Romli <karom.9560@gmail.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 657e986e5dba..6ce4b8e374d8 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -581,7 +581,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgreccmgr@ff8c0000 {
 			compatible = "altr,socfpga-s10-ecc-manager",
 				     "altr,socfpga-a10-ecc-manager";
 			altr,sysmgr-syscon = <&sysmgr>;
@@ -590,7 +590,7 @@ eccmgr {
 			interrupts = <0 15 4>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			ranges;
+			ranges = <0 0xff8c0000 0xc400>;
 
 			sdramedac {
 				compatible = "altr,sdram-edac-s10";
-- 
2.43.0


