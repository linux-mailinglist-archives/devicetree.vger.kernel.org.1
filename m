Return-Path: <devicetree+bounces-66009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F335A8C0E83
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77DD1B23638
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8D614D704;
	Thu,  9 May 2024 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="st/At1eO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36A514D293
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251733; cv=none; b=RnrjNyQsIRcjxASO3zXwbnSQJhDAlf99Mu+s7t8UZYpKM3iRWMh7cph1bl+6MAk1wLkKY1NtpO0xxUjwYJlUKsv6bMqXmeMjdRLdKJl9w5xpO6Z7JP9owLl1qvNQQl2OYXuehJKxmqsxh/eec8/tXGq1o5xZgjYy5FgWTdBWAVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251733; c=relaxed/simple;
	bh=8s5CSyd/XLbgiSPGylu8EmjQ7QDKYBFmeE5ErG7toDE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pTpjaTXkmj1+4//35AVUdUXnVJ5Dk/MSTKp40rtbMBoJbmYuy590O4W63VNP22eTyXjfxdc133HChqXekxVi3nI0s/29g541kAcJX9tqwMWfCvVWSHXbgj5hAykui+xGkkwCSZqEK9+P3McMmUM/avc8/B1NpkjvM336uorNitY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=st/At1eO; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-51f1b378ca5so1181239e87.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251730; x=1715856530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxOuwvgu7vIPeq1UiZIJt6cAqtzNCiq0jwfBAlXCxvg=;
        b=st/At1eONzpsPXyX90y6VQg6nA+2380zLAIGKDbHwmKwdnoxyErSn27MkafDewptrh
         pt68jTdlF+jmwdvledZTQMfoS2Q6dABqRE9TEUIy/kpnyD8SO1BTSQA/M6nC1wL35+2D
         QwHB/NZnhMbh9J/dbY5dn1yqlxejNZDG9AGx9FQKNt9UQfWpdFGxDpJhSy34xyMTrV4N
         jymlTtaSzc4ZTciGK/Q8g5eeopHPG0vZPrEJJPpMbX3mjMVyTIB/Yvsl5lcktshXeBj8
         kMVC7ul0gbIpqZ/aXgwSe7weuU03YT3JXcuw7s1dCh0nQc00nF6/OX6X4KcgVOSbm5Tw
         EepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251730; x=1715856530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nxOuwvgu7vIPeq1UiZIJt6cAqtzNCiq0jwfBAlXCxvg=;
        b=Syw5xZCE4Zt3baRSu6UGM3Qqj4siMBrOa1ejJas51p5FvFe++CjQANqMu+DQhwA/de
         WBBolaHa0xqaY6x5iIf4EkR6VQldg6GC/lFxpIdIi9T5zYc69O2L6izW+fT5jOW8U7o9
         BMWebikeZJbNtEpIoYJwTGc143JKNuyJ1k2/8o3ZyYPduKLEtnKQpu5l8hJx7qlUskrQ
         /9TxVfG6fyiAsjIp/ppMUymQVxmmRTk2oGUUL4BxyFdMIyEUvfWz23ZtqzWwZOPCMH7d
         gMNEBDM7Ubw11VagsZx4I9JNNzWnNGgydN8OkzYl4D+iWPOM3t6chFQVgeRtzYYam/lk
         VpXg==
X-Forwarded-Encrypted: i=1; AJvYcCUj0DuFIuyQ6b9i8n1HjQIjF4Yt0h/SHkvUplD9WzrP/61+Cej+0IoOuDp0eN2lWpkKrGwXotjnmUDpv6UhKxZ+uVPgiE2CZK8Nlg==
X-Gm-Message-State: AOJu0YzS078N3SZg7XKWEx3NK1aNeLnbaYTnNLqMr3UqzVXXPPeIWqqb
	rwWBUB8hk5Efd1QS0CBTTkAUujnmGyOsjUXAynN0Z/kiONskSvDLgmQ2vew2PHg=
X-Google-Smtp-Source: AGHT+IHLD2gIMOkPBD+A9kauwL3dxUht5OhDxERrvQNI9J20Gmyp3rqdIBVZJKilkJXzKEKqkqbJiA==
X-Received: by 2002:ac2:5986:0:b0:51f:6223:21ff with SMTP id 2adb3069b0e04-5217c760a08mr4174927e87.39.1715251730109;
        Thu, 09 May 2024 03:48:50 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17894d85sm60195966b.72.2024.05.09.03.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:48:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] ARM: dts: imx28-tx28: drop redundant 'panel-name' property
Date: Thu,  9 May 2024 12:48:38 +0200
Message-ID: <20240509104838.216773-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
References: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Panel timing bindings do not allow 'panel-name' and there seems to be no
users of it: neither Linux kernel drivers, nor U-boot as of
v2024.07-rc2.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts b/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
index 5485fe118dc4..d38183edf0fd 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
@@ -323,7 +323,6 @@ display0: display0 {
 		display-timings {
 			native-mode = <&timing5>;
 			timing0: timing0 {
-				panel-name = "VGA";
 				clock-frequency = <25175000>;
 				hactive = <640>;
 				vactive = <480>;
@@ -340,7 +339,6 @@ timing0: timing0 {
 			};
 
 			timing1: timing1 {
-				panel-name = "ETV570";
 				clock-frequency = <25175000>;
 				hactive = <640>;
 				vactive = <480>;
@@ -357,7 +355,6 @@ timing1: timing1 {
 			};
 
 			timing2: timing2 {
-				panel-name = "ET0350";
 				clock-frequency = <6500000>;
 				hactive = <320>;
 				vactive = <240>;
@@ -374,7 +371,6 @@ timing2: timing2 {
 			};
 
 			timing3: timing3 {
-				panel-name = "ET0430";
 				clock-frequency = <9000000>;
 				hactive = <480>;
 				vactive = <272>;
@@ -391,7 +387,6 @@ timing3: timing3 {
 			};
 
 			timing4: timing4 {
-				panel-name = "ET0500", "ET0700";
 				clock-frequency = <33260000>;
 				hactive = <800>;
 				vactive = <480>;
@@ -408,7 +403,6 @@ timing4: timing4 {
 			};
 
 			timing5: timing5 {
-				panel-name = "ETQ570";
 				clock-frequency = <6400000>;
 				hactive = <320>;
 				vactive = <240>;
-- 
2.43.0


