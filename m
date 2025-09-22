Return-Path: <devicetree+bounces-220180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F3986B92841
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 19:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0320A19057F1
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE14308F28;
	Mon, 22 Sep 2025 17:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="OmKspKGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86CD3168FB
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 17:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563904; cv=none; b=tSsFCT9pXj7uSIRtMZQyprrZ7qVyW9WTId02biDnEZp4OxzuRb4yuYUKkimX6sDf5Iz/MMy5awrYDb/Y5plIverNK1H5/Z/wBfEE2CnWUutaubmsxAFjlLsanoxbEqiUPn0TQ1OFPrw8vg9CFGvG+p9kQL/peQa2qFLulNpZcZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563904; c=relaxed/simple;
	bh=U6nDFVM+Du+gQnaWnfvYzJsmrVK2ROUWbRyzBKETWJA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iwWpBzylb1eA1DC2Sb51nr0vJhNi93ofZYDAfVO4k/kpzn2Lxq4Ek46CAf0QrDCnIdvbIoODspnD6Zl4Ao0/C4T7KIhjEjcRzTkfig9hFzagdlNjZcwZaVl7WC0JLWM6RNitNb3StZy/DVUJ424Y+gzSh7O1Z5YOj2nDKuwmo+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=OmKspKGo; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGWF05027669;
	Mon, 22 Sep 2025 17:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=7HoY2BJeiI87DUT6+
	8jko2ErCy9Z3DbekeoEEsztp1U=; b=OmKspKGovFkjl3X7VWhqR7nhutCxAYpTO
	e/4qzDpvBXudTWFAW612Ahu5j+7aynOGm/4w/DtfYKC98GhU5nrLXg+jm4OQUnTg
	fxL98aeqZqdKYEE7NMqfgsg4eToVLgNiRPpoxCt8+L0LsE+PWkTzot6NgGE02Q7p
	e0vNS21/XE4wGZf4h1TIcErtf0AFN+MtWlfMaphwnDpnYZdOvCYXy12qUr32JPKk
	6X66Of8Fn+c5mwVedJsXwQL9rkDUqJrLG4qvtCSTtU3iMI2cUlh0UON9yo5QmexG
	6RccQ4cQOfkGQ3vCbz+zEYnn7qRp5V92fagpi2+G6p/j7CLxO3w/w==
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 499ksbmkva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:15 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGJ1WD031129;
	Mon, 22 Sep 2025 17:58:14 GMT
Received: from smtprelay03.wdc07v.mail.ibm.com ([172.16.1.70])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 49b9vd0ct0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:14 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay03.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58MHw3Gv12911176
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Sep 2025 17:58:03 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C743E58059;
	Mon, 22 Sep 2025 17:58:13 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5D0EE58058;
	Mon, 22 Sep 2025 17:58:13 +0000 (GMT)
Received: from slate16 (unknown [9.61.160.40])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 22 Sep 2025 17:58:13 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v7 5/7] dt-bindings: hwmon: max31790: Use addressed fan nodes
Date: Mon, 22 Sep 2025 12:58:02 -0500
Message-ID: <20250922175804.31679-6-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922175804.31679-1-eajames@linux.ibm.com>
References: <20250922175804.31679-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: kdXCwF4yZAzU5Qybo7oqChGA18FBwtiE
X-Proofpoint-GUID: kdXCwF4yZAzU5Qybo7oqChGA18FBwtiE
X-Authority-Analysis: v=2.4 cv=SdH3duRu c=1 sm=1 tr=0 ts=68d18e38 cx=c_pps
 a=bLidbwmWQ0KltjZqbj+ezA==:117 a=bLidbwmWQ0KltjZqbj+ezA==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=n6X2Zvpy7yjbfLGLM-4A:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMCBTYWx0ZWRfX4rpFJXMPMu8a
 iQc3xkVStrkgQo35I52eNJH/S/jTa+O3mFD3+xepqzXJ3JBg0KVCJpv1BFFI6yQ++dNMIaFzFmY
 qyBjFsLIoZXpBLsrNclmJorfE0rlxUNNreVN6ZI1T8BxA2b7Vt4LnMmAkYXdnH6pUcMxyk+uywP
 XsmiKeke4+5W0+CdN1a9ytthllAKoYYR5DJnJU+LTtOrqDGmL3t0O0WBfnKQpSpOkcH18mr9jIY
 dAmFlElsHLjLat0N3KsIWvmnk5PnSVyQDS1xPIC7CX1/iGB74Zi/s5sGguybDzYkD6mTHc6VukJ
 ufNPEOqEMk0i7On2FcRGaU0lah1+6M58RnXTWXCXR55hxC+eTX6zyJXYt/o+NIgK25yXAomKEnI
 at2nKNFp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200020

Since fan properties can include reg, the fan controller should be
able to specify address-cells and size-cells properties and use
an addressed fan child node.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 .../bindings/hwmon/maxim,max31790.yaml           | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
index b2dc813b1ab44..558cbd251b0fd 100644
--- a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
@@ -35,11 +35,17 @@ properties:
   resets:
     maxItems: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
   "#pwm-cells":
     const: 1
 
 patternProperties:
-  "^fan-[0-9]+$":
+  "^fan@[0-9]+$":
     $ref: fan-common.yaml#
     unevaluatedProperties: false
 
@@ -60,13 +66,17 @@ examples:
         reg = <0x20>;
         clocks = <&sys_clk>;
         resets = <&reset 0>;
+        #address-cells = <1>;
         #pwm-cells = <1>;
+        #size-cells = <0>;
 
-        fan-0 {
+        fan@0 {
+          reg = <0x0>;
           pwms = <&pwm_provider 1>;
         };
 
-        fan-1 {
+        fan@1 {
+          reg = <0x1>;
           pwms = <&pwm_provider 2>;
         };
       };
-- 
2.51.0


