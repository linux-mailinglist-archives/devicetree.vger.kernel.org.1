Return-Path: <devicetree+bounces-232708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D0DC1A867
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 765B234A78C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789C132573A;
	Wed, 29 Oct 2025 13:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="U1YiPXJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1D832571D
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761742877; cv=none; b=d3yS6wAM9n+LGHdptYrw9qauhtc/IOhUsDcD7FWzYbo7ZCvbh7pnWZlyOCuC5EjrMtgH0+ZjH8y2YiYLktQpRi74WMJmDRM7r8TLlzYyth0nKKWEcwBipkxHq8QrD8qrUiZmPvxYyEo47clzMQsd9JbijwycinjSze0U1FEaDyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761742877; c=relaxed/simple;
	bh=+p+VvNckarVASnJXjTVrkxxDDckYCgPyzbagx3UZjQA=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:References; b=iqxBFcxwLgm8y4OyL2bunumtBLUbutXxC2GGkzftLtqITZmcZleAZ893qkPSBa1MlVaSzfjEcbyoMPbyYT3WHHQd1UBcAjVzUaZVeb6EcLtUmBIw3VgHf0UW5jgVC/7dSmOHl4/imGoHqLzhWvgOyAzoSWDRdO78iCnij0TIL4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=U1YiPXJ0; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20251029130113epoutp04d122f9d47eebbdd3fcf3149cd664be6b~y988ar92j0991509915epoutp04Y
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:01:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20251029130113epoutp04d122f9d47eebbdd3fcf3149cd664be6b~y988ar92j0991509915epoutp04Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1761742873;
	bh=mhdCUOJguwRxW0Me6zDM1dADDQ0Txm6u4urbm0RY+sY=;
	h=From:To:Cc:Subject:Date:References:From;
	b=U1YiPXJ0Mvk/SQhYUXIekTxhFpOPW3XHKJY9iDWCJ99NuahwfRvQ5dH38KN9foMF1
	 sHiIPtW3jhXHrk9rji9fSxmC9hp5S1uUlUltkUsSA33INpjqDz+Xp6kPigzxcBM20F
	 EYss5SPUWfbrjIqEk32m1jwkSYslVWeBSw+dK800=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251029130112epcas5p196a19b1861a9fb5ad13d06e4e0c79662~y987osXKe2737327373epcas5p18;
	Wed, 29 Oct 2025 13:01:12 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.94]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4cxS6b2JrSz6B9m6; Wed, 29 Oct
	2025 13:01:11 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20251029130110epcas5p2aaf9d262f327286bbc7b550c09589897~y985uqZvX0109501095epcas5p2n;
	Wed, 29 Oct 2025 13:01:10 +0000 (GMT)
Received: from Jaguar.samsungds.net (unknown [107.109.115.6]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251029130057epsmtip131d105497324d9ff01d56fa0a3a647df~y98tmANYd0989609896epsmtip1A;
	Wed, 29 Oct 2025 13:00:57 +0000 (GMT)
From: Ravi Patel <ravi.patel@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jesper.nilsson@axis.com, lars.persson@axis.com, mturquette@baylibre.com,
	sboyd@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
	cw00.choi@samsung.com
Cc: ravi.patel@samsung.com, ksk4725@coasia.com, smn1196@coasia.com,
	linux-arm-kernel@axis.com, krzk@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	pjsin865@coasia.com, gwk1013@coasia.com, bread@coasia.com,
	jspark@coasia.com, limjh0823@coasia.com, lightwise@coasia.com,
	hgkim05@coasia.com, mingyoungbo@coasia.com, shradha.t@samsung.com,
	swathi.ks@samsung.com, kenkim@coasia.com
Subject: [PATCH v2 4/4] dt-bindings: samsung: exynos-pmu: Add compatible for
 ARTPEC-9 SoC
Date: Wed, 29 Oct 2025 18:30:47 +0530
Message-Id: <20251029130047.42499-1-ravi.patel@samsung.com>
X-Mailer: git-send-email 2.17.1
X-CMS-MailID: 20251029130110epcas5p2aaf9d262f327286bbc7b550c09589897
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251029130110epcas5p2aaf9d262f327286bbc7b550c09589897
References: <CGME20251029130110epcas5p2aaf9d262f327286bbc7b550c09589897@epcas5p2.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: SungMin Park <smn1196@coasia.com>

Add Axis ARTPEC-9 pmu compatible to the bindings documentation.
It reuses the older samsung,exynos7-pmu design.

Signed-off-by: SungMin Park <smn1196@coasia.com>
Signed-off-by: Ravi Patel <ravi.patel@samsung.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index be1441193fee..9d3e8e9817fb 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -52,6 +52,7 @@ properties:
           - const: syscon
       - items:
           - enum:
+              - axis,artpec9-pmu
               - samsung,exynos2200-pmu
               - samsung,exynos7870-pmu
               - samsung,exynos7885-pmu
-- 
2.17.1


