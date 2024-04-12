Return-Path: <devicetree+bounces-58789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 609E88A311A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:44:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0492B2630F
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4EF3142E8B;
	Fri, 12 Apr 2024 14:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="KbUbyscD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5D13CFB6
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712933060; cv=none; b=an+4IycXsldNxSvmrFtHI5SL+N+W+D8zFcb0nfb2yk6t+S4A9nHbdbGFT3hlgychWWca+JcnT5WXGymsB0wNNU6X9VH1mq+SAPZwB3ea3XHDCDZw+YibsPdARV3Ghoub41HUPkXlzyyTQZjQPG1fQ0yEEniiAlRhO/GiXOZ/erA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712933060; c=relaxed/simple;
	bh=8JiPCVWCw+qtIC5vjBjueZVTtPyLOEkTl6TrRgMN9js=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=igf0kFpPQK+AsX8iHgAxfdNrE+NOyfLC9RDi4M5Kc4Wk7HomYpuXzBYj0XCRLJqK5xrAza1Nm++ZyEnf0pckJsXotpACM+LzOb/V4NiEZd222MPxObC0obSsa+7sA3ySoi6G7D8D7UidGLS1AeYgfu+petydaPZpOScN8Lx9Ps0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=KbUbyscD; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43CEgCI6015429;
	Fri, 12 Apr 2024 14:44:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=Y9fbDKj4mRItcxZp01zrgQD9vL97XqpsDv3zHBCpnGI=;
 b=KbUbyscDAKxyv630vhTrJlrzEIumEwQ3cCj2cLJcRwtBEaez8Fmy+cBMa/M2suS+0wzL
 z9W+rR64xGwddzr7lz6m2dElZHJOBItWfl39L+2mu3a/V3swMpjLOttN4VLELa/riVoN
 QAj5ftI+u0UI5oywHlaKZV6IJLWGAfu2CukfWNfrUpX2KFGhYwfLmibrNOY1m943RfvW
 osFO1uQUtLeVzTb06SOTtnT7/U98hgFrR8Fgk2vWSrYCTNWDI1ju3yY8Zotb7gUb2bR2
 KC/0QT4oIogm1LX7xr7h2QkTOQYhicmaFzWSG0DiG4mPXW89JKn2AjK8K23/NEZw1qj/ IA== 
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xf59c08gn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Apr 2024 14:44:04 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43CDxDHf019110;
	Fri, 12 Apr 2024 14:44:02 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xbh40tjc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Apr 2024 14:44:02 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com [10.39.53.233])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43CEhxmA57213224
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 Apr 2024 14:44:01 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BFB505804E;
	Fri, 12 Apr 2024 14:43:59 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 116755803F;
	Fri, 12 Apr 2024 14:43:59 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.38.63])
	by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 12 Apr 2024 14:43:58 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH 0/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Fri, 12 Apr 2024 09:43:55 -0500
Message-Id: <20240412144358.204129-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: pmdGDALVvAd5hahNWNzAKr4wf4DsEJjO
X-Proofpoint-GUID: pmdGDALVvAd5hahNWNzAKr4wf4DsEJjO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-12_11,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1011 mlxscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=760 spamscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404120106

Newer SBEs will return any async FFDC in the next transaction, so
collecting the FFDC is unnecessary and results in unexpected behavior.
Turn off the async collection for newer SBEFIFOs.

Eddie James (3):
  dt-bindings: fsi: Document the IBM SBEFIFO engine
  fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
  ARM: dts: aspeed: Update Odyssey SBEFIFO compatible strings

 .../devicetree/bindings/fsi/ibm,sbefifo.yaml  | 39 +++++++++++
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++----------
 .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++----------
 drivers/fsi/fsi-sbefifo.c                     | 37 +++++++++++
 4 files changed, 140 insertions(+), 64 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml

-- 
2.39.3


