Return-Path: <devicetree+bounces-137723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 708B4A0A770
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3703D7A30AE
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 07:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA5514B945;
	Sun, 12 Jan 2025 07:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="Pa5JZGh8"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186B0148FF2;
	Sun, 12 Jan 2025 07:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736667607; cv=none; b=BwrVlQqbI0xMs7oaf1hB3UQg3gfyj1/dMWf2UmaxzYrKIMmupdT4JS42obdzYw1KkBEkCyeQOQGEH9D4G5FQtxng/DHS9JV3C/+4b7A1Ly7AfSDOBVRvRIzebfOLlyHQy3UO9Jrt7g+DnX4o3EuIIKjSIihFmrDp6j6lnA698BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736667607; c=relaxed/simple;
	bh=aTbESRYGxTwCplB3UvZLtGH1SGInBgF61P/F7AdQGCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eGVX1LT41fy2OFz4tEreCG5au2xBSEeQaFl5ycH0mVJsVUjOrjSMU5svVRSpo8bzrwsyhZ0KdTP91OIAMxaYC8VQxwX9VQzViiOYigbZ7ZvQQJ5UKzQA2+eBmFlVTfpDKeBbtsdmoN9GQuZZITkH9Cux8fuyMsXNInAdznuXC6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=Pa5JZGh8; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 97CB878923;
	Sun, 12 Jan 2025 15:34:02 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 97CB878923
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736667248;
	bh=11bw0J6qO+9mxKLe0Z2Gb7Ay6M6TocNEYgsoy2WMvnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pa5JZGh8Q/GoplWoqorEtRoQY/Lvh3Y8FgHNXzSHf6UdKW+tSyT/h3+SY47JxzBzl
	 hBAvVpob8+DnpDBhmNCteTbZgaeKselD6pDSrCmdi5AsMhZBPh5UstdnHxHn23KHLg
	 b9YKnMwUwGfZNy7jeasSpsE3YX6gtDZL+CRKDw+0=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 2/3] dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
Date: Sun, 12 Jan 2025 15:33:43 +0800
Message-ID: <20250112073344.1976411-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250112073344.1976411-1-bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This documents Ariaboard Photonicat which is a router based on RK3568 SoC.

Link: https://ariaboard.com/
Link: https://photonicat.com/

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..4802ced008b7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: Ariaboard Photonicat
+        items:
+          - const: ariaboard,photonicat
+          - const: rockchip,rk3568
+
       - description: ArmSoM Sige5 board
         items:
           - const: armsom,sige5
-- 
2.47.1


