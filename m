Return-Path: <devicetree+bounces-24333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 926CD80EC50
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C380B1C20AB5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1C25FEED;
	Tue, 12 Dec 2023 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="TfVn22Q4"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E28D4FF;
	Tue, 12 Dec 2023 04:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=e9peD
	WR7QL1+BRJUfU0fLvjbdKGtIhqo6TIPfMq2gjE=; b=TfVn22Q4sVE0cZZYRY/qH
	Tkgqk2IVgovP0QJjfUhGhmPLJ53v+B2ZuZuCpPYYgoQjr5iigIU1i7pdZuOThK+/
	kKOqw4MJF2qzjVkUKkolNwhfSZHsHDVw2pkW8I560rLT6dMr1gZ+nZ0CbRTsw9r4
	dOANIWl3gDF/fHRXt+ebwg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wD3v70+VXhloaTiFQ--.18769S2;
	Tue, 12 Dec 2023 20:42:41 +0800 (CST)
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
Subject: [PATCH v4 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Tue, 12 Dec 2023 20:42:37 +0800
Message-Id: <20231212124237.1897378-1-andyshrk@163.com>
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
X-CM-TRANSID:_____wD3v70+VXhloaTiFQ--.18769S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtw4xJw18urWUJr1DJr4xWFg_yoWDuFgEka
	4xZ3WruFyFvF909w4DAF48GryYkw47KF9rAF1rtF1DC3yDt39xta95t34SkFyxuF43urn3
	Crs5JryDGFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAdb8UUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAFEXmVOA6bjOAAAsm

Add Cool Pi 4B, a SBC powered by RK3588S

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v2)

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5deb66a5c7d9..11d03035f3db 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi 4 Model B
+        items:
+          - const: coolpi,pi-4b
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
-- 
2.34.1


