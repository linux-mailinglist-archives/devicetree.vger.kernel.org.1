Return-Path: <devicetree+bounces-219013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DB3B865DC
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C6C97C6CC0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA682BE053;
	Thu, 18 Sep 2025 18:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="adYK00kn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0A828B7DA
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 18:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218666; cv=none; b=lbmbyfAIJGwmE1JKgFFPwraXb1dEg8gGw7f0yUwIDoqbI35iaTwpJI5fmDF6HguFVv6b6PoXNU3Y4rOlXYrZSuf5t/P2pf8fxVeRkAMmRUFVYEox79dfpmeYmRTTVJIAGpetnfxYhz/vsaBTjyB1XvrsnyO/ENwhags++LAiLW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218666; c=relaxed/simple;
	bh=3DUqhZxmoEsZiEueaEILk3zlfsN0MzO7oHDY4glDlG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ji/5S78NxVjIFeDY5eAatx3r1eOJd0zsgm1TZDzwvR8vz+aPGkN0KOf6J9aYnLBSWzMvGgFAZpRp1iA4y2UVvHCakNwCRM09IfRvX8WDlOuHmy6J6Pb3ipNaQMyf6M//qKshmKYGBNvRsNdTDMp87JIT5w9GgmxkiIeVKXa6wkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=adYK00kn; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IDD6OD003223;
	Thu, 18 Sep 2025 18:04:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=aGCEUE9JIhEEuusrD
	raGAVEPG67gpaf8g7C5M/rBytI=; b=adYK00kn9g+FJziVPWpRSx6yfp661Zp9m
	fviv0VIzcAFQa6YwMqt1Vtoc1N4ZR7rY2wGm4smBK71KI1Bo3VzIRsgds8bhmCWv
	z76uiuPJxx//XQ1kTLmbmNCDNwfMF/alxpSTNZwD5+Qq1xqDmEbKIJHZqU9ydmkD
	ayT3Rs3WViOnF1Q4Rn+QCbLRNDgfvUi0ZZk5oRvetgkhyBAJ4DujDZsNbwoQUdfa
	zvnCDVNvGmhT2/UUmpGL4wnEE9qp/ApQ3wM6G4ho0a2o9RWOKPl5vBe2Vxi5QrYo
	NrElTIUsd2QvtYoQsKzGDPSN8+b7FFodldd4xBcwrONqebPaNJw6w==
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 497g4hv0dp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:13 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58IHcvu8018649;
	Thu, 18 Sep 2025 18:04:12 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 495n5mqvqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:12 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58II4B4V8454754
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 18 Sep 2025 18:04:11 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9ACDE58056;
	Thu, 18 Sep 2025 18:04:11 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6A4AA58064;
	Thu, 18 Sep 2025 18:04:11 +0000 (GMT)
Received: from slate16 (unknown [9.61.169.208])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 18 Sep 2025 18:04:11 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v6 5/7] dt-bindings: hwmon: max31790: Document address and size cells
Date: Thu, 18 Sep 2025 13:04:00 -0500
Message-ID: <20250918180402.199373-6-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250918180402.199373-1-eajames@linux.ibm.com>
References: <20250918180402.199373-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: hFP4vXeo6w10QxI7Pm7pyHTLPSsjuur5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwNCBTYWx0ZWRfX42b6wWgKUoyF
 ofq0UB5MTsr03RhXIMZH1DFkrDJMshONk29YvHB3/tbFFw1oo9kE52NKhuldFjWybUAjff05oWp
 UgWBuS+DNvTPhN7X+2tT1zLQhf4kyepmz0iIxBOPsQlfLqjAWVB+IPXwVG3ed8PMjip/p72BVpu
 OGUoFqXH6aTcJ8DSrcD5+/jPRgZLj4x97WR8YNeCMIdilWDc5vNl9ZtiIxhU0JMhTdxvrwUPubn
 Yo2Q/D5ITEU5suMEoflPc8KuSTWgWKDU9f7UmwBod2VXCEUufmmaxrUSirzOMU69LG76RlY0nOD
 gaoCiklMCi/reyGT4kd3/LrNI3zQ+r/WyqoKUuGPa8dumQ2Uof0z2yYCaZjI9rpPR4f21vWK5Yg
 ZUZ1Eu7i
X-Proofpoint-GUID: hFP4vXeo6w10QxI7Pm7pyHTLPSsjuur5
X-Authority-Analysis: v=2.4 cv=co2bk04i c=1 sm=1 tr=0 ts=68cc499e cx=c_pps
 a=AfN7/Ok6k8XGzOShvHwTGQ==:117 a=AfN7/Ok6k8XGzOShvHwTGQ==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=qeiQR4ZBQHcxPOEz8WgA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_02,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160204

Since fan properties can include reg, the fan controller should be
able to specify address-cells and size-cells properties.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
index b2dc813b1ab44..42e7030360f1c 100644
--- a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
@@ -35,6 +35,12 @@ properties:
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
 
-- 
2.51.0


