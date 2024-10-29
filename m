Return-Path: <devicetree+bounces-116979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC929B48DB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:03:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B86D9B22934
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAB5204F69;
	Tue, 29 Oct 2024 12:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WR7fW8mS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8396205AD9
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730203370; cv=none; b=AHADX1JMbysjFoum5b/XxhhcsbcEB9eZ48Fv5S22sYP4YF/8iAZY33LuebzEXmpCZqrHLw0UqnPpalT2fls6cTiORRPXb4yfyo9F0zlv7JzestJYiwHOoYY7GPAQghzKy5huzGQmaO20OpKZy2lNaQiFfaozp16iyloCc90+85M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730203370; c=relaxed/simple;
	bh=383MNab9sSylPzbaybz2YMoOJxM7CEApeV+isiGZE1U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hBF4/3sD4cIAFPySIwN486E6339JcGrv8RgTyfXJr9XVF63Ube7pAmdyO568QX0c+kkHEswbJZXf7cJ0WKJwJ/4MwC1+tYdZehNrX2SfpfUFxHZxbbMNV9vc+hV/bLcE5B6TzN2TlURE68ubVQle63gWkHuAxBlJRg2ttvLMtQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WR7fW8mS; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71e983487a1so3912407b3a.2
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730203368; x=1730808168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hcfVMusxKwU+TU6SIY1AuqRYgTWEMMrGe1VKj8U1/NM=;
        b=WR7fW8mSWjoi/a8dgt+hNPLIgWdlwOGCAmY1yh9sEqA2Et1BSmNBEorEMDTWGTopzS
         VdiBMG4SegSykejnecfmNMzqnfvcKeozLCsSXI+niEZCDk9p/b8otMWz/msEc9HnL/a6
         S9zVt9Y64T90drfqeFjDhsGOVniLUbMavRMJ50A6Y2W7NNT1drXG/mERFb61KxeLNiIJ
         mQifmIY1segz4uUg3MIIYkwEsVqqKO9esEdusZODK+xt3a3gJjfxv9H+kUsz8DeOjZ2M
         YCJOF62ihulr1ftXrOZrSkiZbWYcYK8SOisijG5JHWMRkvdzeVL41bdUgJzGPJfBP+eW
         UtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730203368; x=1730808168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hcfVMusxKwU+TU6SIY1AuqRYgTWEMMrGe1VKj8U1/NM=;
        b=Bdil0wawfMIrPO2sa8OHEVZ39/OUzYnM+jM1or9TDGNn+iPdIp8k3fZP5FPm/G1pAd
         yx9ofn1giifSsEf48DfqhIPVmzjYEDht1/NJddgiVgHnc7ugn7jMO/TyhQ+LmUTMGgSW
         h1L4706oMSh7DptCO0lXrgznj2XsDSco23jARoKHx3yjdC/PFeg0Wytum1NG98g0ScA8
         c5++w/yZDVYNdwbzyaFcDdJFm6OmzCsBTy3KUB2qmBpgtDhg5d8ocqljN4Y5M6h4xuTb
         KO76/AEINxDMldMChjYAFqz0Qk6lSQuOl8PYzByCvUrngT/QVGJXmev/mTG6WOvWZJfX
         dYnw==
X-Forwarded-Encrypted: i=1; AJvYcCV8Wfr1GmTZ2kbUdU5RanUWSWm6p/5TnNGpJDCZdt7Bg4a6VBBo++m3PrqdBrmQ+h7e3Da1Qv8lh1bO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv8/viL8SC3UzGp67g9xhyDnWSHWDA8e7M5ajbnn5gE0s8QEF8
	TdPxaK94kRmRysEkj6t2Qa09fGiVFiY0oJJ+bVvdCeA2zMmFGQSk
X-Google-Smtp-Source: AGHT+IE6/N4HaxtLmsC1vv1SohgG4z64qywId5rWMF+nsLvluOwKa5NTqFO4bJD8re1fhrw1o3yMuw==
X-Received: by 2002:a05:6a00:198e:b0:71e:7e8e:f684 with SMTP id d2e1a72fcca58-72062fb82b0mr15764161b3a.9.1730203368031;
        Tue, 29 Oct 2024 05:02:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:c7e4:1ef3:7ef7:5ae0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b7d2sm7428830b3a.114.2024.10.29.05.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:02:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
Date: Tue, 29 Oct 2024 09:02:34 -0300
Message-Id: <20241029120236.299040-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx6sx.dtsi has the following lcdif entries:

compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This causes the following dt-schema warning:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
'fsl,imx6sx-lcdif' fallback.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Newly introduced.

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 8e3a98aeec32..836955de3bc9 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -32,6 +32,10 @@ properties:
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
 
   reg:
     maxItems: 1
-- 
2.34.1


