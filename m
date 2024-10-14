Return-Path: <devicetree+bounces-110961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF5999C647
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48D1E1C22BEE
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 09:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F228F1547DC;
	Mon, 14 Oct 2024 09:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SImFC5Ea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAD21448DF
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 09:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728899199; cv=none; b=Y82BzzvuVZO5JDwRqGSQ8/yGYuHx+Ducnr06aHcP3zL0z+prtCQTfqvjWYG1qTTDisi+GH+4gLkVtnl1ztlMoxjYI/VPlOg+Cl2/IYj+dW5030GkkkQbSb/xLXh5pl+WfrW6oFX0kawr3x/rj9kU0mZ6LiNzWdOP7fkPDv1seAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728899199; c=relaxed/simple;
	bh=7HJuvEBcwEpXl1rm+VkEP99GiRmo5Ws1/QFXKSNn/qk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OFs+fkQlbEphVWQOBr67sFvG4+ZFr9EXfUkPuZJVFD85f3/trB3PpjyaTw2uNkyx6K3jMUTdpGe7mcCGfEWNMOjrWuNWbE9Xn2i9RcKSeDuFrtFPSs95hOC9nUlrNmuoiKpBcxyNsmCuN7YtW1W7Dz4q4AKqPzd7Xtj4CtaQQu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SImFC5Ea; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71e6f1a5a19so155127b3a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 02:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728899198; x=1729503998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lGAj2jLrEzgkhSMMiUrwfy4iHgtWvXHx4K4cAraijBo=;
        b=SImFC5EaREWd8gs24wgaAoknvHx302XzDNfplHg2g2JU5ZvEwEfsUWvPOW0lOW2dt7
         XbJafNwiO0bYgmJTZjgrd+WOZRGGnsyZrms3e50YAJfNVGqvZodMZZyrF6WvK8ANaXFU
         uf+LroWRBNvgWWD5/ke5XlSmDp6aLi6KZVKbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728899198; x=1729503998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lGAj2jLrEzgkhSMMiUrwfy4iHgtWvXHx4K4cAraijBo=;
        b=rTXpW+XMDs1JHVdnOAXe/UhogVNAZAs+Sw4Sl4t2LdtwqmRU9/5wciOWw7ibrbwMcU
         D07B5Qp/zbxColJtEEdxT7VL3wlfLuLCw/TdyJVcwhqfDzr+No4U99MLEZKcFtZQdbQL
         l6XIdQ6zVKv0Fi4ZctFPHoB7nAORGzJsiWhoDwpr21II8u5PJrTwS8ABh+ZRuMGGFmyZ
         KsVwWcDiEAkW7Etdn3nF7HSyaSL5KzkO9GfcL0Nku1k/xOCxmW0fPZTcnH3NIJ34e82i
         jHvLSsfisjmDPdrIZ0KdvZ3Ke4Q7EgzlylwpaP9Puh4kvUic1ONeovldPN4zv0ASYM3U
         BunA==
X-Forwarded-Encrypted: i=1; AJvYcCWVP9Nz4cLzqLIHW+PFDer3ziR+wS/9d+wH7dAKCqfGfxqkEh6UX/JI0P4a+NptDssgFMUVt3K7wjkG@vger.kernel.org
X-Gm-Message-State: AOJu0YzHdyDqPW8Hz5JJnO51mL39+V/3743E4WXIwiBbx1bkuua27yF3
	/Dkea0VxTeKh8Gt7dusMzB/K9uLuRg0QhWvvfWOQngtJdW9InU7Zp4qITe8T9Q==
X-Google-Smtp-Source: AGHT+IGZNvapvPp6Etbzc/rr1MG2WKLL55pkoqmLVJ0fD4PI/ZmMSCXiEmbU2xQIPmAA26hDfWLABw==
X-Received: by 2002:a05:6a00:2ea3:b0:71e:69e:596a with SMTP id d2e1a72fcca58-71e38074bc2mr17890339b3a.25.1728899197736;
        Mon, 14 Oct 2024 02:46:37 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4868e657sm4891705b3a.67.2024.10.14.02.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 02:46:37 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: mediatek: mt8188: Fix MERGE's alias IDs
Date: Mon, 14 Oct 2024 17:45:31 +0800
Message-ID: <20241014094622.1720289-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MediaTek's ovl_adaptor driver requires the alias IDs of the MERGE
components to be indexed from 1 to 5 to construct the MT8188 vdosys1
routing path, since merge0 is particularly reserved for vdosys0
according to the mmsys routing tables.

Update the alias IDs to ensure that ovl_adaptor can find the correct
MERGE components, allowing DRM to initialize without issues.

Fixes: b13ecb7c6f67 ("arm64: dts: mediatek: mt8188: Add display nodes for vdosys1")
Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index b493207a1b68..8c2667ac2b64 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -29,11 +29,11 @@ aliases {
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
-		merge0 = &merge0;
 		merge1 = &merge1;
 		merge2 = &merge2;
 		merge3 = &merge3;
 		merge4 = &merge4;
+		merge5 = &merge5;
 		mutex0 = &mutex0;
 		mutex1 = &mutex1;
 		padding0 = &padding0;
@@ -2698,7 +2698,7 @@ vdo1_rdma7: rdma@1c10b000 {
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xb000 0x1000>;
 		};
 
-		merge0: merge@1c10c000 {
+		merge1: merge@1c10c000 {
 			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c10c000 0 0x1000>;
 			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE0>,
@@ -2711,7 +2711,7 @@ merge0: merge@1c10c000 {
 			mediatek,merge-mute;
 		};
 
-		merge1: merge@1c10d000 {
+		merge2: merge@1c10d000 {
 			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c10d000 0 0x1000>;
 			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE1>,
@@ -2724,7 +2724,7 @@ merge1: merge@1c10d000 {
 			mediatek,merge-mute;
 		};
 
-		merge2: merge@1c10e000 {
+		merge3: merge@1c10e000 {
 			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c10e000 0 0x1000>;
 			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE2>,
@@ -2737,7 +2737,7 @@ merge2: merge@1c10e000 {
 			mediatek,merge-mute;
 		};
 
-		merge3: merge@1c10f000 {
+		merge4: merge@1c10f000 {
 			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c10f000 0 0x1000>;
 			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE3>,
@@ -2750,7 +2750,7 @@ merge3: merge@1c10f000 {
 			mediatek,merge-mute;
 		};
 
-		merge4: merge@1c110000 {
+		merge5: merge@1c110000 {
 			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c110000 0 0x1000>;
 			clocks = <&vdosys1 CLK_VDO1_VPP_MERGE4>,
-- 
2.47.0.rc1.288.g06298d1525-goog


