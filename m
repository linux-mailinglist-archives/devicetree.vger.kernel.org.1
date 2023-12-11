Return-Path: <devicetree+bounces-23831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E2480C73D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E118B281335
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E62392D606;
	Mon, 11 Dec 2023 10:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="IaXGyWv9"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B20049A;
	Mon, 11 Dec 2023 02:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ogYeW
	q53mwvMY8/AuQ2ItH8tM58aVHFQdY1bO102rI8=; b=IaXGyWv9Z9egPL78L9ARm
	3BIh2qqjbQXm1NAet8V3MXhut+kacQiFdDNZCorTB7oTAPzYH5ZOySMhsZ/mtJKL
	XtNxzSzNg3Z89+93fLQRTFpX4efcbZi9UhTw15OOyh8QCXvJCsFv60VJBypi0ZU2
	js3UO0nPrfbZsJnRFSv7us=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-0 (Coremail) with SMTP id _____wDnjx5w6XZlKq5+FQ--.11346S2;
	Mon, 11 Dec 2023 18:50:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Mon, 11 Dec 2023 18:50:23 +0800
Message-Id: <20231211105023.1779786-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211104915.1779476-1-andyshrk@163.com>
References: <20231211104915.1779476-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnjx5w6XZlKq5+FQ--.11346S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrykXrWkAF47XFWkGFWUCFg_yoWDGrXEka
	yxZw1ruF1FvF909w4qva1xGFy5tw17KFn7CF1rtF1DC3s8t393taykt34SyFyfuF13urn3
	CF4fWryDGFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAuc_UUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBVDXmVOA40STwAAsY

Add Cool Pi CM5 EVB, a board powered by RK3588

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v2)

Changes in v2:
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 11d03035f3db..4da83bbd642a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - const: coolpi,pi-cm5-evb
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: coolpi,pi-4b
-- 
2.34.1


