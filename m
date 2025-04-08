Return-Path: <devicetree+bounces-164229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B4EA7F953
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC10E18933E1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872A1264F8A;
	Tue,  8 Apr 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="G1t1zwKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F39264A9E
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104202; cv=none; b=VuTpEDRqpAeHMWYRYw6Gtwmgeu5v9Tj0b3RBaglCJS+wS+Fmx+u8C77BndQgaBR1Vtvuv2vpjCaXe2y6MAOv0s5hZbH+DQ3gq1yuN5OtPP0HVyyfRsbVge+pylp6SU/B73YezEo0NhY7/9ymA9zN5U0oM81ODZmi3OQL2weHYXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104202; c=relaxed/simple;
	bh=bdnFDgVEI5AOqZfbKX9QQbECCPESHem01GmKSzkyHbE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XJo5gPfQsvJ2NPruOWTOniBHu0LXgR5Q+LSplrXqm/SZfo4LK37Sb6drgjFDpXa0AbTKUSvKOriVMAYc2Er5D9KWmHBytJlpSsj7iKPxq6AW0v2K6YXVEODrI+QjCncQ1s0KX/tHrg/wrmcIxdNPA/54n0R0ZmNxc8V/+uO5mY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=G1t1zwKH; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-227c7e57da2so44715145ad.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744104200; x=1744709000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DNUnjAwr3K7/bh0YQuGEFB/xa4tI2s8atXnUMP1mg7g=;
        b=G1t1zwKHcBaPUVCJs4l/312aX70OROcWJzXZ1oIy7/S0peYjPesBrBeVgwDWro/epG
         5dsKXfsxIJvfDK5+85594bIu9dcSq7ViuWBVmvt7sKfTg9hs0H4AzMrFx00bY5ZdA174
         cFxc3hmyFCFXiUhaRzmmcrb0Uudq43XlEd4Wo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104200; x=1744709000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNUnjAwr3K7/bh0YQuGEFB/xa4tI2s8atXnUMP1mg7g=;
        b=QC1574vqHUdCaLx0jxXKltMUjsIo6QVPe1Q8qXHDuwQpmmtFBVa0tPkk5gvJnqdSrJ
         f4bbzWypK3+S8qmGc6FwuehkHGtvKn2TfOmPNFBG6mF4Mtj8HtNieoeIlMm1Ku41ZzUf
         653PZz7PhQLkRvXwMp9VSsBhpvlaFLg2XKsXjt9s62xZXTey9LQp/80BeHCTSPNAEyvp
         nFcVRSLLnbAAeGN1R6d8VD3ELhGkF+R1Mn1yPwZc7MdsLSzD2+y3CLr0lnJz3sdhcGLo
         WY/NEfgIacxoLVI/XyTRf2g5dOD3tOcyJokmxeRtxo9k5HjW7/AE6xnLry8utaBFvpHl
         rUtA==
X-Forwarded-Encrypted: i=1; AJvYcCVBZVzLHX6Mro/Ex1OBtp1F3/u97SOheEZSinqg/4lPpwhEP05gYMKf8VGJfoYdOG+WxmXxHh5HSQYb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/UbXL61KPxBClYPVooYrE+RtprsUVFSfxq3gvpNeWKF5F4rkY
	phsvF7tUL9WYavuUHsHOQgMUIicXv3PLToZ6lTqzIfScE0Xpx6H++o0FPRmAdKNRbvo0oKAz3/k
	=
X-Gm-Gg: ASbGncs9TMSCIWzxFn/kVaOI68ZIhTxz4PBoKjVUmGM09zIP3uh4c+4J2Gg8s1aUaGQ
	/63BysmOqGg83aHsR72PAoubUSJMA4/cyBpY8TLNdkYWWuS80q6kzYZSu7jfVDtxvHSokmo3VJ9
	0OS5wWUlm6PiCQWW5+aS2hAxH/TOScFkDM9NV/xvNB4zAWVOoxlnmi1P/1q9MMmun+wumHdqhYh
	8xOPiP0Keu2/hclmDy5tUHa44BTob+ykGqIAmzB85io8Av2tk97ZpaqTWVLyE7+ntkg39k/szaU
	YlzwqlvTnu3qKeTpNB75OHg1e2CxnlVSlC3StlyfqHjeLhogcYIWJRqvBjt1iQo=
X-Google-Smtp-Source: AGHT+IGPhkSRb5R3PVNGCzYv1a6SJZoNU3t0aIi0QTJm3JWsa/HB1uZ+jzdpdKOIXFpq6puPuDXpRQ==
X-Received: by 2002:a17:902:da85:b0:224:f12:3735 with SMTP id d9443c01a7336-22a8a06b38dmr169101945ad.31.1744104200152;
        Tue, 08 Apr 2025 02:23:20 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:79d9:c941:96f6:ac1c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2297865e477sm95651655ad.122.2025.04.08.02.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:23:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	"Chengci . Xu" <chengci.xu@mediatek.com>,
	Yong Wu <yong.wu@mediatek.com>,
	Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: mediatek: mt8188: Fix IOMMU device for rdma0
Date: Tue,  8 Apr 2025 17:23:02 +0800
Message-ID: <20250408092303.3563231-1-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.504.g3bcea36a83-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Based on the comments in the MT8188 IOMMU binding header, the rdma0
device specifies the wrong IOMMU device for the IOMMU port it is
tied to:

    This SoC have two MM IOMMU HWs, this is the connected information:
    iommu-vdo: larb0/2/5/9/10/11A/11C/13/16B/17B/19/21
    iommu-vpp: larb1/3/4/6/7/11B/12/14/15/16A/17A/23/27

rdma0's endpoint is M4U_PORT_L1_DISP_RDMA0 (on larb1), which should use
iommu-vpp, but it is currently tied to iommu-vdo.

Somehow this went undetected until recently in Linux v6.15-rc1 with some
IOMMU subsystem framework changes that caused the IOMMU to no longer
work. The IOMMU would fail to probe if any devices associated with it
could not be successfully attached. Prior to these changes, only the
end device would be left without an IOMMU attached.

Fixes: 7075b21d1a8e ("arm64: dts: mediatek: mt8188: Add display nodes for vdosys0")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 69a8423d3858..29d35ca94597 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2579,7 +2579,7 @@ rdma0: rdma@1c002000 {
 			reg = <0 0x1c002000 0 0x1000>;
 			clocks = <&vdosys0 CLK_VDO0_DISP_RDMA0>;
 			interrupts = <GIC_SPI 638 IRQ_TYPE_LEVEL_HIGH 0>;
-			iommus = <&vdo_iommu M4U_PORT_L1_DISP_RDMA0>;
+			iommus = <&vpp_iommu M4U_PORT_L1_DISP_RDMA0>;
 			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x2000 0x1000>;
 
-- 
2.49.0.504.g3bcea36a83-goog


