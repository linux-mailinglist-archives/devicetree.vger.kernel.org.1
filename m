Return-Path: <devicetree+bounces-7368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D907C02E3
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:41:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D0FE282077
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589C9225A6;
	Tue, 10 Oct 2023 17:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="AqBYiGW7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A8538DEB
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:41:48 +0000 (UTC)
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A4CB99;
	Tue, 10 Oct 2023 10:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959704; bh=RCQ+dN89XvWkpn8AJOt3eHq1joZwnx3jE9sXb4ZVBF8=;
	h=From:To:Cc:Subject:Date:References:From;
	b=AqBYiGW7z6agl7IpGO2c1Am+OnMc0TK7ghcZMkHxK5rbH0kOntkA4bFlmljeKadff
	 B2dvKPcSnzYYC1H8NkyW6sNAOPA77ixbf2sVl8M8zvUN7RvoOiGRftyNvVsB7aIyC9
	 aJ4PJg75YJUwI3RdYZhtYwXM8QjpFTmQIOaWp1kM=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller
Date: Tue, 10 Oct 2023 19:41:16 +0200
Message-ID: <20231010174138.1888396-2-megi@xff.cz>
In-Reply-To: <20231010174138.1888396-1-megi@xff.cz>
References: <20231010174138.1888396-1-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Ondrej Jirman <megi@xff.cz>

Deprecate support for this property in favor of standard
system-power-controller one.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
 5 files changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
index 4992f71b6fc3..ec5e0fadef95 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -42,9 +42,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index f5908fa01a61..f1364c66cd62 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 7fb849ac74a7..382bb2f87a54 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 269fb85b2027..92b1592e8942 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -38,9 +38,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
index b57c4b005cf4..038804ff708d 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
-- 
2.42.0


