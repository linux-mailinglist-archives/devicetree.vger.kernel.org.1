Return-Path: <devicetree+bounces-67141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C078C6BF1
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 20:13:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBFA21C20DF3
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 18:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBB6433BC;
	Wed, 15 May 2024 18:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nlx76p6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE00158DB2
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 18:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715796817; cv=none; b=r3FmOSJWtdIRcjshYaJtDAhzTCvmD5F+dc/+qWSY9D/jPR7L4UMdQdKO9wu0DBRpHSaC+xL1SuP2Ew4gAtjKNthPY+du7AmX8Np0oXm9BuEFBSgseHObZ2aOpbasAq+e0yIlW3zX/NiyIFOUDMqgMQ4/raSfq8Oqdb3rlTJx/6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715796817; c=relaxed/simple;
	bh=YSgAc8qPN8nfKDx0tSzSbiZ/RTmccxDUjlHCSNbLzCA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ehozh4CYtwS1JsY1DFQJt5k6sfT4TikSKZYScvfOsCeFybP/+XjDre46jongxJCeuAe14B6ml07DObaqaoyAb0RqE17nb0ZHSllZQtxP06Ax5GLoHNOzElset6FLFjdxEABT9wq7c7/HB15jql4seCeJQHxXs1KTL+B3lLukWgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nlx76p6T; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51f3a49ff7dso9417819e87.2
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 11:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715796814; x=1716401614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v/Aoflc/DGDm8/A2kCo2iDxhhIJpaobrE1YRaQE+ZMw=;
        b=Nlx76p6TwzaFQWY5uVBbUNP8XMnB1sk0yDC6BhZBvpaP7u76pWhbhE18zue9AWO3dg
         ps3Zv2g+HZ+neNw0oTpZix1vlcl27JnorrUyrDlReRoCJR8BGDTSYtQZRgjE1Q7U2LoM
         9Gj7Sz7PKYs9prz7PDdtXsKSjJQ/09+Ei9ilout2tcZPBBAwE1Y+bgk1fYdJVh5gLmR3
         zQxaDRaiXCWQwCX37Wfyt3C/+a98OYtmRrTJVlCCGrYDqfFeTepcGBTh/MVBxhDC8ioU
         soeazKx1KYvbe7uAfoC/JXlR23XAkFOV4jstK6SjkBGS21l2C6CR4XRqiomO4xik6Qhj
         /fzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715796814; x=1716401614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/Aoflc/DGDm8/A2kCo2iDxhhIJpaobrE1YRaQE+ZMw=;
        b=UMrfIlD2Rhwwit4mZdNFQLoin8Fc+9P5Q/6OYZ3uRlUQW/WmimMKn+d3w40KtFdt98
         ymNGxKDLpUzNxQOdGiCh7aOfL8yuvFiMZk2FxhQMuBnEdr+RNpGkveRh7hV8nq8pML9P
         oouV0I1YL12zm5OdIvjBgR5sBHhpvBA4WGN69GvG+cA/26W56yyeevOyC6lMDZU1ftVZ
         0h9dwHm9fdqNbI88wAf4qen4tlgv8GKrbu0F+Muzb1p/8mLZKPjuea/6fa4MaDNDVA46
         iItu6SyAYxO3EFxDR2mUmBJcjKQ31yDh16XuSp1XY/3nMqn+WxrIqnqXPIQjgSgfPT/c
         Bb4Q==
X-Gm-Message-State: AOJu0YxHL51rBGTPOwocfhvR8Ee/9lsEuGmBZLxzEavYdZAVYAyLz8qg
	4B0Mo+dsbhaalMFT6wfBCNznLY+a9Vfm8ePEh/CDpP2QABqmemCgAV/a4oZSGPs=
X-Google-Smtp-Source: AGHT+IH0DL/EZTEwatYC8DJpe00eB6UvK4nSHBG6/nHECXasNwsZqxHRnRIcHDaAdlv7YO66hHZuwQ==
X-Received: by 2002:a05:6512:1086:b0:51c:d528:c333 with SMTP id 2adb3069b0e04-5220fc7d748mr12710033e87.20.1715796813905;
        Wed, 15 May 2024 11:13:33 -0700 (PDT)
Received: from localhost.localdomain ([5.13.174.222])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733bea65aasm9391992a12.5.2024.05.15.11.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 11:13:33 -0700 (PDT)
From: Beniamin Sandu <beniaminsandu@gmail.com>
To: devicetree@vger.kernel.org,
	dinguyen@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Beniamin Sandu <beniaminsandu@gmail.com>
Subject: [PATCH] arm64: dts: socfpga: stratix10: add L2 cache info
Date: Wed, 15 May 2024 19:12:49 +0100
Message-Id: <20240515181249.296131-1-beniaminsandu@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This removes cacheinfo warnings at boot, e.g.:
cacheinfo: Unable to detect cache hierarchy for CPU 0

Signed-off-by: Beniamin Sandu <beniaminsandu@gmail.com>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index cbbc53c47921..0def0b0daaf7 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -34,6 +34,7 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&l2_shared>;
 			reg = <0x0>;
 		};
 
@@ -41,6 +42,7 @@ cpu1: cpu@1 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&l2_shared>;
 			reg = <0x1>;
 		};
 
@@ -48,6 +50,7 @@ cpu2: cpu@2 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&l2_shared>;
 			reg = <0x2>;
 		};
 
@@ -55,8 +58,15 @@ cpu3: cpu@3 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&l2_shared>;
 			reg = <0x3>;
 		};
+
+		l2_shared: cache {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+		};
 	};
 
 	firmware {
-- 
2.34.1


