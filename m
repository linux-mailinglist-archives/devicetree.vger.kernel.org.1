Return-Path: <devicetree+bounces-194312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 127E5AFDC51
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 02:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56DCF4A6596
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 00:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B1582C187;
	Wed,  9 Jul 2025 00:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="eRgb/vZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5302BD04
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 00:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752020681; cv=none; b=d9GhR3tOQqfQuViMD1L2ahrohXF2D/Sw1HvT84JKqUEKQ2vypjAbszpnn4acB9wRN9xhtLQghm2HAHAeMZAftrZzHfbXthg1yRFVtwveWmfvpZUBs0EUzmR9UHSx4jd5b7p2Bt66IW0TH0PbGWGiSzU9pe6qdvUJOX3/NS5bN8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752020681; c=relaxed/simple;
	bh=ZZ3U75N40+eu5QTYJMTkDeky4qDCBP6lGMFOT5Gu8Dw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=jmGz3klq6DBfChcLD3/ybZQTJIblb6s5gR3bFsDzTMQvz36Qms7UXkDuKv73QKS9tToJ+v8a/7M/3PCeNi7CvEgLyJN9fP5yLeWYXnVxW7Z2B4XBOupVXFYXKVv5j30Wd+foA25NJROSqlB1Eud6xHgBRrWCMQcuGT4F3zQg0Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=eRgb/vZ2; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250709002436epoutp0349dd1785afa8edc1f45e84f881f97227~QbYXF_t_E1945919459epoutp03X
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 00:24:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250709002436epoutp0349dd1785afa8edc1f45e84f881f97227~QbYXF_t_E1945919459epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752020676;
	bh=Csr8P80vKglsKS0cZBaoIuhqtrwVNy6zr9k2ICghBF4=;
	h=From:To:Cc:Subject:Date:References:From;
	b=eRgb/vZ2aqCoMZbLv3QvLHgiMu1iu+woD405nufCHFYZheDrzDy6bWFDwzs2ZXB0Z
	 gNfqrm7A5zsUGuiixTq3CumdrkVaKE5qC2Xv2z/PitbPw/IWdg7I+pyr0geycQZSx8
	 DoIxKJgcs9ZdljlaJQ4ilzz+IFuNt2Fe2pDVKLpE=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPS id
	20250709002435epcas2p4bedfe99160977b09d8dc4f19f86e2167~QbYWqHqiL2856628566epcas2p4q;
	Wed,  9 Jul 2025 00:24:35 +0000 (GMT)
Received: from epcas2p3.samsung.com (unknown [182.195.36.99]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bcJdH02HKz2SSKX; Wed,  9 Jul
	2025 00:24:35 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20250709002434epcas2p29b2368f0de6c760b17565ad7f2c37a19~QbYVIzYC_0544805448epcas2p2N;
	Wed,  9 Jul 2025 00:24:34 +0000 (GMT)
Received: from AProject.dsn.sec.samsung.com (unknown [10.229.9.52]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250709002434epsmtip2553a0baf142607e684f8aaa6a98301f2~QbYVFbsmw0388303883epsmtip2S;
	Wed,  9 Jul 2025 00:24:34 +0000 (GMT)
From: ew kim <ew.kim@samsung.com>
To: broonie@kernel.org, lgirdwood@gmail.com, s.nawrocki@samsung.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, ew kim <ew.kim@samsung.com>
Subject: [PATCH] ASoC: dt-bindings: Add samsung,abox-generic document
Date: Wed,  9 Jul 2025 09:12:39 +0900
Message-Id: <20250709001239.379695-1-ew.kim@samsung.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250709002434epcas2p29b2368f0de6c760b17565ad7f2c37a19
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250709002434epcas2p29b2368f0de6c760b17565ad7f2c37a19
References: <CGME20250709002434epcas2p29b2368f0de6c760b17565ad7f2c37a19@epcas2p2.samsung.com>

Add soundcard bindings for the abox generic of exynus automotive.

Signed-off-by: ew kim <ew.kim@samsung.com>
---
 .../bindings/sound/samsung,abox-generic.yaml  | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/samsung,abox-generic.yaml

diff --git a/Documentation/devicetree/bindings/sound/samsung,abox-generic.yaml b/Documentation/devicetree/bindings/sound/samsung,abox-generic.yaml
new file mode 100644
index 000000000000..bf641a197903
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/samsung,abox-generic.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/samsung/abox-generic.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Samsung Exynos Automotive Abox Generic
+
+maintainers:
+  - name: Eunwoo Kim
+    email: ew.kim@samsung.com
+
+description: |
+  Samsung Exynos Automotive Abox Generic core node.
+
+  This node represents the generic Abox controller which manages
+  various Abox sub-drivers and acts as a hub connecting them to
+  SoC-level audio drivers. It provides PCM playback and capture
+  configuration, as well as dummy I2S backend handling, enabling
+  integration between Abox IP blocks and the SoC audio subsystem.
+
+  Typically, this node is used to initialize and configure playback,
+  capture, and routing between the Abox and other SoC audio components.
+
+properties:
+  compatible:
+    const: samsung,abox_generic
+
+  samsung,num-of-pcm_playback:
+    description: Number of PCM playback instances.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  samsung,num-of-pcm_capture:
+    description: Number of PCM capture instances.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  samsung,num-of-i2s-dummy-backend:
+    description: Number of dummy I2S backend instances.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  status:
+    description: Availability status.
+    enum: [ "okay", "disabled" ]
+
+  '#address-cells':
+    description: Number of address cells in the node.
+    const: 2
+
+  '#size-cells':
+    description: Number of size cells in the node.
+    const: 1
+
+  ranges:
+    description: Standard `ranges` property for bus address mapping.
+    type: object
+
+required:
+  - compatible
+  - samsung,num-of-pcm_playback
+  - samsung,num-of-pcm_capture
+  - samsung,num-of-i2s-dummy-backend
+
+additionalProperties: false
+
+examples:
+  - |
+    abox_generic: abox_generic@generic {
+      compatible = "samsung,abox_generic";
+      samsung,num-of-pcm_playback = <32>;
+      samsung,num-of-pcm_capture = <32>;
+      samsung,num-of-i2s-dummy-backend = <5>;
+      status = "disabled";
+      #address-cells = <2>;
+      #size-cells = <1>;
+      ranges;
+    };
+
-- 
2.25.1


