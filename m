Return-Path: <devicetree+bounces-101364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F6897165F
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD8FFB21FB2
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472981B5EAD;
	Mon,  9 Sep 2024 11:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="J9dfzc6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AA51B5833
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880673; cv=none; b=P88QaFUjQyYz9b87+dxfD9H+TMT04rK0Ei/4pWc3V+zZG046Yb0mVJR9DiN+xOhkLrG6i0tMryzpg4K4v83dPwZzhwny3K6pctEeJmsLCWTzPr4PBlXSDMJ4nJe1HlYH760690EK9cHAo2DeDZiNJFmLiXxgHADfPO0mlwgIXdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880673; c=relaxed/simple;
	bh=9/My7PjvRLT9BbkGoUHtA83sYS5WvCABW72oOHsTTGE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FYS97hVfeVOvWkBauky68xH2s5+SiCHTn1lkwhlhzxafxybxBmbURWaVlFU4b7YwnguRqAXnDAD2ebqEqKQIPshr3B8bJN8qVjUDlRIbDggAwkRYWN9zsKz+Pgq7MxRoyTh0++9CHXy8I6bGfF95gLk8s2U/5O71WMXTsKxtuEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=J9dfzc6n; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20696938f86so34779635ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880671; x=1726485471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inMWF7mAc4RQp01FZVAzZYJjZGIEnM27V9mYFjLFKXM=;
        b=J9dfzc6ny2qTtqNGOET4EpXmrGRk7YoIFuZp1zl0n1duc7LJGSxP9NdwRSWt8UMRun
         bSvmewwy8H2xOhgD5WQxXy003YVMlbfEbOf8L6xCgsCZY1EIT30HlG0BUyJLfIdv/d4N
         9ylD4GqWccQPj1LfFtVPvvmhtRkFkFe1Ww3NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880671; x=1726485471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=inMWF7mAc4RQp01FZVAzZYJjZGIEnM27V9mYFjLFKXM=;
        b=Mzf5w2OL6SyR688TiSrn9jfqDv/wYKX79ejaw7RARKoJBdpp0/Mnmsga6gC2sLehRY
         OQ/Cxt0eXRhLDPS2mFEhtS3h8GAkxdhWQ0+ZEJV0g4mkWhcTXq7vDuAaKl53n5EyyUS6
         bs9V3kC1s9OgC2+ysSXrittXZRQYyTHsbnkWDcubTxT6gvNIe2nkm6Appuzw8qxdWK2n
         A5oN8D/hQ+BYwW2PEyojqkgVVN+IP2L0MKpZgDMAXbtz1iD7/ARTDtA1Ru0kaZJUnpCu
         RvjIS5hAVsNPqoGBrlvlljRlMgctqSF2/UgNJt/9lhewmIS+zKK+tvavLCHoi9xtHGz5
         hAfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpF/ddc8SqIDkdWCIPN1dlbP2OZbHKVA8r+Uho12tDxbdsCuQBC6fiZq7ZaPi85Q2Dg61ulNJeCo+W@vger.kernel.org
X-Gm-Message-State: AOJu0YxDLcZASPreh1Wh/ldBOhEwYXM1He3hAL1SPz7AZvj6h9WQfoK3
	VILl0EwCLBnNcYSpMRuhXdRygVCELskPpwdk5Cz8onBy1XuEIRqvyhtLoAvMyg==
X-Google-Smtp-Source: AGHT+IGEoXdjMPDfBAFuOqotyznZjRHcP++k8TLwSTP8JbDeKXsv6apEUH19HjF6RrX+uRkTQqMG/A==
X-Received: by 2002:a17:902:f549:b0:202:5af:47fc with SMTP id d9443c01a7336-206f0511f66mr171192305ad.13.1725880670880;
        Mon, 09 Sep 2024 04:17:50 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:17:50 -0700 (PDT)
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
Subject: [PATCH 01/13] arm64: dts: mediatek: mt8188: Add CPU performance controller for CPUFreq
Date: Mon,  9 Sep 2024 19:14:14 +0800
Message-ID: <20240909111535.528624-2-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
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
2.46.0.469.g59c65b2a67-goog


