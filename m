Return-Path: <devicetree+bounces-213933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F4B477C1
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 23:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6036A0062D
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 21:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667E729ACC6;
	Sat,  6 Sep 2025 21:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IqZD1af1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEE6299AB3
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 21:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757195338; cv=none; b=SQ5tCSHNL+URRc4PJRB7zKZD567Ll8B8z0qHw8VZjPRhEb82ZHw1NJAQonthm3x7W1rWJclKLmFrD4SBMFe4g7FH/se6ALfxIZdvZISe9FBH7scVdR1occIgKF0NzmiHOwE2SYacC6+rlnGiMuGpmX9ejJpqxIEwVwsAvyWHKQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757195338; c=relaxed/simple;
	bh=zhvNXMGegR9yDlqQMy/XBI510R9HnhJWonOW2z5xNgY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=R8xojTbgQKiHhg84KUHeY/byA1riDF1z2bsth4davfLbzdHBnaPpJD+d7D7OpyQdZrVNI+o6cGvlo15dm8UZVPc2VfsfPMxl+HsEdjJZ31ACekaHyEMQdMZK+DGzkoE6oVR0O7Xh5FC7U1RnGg+L2IquSOYNEpJ6kD8K9V231zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IqZD1af1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586ACu2b023193
	for <devicetree@vger.kernel.org>; Sat, 6 Sep 2025 21:48:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=duMhnqfLjphXvSjGPmTHVE
	iWVH5TfJsRlnBS37ltgSc=; b=IqZD1af11hEkr87hulsqTECR3UaKxSYelzyHG3
	RwCshDicpENhAFMWWfxaWNfzXWEea9ECh+Rh2Jxn7t1vvrLzc49RqQQhD8s8SS/1
	nBxymMmN8jwz+GBlipGsHeTiSzESi02jJYlYIv8saTTHu+Y84GRg7BY7Z3lC2XY2
	jcLCfPZFnSgXllb9pug/cUztJu7W16YGlbVqYJ5u8sHkKyyjF6npuNxoy+FhU5y5
	Q8HMf/rCMXZbG4UGdhXUvO5SRskojjbalI9aBLTFB6nikjS5RXCa39qO5xUzXgxW
	x27YnA2TVK3EtdMU9+0BKKuuV28YvvCPJhgtf0lNOP/hg68Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a14k9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 21:48:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f112dafeso44119401cf.1
        for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 14:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757195335; x=1757800135;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duMhnqfLjphXvSjGPmTHVEiWVH5TfJsRlnBS37ltgSc=;
        b=Pdq8y2cW28g/6+DVSkrcUaOH/diEIugaYPaFCUnauz9h+3XXFQz4NaWYoo/eL2FokW
         w7vZTBVQM7rhhWblihPhd0FOeryPy1VCuA8IlkW8otlhO8nBxcSqsoQityStSESbfEFO
         vigXn+5lya7MPZnEHVaVMjjfp6F5i353bwI4Cw6dnGSyQbkDPfIeNFk0K5KaZHfI7M85
         zmEKiwq71eV4in8zlAyVSwOJEjIhoLFhmSBfcfGlboeDzcXqmwDmFAZmLPkvFeB5xp8l
         kofGMIglcByRSd22jrKBqPdGjt1tk6tLQWE74PCVi2o7JBJJ9n8Vwr4/iON3mMTdpr22
         wPIw==
X-Forwarded-Encrypted: i=1; AJvYcCWLiGZr7ZfACcc2/Flzcbmj8jwlyxzhSJuMLVLhBa+N+oI/liNPY7Te+juKJzY4gZVrY0yfX9gV6+5v@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1y8aGYuDUrl/nOHl0uEtZIVA3pKRxQ3N5CG9uS3CiVsevCh1a
	BAC41Qq7NSTr6AZexhbvFjGeyfuVcnNuwaaFzKIgh+PasPhh/OvtGvQyMtEFjy/Hf1AdxAxIdaa
	QQNAyVXfCnH2Va7Cf0yP/HvhSr9lEkmCB+9j6mvPM2KlX9TIAeUw3L7Nf98j2pUUu
X-Gm-Gg: ASbGncvoOJ18L5SXv4A3dXYGJAu7RMtBFn4GeTrCiErOwEwO0WvbhI8jm5wX1yU/Mog
	/GLFL9kTZBTUpskKWqHNc0Avq73gk59rXWWxWRF1/D/MDGgohV+byhdVT4cQ07IeF+5aZckSBGr
	nPkwtQfT4gNI8luaaImYKrP2Qwmn73srCqWmbGOiVGy/UXc3aWjkT1QZCfpKumAubFLhNnkpBAK
	PL5DWbxK3GNbN8B1pQG9oAhz3f65vkutCRpdDyd8EY+0ENN03NcE2SOVb0wiA1lskOCec+fLbCz
	YEfxnAd2sQuYHZo0lrq/onQCKMre5y7UlSH+hqXHdIXE2lZGqISnVcPw3zcpomCw+UCAwMI7L3N
	BlFLlVqo9/Rajv106fX4PFxWySECJONhhUJzYmmxDYhCLG8ccPpnG
X-Received: by 2002:a05:622a:15c8:b0:4b3:50b0:d80 with SMTP id d75a77b69052e-4b5f8569a7bmr33521231cf.57.1757195334715;
        Sat, 06 Sep 2025 14:48:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx9lboS5t/Woj+bBQjp+nx7XVjfxf9kWYu1057+otiUbzZVI1hnBUp93/r4IT74n7N+b88yA==
X-Received: by 2002:a05:622a:15c8:b0:4b3:50b0:d80 with SMTP id d75a77b69052e-4b5f8569a7bmr33521021cf.57.1757195334306;
        Sat, 06 Sep 2025 14:48:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc1798sm2561252e87.57.2025.09.06.14.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 14:48:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 07 Sep 2025 00:48:52 +0300
Subject: [PATCH] dt-bindings: dp-connector: describe separate DP and AUX
 lines
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250907-dp-conenctor-sbu-v1-1-de79c0fcd64d@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEOsvGgC/x3MQQqAIBBA0avErBsww6SuEi1qnGo2KloRRHdPW
 r7F/w9kTsIZhuqBxJdkCb6gqSugffYbo7hi0Eob1SuLLiIFz56OkDAvJ7ZMzijd2s4QlCwmXuX
 +l+P0vh/V9OMjYgAAAA==
X-Change-ID: 20250907-dp-conenctor-sbu-3ecd5023765c
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2782;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zhvNXMGegR9yDlqQMy/XBI510R9HnhJWonOW2z5xNgY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBovKxFW1OreFn+SDGcBNbj5YDp1tiTmrYKC8QOh
 LRNOdYOP5qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLysRQAKCRCLPIo+Aiko
 1YfFB/96xRXM190qb0+pTgJYpZsWQibT7naZGcx3Y3dPL+uoae2fdGjO3vswImhQjRo4bX2agkI
 xzfyKV3O7ZGqN8Ew12McEVJe0wWcvMPdk9jRgUN1smnGC0gPXhyhoQqsK6WW56KPRefdRhIWEd9
 Es5Wo+xLSsXY9jZpBpSaB8VkRsoCWU7qdOJ3Jxme2p4unncD9wrtvfAJpdzEsLql1RMKXcit0x/
 hdUioxI2WwhPZVTfm55CAE3eGQ1p0R5Me9C+yfMPa1IF5u4764Lp4118IJYrCzdLNX3mQLCalrs
 U6115TK1DU3V4QUgJbWFH6z0wea7AyhpUbLT+WHeM1yl8yB0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68bcac48 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5inRAbP7wB7EHgTAESYA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: G1zyuiGs0k2DKL9D6Wev0OmNqseGssVQ
X-Proofpoint-ORIG-GUID: G1zyuiGs0k2DKL9D6Wev0OmNqseGssVQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX5ynya996yEOo
 hVOFo4q9SndQrqBovlLWOl44izb3EmPqp1Wp+iAO/xbAybQbe7CGZDmARIryM7jeAhm9u3o9TKQ
 1RTo2cYCMSeNkW4deTirBOVgeWpItC2BkLk8h2yOb131LojuDIdtA8s1qf+TLG01qxjGafyt1HW
 tPYTbNVnJ/JKbbkMf8CFp0pTAmCG6d39MizhLZYn9kz3VYd8BOjb2Hm2BgDJKo1RzeEB5/JYKq2
 tw/Ss1DaCNov0hKMYbsB0cTNsKOGuxd0j+lHC22kFnOLcpAIUcW9JwPQVoUg6vfMCA1WkLQzHxY
 S+uJfnKvCb2AKTdVpzNHzM1c2F8w+xeAiCJzWeoDd3d+mZ9ko/GO21eorNfLD9KyxmTOZVvo7Fy
 T1vAJwMA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

In some cases it's reasonable to describe DP lanes and AUX signal lines
separately in the DT. One of the typical reasons is if the source of DP
signals can support either USB-C or DP connections. In such a case the
transmitter of DP signals have separate ports: one for SS lanes and
another one for SBU / AUX signals.

Instead of leaving AUX signals from the controller unconnected, add an
option to the DT schema to AUX signal lines separately from the main
link lanes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/connector/dp-connector.yaml   | 52 +++++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
index 22792a79e7ce5177113f17ab472048c220dbb3c3..1f2b449dc9102c34ad015bbe7beae0d67a2df5c5 100644
--- a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -31,10 +31,32 @@ properties:
     $ref: /schemas/graph.yaml#/properties/port
     description: Connection to controller providing DP signals
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: OF graph representation of signales routed to DP connector
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Connection to controller providing DP signals
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Connection to controller providing AUX signals
+
+    required:
+      - port@0
+      - port@1
+
 required:
   - compatible
   - type
-  - port
+
+oneOf:
+  - required:
+      - port
+  - required:
+      - ports
 
 additionalProperties: false
 
@@ -52,4 +74,32 @@ examples:
         };
     };
 
+  - |
+    /* DP connecttor being driven by the USB+DP combo PHY */
+    connector {
+        compatible = "dp-connector";
+        label = "dp0";
+        type = "full-size";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                endpoint {
+                    remote-endpoint = <&phy_ss_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                endpoint {
+                    remote-endpoint = <&phy_sbu_out>;
+                };
+            };
+        };
+    };
 ...

---
base-commit: 8cd53fb40a304576fa86ba985f3045d5c55b0ae3
change-id: 20250907-dp-conenctor-sbu-3ecd5023765c

Best regards,
-- 
With best wishes
Dmitry


