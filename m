Return-Path: <devicetree+bounces-24335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0D080EC58
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FE471F213F0
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFDF5FF0A;
	Tue, 12 Dec 2023 12:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="I0AtgMBO"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0432F94;
	Tue, 12 Dec 2023 04:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=c1jqV
	PLM6Hp2ZovLPNW1VW+yR3M5Lime7QQ21U6cQSo=; b=I0AtgMBODqXxF1Y9C9Gys
	hIHE7ZfhD7+qucm7+kovD+rrLBI0N3EWBKC7aZ+s5FlVsMYbHh5O0sSqk8U59wBz
	5mwACiZqvXvPSN9htftcNw6d46ifEWje9dF8/rVhPp6BUv5Cz/V+ncBMA4Oux5NO
	JXPMnTwU2rALnsweh40GK4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wD3_2Z_VXhl6RA1AA--.13259S2;
	Tue, 12 Dec 2023 20:43:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	sre@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5
Date: Tue, 12 Dec 2023 20:43:40 +0800
Message-Id: <20231212124340.1897502-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212124202.1897238-1-andyshrk@163.com>
References: <20231212124202.1897238-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3_2Z_VXhl6RA1AA--.13259S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKFW3try5AryxJF4DCF1fXrb_yoWkJFbEka
	yxZ348CF1FqF9093WDAan7GFy3Jw17Krn7AF4FqF1DCwn8twsIy395t342yFyruF43urn3
	Cr4rWryDCFsxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAGYLUUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBZEXmVOA6aFHQABsL

Add Cool Pi CM5, a board powered by RK3588

CM5 EVB works with a mother board connect with
CM5

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v4:
- Add compatible "coolpi,pi-cm5" for CM5

Changes in v2:
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 11d03035f3db..7a81543132a5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,13 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - enum:
+              - coolpi,pi-cm5-evb
+          - const: coolpi,pi-cm5
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: coolpi,pi-4b
-- 
2.34.1


