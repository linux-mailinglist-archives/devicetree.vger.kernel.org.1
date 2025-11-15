Return-Path: <devicetree+bounces-238926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D4AC5FCD1
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 02:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7D55E4E4529
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6B01B3930;
	Sat, 15 Nov 2025 01:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c7ADIJWR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F2GkA9zN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E681D618A
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168737; cv=none; b=rLsnZZuXR2Zwe3s661tqg2T/aDIrUcarUDikgOvBMhSpru6I0aJOG0n89CQfQsjC/fdveUtY04uFRiB8fXM7FoD3rHtaKfwYRgAx1zSflK/Ke+Zt6jtyzs+H0/jNa3am9bAiCSRLjfXXw9AkODrFvDWtm+NXMUhtdtLcHDNOEIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168737; c=relaxed/simple;
	bh=cwdGCxsVbYtDSinu5ZpBST52JwFFFj0brnpQS1egAzk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ku9iXsDL+MKcefQjhQL7D4WYOvt1zy2xS7x1tgtAOALfA242ajReLwBLSrgGsfJeaZxWn2z60RhAi8r5pXNUelTbAe/24PzzSJm+RZYn90IReEfdpfOcbfHgd1vvhKQU8elwHlUnFEYhM1W7xx9XcpuTTNf+OGWwej6Z/Y3dFOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c7ADIJWR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F2GkA9zN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQ5uB043084
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RR+tVpoDEaebf+Sy0qNjETQNJqwIHKqC7G3+JqnRRqw=; b=c7ADIJWRG+EspW8Q
	QyWkEv9sLOGjw9844R2qG3eVStgfRon92EMDcenOSWz9xdLAl3vpToGtwk+Wh4Tl
	fjq2bF0YG29V5+7CL/3xNaqQ7kHR7QeCypVz20dH+5K6CKkYLWSrrToK4F5ddxZA
	OR4N6/qmseFyI6KkRu1Xvt7aqkOeKuQzH+EzD8XwMcqAIhFEi051X9Iy6VbSUcaY
	GW5UccUaXZx9TqIVAKlj1a4I5yAwtyRBlTrJ5jxBbzdgObhoe6PVnoQarV1fPv0N
	oopHaxAA7b0PyM3odKNsF45UrO2Dg7fkGH/v4RCsvLIFBcznBv7FJBZ73+fUCWxK
	RX8JCA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae3t9t261-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:32 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b633babe5b9so451472a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 17:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763168732; x=1763773532; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RR+tVpoDEaebf+Sy0qNjETQNJqwIHKqC7G3+JqnRRqw=;
        b=F2GkA9zNSkfCKcb+JLDe+PfJqp8jYV70N/7TvW3rx0AdKORv03FY/UQfhnvnHesMoY
         EYZm57BOkYPyo0Wq5gBjOQSHDNyiBby426vuT41tbmGpfQEKXYmB17XFUnubCqJ/YR63
         I3nKfizFwJUdRACyBwCD47WzNnl3WurrT5BVneBJcHmjzNfWzWJXirBNrfXvJmvKurwG
         3JzmuU0o/Qk0aTJyiff3VSYzh3/uKt6N5VLOHhjHTxuA3Ol4P9Gs7I7eOJVZ0GaZm8W9
         uZlxEjTp4yfPkSmH0pbOw3m/CGOZTBqQvjij113h+eRrTfj1aiODAjuUiiuSfQ/HOo9B
         7jng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763168732; x=1763773532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RR+tVpoDEaebf+Sy0qNjETQNJqwIHKqC7G3+JqnRRqw=;
        b=HioDIOEohZtbJh0TQLSu/3sRGZjurROa5ozTb1TKiAyRWx0gCtoc/Rv/I5CVCVSN6K
         /PFz/iG6av6EVnYg4c/Soo7BYMarZ75egEMFlmZyQbIRXqnAoDbL4AB7IKJdZGDXuQ89
         Yb+9QxDX03ITmnYQLwRqthMRHevri55+B9pyhRsxIVwakvs0xUccw3c+pJt/JW8KBHA3
         GW+QyLld5UvR5HrrbvVmzfJt/U9n2EPoSzFWc7xbwfie1oAKu3DGrVDG7pJVa3oaFl1u
         sdqHPu6O2K8APoQvi76Gn21wcdaQU2PvXdXPKadW82Bg6CVfRMBXbfrhFkK+ATrCZcP+
         C8qQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUONIxZyl7foKmdDb9xTuIXhHt8YWSDIksdpWNUA1Y6TE1LpENNjj0Gl+ELRfOPMS9qk+WcSc+3Sfj@vger.kernel.org
X-Gm-Message-State: AOJu0YyR7KA39dvH7wmPZqA1uVghXhq7L9MEeEPFELdrG4ZMXtCSKSK4
	Za3rIW6CRYl+R7lpJXZXqAuvCVUrrUmLf0QfbVQ1SGBjwbU1g5nSxHGtmkt8jYxVVOF7DYezg83
	3m8bGWQtXOm1u1+B4mgqxRXrpbwJUvVkmBObTgCwg9F6SiWP4v/gsvhPmWwarvh8j
X-Gm-Gg: ASbGncsBKvNAj1mpfXKWjzLxI8g2U97D4UHhk1Rvr0Iuqb6Zxj6sOioNuM4h1kKsGf6
	8yf8MgJYm9RLqreduNDsMF7cnz09KolVtIoZ0ZgrP8AL5WINZLjpeAJ+J6w2uNgs/LeiBvnfppl
	aP1oME4SpkDtAyLZJcOqIi7WnzYWzXICslt8y5QRIxEd92c/0IMWavCxIwIB19LRCXirC2sU4WL
	Fv4JPqfKyx8hsTT3QZdbR3/i2dVo48S0RQv/4QGaI586eFNmSxmrhWWY0G3xIEQahfi32wdOtYW
	jPjRlu7jhDZ5QqQsGRAyeTAJepbbE4vhAv0fKka9I2hmZQXWRtUCGTEqfbDpe8A6r/KQL+W5/y6
	Snd9HAYsVm6SOAU2bz6snSkEgywuNcSpqGbQrnV2UKyukx3GENe9tXQIboVbSSkyNvBmpajfTXM
	c48MX2MpBDQ216T2md6W4=
X-Received: by 2002:a05:6a20:7486:b0:354:23f7:18c with SMTP id adf61e73a8af0-35ba2598c21mr3387773637.7.1763168731827;
        Fri, 14 Nov 2025 17:05:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxKHHWyeF/B12GRIGZkL/ZyBnV3S6boCfQwEZ44kCegDhI+ybTu2G+MczlCk79E7vfTpIm2w==
X-Received: by 2002:a05:6a20:7486:b0:354:23f7:18c with SMTP id adf61e73a8af0-35ba2598c21mr3387743637.7.1763168731333;
        Fri, 14 Nov 2025 17:05:31 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36f42eb0esm5812976a12.13.2025.11.14.17.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 17:05:30 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Sat, 15 Nov 2025 06:33:56 +0530
Subject: [PATCH 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251115-lt8713sx-bridge-driver-v1-1-bd5a1c1c730a@oss.qualcomm.com>
References: <20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com>
In-Reply-To: <20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        qc-display-maintainer@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763168720; l=1935;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=cwdGCxsVbYtDSinu5ZpBST52JwFFFj0brnpQS1egAzk=;
 b=WI2/JRYaB+B5FGQENnK0+GCA7HF8W5za6woABC0rJzlJGgIMzi8nY7ctp6Z76FNXiOzW4vQg5
 wyuzJG9Je1eDIIL6bprekjLw0+ytrjPUHmwRPH//5MRm9Kon+h4G7bJ
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Authority-Analysis: v=2.4 cv=IOAPywvG c=1 sm=1 tr=0 ts=6917d1dc cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8
 a=s-pyTce3ZDEYjec7AqwA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwNiBTYWx0ZWRfX4q47ClCyJ58e
 Q/hHOpNb9IVTncIkx+2bLWrRW3PZZgUEbWZAYXbqqTfR8EylEZgUBWwvTq4/GLU+CHQiD/Y+Y/j
 0MQQbkFyHJSUe04iJP7knvWAaho9pyPc15J3uZUV5uIJ5LV2pAUWQ5GQO41vTfu1SKhksfCtQHr
 D2+anKaqg27sOcJQ13YODWcAPzycuJvJu9+S2+ZDMQ6ZbmNAV8eIrPUMPjMe6y9QmIbpy/XFx8M
 vWVSS8iuNo4vRi6hHo3j+U/rB/VFMEMVnWT9tyqXLbs+RSfbF2Q0KuO+qsUGGXZGvRH7sopW6SB
 ml7P3uBdQ13WhUC1vVpd0jg4A09cQZ5He47hJ+qV9GtrUcMvgrLzVXvjcpRE0cj3OU1L1QaYIV3
 kCmLaX3QEFBap5vsozyIuEeF+pCKKg==
X-Proofpoint-GUID: KHJzSJ_2OirPq3HB6L7bNdS8TUPNlS5F
X-Proofpoint-ORIG-GUID: KHJzSJ_2OirPq3HB6L7bNdS8TUPNlS5F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511150006

Add bindings for lt8713sx.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
---
 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
new file mode 100644
index 000000000000..3292e149706c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
+
+maintainers:
+  - Tony <syyang@lontium.com>
+
+description: |
+  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
+  that integrates one DP input and up to three configurable output interfaces
+  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt8713sx
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device.
+
+  reset-gpios:
+    description: GPIO connected to active high RESET pin.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        bridge@4f {
+            compatible = "lontium,lt8713sx";
+            reg = <0x4f>;
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
+        };
+    };

-- 
2.34.1


