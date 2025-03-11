Return-Path: <devicetree+bounces-156628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B11AA5CD92
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:15:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96B407A38E2
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D202638A5;
	Tue, 11 Mar 2025 18:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="iL1m8Azx"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B00263C77
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716886; cv=none; b=CDr45sTmDXFSOU8wuPaU285hTSXrRlG5zYKM+n6NfWkv33Z5sxQHJJIjlmm9PiNQcn903UEcfC6u7iSvEOTfcMkhdzDOesu0Ztq73H9Y0/H6nA0lLe8WMlVb4PH2eYhWgIEQKWJifGBZUdmImDRh9TsQ2l79LqFVddMH+9YUKhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716886; c=relaxed/simple;
	bh=48zMzobtxZ+l6WQP0ZJI1sIdoXWKIYXkCXAqbNLowk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uC2fTVYoTHBM++JLJh3V3HmDlN/ZaGZbwg/kunZj6H4nHpciFqAzQ21F5+bBD5iO04F0ptlJfq5dttdY04cF34jqLVixV537XDhICkArWSVOjcr6wEhAtobNZqw18dqXR5CHNG7jIrudV321cT8a7sM7GoVa64rGTXybf4XrR4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=iL1m8Azx; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VpwF6DNm+Bt9uCs+gmG561oMa3I3ktNWCYMlnoWusCw=; b=iL1m8Azx7FVBe7IPk8P6rdkJnF
	GsXt5YRGMW4PmdqMMgoaDSyhaWtWgLQ7Az0eMk3xGQRQO/l+5NewDZ6gFm+k1oe2Axy83jybbMdqm
	FqATiUi9u0Yx9lBkDgjxHy0irKwKb88k2zzWSl4Y3jkOicGA7gMqdtltyDCurGn531xwMUKz9uu8f
	hHJsJVGP43pzWCxlJOdxlqZO9jjELagOys6f+MnCJ0F5z5Tio5ROG9RjJvQy5G0HHAZjUREZbdZ+9
	hkVwPw9w1IWA8+oIO9ilCTy/Nk2vSt2IfDZ2GYjMB6KtpdK7gvcTPGCdfiYhv1uIo16EjmAW641OS
	TWjjgHqA==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ts47b-007Dal-0w; Tue, 11 Mar 2025 19:14:37 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Tue, 11 Mar 2025 15:13:47 -0300
Subject: [PATCH v3 5/7] dt-bindings: gpu: v3d: Add SMS register to BCM2712
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-v3d-gpu-reset-fixes-v3-5-64f7a4247ec0@igalia.com>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1804; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=48zMzobtxZ+l6WQP0ZJI1sIdoXWKIYXkCXAqbNLowk0=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0H11Yh8dT2uDN6baR/bEdp0voJwmBUbVhK4tw
 IFPj1GaYGWJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9B9dQAKCRA/8w6Kdoj6
 qoZcB/9uEh9M8DzUwMvicks4uYIu39OgLwEl5oI0u6LNK1qqzwK47y3I9WsE8mCVWux6uNGB1aW
 L0S8ukUgppexdYbwxTRnMI2+bMJV2PZ7dtz82aRvTEqT5xZgDgu/nyrd40dlk2Mjf4ZxFwnKfwT
 TBuh4u/jfO136wX2gwNXFYf0KtEwkpi/OoQ9SsdZMnzKbJ6k0H3PhOXRA4ocQueg/BQQ2LURWbk
 TN7FjEBHL0tGRVAY/ychPxt12f9F02G55CgqxSmfErrE+HBYj2+rJmZABC2HZ4dhjMMlg/wHcQb
 29xB/iz8ZUz1Zusv8FsqC013bPbxrmxZ59/pWeeLfDZ92T7u
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
V3D 7.1 core, add a new register item to its compatible. Similar to the
GCA, which is specific for V3D 3.3, SMS is optional and should only be
added for V3D 7.1 variants (such as brcm,2712-v3d).

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 141f2ed540bb4ddb85a933d7d44a4078c386ba39..7349347da1c0034a8849deaa6d64dde6d9d5a81a 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -57,7 +57,6 @@ allOf:
           contains:
             enum:
               - brcm,2711-v3d
-              - brcm,2712-v3d
               - brcm,7278-v3d
     then:
       properties:
@@ -71,6 +70,27 @@ allOf:
             - const: hub
             - const: core0
             - const: bridge
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,2712-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register (required)
+            - description: core0 register (required)
+            - description: SMS register (required)
+            - description: bridge register (if no external reset controller)
+          minItems: 3
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: sms
+            - const: bridge
+          minItems: 3
   - if:
       properties:
         compatible:

-- 
Git-154)


