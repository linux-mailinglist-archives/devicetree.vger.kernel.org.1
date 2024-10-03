Return-Path: <devicetree+bounces-107406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CDB98EA06
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:03:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D2091F2601C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C0313D502;
	Thu,  3 Oct 2024 07:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Bp6TtwPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C086277
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727938929; cv=none; b=dKkNE+lm3DzOIloh4zBJJ8fCHW8bNJiILbTPuXToMg7XmuBT4ImlfTA4ThrNZXeBG1GZj07rxys1Dgw1PFjmuojzLdxwDF+4u6JZ93zNHf0K23YojJHYAujwV8iIthX/J6RlbPH6G8XOx0VvSUweJfkNqciKrIdS9vDYslLJldI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727938929; c=relaxed/simple;
	bh=hor02EnulX+vfYWXpRnGhzDiHxLZPjFZgTKDfIosOno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sah2NkdhrOg6VdzU7b7oDBAiAtZh2D8Lo5bPulCUNnH99LkMB8E/iv9pAzVfKZFcseIFEzJytDjmkqNIkSw6PlSc5aZPfiiBoZhfmJ7icYOoc30kZoT0l4JicCSGsmu1Ucr1oSywY+DPYiBZXzPa5Z2STHjxWOEOrtiHIs0t24c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Bp6TtwPt; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71dbdb7afe7so522436b3a.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727938927; x=1728543727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4SF5nwE8q+scLV0tbzUby7efs2QPmWoOdROYf5aDp40=;
        b=Bp6TtwPtXxp8kSpPEisbm3/sighWEwvEVjA7m16YGEb3aocwiHEjiNEsOAYXg7ocMR
         SRQqixYgV4fML3dJUY38lEkIrh6C7wuFlSCAeQWQALsyUADyBnIi7NPgfXP7vqOpcEo1
         P1nRWw4odWUYigvY2txpmJz0TWSrP8JUvftsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727938927; x=1728543727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4SF5nwE8q+scLV0tbzUby7efs2QPmWoOdROYf5aDp40=;
        b=a6p1SEPK08r/YPtRMWsJvbUStgxbh1kF2i5eosxO7bMR6R96hmdj2yJK1m1B/0NdER
         w1woWib5DNNh+ynp8mvZP5QTC9ibGFCLASIrdKhpr26NM/bWqqc/0L+KvhUJfW9WoqjI
         IwUg+RmH3tPMjr1ggit9flScfvUQz2lmWwXSlmswkYqmrSalugYeBumWbxz5HJf2HzXV
         kGezYEf3tmcO/YlnMqb4HhbZqkaIBXlHKTUSrnwIMHHRw387rgmVCywXI9Le54/nmD4I
         osqUayqV42uBO/L7vYdb6XXDzn0LBx7FbqPyel1/F1zrD6AuXKkl1CeZCAbzMn89DBNO
         vlDg==
X-Forwarded-Encrypted: i=1; AJvYcCVBW7a6jlkgrpgHSI00GeLgpptHlQE0vTa+Nr+wBvVJO0i8DUvJYlki9qHAfsMym3WVGmslZsE5GXJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YyjnrOBVJBBZTdHmOgiWTAWsn4PcMu7HyKc3EZixxzyiufQZIdj
	5XjKkZD9TwsWSdtXizQPW82UleVnZ+TYsiPsUPgbuuaXLgTQJQgUglVqwtI9WA==
X-Google-Smtp-Source: AGHT+IG4DLzVoYDK294Ku6Vjd08TVjHsUCzPROxKoUjkMR0faA4MYffuLo4qVtm78hvUVl9MUuy5bw==
X-Received: by 2002:a05:6a00:23c6:b0:714:1a74:9953 with SMTP id d2e1a72fcca58-71dc5c9bc6fmr9630693b3a.16.1727938927450;
        Thu, 03 Oct 2024 00:02:07 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71dd9d8e473sm633782b3a.81.2024.10.03.00.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 00:02:07 -0700 (PDT)
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
Subject: [PATCH v2 8/9] arm64: dts: mediatek: mt8188: Add DP-INTF nodes
Date: Thu,  3 Oct 2024 15:00:02 +0800
Message-ID: <20241003070139.1461472-9-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241003070139.1461472-1-fshao@chromium.org>
References: <20241003070139.1461472-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the primary and secondary dp-intf nodes.
These DP-INTF hardware IPs are the sink of the vdosys0 and vdosys1
display pipelines for the internal and external displays, respectively.

Individual board device tree should enable the nodes and connect input
and output ports as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 541eaed59e8b..e77bd2b76128 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -24,6 +24,8 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		dp-intf0 = &dp_intf0;
+		dp-intf1 = &dp_intf1;
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
@@ -2450,6 +2452,18 @@ disp_dsi: dsi@1c008000 {
 			status = "disabled";
 		};
 
+		dp_intf0: dp-intf@1c015000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c015000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DP_INTF0_DP_INTF>,
+				 <&vdosys0 CLK_VDO0_DP_INTF0>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL1>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			status = "disabled";
+		};
+
 		mutex0: mutex@1c016000 {
 			compatible = "mediatek,mt8188-disp-mutex";
 			reg = <0 0x1c016000 0 0x1000>;
@@ -2715,6 +2729,18 @@ merge4: merge@1c110000 {
 			mediatek,merge-fifo-en;
 		};
 
+		dp_intf1: dp-intf@1c113000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c113000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DPINTF>,
+				 <&vdosys1 CLK_VDO1_DP_INTF0_MMCK>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL2>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			status = "disabled";
+		};
+
 		ethdr0: ethdr@1c114000 {
 			compatible = "mediatek,mt8188-disp-ethdr", "mediatek,mt8195-disp-ethdr";
 			reg = <0 0x1c114000 0 0x1000>,
-- 
2.46.1.824.gd892dcdcdd-goog


