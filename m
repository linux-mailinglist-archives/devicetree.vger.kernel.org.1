Return-Path: <devicetree+bounces-72823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 105158FD1AB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 17:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1F901C22876
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 15:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3CF4143893;
	Wed,  5 Jun 2024 15:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kh0C6t9I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161CD2E6
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 15:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717601429; cv=none; b=HcUeHpS1hSd8XyfpszCafV5q88b9kark3QaAnLiDKfClakdBu9nzDrFM5izg31+bsctud5eIvBUa775sqJ4NtFp0zPTXAP3HN4j380/r6NAaaES/NhM/4bqjbaD3y00h0op6z5HCmEit+zRZ1rpHHoKJtCpNZwnhOimZeT4sjlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717601429; c=relaxed/simple;
	bh=NMv3VKh5odLNj+GDe8Ww1tODWUNO54F1FJCzMaqqk7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uX79YmkaIRd8OqTlMn+VrktZ01XGz7v7r+EAJXndylHmLRQskkmXorvuxeYpnoXokxGh1uykH8oTL4bciZQNZNcVGstbd1Eyb7Gz6zj/URpHrjsh3D2D+rEQ2xA6jMiNbNeXzkdH7OnnMISgyEXUNQ+UPwWqEThoQmf9r7HWmB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kh0C6t9I; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42135a45e2aso37899055e9.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 08:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717601427; x=1718206227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/K0vfcsphggQE03HaQTq6oV7X6egbMSNGPCTOf5noQs=;
        b=Kh0C6t9In5LKWuz5RI6juc5nTOUFGOb7eS8UtLCfHBSypkHYYylouHXMXY/xk/uYgN
         VCCNfbMSO+c44muzhgcr56tU90gT584z8i7VQiOMkcKqlNMa+XCuJ6gdQi4XK9QhmY0R
         tfDyJ8y001py8dAeqSh0+Lvwc5yCoMCcrh1mlHx01cU67eKUbr9lgd3kYLFTPK+y0lbO
         7mFSt82PcwvfnKzw1XHe7wEVR/Jn8zt3vddEdy5sKClrpGn8y3O2IXew9PJk2vJSnPKL
         Pu6m+OXx4DwNyJZharKQvT5VI620kRW/LbSBtL73mZzhxJX5yvQK38KWvjlBr1E4QYk5
         IBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717601427; x=1718206227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/K0vfcsphggQE03HaQTq6oV7X6egbMSNGPCTOf5noQs=;
        b=gdPVoFtACqvhIZc9ahuhbuxMYe7h1KUdIP+2sMt7FMlJSJ/wr7JmWid/hjB26AWq+H
         ZSQCSDwo5CBTqWhDl6YS1X8i/9PxJ13qqPlFQeNIElA80f9PHPfGdeVW4snqJUKRttfJ
         p4CwBRL+AdQO1fzzcSoulnEr+X7ivDZGyHEWb07QMerBbjHjAHN2zzGnsqYMRvKBwmcQ
         cW02P0PDAWYbo3V6Xh3oYhKJ+vnjcQH1A6OoN41nLY3I9HROwhjavMBV2GmD6wN0ckGK
         edicP9q5kt890Q/9ztUjTsSf/FrBLpCeK7ei77axn3apzb7XEtxEa/zaAb8FRsR+oIYw
         dckg==
X-Forwarded-Encrypted: i=1; AJvYcCUYdu3draAXpChnNRCAVF04jYb41zcqcanLlXMfV08s4LyHDq1RoK3Xt6dYN5v0EJDbFZmyreUZzIW8JGEiPwAQWpFyv+U7wlUAxA==
X-Gm-Message-State: AOJu0YytWec/XRJ0LtwDKcfoVPfyfsEY4F0ASvMiRKPc8FiYbEzTf5s6
	a/8niRVIWPyMFxNh9YmA83Fcuk8DwalRHtESnSbgwGEfay5fVF5nqKp2pWzxelc=
X-Google-Smtp-Source: AGHT+IHE9nDBQ5Sz04khTcIYOGPj0VwRgEjUuiwPv5JSHmid95xhtkpvCP2exEYp6NXmZOXTxCKtiQ==
X-Received: by 2002:a5d:59a5:0:b0:359:b737:68c9 with SMTP id ffacd0b85a97d-35e8ef7ea9fmr2637446f8f.45.1717601426591;
        Wed, 05 Jun 2024 08:30:26 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215814e7cbsm26222295e9.39.2024.06.05.08.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 08:30:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: imx8: use defines for interrupts
Date: Wed,  5 Jun 2024 17:30:20 +0200
Message-ID: <20240605153020.104717-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605153020.104717-1-krzysztof.kozlowski@linaro.org>
References: <20240605153020.104717-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace hard-coded interrupt flags with standard defines for
readability.  No changes in resulting DTBs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 90d1901df2b1..930e14fec423 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -400,7 +400,7 @@ ptn5110: tcpc@50 {
 		pinctrl-0 = <&pinctrl_typec1>;
 		reg = <0x50>;
 		interrupt-parent = <&gpio2>;
-		interrupts = <11 8>;
+		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
 		status = "okay";
 
 		typec1_con: connector {
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index c024be33fbcc..6d002fc1b2be 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -193,7 +193,7 @@ light-sensor@44 {
 		compatible = "isil,isl29023";
 		reg = <0x44>;
 		interrupt-parent = <&lsio_gpio4>;
-		interrupts = <11 2>;
+		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	pressure-sensor@60 {
-- 
2.43.0


