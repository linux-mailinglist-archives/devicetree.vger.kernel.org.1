Return-Path: <devicetree+bounces-231935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D912AC13252
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CA804F6AFE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4152BE7A6;
	Tue, 28 Oct 2025 06:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FM4dVzLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5FE29CB4D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632898; cv=none; b=SLyixpBHzdAdYat0HQX7R2lnQgZv2Awi3+CvVPQcbvHWC/gRvy2HE/JZEHjpxQTbUfR0cnkHmHuSUXl3gMfCjQcTBk+i6DJPAVVdV56QlHP7xK4eN8L+tmwfWPTotbUZSP1qu2axZyLSvpwQhMzqtTJQTxSjVnIRsRVkNaVdqGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632898; c=relaxed/simple;
	bh=PPtBIz8qEFvPp66GNhz5hdu3RpRfVBfYsLuidxR205M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lMLetAJDTOhkWSuUoeGsWCVo2+qzG9liOZvH8TvyIkNb62FQxszEm+oTEGH0enF/GLxOGKjY46tRhGwSNxeVzTrb6zJy6fJYrs2uJ0GB+V3vreeWmmvINJWMZc9U/IK6AGk1tVu+/IyUQpWQRxBfpMRsnHadDaMQ8NyaEBkwRRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FM4dVzLG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RK7lm52547332
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cfzo+zhajCDy5YoRs8Kez4QqmFzyjmbKPNgTAWkNhwg=; b=FM4dVzLGC7j99Mox
	3ZyFb8DhfHrblRfE49VgmXsWH7fS1hh5ezbI5Q/+l7oHyMwQSAOtcEKD2hq2nS+3
	5kMe1mlpT+s3EiPtHNoXhz2PR13wbfB6nq0BdN3BdODxjUfjc57r428SKmgFPcr3
	TxWsB2c+8lHYLXkyZWlUXUvy6yJ2/KOJT2ys2ytDpnf5zt5tZvTcsojtg6KWBcJf
	DVZLx+r31e4RYMs7w0gB6YJw6IXQ0A0zesP+L6tFMGBBc8Tq1NCtQAHjKgvZ7MJX
	BvPmhl0SiCnJEXYcDTQhe2sA4zBnDmCOARcWlLIfwAoz23c9YBdmeSLX4jEvg7E+
	xiksTw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a27s2k1v2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290b13e3ac0so49249495ad.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:28:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632894; x=1762237694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfzo+zhajCDy5YoRs8Kez4QqmFzyjmbKPNgTAWkNhwg=;
        b=JvhM0VqpFIERz9vqHhd6FIese0VoKY7p4mKhUxTNk10nrJMY/hey3jSW/Ev3bmN23h
         MsFmxZR1xClHQLC59qmoy2exG5ho8KXcZdqTRnajEyQu+9pcb0HmDFnGePt+MfNSuIYG
         vifzgJ+TnUrEadnt2VgIuZeCZMF64cAZzXC4HhT11RbpJZi+RvRU6cuxyqJh47cJN5EN
         asCv4IRm0yzwefiXb4NOkW73t06r5Gc5yWnBOh5N6OCeHfjyM9IIop7MFaSxDigg8FE3
         yJNpmXPSxdGfL3HLm5xNd8XFk74KzlhJmsdemuU2uqJn2E9zvtlr22uYpRWKuqMDD0p5
         6EHA==
X-Forwarded-Encrypted: i=1; AJvYcCV6wmG+NMHzRLIGcFw9GZr7KXQdWHEhx39bfiw4mItL6yPAup59RS7mmDtHQTHRMC7ofOIZJrslrdTu@vger.kernel.org
X-Gm-Message-State: AOJu0YzPovy2GUkwcUPdfg5K3or2abDQK2cfLYgX2XBHpxq+SWj1aymE
	U3EQmC1Wmv9Bkgo5j1L24UVCRFshQnSQ0YPlrGIt65ODnWaBi7XUOsdSdx3PQdCgMRX3L+f9QzE
	RnkDlAzkrz9eXvX+ayouO8PntmYUJWTTymGWYn/RHHzWQy7vSiK1D1BQCSiReHFUp
X-Gm-Gg: ASbGnctFezF33tOumZEXHVDy58Xni6lN3ivKCBmA6qCp57n5l+DkPiwJQjjIseAQaj5
	FdtzE/q9/MU/bfff8NWo0BBCKaLrt3GWyRWYodLyPdrSUt+Sme5RlatOvM07H7b6XRhV0Nv5BOT
	X0hXbdN35sr2eBx/Cid0/ptYVkzaPg3oQXx1muDhsqUhUD7Bhusp6UyFHMIoQiUig678MdWeoHB
	ftqkJzPGaxCQc3cqVxspLQxDAb7Ye2KElYvW79fDlLZPC6dFZhdArakAG3zZQjxEpuHB0XB+J9s
	z/GCRzAPBDkovlJT0bUEV+0+UkY5XvRMi11osAlQjtatnQx0g/faY1676+OOc3lbT8fx7dgXq0Z
	G2xaT7aDaq9qdwCtX+IvyMpxIOTHg0coON9GpOyQMrjFLNvmOEo/eTMw6
X-Received: by 2002:a17:902:e5c6:b0:290:b53b:745b with SMTP id d9443c01a7336-294cb5232d3mr38383945ad.39.1761632893884;
        Mon, 27 Oct 2025 23:28:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLMay05a+vAXuQxOkbTQFiIgxcmfZljtBPlP7Po1PvPoXnE7k7Y6n0QTmLswWPRio4+BUB6A==
X-Received: by 2002:a17:902:e5c6:b0:290:b53b:745b with SMTP id d9443c01a7336-294cb5232d3mr38383555ad.39.1761632893438;
        Mon, 27 Oct 2025 23:28:13 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm102503265ad.12.2025.10.27.23.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:28:13 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 23:28:03 -0700
Subject: [PATCH 01/12] dt-bindings: arm: coresight: Add cpu cluster
 tmc/funnel/replicator support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-cpu_cluster_component_pm-v1-1-31355ac588c2@oss.qualcomm.com>
References: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
In-Reply-To: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761632890; l=4225;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=PPtBIz8qEFvPp66GNhz5hdu3RpRfVBfYsLuidxR205M=;
 b=xr2MpTWnfc1z9/DYs0lmEaPgzO67s3OtRkMFlUDMRC0QKViHGXoLtClSlhp7erTCm29OL1zn3
 8IE3NPo0bKqDB+lxtdSRdV7bNd5lvpqfA9voMhVZAzwas3ZA4x0zJFk
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: XlDAbHimrcBqxgxCnig8bHEPRKSbSxHV
X-Proofpoint-GUID: XlDAbHimrcBqxgxCnig8bHEPRKSbSxHV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1NCBTYWx0ZWRfXxFx0VAvHBnay
 vywpVfH0OQCkZvoUwBM9GmXuFaWCNIkkh9BN+8tAhk2EFXuLjETA8228GSSwfSkowX29XlFE/eS
 /EIGU3zdpxINogCr3MShMih5nKQ0LZMDMYyW6VwSS8cc6HjvrfvJh91zGGCZwdBB/sHAHqh4mEj
 3BWBHthB1ZbLIH+40LSTcIuoExyRvlvjsmqonWOvPXBXysyeLsMp7olw6YGnPxfq7HpUZsg/3kO
 KsZ0Qi1FSqlWvhiTZUj9G71tFs8lRBGsqxC8o4XyC9LO+Msv8I6xUDLnb2S+wx/ecn2k7+XbWJv
 qG6sN2gyAvQ6UmQQ9XDtcCg7x61j4ShX1Md5Kga7KzV0nkAgYqDzFG6MJk4/9rRhjBrlnUUTw6E
 q0+yvhVhYx+lF3bWqM5lJKdCUuaRUw==
X-Authority-Analysis: v=2.4 cv=R60O2NRX c=1 sm=1 tr=0 ts=6900627f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=G4amIDmpmRGM4OpAro8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510280054

Add the following compatible strings to the bindings:
- arm,coresight-cpu-funnel
- arm,coresight-cpu-replicator
- arm,coresight-cpu-tmc

Each requires 'power-domains' when used.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 .../bindings/arm/arm,coresight-dynamic-funnel.yaml | 23 +++++++++++++++++-----
 .../arm/arm,coresight-dynamic-replicator.yaml      | 22 +++++++++++++++++----
 .../devicetree/bindings/arm/arm,coresight-tmc.yaml | 22 +++++++++++++++++----
 3 files changed, 54 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
index b74db15e5f8af2226b817f6af5f533b1bfc74736..8f32d4e3bbb750f5a6262db0032318875739cf81 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml
@@ -28,19 +28,32 @@ select:
   properties:
     compatible:
       contains:
-        const: arm,coresight-dynamic-funnel
+        enum:
+          - arm,coresight-dynamic-funnel
+          - arm,coresight-cpu-funnel
   required:
     - compatible
 
 allOf:
   - $ref: /schemas/arm/primecell.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,coresight-cpu-funnel
+    then:
+      required:
+        - power-domains
+
 properties:
   compatible:
-    items:
-      - const: arm,coresight-dynamic-funnel
-      - const: arm,primecell
-
+    oneOf:
+      - items:
+          - const: arm,coresight-dynamic-funnel
+          - const: arm,primecell
+      - items:
+          - const: arm,coresight-cpu-funnel
   reg:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
index 17ea936b796fd42bb885e539201276a11e91028c..5ce30c4e9c415f487ee61dceaf5b8ad12c78e671 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dynamic-replicator.yaml
@@ -28,18 +28,32 @@ select:
   properties:
     compatible:
       contains:
-        const: arm,coresight-dynamic-replicator
+        enum:
+          - arm,coresight-dynamic-replicator
+          - arm,coresight-cpu-replicator
   required:
     - compatible
 
 allOf:
   - $ref: /schemas/arm/primecell.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,coresight-cpu-replicator
+    then:
+      required:
+        - power-domains
+
 properties:
   compatible:
-    items:
-      - const: arm,coresight-dynamic-replicator
-      - const: arm,primecell
+    oneOf:
+      - items:
+          - const: arm,coresight-dynamic-replicator
+          - const: arm,primecell
+      - items:
+          - const: arm,coresight-cpu-replicator
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
index 96dd5b5f771a39138df9adde0c9c9a6f5583d9da..d7c0b618fe98a3ca584041947fb5c0f80f1ade6e 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-tmc.yaml
@@ -29,18 +29,32 @@ select:
   properties:
     compatible:
       contains:
-        const: arm,coresight-tmc
+        enum:
+          - arm,coresight-tmc
+          - arm,coresight-cpu-tmc
   required:
     - compatible
 
 allOf:
   - $ref: /schemas/arm/primecell.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,coresight-cpu-tmc
+    then:
+      required:
+        - power-domains
+
 properties:
   compatible:
-    items:
-      - const: arm,coresight-tmc
-      - const: arm,primecell
+    oneOf:
+      - items:
+          - const: arm,coresight-tmc
+          - const: arm,primecell
+      - items:
+          - const: arm,coresight-cpu-tmc
 
   reg:
     maxItems: 1

-- 
2.34.1


