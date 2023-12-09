Return-Path: <devicetree+bounces-23412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4980B3A8
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B34F6B20B99
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024C612B6C;
	Sat,  9 Dec 2023 10:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="im0hwOoE"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 70E3F1738;
	Sat,  9 Dec 2023 02:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=HGd4c
	FTAiQEuNSI2aid0XiqDdvTFEBHEKRBU7n7UoEQ=; b=im0hwOoE1HK1LcfxceqcW
	/l2CnEbQE6K1P6UIG1BrGMzTLSTJHrYjG5gMHCeml+xrYtV/F0NRdn0D6KbAIcOS
	NI2DiJHO/6Ahz2lRSJmblgGYOwikteJOKvrSc2FDBg1NfH+YfjL8vtUp4e+AN+Cd
	3qLl8cY5XtlgoRFnVal1P4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wD3X0WYQ3RljL4TAw--.5892S2;
	Sat, 09 Dec 2023 18:38:19 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Sat,  9 Dec 2023 18:38:15 +0800
Message-Id: <20231209103815.1568614-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209103622.1568289-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3X0WYQ3RljL4TAw--.5892S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrykXF1rGw1rJrWrtFyDtrb_yoW3CwcEka
	yxZrn5CF4rtFyY9w4j9a1xGFy5Jw47KF9ru3WUtF1DA34Dt393taykt34SkFyxur47urn3
	CF4fXryDuFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAuc_UUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnABBXlghl5vSzwAAsr

Add Cool Pi CM5 EVB, a board powered by RK3588

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5de9f3090be1..24dc6dfb8285 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - const: CoolPi CM5 EVB
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: CoolPi 4 Model B
-- 
2.34.1


