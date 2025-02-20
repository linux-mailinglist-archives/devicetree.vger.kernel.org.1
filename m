Return-Path: <devicetree+bounces-148879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A6AA3DA45
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20B39189F75A
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018DA1F3FD7;
	Thu, 20 Feb 2025 12:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LrJfN1P9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F78286298
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740055305; cv=none; b=NdfiRpC6KQP7NFRwdyTybvjSPyhCygrIdB2aquLD9Ffn2wIjppmnspX8apAYNpC0R7b6jACvlEy8RGlbqmwv57E9FX6jEn3lseqYRIZkYbn7Piiwh5ALINS04Zdhs1Hxitt168oeutI6++e3Vwq+FprWiT30P3Fke9y9D2S+ncE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740055305; c=relaxed/simple;
	bh=xFLQl+o7dCdeqMWAhg2d3xRGoIdlKRWLK2x/QpFcn1g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NkXGjSZSVHGa7j2Y83EdBeZO9iDxA18e2tEZJuYm6qSqG9QW05hGPZE4BTqNRaF7pqoc2jBoWv2+KfC3PEJBDvuoEvQ33fPKN8N82LDj5HCXECVlx5tKOp+icYe26eYqK55je9o80MCH5zIzIQEbUbUJjbizHz92yp+o8C+r3MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LrJfN1P9; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22113560c57so16169985ad.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740055304; x=1740660104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NwzoK57CVivbZFeToWr6rVZ379tMpp+f9WbOWRwIabg=;
        b=LrJfN1P9BOukIZ9rEBUGe8R6rYnwnYNQFSM75DFeZLzN4j5lHvazCbjPpVg7fux26d
         J47giTAwu6EUfRkwC18tCIpsC6wmAlGP8vUTJ3kIKiu75T6SXFyv7BzzO4tQfCm7ytTs
         gYNGl9iuz3j0JXfJ2+2qdz/odlUd6XY5NoxnIRuB0rRwSYS9dnWzCS4dgmASn6xoqQ3o
         F9P/WbD2rsf/qLppOQOMeEXZLBlZsZggMtlaUI0W5awb0HanghJ+vbr1AOmvo3UuiM75
         zkHkNXKfuqg1tST+itFE4wH6LLBko8u+rs3El569oFdJ401xPynoZkSw+DBVuRXoYJnJ
         TN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740055304; x=1740660104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwzoK57CVivbZFeToWr6rVZ379tMpp+f9WbOWRwIabg=;
        b=agYOf2Alt9rXhdavxWDcWvsIiIzX5P56W9y32r8URRCHpwQXCzgQ16znPzuC3IqKF8
         f3jWWGMSV6pznow0pMKiId19bxTjBguqAg+5iXM5rSOrchpltN08jiAouTfRwu8txexp
         Lk08km2PfJbLXQPxo+jfzOg5sQR+by5opQZpptZNgDqMBZix12tu0hhcfvlDnTXBahs/
         1NFn8wMatnA9BC54wvmWxFDraxpS7xCpl4qFyf9MsY5vOsdv0Eq+1+58RxOb9tl2pDvG
         pxF3afhmzyUqYAMxw1wK2uKBaLH+auDTJcTF6kwnUlgToaMXZZKUfOHY56jbIaZKgkaV
         6Ejg==
X-Forwarded-Encrypted: i=1; AJvYcCXgUpJcPhZgulH4WjnbENbj40Hz3xWhtNJG9caaeXicvK/BwAKVFbuxL6jzhnk57Nj2SSMtO7SUp6J8@vger.kernel.org
X-Gm-Message-State: AOJu0YzvnHG7MU8ncB4sVSbfueO+T2R3Ope9bquNAh+cdnh96CCylARk
	hy7w2nYqPlAS2BzgMrfDKsi46GrD1dwGXUfMWBddTdtD8sqPTirN
X-Gm-Gg: ASbGnctyVsTKHoWejW3Y+A9c0/DSmEpc/EY77eTU7iRHOHEqYWsZFDWBt7HpDOlUM58
	5Umv4+JxUW2iCNu6OSBMriv4LFbSkKCQQzExq8IswlUvcInVwk2GYCXRwYRebLnN44D4iVzMeiO
	f2GA7Vuipm+YHEP6ixB1n3axTOROrZPbEqXNmxQZ6wxhw70S144qqg7+h7e0iUsQ4+EF/p/vLi1
	1hwdSgrK4s0lDYSoHiWH4iLz+ChdInYMy2P5KlQLp9jTr3p+uxc/YHuyEe2dFl5pj2+CVk2MN4u
	3Ybm/dZvDvaY1MtJk2CEmYJ1MVo3Cw==
X-Google-Smtp-Source: AGHT+IEUxOa8RxncMcqI6MDH3KqAHlCb1aHAhAoOyQhIMr1TuOd4evgMkvMesnf1ee6u0+j91BV8fw==
X-Received: by 2002:a17:903:2351:b0:215:a964:e680 with SMTP id d9443c01a7336-2210404fc53mr346967385ad.25.1740055303658;
        Thu, 20 Feb 2025 04:41:43 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9a27:2e77:89d4:5724])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d559088esm119418415ad.242.2025.02.20.04.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 04:41:43 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] vfdma
Date: Thu, 20 Feb 2025 09:41:38 -0300
Message-Id: <20250220124138.2355253-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,dspi.yaml the expected order for describing the dmas
and dma-names properties is "tx" first, followed by "rx".

Adjust it acordingly to fix the following dt-schema warnings:

spi@4002c000: dma-names:0: 'tx' was expected
spi@4002c000: dma-names:1: 'rx' was expected

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/vf/vfxxx.dtsi | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
index 6334ad4aec4b..597f20be82f1 100644
--- a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
+++ b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
@@ -158,8 +158,8 @@ dspi0: spi@4002c000 {
 				clocks = <&clks VF610_CLK_DSPI0>;
 				clock-names = "dspi";
 				spi-num-chipselects = <6>;
-				dmas = <&edma1 1 12>, <&edma1 1 13>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 1 13>, <&edma1 1 12>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -172,8 +172,8 @@ dspi1: spi@4002d000 {
 				clocks = <&clks VF610_CLK_DSPI1>;
 				clock-names = "dspi";
 				spi-num-chipselects = <4>;
-				dmas = <&edma1 1 14>, <&edma1 1 15>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 1 15>, <&edma1 1 14>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -529,9 +529,8 @@ dspi2: spi@400ac000 {
 				clocks = <&clks VF610_CLK_DSPI2>;
 				clock-names = "dspi";
 				spi-num-chipselects = <2>;
-				dmas = <&edma1 0 10>,
-					<&edma1 0 11>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 0 11>, <&edma1 0 10>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -544,8 +543,8 @@ dspi3: spi@400ad000 {
 				clocks = <&clks VF610_CLK_DSPI3>;
 				clock-names = "dspi";
 				spi-num-chipselects = <2>;
-				dmas = <&edma1 0 12>, <&edma1 0 13>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 0 13>, <&edma1 0 12>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
-- 
2.34.1


