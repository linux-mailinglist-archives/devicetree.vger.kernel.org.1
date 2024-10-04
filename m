Return-Path: <devicetree+bounces-107759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D81DC98FEBE
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 138C8B22D11
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C989C148823;
	Fri,  4 Oct 2024 08:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NGNK/B8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1752213DDD3
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029587; cv=none; b=ML/j5iAJRuZM/K5B/zBWF2yTaFL102NxZfYr92aIt/v2QyVldcOHPrVsk9iGjGL9EQUTy28hZFY67FzcunNVI6kwf/Q0LZ3voqF1rw/dPKITpkbqwatK1X7LTIzgSHZzXEppPCjoY5154Dj9/o09Okynni6z7uhS+IFwgxn1VIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029587; c=relaxed/simple;
	bh=2lbQYPWyDZKTJzVlmlvGiGYnoCGQ20odFL6jah8cDxw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DWHGXvHYkYDq8TPN2sqyAdmS2EUfQxsiLGebPPFRBFZTmExsywfTPy5qDBuq4n0jVt85+fFFsU2J2e4Tu1O1UGA57a3pMHF6xdpwYryIAJMEfIbNajcaonCvWF248SN8XakCR1jluyRBjVYa7eSC7TTGDgs/jlMdWtwPk4UyaTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NGNK/B8I; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20bb92346caso11926085ad.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029585; x=1728634385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4dX0uBOJHJV1BIssqdKHLXCpmsAajDOFep9wsFWnln0=;
        b=NGNK/B8I7C9ON9c8wbx5M2JxiKjmWDwd/PfvAE10DM4srWYHTojK6oZJBfYBTdBVsA
         llHeIXTGqH6ybcgm/MNYiUv7HEkL685zZ6VAnxV3mkkA4J023z645Gnu7Oyj0IlMdeR2
         mXkCwTyHHwSZ2ztY+wcA3rHoGQ5QBap6ni01I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029585; x=1728634385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4dX0uBOJHJV1BIssqdKHLXCpmsAajDOFep9wsFWnln0=;
        b=XrNq+hyrlbWLw8iard1UdBDBE9WRUUxXco/vF+3Hr/XJIiBunnu4VldLZJK8ZfR/Pz
         jvvBsmK6D0/CacM9RKonI7nH9Yc+QlCWJ/JyNz84h8qO2xF6EtYWVQ6/jsl09candZ/S
         5lIRjtEMFf7Suwwm1cGroGmSMwOC9WGg1WHwsrqsXZD2HpP2d7YrtJxX12Q+b0EaAnEp
         y4bVugVT9GAWB83AQNrskQSLN9P5bjuYMxTdeIqlfmD2e69+wcMBVBwgXtkcbYkk9qKC
         1PsOThqqcUF9p3dtzK77HAvSxATvhTQghicmp3lcuXcPQFHnloGYWLnvvxyKwQiaO4Mm
         M7VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhy6ODvbJGCoCum3zdEUcSAJIrCy13+HYk5cmUHN7Ns7jyU4rdLAnZ4H7kah1h3Ecfv+Umr11HCy+2@vger.kernel.org
X-Gm-Message-State: AOJu0YwWKQiaknK4nd2qresZC5HM+RfATWwMjmIbf0mmCAr/huvhCrk+
	WWFegLae8Zj28e4FEXS/6gfVIrk2H0K3W8526SKJ3rDxz7mXZLCYbNdHbs2XVw==
X-Google-Smtp-Source: AGHT+IFw8wKX/O/O+SGVloOgwQZ+/956Rz7H+FFdl/bX9m2UwKZiNvDlidWPTC6gobcEwfm4qlrMNQ==
X-Received: by 2002:a17:902:dad0:b0:207:6d2:1aa5 with SMTP id d9443c01a7336-20bff49bc78mr25162855ad.13.1728029585384;
        Fri, 04 Oct 2024 01:13:05 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:13:04 -0700 (PDT)
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
Subject: [PATCH v3 7/9] arm64: dts: mediatek: mt8188: Add display nodes for vdosys1
Date: Fri,  4 Oct 2024 16:11:59 +0800
Message-ID: <20241004081218.55962-8-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241004081218.55962-1-fshao@chromium.org>
References: <20241004081218.55962-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the vdosys1 display nodes to support the external display pipeline.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 298 +++++++++++++++++++++++
 1 file changed, 298 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index dae1cda42a14..ec12617ea925 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -24,9 +24,32 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
+		merge0 = &merge0;
+		merge1 = &merge1;
+		merge2 = &merge2;
+		merge3 = &merge3;
+		merge4 = &merge4;
 		mutex0 = &mutex0;
+		mutex1 = &mutex1;
+		padding0 = &padding0;
+		padding1 = &padding1;
+		padding2 = &padding2;
+		padding3 = &padding3;
+		padding4 = &padding4;
+		padding5 = &padding5;
+		padding6 = &padding6;
+		padding7 = &padding7;
+		vdo1-rdma0 = &vdo1_rdma0;
+		vdo1-rdma1 = &vdo1_rdma1;
+		vdo1-rdma2 = &vdo1_rdma2;
+		vdo1-rdma3 = &vdo1_rdma3;
+		vdo1-rdma4 = &vdo1_rdma4;
+		vdo1-rdma5 = &vdo1_rdma5;
+		vdo1-rdma6 = &vdo1_rdma6;
+		vdo1-rdma7 = &vdo1_rdma7;
 	};
 
 	cpus {
@@ -2537,6 +2560,16 @@ vdosys1: syscon@1c100000 {
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0 0x1000>;
 		};
 
+		mutex1: mutex@1c101000 {
+			compatible = "mediatek,mt8188-disp-mutex";
+			reg = <0 0x1c101000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DISP_MUTEX>;
+			interrupts = <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x1000 0x1000>;
+			mediatek,gce-events = <CMDQ_EVENT_VDO1_STREAM_DONE_ENG_0>;
+		};
+
 		larb2: smi@1c102000 {
 			compatible = "mediatek,mt8188-smi-larb";
 			reg = <0 0x1c102000 0 0x1000>;
@@ -2558,5 +2591,270 @@ larb3: smi@1c103000 {
 			mediatek,larb-id = <SMI_L3_ID>;
 			mediatek,smi = <&vpp_smi_common>;
 		};
+
+		vdo1_rdma0: rdma@1c104000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c104000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA0>;
+			interrupts = <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L2_MDP_RDMA0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x4000 0x1000>;
+		};
+
+		vdo1_rdma1: rdma@1c105000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c105000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA1>;
+			interrupts = <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vpp_iommu M4U_PORT_L3_MDP_RDMA1>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x5000 0x1000>;
+		};
+
+		vdo1_rdma2: rdma@1c106000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c106000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA2>;
+			interrupts = <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L2_MDP_RDMA2>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x6000 0x1000>;
+		};
+
+		vdo1_rdma3: rdma@1c107000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c107000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA3>;
+			interrupts = <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vpp_iommu M4U_PORT_L3_MDP_RDMA3>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x7000 0x1000>;
+		};
+
+		vdo1_rdma4: rdma@1c108000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c108000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA4>;
+			interrupts = <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L2_MDP_RDMA4>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x8000 0x1000>;
+		};
+
+		vdo1_rdma5: rdma@1c109000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c109000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA5>;
+			interrupts = <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vpp_iommu M4U_PORT_L3_MDP_RDMA5>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x9000 0x1000>;
+		};
+
+		vdo1_rdma6: rdma@1c10a000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c10a000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA6>;
+			interrupts = <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L2_MDP_RDMA6>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xa000 0x1000>;
+		};
+
+		vdo1_rdma7: rdma@1c10b000 {
+			compatible = "mediatek,mt8188-vdo1-rdma", "mediatek,mt8195-vdo1-rdma";
+			reg = <0 0x1c10b000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_MDP_RDMA7>;
+			interrupts = <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vpp_iommu M4U_PORT_L3_MDP_RDMA7>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			#dma-cells = <1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xb000 0x1000>;
+		};
+
+		merge0: merge@1c10c000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c10c000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE0>,
+				 <&vdosys1 CLK_VDO1_MERGE0_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_MERGE0_DL_ASYNC>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xc000 0x1000>;
+			mediatek,merge-mute;
+		};
+
+		merge1: merge@1c10d000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c10d000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE1>,
+				 <&vdosys1 CLK_VDO1_MERGE1_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 504 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_MERGE1_DL_ASYNC>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xd000 0x1000>;
+			mediatek,merge-mute;
+		};
+
+		merge2: merge@1c10e000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c10e000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE2>,
+				 <&vdosys1 CLK_VDO1_MERGE2_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 505 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_MERGE2_DL_ASYNC>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xe000 0x1000>;
+			mediatek,merge-mute;
+		};
+
+		merge3: merge@1c10f000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c10f000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE3>,
+				 <&vdosys1 CLK_VDO1_MERGE3_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_MERGE3_DL_ASYNC>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xf000 0x1000>;
+			mediatek,merge-mute;
+		};
+
+		merge4: merge@1c110000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c110000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE4>,
+				 <&vdosys1 CLK_VDO1_MERGE4_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_MERGE4_DL_ASYNC>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0x0000 0x1000>;
+			mediatek,merge-fifo-en;
+		};
+
+		ethdr0: ethdr@1c114000 {
+			compatible = "mediatek,mt8188-disp-ethdr", "mediatek,mt8195-disp-ethdr";
+			reg = <0 0x1c114000 0 0x1000>,
+			      <0 0x1c115000 0 0x1000>,
+			      <0 0x1c117000 0 0x1000>,
+			      <0 0x1c119000 0 0x1000>,
+			      <0 0x1c11a000 0 0x1000>,
+			      <0 0x1c11b000 0 0x1000>,
+			      <0 0x1c11c000 0 0x1000>;
+			reg-names = "mixer", "vdo_fe0", "vdo_fe1", "gfx_fe0", "gfx_fe1",
+				    "vdo_be", "adl_ds";
+
+			clocks = <&vdosys1 CLK_VDO1_DISP_MIXER>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_FE0>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_FE1>,
+				 <&vdosys1 CLK_VDO1_HDR_GFX_FE0>,
+				 <&vdosys1 CLK_VDO1_HDR_GFX_FE1>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_BE>,
+				 <&vdosys1 CLK_VDO1_26M_SLOW>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_FE0_DL_ASYNC>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_FE1_DL_ASYNC>,
+				 <&vdosys1 CLK_VDO1_HDR_GFX_FE0_DL_ASYNC>,
+				 <&vdosys1 CLK_VDO1_HDR_GFX_FE1_DL_ASYNC>,
+				 <&vdosys1 CLK_VDO1_HDR_VDO_BE_DL_ASYNC>,
+				 <&topckgen CLK_TOP_ETHDR>;
+			clock-names = "mixer", "vdo_fe0", "vdo_fe1", "gfx_fe0", "gfx_fe1",
+				      "vdo_be", "adl_ds", "vdo_fe0_async", "vdo_fe1_async",
+				      "gfx_fe0_async", "gfx_fe1_async", "vdo_be_async", "ethdr_top";
+
+			interrupts = <GIC_SPI 566 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vpp_iommu M4U_PORT_L3_HDR_DS_SMI>,
+				 <&vpp_iommu M4U_PORT_L3_HDR_ADL_SMI>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_HDR_VDO_FE0_DL_ASYNC>,
+				 <&vdosys1 MT8188_VDO1_RST_HDR_VDO_FE1_DL_ASYNC>,
+				 <&vdosys1 MT8188_VDO1_RST_HDR_GFX_FE0_DL_ASYNC>,
+				 <&vdosys1 MT8188_VDO1_RST_HDR_GFX_FE1_DL_ASYNC>,
+				 <&vdosys1 MT8188_VDO1_RST_HDR_VDO_BE_DL_ASYNC>;
+
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0x4000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0x5000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0x7000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0x9000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0xa000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0xb000 0x1000>,
+						  <&gce0 SUBSYS_1c11XXXX 0xc000 0x1000>;
+		};
+
+		padding0: padding@1c11d000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c11d000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0xd000 0x1000>;
+		};
+
+		padding1: padding@1c11e000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c11e000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING1>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0xe000 0x1000>;
+		};
+
+		padding2: padding@1c11f000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c11f000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING2>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0xf000 0x1000>;
+		};
+
+		padding3: padding@1c120000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c120000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING3>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x0000 0x1000>;
+		};
+
+		padding4: padding@1c121000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c121000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING4>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x1000 0x1000>;
+		};
+
+		padding5: padding@1c122000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c122000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING5>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x2000 0x1000>;
+		};
+
+		padding6: padding@1c123000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c123000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING6>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x3000 0x1000>;
+		};
+
+		padding7: padding@1c124000 {
+			compatible = "mediatek,mt8188-disp-padding";
+			reg = <0 0x1c124000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_PADDING7>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x4000 0x1000>;
+		};
 	};
 };
-- 
2.47.0.rc0.187.ge670bccf7e-goog


