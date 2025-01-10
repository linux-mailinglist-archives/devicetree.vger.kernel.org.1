Return-Path: <devicetree+bounces-137465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F726A09204
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68EDC164690
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DCFD20E325;
	Fri, 10 Jan 2025 13:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RlRdOdMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A60120E32F
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515886; cv=none; b=GbB/BAUCC8SimvrseDSymaSmX0SDn6Z8lXNzfU3HQd5uCh4jRpD3yZDRIby3ycRt0BNoiJBQDWC7/uPJ3n4u6rkntzmRA4FXLkvDlTa3qkJl/IPkELZmQB5L6nqfp4VrS3r5ommPUXq8ewNI2JHLS3dFDxtRK+eta7ldqMdHu34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515886; c=relaxed/simple;
	bh=Kcf1SUIN5vEzdUGN68JCSdbwN+b1Z/rJ8Jmg6uwRfvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ga3VTVA6ycSt9M6aQEJmoO6S/pRgm1wgFGgRNSM6BEyyVr50JRRMorv5NskHEi9CUv1xq9rH3ztnNiVu4IaGB2A6ysiCGkmlL7+HdwD0/wtAdgXoc6FOCeedRHF8Y4IMMo09MC9L2Jkr4eJzPYUs8tjaUMpefyDOXL3Q29eZo/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RlRdOdMg; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38a8b35e168so1310756f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515882; x=1737120682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CRkSXWyXf0xsAqoBIGl0gizy0vMiUiEuhlip5XNNFI=;
        b=RlRdOdMgxRaGsu+dh+WhXSMwBIr3VU8FFK9MgOhKDmlcaxxr9p+LfbHmDAP/jqbwH9
         AvxvzxbfpCS/CNT2lSQFjETSGY+5EBanXjTn54xmV/zusK6n368J2raMcGwnZyyRbubW
         SLIVL5fWJjm3Kzb8MLYN1vB9zBFQ1PNCvYSrSKiakEvxvnbJqf7fyk+qYVvh9lPmEpXr
         aD/aY9cQ4OKRN1CVTELKgB7QAZd3RiBF6n4Dm9GDSj5Ah9oBuYaMFJu3OTieSkYY6fDw
         75Pl8aEppwhd6pEaiuulysmmPeXqnrKN4UG8kDtCq6NEonlahUdbodYLIgd4o07vrxCs
         g7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515882; x=1737120682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CRkSXWyXf0xsAqoBIGl0gizy0vMiUiEuhlip5XNNFI=;
        b=wbXrsxR4Cfr0ePcgchyi43YxkwlRkRJWmxVwRo0zi6okM8NBLI4ECDE729RDET9deA
         oRbgG2ois9Oa4AR4nNDE6BWi3qfW/Ykfd0SrYfBfjq/m1utmtJZL879F5zIv/K7YnwFV
         k0MVeXC5laBWClXO/BurFPO73Tztjcx2Y2delN9ttLC2yLixw1YIBc5u106JJCCt3TTZ
         VUOr7A51Y9VQYNlycEU4O00u60riFNPphmvFdLDbL66G9llPB4ZkhkO78GE4zKmcgr98
         kINgmUmylzvpCJRK2A6MY1msql0FGNWiGTOULnBOA2jay4eiynikGyvGpAxh/CIm8CNB
         USbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOx6m4z6+BPeJ2Mg9CZssfvilqHhvBVBwif8hU6xYwjHM2SdzqA337sxol0yaHxcXIJjEQ1USQvb+V@vger.kernel.org
X-Gm-Message-State: AOJu0YzSR4bjef2yKoqkVOp118C3eetVh16eEU9D7npZBHnToEbmPxvv
	17VwBwUYNGQFWHbv4ktS8l6sXjTsHcGEIUObasXQYBS1SBnyqWIDh04HIC/chHc=
X-Gm-Gg: ASbGnct0w65S4iKAydsY82wC0tUtCZnKsbM5txGr6Kn3EHLf6B/7Rc7bGZ+7tlTE56n
	ryjKeBoyeIjIDAw7ycstmHl7VBECbvDSktNv3XXaSfHFVAViC6vmES1wGfbdNiUdvv+eYGz25lX
	xcjKZ2ECRUR25lrdWJrvD04laYHmvHADPxf1PY2YCdJPFKWPV8m+02f/NJE+ghYRtk105En/naQ
	eUCYwPKxJxrG9mo7/6dXlGFN+ajjY59YuZyh6kyCy4II7hk3fJq3WN9PInC
X-Google-Smtp-Source: AGHT+IEeT/k14BcIEcdwF/8jsOntipWrqikOfy+83Y1jOalU/MN+akEWeVXNGmRe7c17qKDi731Pvg==
X-Received: by 2002:a05:6000:410a:b0:385:e8e7:d09a with SMTP id ffacd0b85a97d-38a8b0c71cbmr6605006f8f.2.1736515882478;
        Fri, 10 Jan 2025 05:31:22 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:21 -0800 (PST)
From: amergnat@baylibre.com
Date: Fri, 10 Jan 2025 14:31:11 +0100
Subject: [PATCH v7 1/6] dt-bindings: display: mediatek: dpi: add
 power-domains example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v7-1-6703f3e26831@baylibre.com>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Fabien Parent <fparent@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1612; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=1JKrAs8ef9/G6ny5cfhuHd3DFIbQFHxMMv9wBH5/HqA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEneE6zOf8vEEwrluvT4BlZNUmmzfnh8+dgMnkc
 OKzALE+JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURYjpEA
 DGf6hGHBkuj/S8FHNwSNHu+zjuNgTJivuTPoZm6K2uGhF9lAzwXa43mbbEEJya8ShfFWrU/m3v9KHP
 1Dzgk9DJTlOO1lvgkRv+N6DK8ptMx1C6Aef4kKpP6+dBg5x3dP5J4zL//RyEIZODOEq8GpIRXZMHxn
 HcNdOkYOM65h8eFd/qcfkRbgOH8zSSUUhdoaqPedu3H0TreyDnOD7i8q7k4SIOYYnnXsjxSiPqh3RE
 FPmcXUYg2ui411JC5xLGwyK/ui6RIx0/KpfKiH/ZJeT1SvepMvt4bme6wiqZDJjLKFYqkH6SRX5QDP
 FkMuLf2eqqkjko8WqYCdK2peo26/J/hwDlpMuokN9uJbQ3WR2zIxYjHy5xiexOtkqAjtxeXdJLlJUB
 FAhBmKw6sLzd/9K/D4r1sCSi4FcGfN7VSvIaL51H44UPdMl0etiRaMmMr+8upGdIF/KW1F+d+CAEbi
 eLKoW0d2PUIV2IeBfqXMEnZA+6J1jLZBLdsNdMvUmSoOhyB7utbOF9r7axjT8szg47IsXC6vB+4n8B
 md1my3Uh1z/civLxqDjHZblMSbEhyNglYKeXBleWsc2Dxqs2/dMiWkAslxuxoFbOxq3xPY2yICClKB
 32h3cbGNzGnVEne9TVLq23Z5N0xPqsYSqBDfnDJv+PV0Ihw8CS0a2PEsuYIg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

DPI is part of the display / multimedia block in MediaTek SoCs, and
always have a power-domain (at least in the upstream device-trees).
Add the power-domains property to the binding example.

Fixes: 9273cf7d3942 ("dt-bindings: display: mediatek: convert the dpi bindings to yaml")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 0f1e556dc8ef..d5ee52ea479b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -116,11 +116,13 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     dpi: dpi@1401d000 {
         compatible = "mediatek,mt8173-dpi";
         reg = <0x1401d000 0x1000>;
         interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_LOW>;
+        power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
         clocks = <&mmsys CLK_MM_DPI_PIXEL>,
              <&mmsys CLK_MM_DPI_ENGINE>,
              <&apmixedsys CLK_APMIXED_TVDPLL>;

-- 
2.25.1


