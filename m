Return-Path: <devicetree+bounces-61035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4098AB65F
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 23:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AF7F2810F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 21:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76193376F1;
	Fri, 19 Apr 2024 21:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="cXki3V7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080E77E56C
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 21:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713561524; cv=none; b=Tl9/5x2UqPVawZ8DwVJpq2s4pCXsGOn/VKHN2K1RK7qb6/de6JbGEhLenrHi0zdXPU/SXE+cAMoG4tDZM7pl5UQt+l4uK9G6c7NpWPKxAYYzlej4iZ3CXvfbYkp3qf1LlJK+6vAFJ6BYqvEX02HPyhwIbbZ/OkxdAOOl6V7Rvac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713561524; c=relaxed/simple;
	bh=4bjSI6Oag8lVXZt4zD53bAXT9Hm1ZgSL2G8BZ/3h154=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Mg/1tEU7oUDkObANdWloYOpXpJUIqizvjJ515SSh3YB7pfN6/zrbe2vA284yqR/h0Nhs/XFkAcXS8yyI/pXZC68SPxdon4idH8wxFa4yvPANUTbWGI3u8ktGeykFquj+Yo+xJmcsc8iW9gQ5217SXfW2Td8VFVM2vy6yUbIi2Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=cXki3V7e; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43JLCLdK005404;
	Fri, 19 Apr 2024 21:18:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=54ipHnspEShDakm6Ac81lGgxehxc18QLepf7jv4yyyA=;
 b=cXki3V7ePbFEQvuL9v+FBzDNyPvydL7mEiSX7qnLPQeo/cS2FgF7w2cwWn+FMd9nNWaW
 y8I35FGIkbdmseZDQnm4EufTavB8fQbG+v9ZjzSmiJl7kXDETIPZzyUiUlVALDkLwFBN
 Y/8cyIFNp27XDoR8Wrl1IBsHBBjy+R45nOIUOkxnJXgp1cMmJkgR3UapJ6HG8SBk3S01
 xzdIPTRkf7iNf8dSxYPyIobm28m6wNUY2wx+gza1oO4l8vW1ueBJZ6rIxAV21emk8Mqw
 Td1GSlkHsux0Rd6rsnDcMKJKQu8j9qA7lLgXX82XKgaEsYFlsvN0qTMhHlA8zksc+aWQ OQ== 
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xm0ap009f-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:18:30 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43JIVQm3022547;
	Fri, 19 Apr 2024 21:11:46 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xkbk9630c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:11:46 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43JLBhjw22676038
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 19 Apr 2024 21:11:45 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 95AB458057;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4A63A58059;
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
Subject: [PATCH v3 0/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Fri, 19 Apr 2024 16:11:40 -0500
Message-Id: <20240419211143.1039868-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: p-D9-xrpa_NNx_IM2bfdxxqRZkJ4WAIC
X-Proofpoint-ORIG-GUID: p-D9-xrpa_NNx_IM2bfdxxqRZkJ4WAIC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-19_15,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404190165

A new type of SBE, found on the Odyssey chip, will return any async FFDC in
the next transaction, so collecting the FFDC is unnecessary and results in
unexpected behavior. This difference in behavior between the Odyssey SBE
and the POWER9/10 SBEs wasn't apparent when support for the Odyssey was
added. To fix the unexpected behavior, turn off the async collection fot
Odyssey SBEFIFOs.

Changes since v2:
 - Update commit messages slightly
 - Rename dts binding file
 - Remove '|' after description in dts binding
 - Change generic node name in dts binding to match fsi.txt

Changes since v1:
 - Change "ody" to "odyssey"
 - Fix minor issues in binding document

Eddie James (3):
  dt-bindings: fsi: Document the IBM SBEFIFO engine
  fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
  ARM: dts: aspeed: Update Odyssey SBEFIFO compatible strings

 .../bindings/fsi/ibm,p9-sbefifo.yaml          | 39 +++++++++++
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++----------
 .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++----------
 drivers/fsi/fsi-sbefifo.c                     | 37 +++++++++++
 4 files changed, 140 insertions(+), 64 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/fsi/ibm,p9-sbefifo.yaml

-- 
2.39.3


