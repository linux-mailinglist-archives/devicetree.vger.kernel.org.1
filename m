Return-Path: <devicetree+bounces-101955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5F1974DED
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 11:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F207B23CEF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C619317C230;
	Wed, 11 Sep 2024 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mLVOyi+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF8D153BE8
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 09:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726045631; cv=none; b=u3jY3WEvBDMplA+ppKTaYxYdg/MH4BGnF9HNA95Z6/qj8BbegYrDBRR8BE3gvqVkWrU+R6mntUFRiNjH9ldNs6HU8uJCa+D6fwOVvyaO9SG2ZqgH2clNuqlNs6vJuAIH1hv3qoW0cJn8GBeE7+VXWTvUESjWpX7oKwh03WXVtcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726045631; c=relaxed/simple;
	bh=g9teW8e2aWqsDywkQoHu+NGEG3Q+tuV4lpr44qK8yGM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=IJfvPvaBathEy+WkryQYqXPWQ2bRPh61CdeLq6YcUwCI9mXsHc1vD6wARpglyFePcuvp1FNcPao4UKUOMYu20QfgyEehRSu6yOd1x2QXIBVMDBKJxU1HVZpsOj5SmTt/+kQRlsUrp379Qnearl2JvGDXohBXA6zHaXhzSqcxGwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mLVOyi+Q; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-206aee4073cso66938265ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 02:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726045629; x=1726650429; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LHQzU6voJbzXuiTDRaTgUllQ8sZpGhRSONHnUPaSmxM=;
        b=mLVOyi+Q/ULvhuh+/D4U8gqIdUssM63VTXSaMMVKGRHCFcEbetWsXIpGOaZ/QwyZvP
         qlpu9WqyrYhXIcpIK0ML703+/67LTRTIPo56o48b7DwEB4QIKjsLtULjCP9Qo6Alb/Oi
         Lhnnk/L2iR7a3NQKMIcrstjQdkEHOGkzBStjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726045629; x=1726650429;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LHQzU6voJbzXuiTDRaTgUllQ8sZpGhRSONHnUPaSmxM=;
        b=tZu0N9vu9LiN40pbboJY6KQ2Jh9udFps7UyRC16H7+EZRDw7kBDEMjQb72vqeKF0a1
         IKgNKua13aQiHvaLoL4IrsWEJt2wqmt8V3D6S3gautPUEhyeGfAPrJ27xpzy+GNkCeqh
         8INBmMVLTGWHWeM5qAisO0L0v6Q+8sVLJbjkr7gui0SELsXolgaQ937lUB0s8+xVx7JE
         wuG7pSupCsEDHnRPBJgbdkl6NcPY+i8h82vfgsByoZnvJhhV58zhDVwRTKfYfyBNwDeM
         IKahF6c79AEfmpYch8n3FeFU/d7+hD6YHBWmM5TSwi0ZJQu386HbPg6wYHXIyHA3zYME
         P3Jw==
X-Gm-Message-State: AOJu0Yw5xjlwxWwOgQ4X4otuym+iBtkxynnVGk880qa7bYeLUlvDXYNI
	hvvYaybj/JFVYhTz0q1TwkVhMPOe0Xca7Pi4DaWd4gFneQUibNq6i+Lnv44T+1xoA9VlEl+v8L4
	=
X-Google-Smtp-Source: AGHT+IGAqhBnf0SV+Z4g8R5aeEMdIP4KrSDUmh2/nEUjwoIAX+w20TRCdHvWil8SF4ixwWnbOny16Q==
X-Received: by 2002:a17:903:2406:b0:206:b04e:71b3 with SMTP id d9443c01a7336-2074c6e1110mr61414455ad.51.1726045628992;
        Wed, 11 Sep 2024 02:07:08 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710eeb39asm59572495ad.154.2024.09.11.02.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 02:07:08 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 11 Sep 2024 09:07:03 +0000
Subject: [PATCH v2] arm64: dts: mt8183: Add encoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-venc-v2-1-5566c07756fd@chromium.org>
X-B4-Tracking: v=1; b=H4sIALZd4WYC/y3Myw7CIBCF4VdpZi2GwVasK9/DdGG4lFkUzKBE0
 /DuYnX5n5x8K2TH5DKcuxXYFcqUYgu168CEW5ydINsalFS9HOUoiotG9FoORnvvB3uEdr2z8/T
 amOvUOlB+JH5vasHv+gdQ/oCCAoVFbb0dD2jN6WICp4Weyz7xDFOt9QPFUVXEmwAAAA==
X-Change-ID: 20240909-venc-4705c7fff5d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

Add encoder node.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
According to
https://lore.kernel.org/all/184d895c-239e-3f23-970e-6a9563235cd9@gmail.com/,
the encoder node of MT8183 should be added only after its dependency has
been accepted. Add the encoder node in this patch.
---
Changes in v2:
- Fix typo in dts 
- Rename clock-names to venc_sel to match dt-bindings
- Remove deprecated property: mediatek,larb
- Link to v1: https://lore.kernel.org/r/20240910-venc-v1-1-d17dfd931dc8@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index fbf145639b8c90b2c69da1cb4bac4f61ca7a1c9e..d33c0e4fdfc1132463c1d8f058a791fb2b06579c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1965,6 +1965,23 @@ larb4: larb@17010000 {
 			power-domains = <&spm MT8183_POWER_DOMAIN_VENC>;
 		};
 
+		vcodec_enc: vcodec@17020000 {
+			compatible = "mediatek,mt8183-vcodec-enc";
+			reg = <0 0x17020000 0 0x1000>;
+			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_VENC_REC>,
+				 <&iommu M4U_PORT_VENC_BSDMA>,
+				 <&iommu M4U_PORT_VENC_RD_COMV>,
+				 <&iommu M4U_PORT_VENC_CUR_LUMA>,
+				 <&iommu M4U_PORT_VENC_CUR_CHROMA>,
+				 <&iommu M4U_PORT_VENC_REF_LUMA>,
+				 <&iommu M4U_PORT_VENC_REF_CHROMA>;
+			mediatek,scp = <&scp>;
+			power-domains = <&spm MT8183_POWER_DOMAIN_VENC>;
+			clocks = <&vencsys CLK_VENC_VENC>;
+			clock-names = "venc_sel";
+		};
+
 		venc_jpg: jpeg-encoder@17030000 {
 			compatible = "mediatek,mt8183-jpgenc", "mediatek,mtk-jpgenc";
 			reg = <0 0x17030000 0 0x1000>;

---
base-commit: da3ea35007d0af457a0afc87e84fddaebc4e0b63
change-id: 20240909-venc-4705c7fff5d6

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


