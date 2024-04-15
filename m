Return-Path: <devicetree+bounces-59436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E0F8A569A
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 17:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5349728368A
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F97C78C88;
	Mon, 15 Apr 2024 15:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="BmDRIkVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBC91E535
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713195567; cv=none; b=Z6pnx9TD5nsBKTO3HNPIhXNMqYZzwCh1k4pcmBZoUaT7ZEnVJb4o5q8GdPgNyfcwk7Q6gZ/xPu+wrnyDvUfCM+fDtqyS5osKuJC6sq3FkSSmp9U+mEakB8H7VYOwaJBWBNaMMe+3L9Ig4+E7eptYffdRM1TeEX2FZCPFTRbVGbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713195567; c=relaxed/simple;
	bh=Uch/sSaRiycYNZmXRnZgu/DT3FIZB6fGrrU/TzJC7Fc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=k+62QM56NteZTDnCXTNRaExJNwnLJLWrX5w17jhYVPDGEzLSwi65VYvfLvyk3CYKPfbo4oRMr8E2IwY8oSo/O4qx0ifgxC9yCWL95228WrsO5KXfgJDJ2IC5csO4ZoLng9ouH+liroUZdcbCbqCO7Am4Ucl3s/Cixth/8wi/AZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=BmDRIkVr; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43FFWm3C016131;
	Mon, 15 Apr 2024 15:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=pkvZQvQTM/USW1hdYXo/PMP26qwVSDBiF32DK+7fMAg=;
 b=BmDRIkVrR2a5bv6xkh3T3piWdv7IcElgUoDEGZjD2gA+g54avyViFOodgQ6yNHrAO0+C
 HLZpGAndVF6zeWtBTF4/CT5X6wmUvOlzEsRPmjfUaclaMVOVXtquKht9gF2+EeCeIyIL
 WP9dWePb0rSRYcv9BizzMRkNQIGEBD9UrAsToCRC924z8RIo91ZqWENxOU354qdE2SqT
 CGFR9EXoe+lVYyvn/xh1cd1Ye4/nlihvslrF4jCUcJQqLPLcr/1wZq4aEmulT2E7w5YC
 d/eAyAjLsZKjtu7gH3fZiAMIIPszY1XYJ53PsNPRdj2QGAc6i6hbvugVGcPncnQQa7kJ qQ== 
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xh6yd00dd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:39:12 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43FDiMQu021347;
	Mon, 15 Apr 2024 15:39:11 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3xg6kk8a9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:39:11 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43FFd80B49742498
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 15 Apr 2024 15:39:10 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F0D3F58056;
	Mon, 15 Apr 2024 15:39:07 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A52E45806A;
	Mon, 15 Apr 2024 15:39:07 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.157.174])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 15 Apr 2024 15:39:07 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH v2 0/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Mon, 15 Apr 2024 10:39:04 -0500
Message-Id: <20240415153907.10051-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: h2B_90IEK4czk1PO4NCRsL82lyyzFeMT
X-Proofpoint-ORIG-GUID: h2B_90IEK4czk1PO4NCRsL82lyyzFeMT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-15_12,2024-04-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 phishscore=0 malwarescore=0 adultscore=0 mlxlogscore=866 suspectscore=0
 impostorscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404150102

A new type of SBE on the Odyssey chip will return any async FFDC in the
next transaction, so collecting the FFDC is unnecessary and results in
unexpected behavior. Turn off the async collection for Odyssey SBEFIFOs.

Changes since v1:
 - Change "ody" to "odyssey"
 - Fix minor issues in binding document

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


