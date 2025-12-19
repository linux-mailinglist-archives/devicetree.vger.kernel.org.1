Return-Path: <devicetree+bounces-248386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0A4CD2348
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 00:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13CA130456C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 23:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98492298CDE;
	Fri, 19 Dec 2025 23:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SsP9VRCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169F72EC541
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 23:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766188151; cv=none; b=Qca5diXMsvOXxVQKY7sRTpz8LkooWMsrmVSkcT9b2CROqe1Omz2XZCJ/8LWsYIkuxXBNDhpPJ6jtF9LIa7oh+i43ZLZxA2nUrwzemW+c9xySVjU2sb35RFV5vHiXhvGInYSpRTaKy4MPZq89ajzY3LJvPyN7G9+BKILy8J6nyPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766188151; c=relaxed/simple;
	bh=senwgVHZ2qXk5AsaNN8zLNz07/4+FS8mY8QQ6Us6GFU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XVjxbAl3woXVC5AXoGhgwIElrTbgUGv//I4KZHLLsT6VZ5ZCIoNxWwQdVhEi5QlaH3MUjrIna+DJ0aceIVvpPL5tIB3nfalp33CIUz6nbnz06njIqcOuCdRzrdsdwtYUE20cqV97qBhf/BuX1vWL/hYzluHkgw6Zhsp3GyAWPTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SsP9VRCu; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-34c1d84781bso2571907a91.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 15:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766188149; x=1766792949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MtGWyxOp+Gbw9qBD4FQ/2On8yaytmQJZt2dC/Xux5I=;
        b=SsP9VRCuZjs9TDDOue5zGz35c3WSzR4gMo+8dpecsk6vYKy/9HWpfamCrvAn0pEHd2
         EzLaqZXxn5GzBSEONsm8z59hnpQCntGUf7KCXQOtq1nkCchKq3G+G8AoYIGJVC88REBf
         EZs6s4OGXoeYk2/lVGtvydGcDEv+La67gD5fGyil/j7z3aPHMs1OVVMr5H4BBE5pxgQD
         CMUUS4q3olrdUhXPWuvS/+B7pc3f5lfou8lotrcCcYJCrMQzSEylNtZlwQH+PAJL7jPX
         qz2ijrrbpoySVUZP5c+j89sUdbQV8zMmc9Js/FfbOqJyPn3qRie/TwqRT1jOFvjpc2h4
         oxdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766188149; x=1766792949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7MtGWyxOp+Gbw9qBD4FQ/2On8yaytmQJZt2dC/Xux5I=;
        b=NIIfdKwbXWNXZAKbxsKtuRLTg4ldWfNY27gwrk+rnmU7oHM9yjlOQHP2KL/eEvNgoM
         re/oyeNpI3Ldj0WbWOVydlfNFeDjtuD4ac1/xxOgo06kVSTXh6muIXQZQDD1hpze5lP+
         jcfXYzRl2pRV8DxBSEQPCf28y6ji0Vpmp+b+QKHXzyuKZicOhJxNmTj7lsfkXw/PwUSn
         bsgXoJxzXtx1r0yW55EvybZJxyzjg2Qy3lIjMy7X4TS18A+VE/Gv4gjMaEW1shZWdugM
         g0gEsc9Cro2jLf1GV7JqQ7YKEuyblKDGFTzWRt3dEoGsM3AjcHbhQnUZ8VeAcSQPaWKP
         iVmg==
X-Forwarded-Encrypted: i=1; AJvYcCVNvhCnSD42/CrL9DMFq/6lQo2Pg9ElpkqHEVGDVfQyVdwYxo1TNRRZqPXAEqkNclO7thpsN+qsmJzI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqntu8G7a/L1Lkcb2/c7muSjWZwn5895LQP+eE1D26eZwp8Yyy
	Ly2Mhd6UoG4De20FPLDIqWBB/aB4hWzWScNTAVPZbGaLSO7FERrbYmPy
X-Gm-Gg: AY/fxX78Kson5jMCeRnT7VLH+JoIwqiP2e7mVRaKXv2J7qMW7xKLMYNK/zCkH7Pkg0T
	rfbXsgD4VG9leizNedxz4k9GQt4sFvFVTtx/YPKAyYn0rsRY/7Tnt8pYI56UU8p5JljK7DlDp97
	jzFKwylfPQ44XZyOpYB9WX+W+19tAXWP/PWoO9TJA9OHu3JT/oEWhlyxvzDLDdbb9Dd0Pd7txyg
	er+7sNotM1DSzFNwXMzZoX0kv85BdavGbFnhLjkm2KhU67yNF8M6h8AqwlA6bcdWvy/qhwZs5ut
	9oOsUhL2Hqgy5FXI4UHhp2iq3m2qrTtopBTwjhM9fXSCGpq+FaR43UyNLrU6kYbgfBoBc7b8W5y
	ZAtoUnDnHLjOxbw4iF+wIFFiumUYr6hvu+1OQzdDdPG582dtpzbk1CfBNsvSEQCwzHZu1l4jWiT
	a7w69ZYOe7H1T88gfpvbjKrl7E9ijqnTs2eRU=
X-Google-Smtp-Source: AGHT+IFbC2wBmi0W1B6xMwk1W8yXFoS4S2mxuBrMZwlr34LA80zqprtXKUYmk5HAncjYeebeZDe1/Q==
X-Received: by 2002:a17:90b:4a52:b0:340:99fd:9676 with SMTP id 98e67ed59e1d1-34e9212aaa9mr3963664a91.10.1766188149279;
        Fri, 19 Dec 2025 15:49:09 -0800 (PST)
Received: from localhost.localdomain ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769cd8bcsm2906687a91.0.2025.12.19.15.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 15:49:07 -0800 (PST)
From: Khairul Anuar Romli <karom.9560@gmail.com>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Khairul Anuar Romli <karom.9560@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: socfpga: stratix10: fix CHECK_DTBS DTC_FLAGS warning
Date: Sat, 20 Dec 2025 07:48:58 +0800
Message-ID: <20251219234858.7543-2-karom.9560@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219234858.7543-1-karom.9560@gmail.com>
References: <20251219234858.7543-1-karom.9560@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add start address and ranges to eccmgr. This change corrects the warning:

socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/eccmgr:
missing or empty reg/ranges property

Refs:
  Intel Stratix 10 Hard Processor System Address Map and Register
  Definitions
  https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/hps.html

Signed-off-by: Khairul Anuar Romli <karom.9560@gmail.com>
---
Changes in v2:
	- fix v1 eccmgreccmgr@ff8c0000 typo to eccmgr: eccmgr@ff8c0000.
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 657e986e5dba..491cf35cfe8b 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -581,7 +581,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgr: eccmgr@ff8c0000 {
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


