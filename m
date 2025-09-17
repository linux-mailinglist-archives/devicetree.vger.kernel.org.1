Return-Path: <devicetree+bounces-218447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7705FB802CF
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 917F81BC2B1C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9602F7479;
	Wed, 17 Sep 2025 14:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="KvyhR1Fw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94072FBE0C
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758120159; cv=none; b=r5ZXwIEuGtPLorWPygruo7hfIuFRlvDDtvDe1848qyUUXlLOqjGpajMzjxjKbrLcoU0mxak7B4slccWHlXxzserWmvngI9dBCnD+nThuHNjikWO6EDcXXYU4ECe11LlQk1EwmBX1pONDSrbGR334h9JZgSrECAhfs3H7MMczKJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758120159; c=relaxed/simple;
	bh=nZMvPbzhJz4pIT1OGdSOZ7W5mmvg7DDs7B0PgLcUDKU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rkP+fqs+2rL3xIxvpR7uiUvgdcWBm9PyuZb4X717wt0mUctKfazsICWQcUGpj5eCuLS+MjsDVNsCIDxQMv3HKRB1xAbAsfpTc9F0Trz3OO1RFrHeZbp/cwfa83pUgQatH6LRlD/8M4Ky5IbkT3U8NvYzr3hSB/p8ElrKv9pjNZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=KvyhR1Fw; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HADA4x023751;
	Wed, 17 Sep 2025 14:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=fKQHoEdqmTYzXWRVE
	jT0fGwKwqjwdeU+SYVf4y0yRLU=; b=KvyhR1FwcbiIiZqZB/YrhjSYD8HaZmRaP
	rKgJzJVTF7dGuqAUo4pAtbU1LwZlY9c/EdYHI6FrArhQpUSJsjt2e/YYyoExHVzn
	Ek5epnT0DIc2Fd0sc1t2CZvmnUrL1gqI1+NYhMq/RSgbQaCcnifCjLczgNOcV2qZ
	BIm2bhR+7VWCd1mUOH8QkUfUnXrNv5fAST3XXOzIMIPZv9/HYzxkOdxol2ap6Ssj
	7QWYV/0MPspyUMG6Pnv9uUCf7U2jSp7WY+yILDcm/sAVPxuVIcC0am5Cb7ZRFRTn
	qHDEskxCGpFby99vwdUtjl8VkZg4UELRl1R1N3kXOybf9rG7Qev9Q==
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 497g4qm45n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Sep 2025 14:42:23 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58HBUPoN019200;
	Wed, 17 Sep 2025 14:42:22 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 495n5mhj41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Sep 2025 14:42:22 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58HEgLHw14877270
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Sep 2025 14:42:21 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 682B358059;
	Wed, 17 Sep 2025 14:42:21 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9896158043;
	Wed, 17 Sep 2025 14:42:20 +0000 (GMT)
Received: from slate16 (unknown [9.61.98.41])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 17 Sep 2025 14:42:20 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v5 2/6] dt-bindings: arm: aspeed: add IBM Bonnell board
Date: Wed, 17 Sep 2025 09:42:06 -0500
Message-ID: <20250917144210.160051-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250917144210.160051-1-eajames@linux.ibm.com>
References: <20250917144210.160051-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: u0zsiJrciuar9u1HQ9geWzuVT-Z1WPjN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwNCBTYWx0ZWRfXxByER1RLbKjU
 24otUztNj3QIucmHw8C8cW3usa8N108Dz9dViIqe61pGRhxIFVPSJTrVz9GoSN4Fm7PnVUSknwC
 NFCyWNDhfgzoUm46Xm6/APNQ4uCORn0TmsT9lDKJyGpf5l/5UfBFOAcHtfuermHO0AI+BI+Pbfz
 lUO52+CkaAgr8hHKmTFtZptmSjrgCt5T7PMUr+qXIMW+v6WuwUOGP7q9T5O93AksTnmU4LW8D1w
 rO9FK4S0OO2gtE4vlMfje0fMtiDsnHOjDGayFop11KFEdOahRD4XA3dom0wNqQcwYasWft64WTA
 e6ESR0VOkNOw2MWSBe2j9YVpoIf7vzmoGRXT4Tyw9RgBgBNKnxAhL2yEKfFK5VA9qgK5zyk/YYt
 B+ZalzNR
X-Authority-Analysis: v=2.4 cv=R8oDGcRX c=1 sm=1 tr=0 ts=68cac8cf cx=c_pps
 a=AfN7/Ok6k8XGzOShvHwTGQ==:117 a=AfN7/Ok6k8XGzOShvHwTGQ==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=3pJJXNp13jenLdaujSYA:9
X-Proofpoint-GUID: u0zsiJrciuar9u1HQ9geWzuVT-Z1WPjN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160204

Document the existing AST2600 BMC board for IBM P10 server.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index b2fcfcc4a3b9a..9730df98b945a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -95,6 +95,7 @@ properties:
               - facebook,yosemite4-bmc
               - ibm,balcones-bmc
               - ibm,blueridge-bmc
+              - ibm,bonnell-bmc
               - ibm,everest-bmc
               - ibm,fuji-bmc
               - ibm,rainier-bmc
-- 
2.51.0


