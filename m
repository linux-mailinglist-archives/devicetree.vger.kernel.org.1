Return-Path: <devicetree+bounces-136999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 819E8A0737C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:38:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F6E23A7C74
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902332165E5;
	Thu,  9 Jan 2025 10:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UL96UUQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0D3215F53
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419082; cv=none; b=KEMXU4TcWdjjNxylSEA3/L6Pp5zNf1A11amOScIq8u55+ug7LC2DDFnAzJzgLrRazxyOx58nr2oCDkqA5GKcZMOQYEd0FSw+cEk9LjSiKWataw8TP3V0bHUjNpiy+t+uSidOvrqBlsK1pJly6Nou4zWeyumhezmCJCVaSkFrsGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419082; c=relaxed/simple;
	bh=Kcf1SUIN5vEzdUGN68JCSdbwN+b1Z/rJ8Jmg6uwRfvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SbAQShjvw38KyOrw9mYgDEzt2imIjYQnjR+72RXcRJME/2vxEQb9WRIbpuGFBlkQKdfNU6lQz2lXfO/uKbAiu62eM563tN19eY6IQwT5jMspAZwY7hG4MZRTveM0adyUfLiXmP5eJVo7/muZ4zw/X4g/SJdw/kOXMb2oBWpyOu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UL96UUQd; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso8409665e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419079; x=1737023879; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CRkSXWyXf0xsAqoBIGl0gizy0vMiUiEuhlip5XNNFI=;
        b=UL96UUQduJvPiwfIfbFwkMas97Lb/JBQL0Zdw3swY+IY2l3TIPY3x3f/tFZ9mLqown
         3ap3BSkD/C2Gh/RQeF4oJnCygJpwzBmlPuGJTAhHzs51FrKiihV8OPZRqEGm2n7RulmR
         GTM6ovTxAvvA+/7F8AVzmjw9lD6NhovMF+HkDqn+NXLHWiHxY3fVQ5TFz7V00RDoaL5B
         /rz8vSiTIgkOHwekU0xqVAV5Rn+4YxsX78blRk9dxGhmyL5xggjsEtE5fgIDrHvLy7a8
         dvzSrJv7sH+4/MeLMRq3tXLo9+Eq1ctiEqinx9LQG4H6YVAhV9QN5749PCb8MmZKBV96
         x93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419079; x=1737023879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CRkSXWyXf0xsAqoBIGl0gizy0vMiUiEuhlip5XNNFI=;
        b=kszsRii+SgJ7SmLZPxse1zNf4LvYvB8g6ErVQUIuL/IhHYSSYoNSCcE/pmMVM9Eyer
         ExEwfrV4ih+ewVisP9seiZwiMYR54XxJhjexHKS9QGXKGtxmC5iGAoYGKAGEIPeGeFtC
         ju+QhO5ze/v8CqSwsHm9xxj+gbgpJHhRqyBC2TO63seNKCtMJ89NW2+/K9dypaCxR4Lj
         CH0JEmZ7QZ7lcv6sxP1BVmwh3iYEq8UqBLHPkeYDnixLrZrgQEs1pQhWCvz0yM78SSwA
         BxhsBa48HwPsUctHeaj9elvwnf7V1Dob7ByEv9jqCYfUg1f5QYYyoJA469NhCGZtyWsK
         btLg==
X-Forwarded-Encrypted: i=1; AJvYcCUgY/B4j8Kmh1fZrAjQZEIvvcLNkUu4czvl1U9CjpnaBBwkSKTtFUgKQu/q4RCRv/zIeCgIUw5Q2h7l@vger.kernel.org
X-Gm-Message-State: AOJu0YwSjYSTJMW4F1acO3piBTn94fBwnjicsg+XDHs+ilTfQKPOUPk4
	yjsONS9giaXHDWGZRgEiAs+vHtf5Nt8aaRqjCrUQodEtI6AnI8qG0F69MGq9q8k=
X-Gm-Gg: ASbGnct3rhk6E/hkUgdTFr3/+W1QAQpPZuz6UUFeBPbV/x+CK7uZOXQ8PgN5IaLs/sH
	xTyZuTUXZoB3mQybArXpWWKP0Mv9YGceHVId7FrpLPS2UQG4Ltxi+HdBuKn+nCSUDAmTnHY7HfG
	75EJVmQliJtMkB0yKihONmVb9F4F4S4d2WaIAQdCAtVBaQ0aIVpFO6/x1f4E9kCzsGkF7dCpSU5
	ItTU2RxfDBhzFdCLjxM1PrMaj15mLGNaUBn+6eBfPqzAjZjJ8jvOm6PLsU=
X-Google-Smtp-Source: AGHT+IGoo6aCpQaw/38jzOJWljZd/4p+WYRQSK2etIlIn/JQoa+/t4gGr2EQYfHYcCjx9tdypO5CjA==
X-Received: by 2002:a7b:c315:0:b0:434:ffb2:f9df with SMTP id 5b1f17b1804b1-436e26adf94mr58117845e9.17.1736419078947;
        Thu, 09 Jan 2025 02:37:58 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:37:58 -0800 (PST)
From: amergnat@baylibre.com
Date: Thu, 09 Jan 2025 11:37:54 +0100
Subject: [PATCH v6 1/6] dt-bindings: display: mediatek: dpi: add
 power-domains example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v6-1-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
In-Reply-To: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
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
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDgnHk/QDeV9U8e3dgtdQJKzCxpbiCFeCOLMRp
 NjwR1diJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURexpEA
 DDgha/jEhBzdZ+TAQIqu03dqxRexVtWPw6SdcPV2rKQHlOzz66Usv0RV3Pr9ttZLknkmm+awrWLAbA
 SaX1ge0cH65bzfh3xplaNqdw4+NzUx9WRx4n7HZshUNcQzg0LPgUpaIkRN20xNAH2orofDhJVAcZaR
 OWXyGKpMhnXZZ2nrhMgkIL9Uu5VkxCBpKeB2Ry4z94dYBsDOmPLz47/b8dAht3T/BguzZW9MV4RZfS
 3NGTzBKFRSpufWVEqfYoQV3fY4UUqIIXdM+dPzwEiaGOFUZn0RvQQW16u+G+E0yXEMOZHQ9ep+d+Cv
 xyV5gHyDam6TNvSQCz7EUKfS9g0P//OQp4a1TXpdS2mvATg79+PUeC4pZhSiGj4VCFivIn7yMgQANM
 W4IBUk3M1KtaomudMm1TQXVljqNoz9jYzfSzZMOiTxLh6kkKpJWbEcvhh0uNtjL4rbuyRnuliKnDq4
 bSEyZXo3fRqB+vwZFV0yrOHlNUdZX9W4Ov7jtmb8bhX5tXMS/kjHh3pruU/o3lFM6XC+u2c+u2oTX4
 8IxjXfFJ+/zdE9qZrtDyOJbRStETHs1Qd2+xNLgQD6eRx+OKNffrGEkIwHM8EmaAHVeRVrD2FuEZIA
 PObseZEW9O1yyJq3q+Ux7rcwcc+ps/50ZQDD1phVFrJp95xV/fgML4iJhFAw==
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


