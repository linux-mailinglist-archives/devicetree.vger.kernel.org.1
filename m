Return-Path: <devicetree+bounces-248250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 682DCCD0570
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 279AE3062919
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3B02459DD;
	Fri, 19 Dec 2025 14:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="qlkppsts"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AA41C5D59;
	Fri, 19 Dec 2025 14:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155191; cv=none; b=IlPtzfPExlPxi1qqR9BqA4rEzxL7/zKowIpCGmC4UC8qRKog2KVrDTox83SzEiFljgJ6410JAg6cDGbdLDUaXlUh0dkeXIe4ztjKBHb/VGK2ImpxbuH/WDS5tE91AsPyopdKBHtXW0rjUVZ1uT1oz/uhgb9kJ9n/pkSeMy9d4Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155191; c=relaxed/simple;
	bh=VyoxIu8sWe9nk7CMEgfOwl+7UcI1PpwQE3QbQpaeh8U=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lKJs3EaMerxYwV/W29FdwYLyakq9uvCWf1LP5NAfN2RP1oUHf57qlsKcX75Yvs/tBp03HIHEu/dj8hBCGVGzl7eaDyeVNKBdO8qJD1PH4P2XoNQPOkQPLw44QITRmdwG4M3ZNlJNqfuWsBusmEaAO3LawPZSsuIk2BaXfcqJ1zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=qlkppsts; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJEPkSq799637;
	Fri, 19 Dec 2025 09:39:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=DKIM; bh=CIMzL2uLeCPsi36OtsiF5+H8EkA
	Upq2G021zbaSlZLc=; b=qlkppsts3jtIF67DSJhaItS9PfRJanFIrV0Q8WSC0uj
	wX0SZJF1eIM556wR3Q6rVKK52zm5r3TwXTayyK9WxRRySypY5rspQnuQmmJPL1vO
	VS4pNr3jq7ZGoiaXiS5d7kpYmTa1ST7fhK+Gbop65V7r4vS1g0OoQW+coOmVKB1m
	bd635Loq+ushoUp5kMf5iWig9smfBOPV+lQILeQ50gWr1QTw4ATqiOsoojNsb4Uh
	vZ2kTcEqE/Dz2wvFohpDNMsahuxY5axMO0/NtG06clwbIu0v/fG8HsNxY2PsQz1k
	OMS1Ig+OwjdKoEvZgJlbUkq7+R8tLBDRJq9sT4XHcag==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4b4r3tvcaq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Dec 2025 09:39:41 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 5BJEdeM2045653
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Dec 2025 09:39:40 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 19 Dec
 2025 09:39:40 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 19 Dec 2025 09:39:40 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5BJEdROf001448;
	Fri, 19 Dec 2025 09:39:30 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Add support for ADG1736 Dual 2:1 Multiplexer
Date: Fri, 19 Dec 2025 16:35:25 +0200
Message-ID: <20251219143554.22793-1-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: paZQuv4Ccan5Y4CSnoiBg_-5ACnsuZng
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMyBTYWx0ZWRfX7GvRt7uQV38/
 q2wDLs8NOuzUAKIyuJM0YqqkwOwpPtu6aN+Ztrh7gexIunYCXgNgCNQO1sdtZvQrsRLXRulR1b9
 EmvKJZBnrBr4pm0ngF19bruIH9LwP8fSlY3MxwWRRP2qVyGpfaAZ58mL4oirRRkRfuYEmh9LSAP
 jxliQpDpJP6PAfjjh7xecVoC1eMHW653ZPLtrL+N/QonBdWtscGWLlzdvVSrZTazO4V1Waogjb8
 ukOxdTSj3a6myqp38g3zLYVo+Nvd8JRPTcs4VzRXDJKEbkTZC0qKfifhFQCsEYmsmQ3teDnSpf+
 EfUcRFkqmvw9dVX/EBo+Z2SmEOYoZ8yAzpGxDTqwo2gaWmyTfp9DBVJdYK/r28jqfillkBqvm8l
 uQ5BNXMGW8THsgOMps3ucBdC+PMXUev8tP0c9gXtuE+zJ3zYCB8p8mLy/2J53LwmmOfcuoSFzYU
 Jp62u7t01eIuBW50x/g==
X-Proofpoint-GUID: paZQuv4Ccan5Y4CSnoiBg_-5ACnsuZng
X-Authority-Analysis: v=2.4 cv=Ba3VE7t2 c=1 sm=1 tr=0 ts=694563ad cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=1Oaf8meqH_eina68J-QA:9 a=FRP3Pcshrw8A:10 a=A81Fa01t6NIA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1011 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190123

This series adds support for the Analog Devices ADG1736, an analog
multiplexer containing two independent 2:1 switches.

Each multiplexer can connect its common output to one of two input
channels, controlled by individual GPIO pins. The device supports
per-multiplexer idle-state configuration and has a shared enable pin
for disabling all multiplexers simultaneously.

Datasheet: https://www.analog.com/en/products/adg1736.html

Antoniu Miclaus (2):
  dt-bindings: mux: adg1736: add support
  mux: adg1736: add driver support

 .../devicetree/bindings/mux/adi,adg1736.yaml  |  77 ++++++++++++
 drivers/mux/Kconfig                           |  12 ++
 drivers/mux/Makefile                          |   2 +
 drivers/mux/adg1736.c                         | 143 ++++++++++++++++++++++
 4 files changed, 234 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml
 create mode 100644 drivers/mux/adg1736.c

--
2.34.1

