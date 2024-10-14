Return-Path: <devicetree+bounces-111009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D7299C879
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C48971C23CF9
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E47519F419;
	Mon, 14 Oct 2024 11:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="a9urRHAy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B711AED3F
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904299; cv=none; b=I/C6e2tUCDcMTWorU8q6KigDTlgPYNMXAERXvQ5bgeA7uGHdycXkcy3ZFNoN3Y+g8XSaSIZKqe9NgV/8MypyUkXOwxX8sbrQTKiALPCfYrRd5LNyhPcKvHk1PGG6haCzUYeTqRa5tT1v7CNw179S5Gn8Op5Rh/FR54sN52fMj4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904299; c=relaxed/simple;
	bh=uQ/ZPGuJmbycwoMaRHk9a50U7FzXLYLOt8QXYZsuRao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i6wsT2rlcxJ85Ma/WkaJppJ827/Lo0QjHyHY+Eb6to4F/AHXgznWRVOHIBN9w6POafaAkIqx8ppAeF6c2giaJOxze76/6vkmJNd3XhQpgTyPUL9wVjslUUDBC2JUf7RszcdNcdx2ZcofQuEV7PUAG4mQB4hYCa+n5Mmxfx5Jx1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=a9urRHAy; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20cb47387ceso17746405ad.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728904297; x=1729509097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWJu2S/ieJ6v9yJvOOOZUajs4/O8S8cJ9i+RQGe16Fw=;
        b=a9urRHAy2a61C5MvCq176nIFdY2icaZ6n8JsWSV5iIK+BpcKBOSfRCb2Z24nOdDiOT
         FfP0VVKQfRGTjVDRPpElNHxxlGJRiCtBFaTU01pYezgJtyn84kDGKTDM/dOe5QjB3Ta/
         q8dJ32sTVOVbXy4FSpKQj4p33g2tYv1VPXSgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904297; x=1729509097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HWJu2S/ieJ6v9yJvOOOZUajs4/O8S8cJ9i+RQGe16Fw=;
        b=OsiulKDKVbhC1GW8hEF5PqKHJ75DGzVhODcuRkC6G7gx9+QL95MGaMtPEBMzk/EIhH
         i3ZfaeRgQGGlUBT+7S6H/SbzNrtnrnl5hms16eqsxC0ffievf0nm4yR0C7xXnyOqGJ+v
         CyVFrcrQx/3eWNV62m+Ov1XLMPH5QB61Yb3NOTxIivOGB9iYqKmEoHQyb/ZzU02wwjwC
         y2ylBLHZjehh2mNKW4rH2aDwFGflyfR/psoyE9gT4fqZjxFIpb/64hb2RD705SUrSQ3q
         uz6LO8lwh1OjA2XbjcqCnFCMH+pWquQ8cOzronJvN5/iyh3HcBbQJWD7vabHQY1JXH2r
         KIhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJaDjuYaQL2oQCXB+Fh1alBSSzBXbk++/OgIvhguFS7r8Jt+XTu/1uKOduEIgzJ94ZSBtptkWgPPbn@vger.kernel.org
X-Gm-Message-State: AOJu0YxxE5ca56fOOBZah5apQfkW950ox64ZgoGDkxHsu9Ro0nbes9vZ
	Sc3kvT4iz68Vve5LX7Vy/HsS2TTm8qWCeI0/DTlZDdAH/b5qbBHvas4un0doIQ==
X-Google-Smtp-Source: AGHT+IFSdH06u0c52oLgqgrVrnabmA0sXZRsEVDWxzWRDsMMS60gGETPeBjTqLsCaWG4B/VOoLVseg==
X-Received: by 2002:a17:903:228d:b0:20c:a644:c5bf with SMTP id d9443c01a7336-20ca644c633mr122246685ad.31.1728904297219;
        Mon, 14 Oct 2024 04:11:37 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3e6fcsm63858285ad.118.2024.10.14.04.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:11:36 -0700 (PDT)
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
Subject: [PATCH v4 9/9] arm64: dts: mediatek: mt8188: Add eDP and DP TX nodes
Date: Mon, 14 Oct 2024 19:09:31 +0800
Message-ID: <20241014111053.2294519-10-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
In-Reply-To: <20241014111053.2294519-1-fshao@chromium.org>
References: <20241014111053.2294519-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add edp-tx and dp-tx nodes for the Embedded DisplayPort (eDP) and
DisplayPort ports to connect to DP-INTF ports and panels, and add the
efuse cell for the DP calibration data.

Individual board device tree should enable the nodes and connect input
and output ports as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 6f5727f05255..e47fe1f453a0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2016,6 +2016,10 @@ efuse: efuse@11f20000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			dp_calib_data: dp-calib@1a0 {
+				reg = <0x1a0 0xc>;
+			};
+
 			lvts_efuse_data1: lvts1-calib@1ac {
 				reg = <0x1ac 0x40>;
 			};
@@ -2877,5 +2881,27 @@ padding7: padding@1c124000 {
 			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x4000 0x1000>;
 		};
+
+		edp_tx: edp-tx@1c500000 {
+			compatible = "mediatek,mt8188-edp-tx";
+			reg = <0 0x1c500000 0 0x8000>;
+			interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+			nvmem-cells = <&dp_calib_data>;
+			nvmem-cell-names = "dp_calibration_data";
+			power-domains = <&spm MT8188_POWER_DOMAIN_EDP_TX>;
+			max-linkrate-mhz = <8100>;
+			status = "disabled";
+		};
+
+		dp_tx: dp-tx@1c600000 {
+			compatible = "mediatek,mt8188-dp-tx";
+			reg = <0 0x1c600000 0 0x8000>;
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH 0>;
+			nvmem-cells = <&dp_calib_data>;
+			nvmem-cell-names = "dp_calibration_data";
+			power-domains = <&spm MT8188_POWER_DOMAIN_DP_TX>;
+			max-linkrate-mhz = <5400>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.47.0.rc1.288.g06298d1525-goog


