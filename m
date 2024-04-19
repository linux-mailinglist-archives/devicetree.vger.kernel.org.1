Return-Path: <devicetree+bounces-61033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FEB8AB65C
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 23:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25D761C2082B
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 21:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19F17D416;
	Fri, 19 Apr 2024 21:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="a4wWrcQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B592E40C
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 21:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713561522; cv=none; b=pUOH7oQ+GhRUkBeO3kpB3JfHAe6aauIUXDgtmxKcJk5TtcfaNMK/o/4Nr4ZNkRKaS8Kz10F4FEV3atpItoIPVGjjzSIS0q2KytS/mtBuRvzKOkLeigM/8kS5NktCo9bNo5IoZbpdlmSyrNixUknWZiC4fkxG5LpUDUYFfP9ryyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713561522; c=relaxed/simple;
	bh=d6vX5gcDD/a8kMzLh2i6jFDaLcRT6s7HFQY9hfpYa2Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZsOgDekmFmnHjTfb5R/yZ2o8AoTO9mRCak7ydsZCQeMzMq7ycN/nxjjdEJbppN0i9d1rS/UY6DYcVdPLy5HClXj6aqfo/3wIRJueKG/AKp3enqT32aL9moeRV/1a/WZfpIPDeY0wQZCHFqK8lRrRjzCIzRkQyTjrPCvC0Z6zmQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=a4wWrcQT; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353723.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43JKqTuY027486;
	Fri, 19 Apr 2024 21:18:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=frOZ44T1SDsOmh4MKwQrE/Tcisev4K3KL6b9Lta7ckg=;
 b=a4wWrcQTE6Tr5KsAmIPSGXFF/U4Uw95Xd20bk223kxNURrqFeZA+9jh6XgLlktfp9czD
 bgn4JiCnHwf3+mSDxjW9WSu9g+azh4Xn4jqdeTxhkHrE64O46GtdrC1hW4Tt2yboDPtW
 dK4SvGXzZbyZVNyfMycwWO/voKIEcRSdAGKIbU3IZLQHdedG3H9/khNLrGKibADEW+B4
 kOOf3Q2fFJyzIw7I+kiwCHV5Pt01qILPVObgmfPxXkc4jw23oDskNakd1RFpJ5g91Bs6
 7TRsDCEgDqRxBP25vE6GMCTwD13NLFYVOOX1IDU3l+teQJTQ8/TebyKiFu/viUopbP2d Pw== 
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xm01f01ys-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:18:25 +0000
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43JL4UCx007855;
	Fri, 19 Apr 2024 21:11:46 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 3xkbmcx3g0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:11:46 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43JLBh3C34865840
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 19 Apr 2024 21:11:46 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E027958065;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9E8625805D;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.157.174])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH v3 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
Date: Fri, 19 Apr 2024 16:11:41 -0500
Message-Id: <20240419211143.1039868-2-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240419211143.1039868-1-eajames@linux.ibm.com>
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 3AlH00HQuiv9mFjHDSuY5K_6ZMhhe296
X-Proofpoint-GUID: 3AlH00HQuiv9mFjHDSuY5K_6ZMhhe296
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-19_15,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0
 adultscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404190165

The SBEFIFO engine provides an interface to the POWER processor
Self Boot Engine (SBE).

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
Changes since v1:
 - Chance "ody" to "odyssey"
 - Fix typo in commit message
 - Reword description to describe the hardware only

Changes since v2:
 - Rename file
 - Remove '|' after description
 - Change generic node name to match fsi.txt

 .../bindings/fsi/ibm,p9-sbefifo.yaml          | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fsi/ibm,p9-sbefifo.yaml

diff --git a/Documentation/devicetree/bindings/fsi/ibm,p9-sbefifo.yaml b/Documentation/devicetree/bindings/fsi/ibm,p9-sbefifo.yaml
new file mode 100644
index 000000000000..5892902f533a
--- /dev/null
+++ b/Documentation/devicetree/bindings/fsi/ibm,p9-sbefifo.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/fsi/ibm,p9-sbefifo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: IBM FSI-attached SBEFIFO engine
+
+maintainers:
+  - Eddie James <eajames@linux.ibm.com>
+
+description:
+  The SBEFIFO is an FSI CFAM engine that provides an interface to the
+  POWER processor Self Boot Engine (SBE). This node will always be a child
+  of an FSI CFAM node; see fsi.txt for details on FSI slave and CFAM
+  nodes.
+
+properties:
+  compatible:
+    enum:
+      - ibm,p9-sbefifo
+      - ibm,odyssey-sbefifo
+
+  reg:
+    items:
+      - description: FSI slave address
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    fsi-slave-engine@2400 {
+        compatible = "ibm,p9-sbefifo";
+        reg = <0x2400 0x400>;
+    };
-- 
2.39.3


