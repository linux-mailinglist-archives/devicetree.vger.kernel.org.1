Return-Path: <devicetree+bounces-226237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C327BD6493
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:54:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DB79E3501D8
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10002C11F0;
	Mon, 13 Oct 2025 20:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GX1KM/PM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232612F1FDC
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388737; cv=none; b=RNNtJow0puagdQCEwq38tdJryx2eYBG3VRNl+MQuHOSI5eM/V/wXqSYpJbmAop0zUSmwoejYuRfyB/71XoxVeqwgu+OmTSgoxqRTmaCnRZ2YgPoC/G4bJg2MsaWPK5HINsWNq7iNDhMFQy8c5JUco1AagShhFYJvL/148JjKBoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388737; c=relaxed/simple;
	bh=NiYf8HpP3IzLaBb0elE5gimWCZ4+UjLZTmvs7wOi0Pk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tUSG3+CypoPeo+xshrGGBJ9OKx2Eefmu//+AYY7YItMWgiT3E5Dhx5eWjcMEI77R6UPejBYLkd6x2AweGHXtes8SICsjY66ZN0wiRYbBdUPkwgRsGLQs0vwoXTVpSrCcYN49Hkv7GAK37cU23dzeCtF1c16G0roTVN9t8SyKovI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GX1KM/PM; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3369dcfef12so5280269a91.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760388735; x=1760993535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lCJT5qJRzoYDN5HCSmFRUGhqrxSLVQWaebjounZZ2/g=;
        b=GX1KM/PMqF1exZ1StxKIX3YXNxvOeyCmlLBoFH5N1qnbl6xleKUGs6XM/Ip3giTxnV
         uMRDFPqmX9QR/rvCyo+G2f+8rFeuTvSA4qLqysPxvhFejVzEITDIB2Umw4POj03UEVvj
         Cgj08gAro7wygGok67YbpuCenb4mq+xgYMlAkOu0iGrPkvXLQqteXcFg1WMBr2idJciB
         YQ4dPmYwo7SxyT5FEjKfIgo9Cab1zrCmel/mQfnEofGfewJkhrqhIYvM3LwoWJgtkbpr
         8zIHoH6AFitt5AGJ3USFpPZ4O3ZLaY6cbs8omjRrcwBhPPqLlHHUPRe3wkfaWgI8asf/
         hjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388735; x=1760993535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lCJT5qJRzoYDN5HCSmFRUGhqrxSLVQWaebjounZZ2/g=;
        b=h8w7VSSskvVy+vfesKgQaFfZP1kKJDBEKwvYj66ZRsGajWHi/hU9nY7Qar02gmvAJc
         UsAgA67iTN4YzwE/91mlxtwRsZ0LyGFN+GBcCGTVRu1gO8pFQLYInbeT6K3S3s3QEgXQ
         Y/1+Xd/PBKkIU4uGwarYEbAXR5tdzpMuruCcm8YdquT9z58pzS88jDBmQEm2vTTO7acT
         i38wTwylla8BN4Or2crrmaTdK0GFOrq3SvdpYaLX+ua5Pyq7Cfbg5qqUTk5v+TapYOc/
         iveG3FPFltkLHvFdnKdhtnn453CoKEvEM7o3W0X/sRK06C+gKt2xiTp+fwcxkNugSaVe
         k2KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfW7WAFZQrSfPDMWtyrNQss7AmlvZu+n2t8PKxbQD5AA7/3axIQmn1ot7Moal/B/X8ZrAZmadsOGW6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6H9//+yk08znAlmZAS7zCbp6vm05kGDtdWnvysNmnoEuUu4OD
	BnnFJwRAS+CNRd7gbEmI/9oaar4Woo/0rW41mOfE8WFay2NFoFq1H9o8
X-Gm-Gg: ASbGncvZ/MeMg+bZPMb0xJUpFYsNzONx5x9HpMLYVxncpNHrGNOPyFHyifjzBHwgykO
	c2Fo+TwuRDEw/dWL4mQLMAEyAn3L1fwinYQseiMkqFQxtNxUMz50Jk6c1Qe76FmVER45n4z0UDl
	9h73hrK/bh1cCHLmA6E1J37wonxypEqQx8enmSjJqfNfPsDcgvw+zc5QkoAIi4rQ+XkfdalKF8u
	oR4VsR3M7DuwdhKSyZLvvM/tdZ97ErFvN9E+K2mZjDCUnzoUKMryxqSsB1dDIi2RvL0Jw4lIYhu
	Ec4JkO7ItV7IL/ELdBgmqDStZ8A/leweYwWSTwIOe5Hs0Vov3yRhL14y9okzciDUurFDyEZxpvT
	eHPdNalrqXsy2cA8sIM8YpCuYKUJsqP0Bc0IDQjgnK+gPbFPDqcNyyZtLzVbQwF1VPA==
X-Google-Smtp-Source: AGHT+IGSiJ0cJsM0+QkIjYTOvMW3PPxd74LrG+PyQSmnXQ1wow4hy7WMH7D3pl2v9plOVEqf1jvdHg==
X-Received: by 2002:a17:90b:3b8d:b0:332:5349:279 with SMTP id 98e67ed59e1d1-33b51148b30mr30740786a91.3.1760388735130;
        Mon, 13 Oct 2025 13:52:15 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cc82:37a1:ecfc:e51c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61acc413sm13445147a91.20.2025.10.13.13.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:52:14 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marex@denx.de,
	stefan@agner.ch,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
Date: Mon, 13 Oct 2025 17:51:53 -0300
Message-Id: <20251013205155.1187947-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

imx6sx.dtsi has the following lcdif entries:

compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This causes the following dt-schema warning:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
'fsl,imx6sx-lcdif' fallback.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hi Liu Ying,

Could you please help apply patches 1 and 2 to drm-misc?

I got several Reviewed-by/Acked-by tags on this series, but the patches were
not applied during several kernel cycles.

Thanks

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 2dd0411ec651..ce31b873fb95 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -19,7 +19,6 @@ properties:
       - enum:
           - fsl,imx23-lcdif
           - fsl,imx28-lcdif
-          - fsl,imx6sx-lcdif
           - fsl,imx8mp-lcdif
           - fsl,imx93-lcdif
       - items:
@@ -32,6 +31,10 @@ properties:
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
 
   reg:
     maxItems: 1
@@ -199,7 +202,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     display-controller@2220000 {
-        compatible = "fsl,imx6sx-lcdif";
+        compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
         reg = <0x02220000 0x4000>;
         interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
-- 
2.34.1


