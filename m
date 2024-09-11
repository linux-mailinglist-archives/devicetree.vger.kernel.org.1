Return-Path: <devicetree+bounces-102066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C65B29755A7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7110B1F24639
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 942401A3059;
	Wed, 11 Sep 2024 14:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Robf0AoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2881AB536
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065329; cv=none; b=B3KiN0kXWoUN9A3cuSlaUX4rEJVREO3QEwvU3OKjPb2a9uS/OZWACg/zWjNMDmi6/GhMJqtSkUWeP/IoMdGDiiK9LUcR2+TRqZ+xpldIiuL7pdDwudYiQYCe8HCqYaS8uOP8lXobnYCV//+infaHXjBmriPyOQTVD0NVyqkK4k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065329; c=relaxed/simple;
	bh=dn3E1OSWDZj5O8mccoBkEq8mmQ/0O63omvmxxrC2FR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bzvVnxO2B62So0/FR/sSRdbtwpFxYKUN3dRKWF4Me3BeeL2m5MQD6VrMvoulW7Q0sUnlYT+vylf9csy6x6WACd2LtQunyM0U51n/9kTdyXZs+g1MoeANrUGAlVbkEVxDcWBFwUyk/1iqOBOHWtJ8NS+uok1oaPcOIXfHkeOIuDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Robf0AoI; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2689e7a941fso1028349fac.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065326; x=1726670126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNJmlJuaspo2SJylGvarXYbq/qh4LXZFb+SB568Vu00=;
        b=Robf0AoIXTl6jJ/QFqCHIeG/rKoYFI9rNgQYpbXBwIgIagFH9Q0uSImhc+fCXMBiaH
         wfX3qoqr+Ot0XPb//doLwNarS7fVYUtVxnukdzuCVIw4p/lldnbZlYotZSxS3+bEjGT/
         e7GldmoguuoiDawsxeZnD7hG9zrcV+CvTYK7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065326; x=1726670126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dNJmlJuaspo2SJylGvarXYbq/qh4LXZFb+SB568Vu00=;
        b=OSYGjnMqGZwrEHwkAMRcdvP5CbTC4GepKEdsBehMpnuvvF1zIXL13FLHwJneH8Ih9V
         VqxqBvJ41Hija3WBWZF+cPBMbam1WkBvLBXaDyyAa0YZyZUQnNDK2S+qPTPNweCIHGLz
         c+gARQS2uLPCxgd9F01fokZ7skkOW1gplKVNCx5c0w3xV+EB1AB3ggtBhR0RaXBYa5eU
         Q/QCER/02ZAI/jBr6z9OQ6BVwZD31sG3sOjOPga5fi7lLkGd5dhTjMlyKZHPB0/zAV+D
         mvcA/vL57zl7XDIl6/2lvcU3QJ7wAN4at4W9l0Aew3Uv3wI2jzpc4oZB5QDlNxRC91u8
         tzWg==
X-Forwarded-Encrypted: i=1; AJvYcCWVv3rkMerQp/AEoPqEXeebDQnaXcSw3k4kBdD3WitfPoddYMrBXWNeij0OMnGh3w+Ttzynq/hjWmO2@vger.kernel.org
X-Gm-Message-State: AOJu0YzxH49kP6pzJAHb6sr8l/FCfuJbGD7A5AI7Vn7kE4xedMgd7mw8
	JLfa1Kbu32zZ5PzN3Ua9VV+mebA3z8rr8MPXHN2muvijQHAcyq5WInQZsLwrxw==
X-Google-Smtp-Source: AGHT+IGME0UPIJahehavGen0dgvEatXYyewutMBmDSKHZzczItT4r7tLJ/JhZQ5wOmVfzQENAr9Cgw==
X-Received: by 2002:a05:6870:e416:b0:261:1b66:5ab1 with SMTP id 586e51a60fabf-27c1b5811dcmr2051517fac.21.1726065325607;
        Wed, 11 Sep 2024 07:35:25 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:24 -0700 (PDT)
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
Subject: [PATCH v3 6/8] arm64: dts: mediatek: mt8188: Add SPMI support for PMIC control
Date: Wed, 11 Sep 2024 22:33:59 +0800
Message-ID: <20240911143429.850071-7-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911143429.850071-1-fshao@chromium.org>
References: <20240911143429.850071-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPMI node for PMIC control on MT8188 SoC.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v3:
- Remove leading zeros in spmi reg size

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 61530f8c5599..a826ca4d10e3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1306,6 +1306,18 @@ pwrap: pwrap@10024000 {
 			clock-names = "spi", "wrap";
 		};
 
+		spmi: spmi@10027000 {
+			compatible = "mediatek,mt8188-spmi", "mediatek,mt8195-spmi";
+			reg = <0 0x10027000 0 0xe00>, <0 0x10029000 0 0x100>;
+			reg-names = "pmif", "spmimst";
+			assigned-clocks = <&topckgen CLK_TOP_SPMI_M_MST>;
+			assigned-clock-parents = <&topckgen CLK_TOP_ULPOSC1_D10>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_PMIC_AP>,
+				 <&infracfg_ao CLK_INFRA_AO_PMIC_TMR>,
+				 <&topckgen CLK_TOP_SPMI_M_MST>;
+			clock-names = "pmif_sys_ck", "pmif_tmr_ck", "spmimst_clk_mux";
+		};
+
 		infra_iommu: iommu@10315000 {
 			compatible = "mediatek,mt8188-iommu-infra";
 			reg = <0 0x10315000 0 0x1000>;
-- 
2.46.0.598.g6f2099f65c-goog


