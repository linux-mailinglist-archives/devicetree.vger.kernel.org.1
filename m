Return-Path: <devicetree+bounces-23561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E43D80B9B9
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 09:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC7DA1F20FE3
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 08:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DFB1FB6;
	Sun, 10 Dec 2023 08:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="EtwC/wOo"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 49241EA;
	Sun, 10 Dec 2023 00:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=nNmAy
	t5R/FqSzYRKUKMJgqk+9Njbt4i+66funeH8Iu4=; b=EtwC/wOo3g4Kbx45XPgXE
	Xusic8o/MFyugcESvAJHLC4dA6f8fR47r2SvVsmN8ir5E4J3cpfwP/auXeiWSLN/
	tMUQba1yT9m5qG1mmlCRb7Xw0zF2Yk5V/jzi6jkGkXMJo067ccQSeXhFN7/M2Khv
	BUbrWc0UEmP10z9hxRX7t4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-0 (Coremail) with SMTP id _____wDnL0zjcHVlYuF4Aw--.22945S2;
	Sun, 10 Dec 2023 16:03:50 +0800 (CST)
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
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add Cool Pi
Date: Sun, 10 Dec 2023 16:03:45 +0800
Message-Id: <20231210080345.1667161-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231210080313.1667013-1-andyshrk@163.com>
References: <20231210080313.1667013-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnL0zjcHVlYuF4Aw--.22945S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF13Jr1Uuw4UWr1rWF15Jwb_yoWfArb_Xa
	1xAw1DZF43JF4Fgw4vyF4xG345Aw12kr9ru3WrtayDCF12yrZrGa97t345Zw1xCF43uas8
	Crs3GrWDGrnrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRA4SrUUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEA9CXmVOA3chbAADsS

Add vendor prefix for Cool Pi(https://cool-pi.com/)

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v1)

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 309b94c328c8..ddbba46fcbad 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -294,6 +294,8 @@ patternProperties:
     description: CompuLab Ltd.
   "^congatec,.*":
     description: congatec GmbH
+  "^coolpi,.*":
+    description: cool-pi.com
   "^coreriver,.*":
     description: CORERIVER Semiconductor Co.,Ltd.
   "^corpro,.*":
-- 
2.34.1


