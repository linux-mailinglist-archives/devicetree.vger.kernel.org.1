Return-Path: <devicetree+bounces-148595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F3AA3CB66
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 22:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35B3216901D
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 21:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E75C257436;
	Wed, 19 Feb 2025 21:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="hj5YNeAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF49257428
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 21:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740000470; cv=none; b=UNfZWRJDdPhCSaMvwqFAdaFprHKJngGWSHhWHFTeEoNT6fSEgITrF/7PpYHZVXWoG8lo5qShfZ4Mba/nGKStc1PzqRNLE13VdLE8kobC++0nAvEztca4MbLakgf4JJTL4nxK265NWn33p3LaASzpKBgMSWgK1y5c3PEMlNwp3TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740000470; c=relaxed/simple;
	bh=+5oNn/cN/fZJkZCjfoYbPsFoBAdZWIS1okXxdNenR+I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hf2MENjeETERFg1X5m5acW6BNkWRAbVnLatFziO4W6S5M+lcunh/KUzGeJ0Prdjr4SsG+vlLQNVCttA6Gq2k/mA3mkFL02b/xx9gPd4bUkf5p6692YtrUI40N4rDIBYPL4pmdoCKSyEs3DTywrc1Dgsdy+2j2nBaKbCP/B4Dwc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=hj5YNeAr; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JFdajg002049;
	Wed, 19 Feb 2025 21:27:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=99xfItG8N2E6t1IXq
	5hH/H8ylsGve8tY+V9tH+xgKcw=; b=hj5YNeAr5j+R1iUJOzvH29bpEwACPglZB
	KGELhRBV7Zfg/CEXOn7veuzSPlo7oBU6by8PWodHeHvmXkaSm5LKQw0+XpsRxqaW
	MzqDd3RfFtAvAhDIKLVdSSQF/KasjGpfGSpGPcr8wWxohOW7FsPGUbwht8/Iz+g/
	fo+cs0Viq8AOQYm35hJXipVzT3phVvtNhTtuVjdVKTeRR1NaQMNrIb0tfC/KzbnX
	YJLy0o3qFdu7GreQEqPBd3XtqFb7cZDAujlJQrNLjZ5cH0Wj68SdgHdjSNgVAndS
	5lE9FvdAgXzIt9i//5ClR2xKlIUHgxA0FYsusH2mwNQ4x/cxqUdrg==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44wj4thprp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Feb 2025 21:27:37 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51JKep7q005829;
	Wed, 19 Feb 2025 21:27:37 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44w02xeb71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Feb 2025 21:27:37 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51JLRakr3736170
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Feb 2025 21:27:36 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A814258051;
	Wed, 19 Feb 2025 21:27:36 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 76CD75805A;
	Wed, 19 Feb 2025 21:27:36 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.48.195])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Wed, 19 Feb 2025 21:27:36 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH 2/3] dt-bindings: hwmon: ucd90320: Add 90160 compatible
Date: Wed, 19 Feb 2025 15:27:34 -0600
Message-ID: <20250219212735.1365050-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250219212735.1365050-1-eajames@linux.ibm.com>
References: <20250219212735.1365050-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: eYsaUyR6QgmT2KiEu8B8U5XUE8ITDnc8
X-Proofpoint-ORIG-GUID: eYsaUyR6QgmT2KiEu8B8U5XUE8ITDnc8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_09,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=723 phishscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502190158

The 90160 is just like the 90320 but with less GPIs and GPIOs.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
index e8feee38c76c8..0592279b7e1e6 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
@@ -23,6 +23,7 @@ description: |
 properties:
   compatible:
     enum:
+      - ti,ucd90160
       - ti,ucd90320
 
   reg:
-- 
2.43.5


