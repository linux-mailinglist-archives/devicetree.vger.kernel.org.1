Return-Path: <devicetree+bounces-219009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C9B865C3
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:04:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31D8756055B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE7C28DB49;
	Thu, 18 Sep 2025 18:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="D4w/xNLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC9C2848BE
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218665; cv=none; b=D0GwHj+SGzw+UBe3+8Cj5Al9Em5v6WXaDElcZqXqCHO3U1Tb5yeRB33hIdTZ7onKgoH3kfdyqvMHjfcwWUoHjBLm2qYDwUHgaI+fMRuo8AIea6vHCb6sm1rb9u88uVNbrjc+UQci9bcRBV6EtteIUq8ThmDb5frbzR26unYALJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218665; c=relaxed/simple;
	bh=SvjKOHmN2LBNjiMfjGDRf2Qzsz3S4CjoWU+N74PLvjw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aX3bWdZjjQ0AfoyCyYGmAjpk0KgzbfXFUGDVbykaNV2YSz4KMfU34tPiAf005BrJGjiVhbUwOJTU9Neg06cE8jGPLAV5s61Nh70JIFAhykDImuLktWYsLVd7r5JwJIBJkw61z5cQ+4lKpUIrYgW7zcboWqrjQQW/2yJqWxcCXEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=D4w/xNLd; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IF40VZ013993;
	Thu, 18 Sep 2025 18:04:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=Hokf1lue+vVbLiF9V
	Zl0cEYqrAg1Uo/ImMJ3thEnMec=; b=D4w/xNLdh3Z0nDFx2JFahDgFgXwYK3V18
	azRHg386pnlGNtMtS/qMRjfrK7Xd3hhEdl3Iri6ACBPrqFhljvwdkPkt6zx1K5/S
	+LPHoy3rl2ZsAdTEHwNzDCb935lYokbYZYsf9OALhE+R35brjUjqJOr+TvHcGpMJ
	3DuCSO/5Mk5fGY4rzuXhb0NbhXFsLuet5yIwBw1o3H9UQRXagksLhaHC5dlL6m7i
	640IDoq+MJRxJ87atgNrikXv0YkId97/CjQA0PiKLsqkTSvkKlHYiznGleblDA3+
	wUHFIRlfkTymE6pxXyk5+BhWqmp07PNhx1HS6eQbND/r3iKrYjEvg==
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 497g4nkhpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:12 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58IGA1Qn029484;
	Thu, 18 Sep 2025 18:04:11 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 495kb1891c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:11 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58II4AAQ11731630
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 18 Sep 2025 18:04:10 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C71ED5805A;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 96B1C58056;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
Received: from slate16 (unknown [9.61.169.208])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v6 1/7] dt-bindings: arm: aspeed: add IBM Balcones board
Date: Thu, 18 Sep 2025 13:03:56 -0500
Message-ID: <20250918180402.199373-2-eajames@linux.ibm.com>
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
X-Authority-Analysis: v=2.4 cv=MN5gmNZl c=1 sm=1 tr=0 ts=68cc499c cx=c_pps
 a=5BHTudwdYE3Te8bg5FgnPg==:117 a=5BHTudwdYE3Te8bg5FgnPg==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=VwQbUJbxAAAA:8 a=AJooQMD86rzp5GWHMWgA:9
X-Proofpoint-GUID: fHhlNWH7oBudInLofjwxg_5i_8oVTfsP
X-Proofpoint-ORIG-GUID: fHhlNWH7oBudInLofjwxg_5i_8oVTfsP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwNCBTYWx0ZWRfX3w8OuXa+KyF4
 51D9RqBKwNXF9S7f3Xf4uIDqYQrkcnJGqPMbb/yoEkyixQ1TUMyA8kFYmFaUoACHh9ofcGTrH3k
 MtYXmk2ZHXB/DJWRwIlTSwYzcDY6ed+1kuliFYA1rpc0mlHn2g+ky2onmhPLZ5rRxA14Fz9/fDN
 i6yxx7ruOOkU2SWIsQrsvDwQtsH9GdKX7vqCZ7c2VtubzNBn680wCG9t9lsR8h+6O6dUgYlb0km
 3R8vb3FZ0LXvTEI3kkH7roK0l9bwYXfq8vroMVbhqkt8o8ueW2DeM6vCzhz7teF6DOYELMgvZcO
 3VbeDCE90hpbm4liS4CzkR7ZstDPQPMERP/3qHluETlud9c+J5h/dwTV3QzaC2fflqhUv+dEG/y
 UFXKVeYV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_02,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160204

Document a new AST2600 BMC board for IBM P11 server.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a8..b2fcfcc4a3b9a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -93,6 +93,7 @@ properties:
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
+              - ibm,balcones-bmc
               - ibm,blueridge-bmc
               - ibm,everest-bmc
               - ibm,fuji-bmc
-- 
2.51.0


