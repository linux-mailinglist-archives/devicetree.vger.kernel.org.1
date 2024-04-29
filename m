Return-Path: <devicetree+bounces-63576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 800028B564A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81FACB23BAB
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D464C626;
	Mon, 29 Apr 2024 11:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jzhQRKr0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C929C47A5C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714389349; cv=none; b=laRo2OR1jReU1sgLx+B9xDnSpWx1+fPkRada/hr8foWEKbb+K00bLrbGoanllL0P2dsY38riihiDE9A9dBewRt91Pe131h7y7OGMlkIgc99NllAu9Hsko2rxRY5veGL0wrpC/kAiqAAs8fpBaCDIsML5UhwVyzdDXKFPkGEemLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714389349; c=relaxed/simple;
	bh=ZmIYYUt0QcbC0Veeq4Fmo5dE3JV8iq7sEVsLahwG0es=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PYsnpScV6fWtv5WlJosOLy+joxj1j6nUtpQuSzvm0CoDvkMAzTE7NoCga72ONiwQUG8pJwd1w9BTFvfOtk9m5l7/gQ29SuxfH7BEK6E7dShvWpa7gzniugJmUGDct+cPWBuhr9JkHLo2XzPjsXNKftLeNYlWIYqtJCwF4x1t+PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jzhQRKr0; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e01d666c88so11717371fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714389346; x=1714994146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AX1t+YE1cBl5MQLmH5bPrWGcz0Ebchp9QnAASzx5oG4=;
        b=jzhQRKr0W3vkcBEUXKhzxmksxq1ruYNJ4hMDbmhLyGm2ayYJg/Zrc63MTyi9KMfckz
         pHUAlOZpflsguaLZ+Zsjii8y7QMyTVv6NKToZ6y/xqb+ikf5eK47+i7vCjwN6y5/e7sc
         V80kQeKP5G0umKJciItEwishSNL+Q/KIdlVP7DdY4gHGvHMZUvjEonr9e2NF34bIvDlQ
         97AnLqjMXQFdLz8nxcHMr4BQVXrxun13wyFASeoYVCuBG2yqNy/XOWH0c4R4Gt5sookK
         NKHHkd7rCKUP/EvD6iJlFopQCh3g4Q33t2PC879531DHRt7LoeyxVYjTmxAj+vL3kLSG
         cJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714389346; x=1714994146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AX1t+YE1cBl5MQLmH5bPrWGcz0Ebchp9QnAASzx5oG4=;
        b=gjRpZAkUwqcYqsAGT1Q2rgomHtDAKMYSnzYiGkvI/IhUTWKAJMDpQnF9XFm1scZeM0
         VCQQc1IpQebfYW658gixpceYGUjGLKjwWqauu2wD/dGmJG4JYf3UMIraEkQk4qRB971w
         zHWECAlxa+0IRKd1U4SR7xYfQ+ymUTmrfk596PYPdRX69BbDnJLfkAubN9lgO7+otxXv
         8EanO7LsgfR94aQXYxb8yqXVTFRFOcvRmBXL9WFX8ZAYTtnUxEIAyqtOwYiMCvgFrvce
         gtlRoq3q8LnF0MW8ClsH3p3lsLXXocH1zNzwNdzqILWb7nzY7zsLItCy3evwpxEdR93n
         BI5w==
X-Gm-Message-State: AOJu0Yy4lIw1UM8vIhTcjXSGOL1xSVtyeBAA2u6N/cPR7NXooDzI6WfP
	aGR7mC1/PrrpPO7FMDWVtFFs0oCsBueY52cfivEMD5RvFEgx6rPP1NrYNK0wKTI=
X-Google-Smtp-Source: AGHT+IESPtal/xgnWl8g9+lgMXOg/jVrb4GYZr0Fcd9/7y5Pf83tPpq4h5xqaYXN+/jqF10t6hdVbA==
X-Received: by 2002:a2e:960f:0:b0:2df:a8e1:c24 with SMTP id v15-20020a2e960f000000b002dfa8e10c24mr3999779ljh.34.1714389346058;
        Mon, 29 Apr 2024 04:15:46 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:550a:b373:6b8:63ab])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b0041b434e5869sm16005337wmq.43.2024.04.29.04.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:15:45 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v4 4/4] arm64: dts: exynos: gs101: enable ufs, phy on oriole & define ufs regulator
Date: Mon, 29 Apr 2024 12:15:37 +0100
Message-ID: <20240429111537.2369227-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240429111537.2369227-1-peter.griffin@linaro.org>
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable ufs & ufs phy nodes for Oriole. Also define the ufs regulator node.

ufs regulator is a stub until full s2mpg11 slave pmic support is added.
The gpio defined is for the BOOTLD0 (gs101) signal connected to
UFS_EN(s2mpg11) gpio enabled voltage rail for UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../boot/dts/exynos/google/gs101-oriole.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6be15e990b65..fb32f6ce2a4d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -53,6 +53,15 @@ button-power {
 			wakeup-source;
 		};
 	};
+
+	/* TODO: Remove this once S2MPG11 slave PMIC is implemented  */
+	ufs_0_fixed_vcc_reg: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &ext_24_5m {
@@ -106,6 +115,15 @@ &serial_0 {
 	status = "okay";
 };
 
+&ufs_0 {
+	status = "okay";
+	vcc-supply = <&ufs_0_fixed_vcc_reg>;
+};
+
+&ufs_0_phy {
+	status = "okay";
+};
+
 &usi_uart {
 	samsung,clkreq-on; /* needed for UART mode */
 	status = "okay";
-- 
2.44.0.769.g3c40516874-goog


