Return-Path: <devicetree+bounces-129583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B5F9EC357
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 04:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32A5188A3F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 03:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133A221128D;
	Wed, 11 Dec 2024 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vMATBJWx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071C83A8D2
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 03:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733887833; cv=none; b=MmI6FbUOLT+rO3SMoou3Lli5WLcDEiCX0l5xc+dv6TdkruxttvVCCDC/lbFAvpYtjaKLoESnns34pu91E+LHVm2BQln7XAagTxTQYfQ7Td2kurOt/eWu3+hMo4sBIaxvmWY5y68TEoCVdGyNDRBPAuMXoH+9EG6EXqTyb1relQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733887833; c=relaxed/simple;
	bh=KPVIZUaYLPhhu+NT5yPD4CmhA0oRk+MtYTE4fN805/4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ftf96viEOV8Df9dARny0a3f3jd7yrqTana+Yfuu299Cryd5TRTJhe0vjmoOz0noK/FwOTMRSvs72MGHsWocBItFAjW+gDxXg0qoXqCq7tsrWrMDBk+j3itiA51I6eG5Oz3ouPnZ3HWChF18EwI3je2SEP3GIgULkxzzm4RHaHW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vMATBJWx; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-71e0351311eso491450a34.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 19:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733887829; x=1734492629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v+SqWvKMXn53ySqihikLvjixvoulHaOpfvaW+kjjCzk=;
        b=vMATBJWxEVpJYR3+JJayfGyyJYnULB8Bi28j+3caQDRLzYhIbPUDi3K5bqgcI7pc8Z
         EAzgqLqKPTH/Kp3awp57sb5Wy+IYW2hgHKyD3PvhoeA30mO4aERHVKOMmo3hRP+T7JUF
         Bz2fmwZPv5iF0yxKmcc47mX6/c7U9jLSGUDkli5adfVNztKsnlM1S8JRmJd6+9cVATxk
         ilnUrTGzpKtilB9JI2fq1qlCq60xX8Lns/hc2NKegVe8LL1NgqZEcMqXzMo31OyUOfYu
         NmemYMO4eQprDPG1VmWhAjMjQ1ztOdfhyz1C0shrL8fhCmitE0BgIVCl7dGQXml9sSgn
         F/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733887829; x=1734492629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v+SqWvKMXn53ySqihikLvjixvoulHaOpfvaW+kjjCzk=;
        b=V6a3tw+r3ZluzomelA6X384fRSdwUDwzIZEs8d+9pT5h+qLKWxK95Z0A0Bd3g4vb3H
         5YtrkHNetVBZMCoD4bjRJWOpWfBMYMZQPQ1AkvW2ksAbRzlToxFQl6aBpob5m8GnQK+h
         TvJ68lGlTO7HvOjsWEthBj+rXD0K2ou15Wnoh1BN1zo7WmawCsIezTO1juHIUtpLqxce
         QdsAUfjjR25W4Kbd7J26Rac2MQR1PvtxgA2eFfR+R0PElo+a4YezpGJ4RjWVyUnXKJnT
         9Bg3TPQVngfsNuWcUZ1Q0ra2Z00HWa9CAfRCs9+F+IICgEd/27W+7pqLmqoJwlZX29bg
         KrRg==
X-Forwarded-Encrypted: i=1; AJvYcCWKPo0KxUr/CHV0PBkGo9FjJszMIyXSuwZOwBSHQI3hGOU3vLevH+AyX13iZQSzKL79XNzNMZkjkPOz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2zc8MtRfayTGPHJv/NuB7RlHqPNJcILkOd037zeDo9tl5jBkn
	MlYCi+nDjBeww/8mggvwSjSbo2Z7tgMtgNQH+tEvH0sbScAe2UEqMGgn4rIQg/Y=
X-Gm-Gg: ASbGnctbSHJAncoBm5/omQFx2sWCLwtkFMV09IZJ0+J53k5OPoHkXL3wCCNELwjdaq2
	2T9nicbJ6SZrNivsSyTsqG5AVfM1diDw5pmKRuKVMYlVoBMifsj56jtEiDFaZDhc0pglytORLLp
	2hv0dEeR7KncYO6kFdIF6vgrN0/PjNQUB6bY8OukXzkKPg9JFFe4Zw3q4z4oSQBG4fq/3koz0tv
	suO8CYAauNFS0KUydkSx7L7afNs2o2FCfKmbqgJlbpZjzJUkkI60WHuIh0=
X-Google-Smtp-Source: AGHT+IFxuwtOuX7RSi7QuMnWBVAHW2v93lQ0WBBx/aGpBUEB+zUeX9kV14JIgbiv2kahMG99yLppvg==
X-Received: by 2002:a05:6830:25d4:b0:717:f701:4842 with SMTP id 46e09a7af769-71e19b5ac55mr619830a34.28.1733887829115;
        Tue, 10 Dec 2024 19:30:29 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f2c472a028sm996004eaf.33.2024.12.10.19.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 19:30:28 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: exynos: Specify reserved secure memory explicitly
Date: Tue, 10 Dec 2024 21:30:27 -0600
Message-Id: <20241211033027.12985-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of carving out the secure area in 'memory' node, let's describe
it in 'reserved-memory'. That makes it easier to understand both RAM
regions and particular secure world memory region. Originally the device
tree was created in a way to make sure it was well aligned with the way
LittleKernel bootloader modified it. But later it was found the
LittleKernel works fine with properly described reserved regions, so
it's possible now to define those in a cleaner way.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850-e850-96.dts | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
index f074df8982b3..7d70a32e75b2 100644
--- a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
+++ b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
@@ -45,17 +45,9 @@ usb_dr_connector: endpoint {
 		};
 	};
 
-	/*
-	 * RAM: 4 GiB (eMCP):
-	 *   - 2 GiB at 0x80000000
-	 *   - 2 GiB at 0x880000000
-	 *
-	 * 0xbab00000..0xbfffffff: secure memory (85 MiB).
-	 */
 	memory@80000000 {
 		device_type = "memory";
-		reg = <0x0 0x80000000 0x3ab00000>,
-		      <0x0 0xc0000000 0x40000000>,
+		reg = <0x0 0x80000000 0x80000000>,
 		      <0x8 0x80000000 0x80000000>;
 	};
 
@@ -146,6 +138,11 @@ reserved-memory {
 		#size-cells = <1>;
 		ranges;
 
+		secure_mem: memory@bab00000 {
+			reg = <0x0 0xbab00000 0x5500000>;
+			no-map;
+		};
+
 		ramoops@f0000000 {
 			compatible = "ramoops";
 			reg = <0x0 0xf0000000 0x200000>;
-- 
2.39.5


