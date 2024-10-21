Return-Path: <devicetree+bounces-113562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1529A6128
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BF371F22948
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F8F1E8858;
	Mon, 21 Oct 2024 10:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="CpcMNYkP"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDB51E8839;
	Mon, 21 Oct 2024 10:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729504980; cv=none; b=QM6vUknLmpCSgXN6VD84TvRWnyeiz0+4vQTTnGSzRcphEgwDtjwt1q28Ci5b/oo5O7C5f/XqHeXDJXBZE4urY9OV3aukEeNgUA9mTJQzljHCRfY+hwAv2ehA+Kg9JOShx4wKKyUvKqkUUqrJVc1/4npRXZjoAlBokKRTNNWprdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729504980; c=relaxed/simple;
	bh=LuzQMd5c5rIJT9b0Tr3YlHr3bxVGW3LrpWTh9NNnfAQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kSRb/y9Gcq0mOk/GJ+3Tb+G4iNVq4AqIIH/8L5C85OyQOsXFgrMtqolVU06bHPlymCZXm6hNjVPg6iAcPO0AWky3KJFx6SBauPQwJ8kG1Dlu4afS/hKAQAEeqFmSIi9f6VEocyzbyZdpnUAt1culoF1TkSxBqHTYPxoWlOapx8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=CpcMNYkP; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B4F658897F;
	Mon, 21 Oct 2024 12:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729504971;
	bh=NhQvGbZsbfudWr34g22520NXKCahdWOQh+NLhrtrAQM=;
	h=From:To:Cc:Subject:Date:From;
	b=CpcMNYkPMDx06gpMiqy3fUHfr+eSCfUCnnpxr5XnSYEFaA10Nep6Y0/IYFhOsiqiq
	 uS6ClkgYQ1Ryprw7Zm0URi2raNvVNgVwSoErcmT4lRRUOfQ1CBrwnvnFy0xHNpwMO0
	 pkkLsLglp4vlAZvISS3s5KvFdEqqYzSgWZQ/X6OGi/f2fqiDyFJupTX2ET9N4UHiz9
	 1dD1R4Aeo1IHc6u73cJN7Ypwz2f1RYL7SenGQ/hAFG0AaLHFO63dMW2vVfZ8IiXB+P
	 EGGYnb7otuIm2Z8zjLiwnpBtIAzMaOn0mJU/FECIsQ8bHDbburKZkx/fdlR+m98ppG
	 QYxFU4ID+WEfQ==
From: Lukasz Majewski <lukma@denx.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>,
	Lukasz Majewski <lukma@denx.de>
Subject: [PATCH v9 1/4] dt-bindings: display: Add powertip,st7272 as DT Schema description
Date: Mon, 21 Oct 2024 12:02:21 +0200
Message-Id: <20241021100224.116129-1-lukma@denx.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

This patch provides the DT Schema description of powertip,st7272 320 x
240 LCD display.

Signed-off-by: Lukasz Majewski <lukma@denx.de>
---

Changes for v9:
- New patch
---
 .../display/panel/powertip,st7272.yaml        | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml b/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
new file mode 100644
index 000000000000..f09450da44a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/powertip,st7272.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Powertip Electronic Technology Co."320 x 240 LCD panel"
+
+maintainers:
+  - Lukasz Majewski <lukma@denx.de>
+
+allOf:
+  - $ref: panel-dpi.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: powertip,st7272
+      - {} # panel-dpi, but not listed here to avoid false select
+
+  height-mm: true
+  panel-timing: true
+  port: true
+  power-supply: true
+  width-mm: true
+
+additionalProperties: false
+
+...
-- 
2.39.5


