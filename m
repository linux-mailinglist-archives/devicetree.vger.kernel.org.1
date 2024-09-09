Return-Path: <devicetree+bounces-101368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3625697166B
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E85B0283D50
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF8B51B81BA;
	Mon,  9 Sep 2024 11:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CN8RKyHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE83C1B7901
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880681; cv=none; b=fZ/5jkNtjg88KPWVVU0nZEyJruXqa4ddvRnfazPe6N8xoFhlXBO3MWKUlUFkmruWdoIZbQF44iKXh/iSRuaRju2bn/GAykZm73iV9sx8JP97hFwMzeLZ3666vqJP6KqAOzAXspUuggUv9PTZNlgfB9PHQS9OpTTnrJ2rwA3UkEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880681; c=relaxed/simple;
	bh=v0lqhXDww126ExqWe1NdjbR42IBr9nBcR7KMJ8c7f20=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LC+d9p77MGhdrQG5KegEcYhoBDbRj2kBwnRpJ7p5z4vtFmISwOQUG0ODFuFMdyo68C4Uzbj9PpZzW1YUcyp3wXckV9n/VAG7XcFm+o89ayKrd8h0pqAQnoyqWMWWTyfA2e8ES9NyIfHJ1nkcWufgG9AJVX5nO8lkBPWGixQbG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CN8RKyHW; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2055f630934so31437145ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880678; x=1726485478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k98xHcx8LIPGVP0kPjUAh1AHHL+3f8QtEI3GBp8SnEs=;
        b=CN8RKyHW/v9hdsKYgE2wJa21IKEiURYOsamy0ZCvUC27E0RmarZN/5QcUYmyYHvfco
         G2QupkcLQv+f7Ej3/26/g9EpZaf6sWzQKp0NgQmtBITIpyLpvmciKjmgWy54GRXgkUIq
         1kSV8nNKZH3j2KOo45klf2/pF+xkIMUwkB2n8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880678; x=1726485478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k98xHcx8LIPGVP0kPjUAh1AHHL+3f8QtEI3GBp8SnEs=;
        b=f/NAply7atjS4S8+56VgNvEC8XZGWzxVGU7eocjoC1IFWRoO/iQ841TIWbv4EmDWig
         +E4k15GLMcZ6TUHrUwfHBW1Ml4F9EGuETurtztttgcVLD7nStLKz6VmHShiKbCEmfIrf
         BbSw2elitzJPvmwu66zGZ0d2kKYqoGHa+J1xZWiXYawsftbOP3mT2xqD4wL/so20O4Uy
         iaBhxh879Gm9x2mJb6doFR1k78RllJnsVv/7LmUJdtVUmLkTHEaJivFtOwRvnDILL2v2
         gL7kHDNy7hr+CVpxCoW692rc6rtZusPO3oorbEHB29Vc36mZVJd3xc3fWw5mQk0rd16A
         GZwg==
X-Forwarded-Encrypted: i=1; AJvYcCVGN6DtXMx5In2T1R+PP9M2shuBcZUoGXJpJki/lxgo5aPPtB0ps878O2hKUZooXnxcG0uPB7YHztGQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwpM4qgg7iqZ7/yY27YLbWygKOa/gV2LgnqWoXgbIpAa8QC2I4U
	6CZ47IJMUYsiGnI3XDAtCdP5gkZcHjqw53P1/IxdF5gOD0+4Uqx7BfLhu9k3gw==
X-Google-Smtp-Source: AGHT+IGoS/wNfT96ErEpO6j2A4iVl+SSYkCw9fl18EPKIdICyKbSqkOSzDP41poSrNFHrcako0/RMQ==
X-Received: by 2002:a17:903:22cb:b0:206:bbaa:84e9 with SMTP id d9443c01a7336-2070a7e5982mr90617095ad.47.1725880678168;
        Mon, 09 Sep 2024 04:17:58 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:17:57 -0700 (PDT)
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
Subject: [PATCH 04/13] arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
Date: Mon,  9 Sep 2024 19:14:17 +0800
Message-ID: <20240909111535.528624-5-fshao@chromium.org>
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

There are two hardware IP blocks in MT8188 video decoder pipeline:
vdec-lat and vdec-core, which are powered by vdec0 and vdec1 power
domains respectively.

We noticed that vdec-core needs to be powered down before vdec-lat
during suspend to prevent failures. It's unclear if it's an intended
hardware design or due to power isolation glitch. But in any case, we
observed a power-off sequence here, and it can be considered as an
indirect dependency implication between the vdec0 and vdec1 domains.

Given that, update vdec1 as a sub-domain of vdec0 to enforce the
sequence. Also, use more specific clock names for both power domains.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index dfbc50c878c4..445d30eee2a1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1078,20 +1078,22 @@ power-domain@MT8188_POWER_DOMAIN_VPPSYS1 {
 							#power-domain-cells = <0>;
 						};
 
-						power-domain@MT8188_POWER_DOMAIN_VDEC1 {
-							reg = <MT8188_POWER_DOMAIN_VDEC1>;
-							clocks = <&vdecsys CLK_VDEC2_LARB1>;
-							clock-names = "ss-vdec";
-							mediatek,infracfg = <&infracfg_ao>;
-							#power-domain-cells = <0>;
-						};
-
 						power-domain@MT8188_POWER_DOMAIN_VDEC0 {
 							reg = <MT8188_POWER_DOMAIN_VDEC0>;
 							clocks = <&vdecsys_soc CLK_VDEC1_SOC_LARB1>;
-							clock-names = "ss-vdec";
+							clock-names = "ss-vdec1-soc-l1";
 							mediatek,infracfg = <&infracfg_ao>;
-							#power-domain-cells = <0>;
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#power-domain-cells = <1>;
+
+							power-domain@MT8188_POWER_DOMAIN_VDEC1 {
+								reg = <MT8188_POWER_DOMAIN_VDEC1>;
+								clocks = <&vdecsys CLK_VDEC2_LARB1>;
+								clock-names = "ss-vdec2-l1";
+								mediatek,infracfg = <&infracfg_ao>;
+								#power-domain-cells = <0>;
+							};
 						};
 
 						cam_vcore: power-domain@MT8188_POWER_DOMAIN_CAM_VCORE {
-- 
2.46.0.469.g59c65b2a67-goog


