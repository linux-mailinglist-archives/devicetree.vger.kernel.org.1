Return-Path: <devicetree+bounces-7811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4FF7C597E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE16C1C20F92
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61352208CC;
	Wed, 11 Oct 2023 16:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="jXju0Zus"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF9200C8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:48:20 +0000 (UTC)
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 612788F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:48:19 -0700 (PDT)
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTP
	id qYvMqPRWuytxcqcNeqNBjs; Wed, 11 Oct 2023 16:48:19 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qcNcqu8ucQlNLqcNeqH2ri; Wed, 11 Oct 2023 16:48:18 +0000
X-Authority-Analysis: v=2.4 cv=aZdyIDkt c=1 sm=1 tr=0 ts=6526d1d2
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=J9R/PiKqv2o3jGxbVGXx4w==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=bhdUkHdE2iEA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8 a=gEfo2CItAAAA:8
 a=wef-vsbuwaLQw5HROOoA:9 a=rsP06fVo5MYu2ilr0aT5:22 a=sptkURWiP4Gy88Gu7hUp:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CWlWwmylNfiFwuKtCETiUX+lbNbpGAIN9nDK9/F9ujI=; b=jXju0ZusvnVDUFyOvP/QiAEnpv
	Of5FaGDJDaiq4vSuYUB7dUlprCJBs38Sa6bkTAxBTHtjkTHIOd1Ihvb+iVTvIbDxDVeBRn2vhb/Rz
	JxnzjM1LdGCTLmdH03Am5+kNBaiomCy2bgch/vx6Wboj3HMFsRSAb+sd9NuGwQu5sJ8rIRV69U21X
	9IOXFD3rCyf3ednR/rx34cbWw8+IOo7SS/wcOfn+OKY5MHff2FGNAfoqNrXEiZ5fp8jTjDH/fKF0O
	EbCPnm66SqSn5gUk9PORLOmecVstTM0o6LPzj/uYZTaZXjNjeAbm0pNt3S6wkFTP5pd67cy4ylVCN
	V2K6Ixtg==;
Received: from [103.186.120.251] (port=36530 helo=discovery..)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <saravanan@linumiz.com>)
	id 1qqcNb-002Xlh-2V;
	Wed, 11 Oct 2023 22:18:15 +0530
From: Saravanan Sekar <saravanan@linumiz.com>
To: sravanhome@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	jdelvare@suse.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Saravanan Sekar <saravanan@linumiz.com>
Subject: [PATCH v4 2/4] regulator: dt-bindings: Add mps,mpq2286 power-management IC
Date: Wed, 11 Oct 2023 22:17:52 +0530
Message-Id: <20231011164754.449399-3-saravanan@linumiz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231011164754.449399-1-saravanan@linumiz.com>
References: <20231011164754.449399-1-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 103.186.120.251
X-Source-L: No
X-Exim-ID: 1qqcNb-002Xlh-2V
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (discovery..) [103.186.120.251]:36530
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 24
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIIkQzPHLsUyW+ZhWWmap8FPkXspR51Cf0w2PMLzYjpO+yOi9HBnIaHYyGAUTZzUu9zkhVnU31VTSHmzuZGlAju4KwEIZX/Jpqkw6H9K69hP330Csanp
 WiFWOvozcIHBiFqOz2oVrHUcaYF+bPBJTkGPbzJwZFHW8ydUyant53gzLu97QorKykDRF6YK+wjTo80wDCXqpzp8slTl7vlcOhQ=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document mpq2286 power-management IC.

Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
---
 .../bindings/regulator/mps,mpq2286.yaml       | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml

diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
new file mode 100644
index 000000000000..1296f9b30862
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/mps,mpq2286.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Monolithic Power System MPQ2286 PMIC
+
+maintainers:
+  - Saravanan Sekar <saravanan@linumiz.com>
+
+properties:
+  compatible:
+    enum:
+      - mps,mpq2286
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+
+    properties:
+      buck:
+        type: object
+        $ref: regulator.yaml#
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@3 {
+            compatible = "mps,mpq2286";
+            reg = <0x3>;
+
+            regulators {
+                buck {
+                    regulator-name = "buck";
+                    regulator-min-microvolt = <1600000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-boot-on;
+                };
+            };
+        };
+    };
+...
-- 
2.34.1


