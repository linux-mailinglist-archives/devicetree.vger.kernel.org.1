Return-Path: <devicetree+bounces-101993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 484DA975034
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5A4CB2521B
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BA1192B61;
	Wed, 11 Sep 2024 10:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XsD8S0Jo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9D9187845
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051933; cv=none; b=QelBPAIRdQEpKmuyysDPLwDrC8BrrSmTdOXGqM+m/PmGbOcyRwWnn/HtMwfnZmma99EAZGFi7Se/ZyDy0sGxdwa2yt1zFPINCRNc5EWQ9XcnWvv6LIMO8V3UOM2UnlyNqlVaFAVXr7bwrVL0zAbq2eG2dWJ8JktsQ/NVyRW4dfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051933; c=relaxed/simple;
	bh=bGEC5sAZlV+5iGf8M6Z9/6DXmZrDxRlgy1KSOOHsczA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WgbGeMka6msjQCFYnTK8Ky6GfQtFYmaGt24rgnLFPk2JVVy7omMtIW4hNJVfQaA7tuawR4BnlOqoF1fRPQgVtUMC4i5LsBAa/p+o8y2b2HZkoH7MpC1lu/NLldnzG8a2cO9ZqouvNyOOG/wX44PzUJmURCcKx4j8jZHEfexuW1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XsD8S0Jo; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3e03e9d1f8dso2123184b6e.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051931; x=1726656731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiXfhH6Tnp1v6o4UDgk+1tYvrebnqA2dEhUrxtMqtKQ=;
        b=XsD8S0Joz9/ZZkw9X2AGXvdCg/vVhP8aI7EsbVd9+IJJhBYwXuj1tafCkr1tjY/Rja
         5SRKd6R6UoCvBYmd7UU1ms7hRkqbaqn16BhuP4gKb+u+o3zxvPtCj9rKgeVn0ADIn6NL
         Ajtq9WZ/x4zjUTznX5G0R1PuGCMeuZyWrYKAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051931; x=1726656731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iiXfhH6Tnp1v6o4UDgk+1tYvrebnqA2dEhUrxtMqtKQ=;
        b=cpUxU33uTcO/J+81QRJ99SvVn6i81X7DX0fP+aIevMEgP8TJot+vmYNyGRxWp7GV/E
         Qu/hncEzhY4xp6Zp4gdwRf/AyN6g3Ur0JV8RsIAg3qFymbHxmh/6Eo/5q5FcVnaH9fwk
         vyu4Xb9QWv/XrZglyfsRNacQluvcgUzsJt+jeDg0mx1zOmucuC95fHqdnplMCw+05Fkc
         72Oo8VNxdDZjiTINMP0yIC1/qlQqF1RKW1Gc8m8dkg5cCJK2tmX7g2XW5YrG8bLkPrUF
         ZUYdX388EXf+1kVUL/6QOyz20Sab+FuLsoFBV3qhwIUhflmqyUsz5T371hhU1X3xczTl
         I8kw==
X-Forwarded-Encrypted: i=1; AJvYcCVr2EZN+DxtgJ7GTN7Qn21Q8IrDSuGXC97cDJBj+5CfIptVobIyQbfeN30Nrw23uB7ddMBvercIcbJT@vger.kernel.org
X-Gm-Message-State: AOJu0YzXlDyQuXkHdXeuutIzBvO91Y0Jo+U1vig2nqA9LTeuNX/s2Udj
	K2SCMdBeQjq8vCZ6mZmctt8s0UsBl0KSgDKIXxxeUFXfxnh00eiTmzZsx1FMdw==
X-Google-Smtp-Source: AGHT+IHW9oSNJD8oopaqEVzs/tys0SbN6+/1X0Ax2ScypJxfEIBlNpu9QiRwIEeqPSCjhbtYV0wiSA==
X-Received: by 2002:a05:6808:3c8f:b0:3e0:3d83:49c9 with SMTP id 5614622812f47-3e03d8349f4mr10035939b6e.7.1726051931237;
        Wed, 11 Sep 2024 03:52:11 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:10 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 3/8] arm64: dts: mediatek: mt8188: Add CPU performance controller for CPUFreq
Date: Wed, 11 Sep 2024 18:51:08 +0800
Message-ID: <20240911105131.4094027-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add performance controller node and performance-domains properties for
CPUFreq support on MT8188 SoC.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index cd27966d2e3c..cdd2fe14effa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -41,6 +41,7 @@ cpu0: cpu@0 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -59,6 +60,7 @@ cpu1: cpu@100 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -77,6 +79,7 @@ cpu2: cpu@200 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -95,6 +98,7 @@ cpu3: cpu@300 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -113,6 +117,7 @@ cpu4: cpu@400 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -131,6 +136,7 @@ cpu5: cpu@500 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			performance-domains = <&performance 0>;
 			#cooling-cells = <2>;
 		};
 
@@ -149,6 +155,7 @@ cpu6: cpu@600 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2_1>;
+			performance-domains = <&performance 1>;
 			#cooling-cells = <2>;
 		};
 
@@ -167,6 +174,7 @@ cpu7: cpu@700 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <256>;
 			next-level-cache = <&l2_1>;
+			performance-domains = <&performance 1>;
 			#cooling-cells = <2>;
 		};
 
@@ -880,6 +888,12 @@ soc {
 		compatible = "simple-bus";
 		ranges;
 
+		performance: performance-controller@11bc10 {
+			compatible = "mediatek,cpufreq-hw";
+			reg = <0 0x0011bc10 0 0x120>, <0 0x0011bd30 0 0x120>;
+			#performance-domain-cells = <1>;
+		};
+
 		gic: interrupt-controller@c000000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <4>;
-- 
2.46.0.598.g6f2099f65c-goog


