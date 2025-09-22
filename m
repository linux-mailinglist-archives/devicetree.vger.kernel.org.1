Return-Path: <devicetree+bounces-220184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B1FB92856
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 19:58:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5318B7AE412
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7DD31690E;
	Mon, 22 Sep 2025 17:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="R7Mq/hiR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397693176EE
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 17:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563910; cv=none; b=O1GzbR6rGZCF+7bD3ULKBNCWgGwR6/0VN68p6u1vFKD1S+UB1KKOHZmTUN5OrmExWgaE8yw+mVK0f3jM+E4fiEICduh17Hfyq8j/gQbS6t6B321BXXRO25Y/W/rHHiSa9XbphHH6aFHUsPGBf90VGhSnN8iXNGkCJzcgAAFMCEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563910; c=relaxed/simple;
	bh=W0Q3qHRmI4NEaQgmei73T1z6QW0+SYmu+lHtEGoBVZw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZZhkzC1xpZ3kW4ktuFxjqc9NN+vcEDRi0dOVfLAlqtJhgEhRDwJ8eiC0WAxROAa9ZC4Jn7ae9mS3J+v55X/IiVF2p5SqVJaFadN8Rx5ac4HMRpMCRCb+3CL39gl0fCZWAZYlhYovGw4sMN8K4SJ1kpRiih34ECiHineRmavShnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=R7Mq/hiR; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGOQTp030517;
	Mon, 22 Sep 2025 17:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=KtNynSvFVjpudk4Te
	AKmNfR+UQ5kPia28l4BEDQM4xU=; b=R7Mq/hiRNAWCZSH1MkCPhOcpun35GjD+w
	WgI7ci+Kega4jp0BYI5ZKAsiKukEcJ0rajboX+QeWNv3vV2yO4L3s12zzin7bZ1l
	EDtU0XmkgFR8c72fIJc4LW/AqDBah//H6/tRYkUgsZT8acSjxme+XzXjUUjPuyBZ
	8xa9bUlBg61mpEXMqLUGfZlHY/Ebm0vKxfGGZ4Q87ptoNT32RuWCZgzqU/eTRjVU
	nRPRR/DlQ1hWVek+EWFG6FdYHB6fZz6ZzWrhlTFqRs7rSK5frdeTvHF1tvOvEp57
	bYfmZWDRMh/V01JZyOqa5OGDIxB2Af+HsB7l6f09QcHooUIhNiI1A==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 499kwyc185-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:13 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGlNHi020197;
	Mon, 22 Sep 2025 17:58:12 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 49a83jy9hq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:12 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58MHwCr312976654
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Sep 2025 17:58:12 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3DE155805C;
	Mon, 22 Sep 2025 17:58:12 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BEDC758058;
	Mon, 22 Sep 2025 17:58:11 +0000 (GMT)
Received: from slate16 (unknown [9.61.160.40])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 22 Sep 2025 17:58:11 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v7 2/7] dt-bindings: arm: aspeed: add IBM Bonnell board
Date: Mon, 22 Sep 2025 12:57:59 -0500
Message-ID: <20250922175804.31679-3-eajames@linux.ibm.com>
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
X-Authority-Analysis: v=2.4 cv=J5Cq7BnS c=1 sm=1 tr=0 ts=68d18e35 cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=VwQbUJbxAAAA:8 a=3pJJXNp13jenLdaujSYA:9
X-Proofpoint-GUID: cc4u8cekI3HlVkBNK0yYlAxIqUshS6yi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxNSBTYWx0ZWRfX+d61AHEdIuV/
 wgmbemiRhL8I2smtQz7PfJo3ld5SxJY6OC+bi0+HNoDyXto80p81aSBMvtkY0KQ1BGgueEwwpsX
 tex8yZR8Nke7BSOdxMLa7xXUYEP/1suryJiPn5h9MutYKpvKhj1RaQT2LwJTdWys/Ybz7DBgVto
 RHYcm/xc2/DIetavWFfITrHXVoeLVqfT//Emz3e/vMTPoZuywsmTuNnOAQeMhVUJX5Dpgd+W5xo
 2brUbU7dLxle4Pd3WJAjXmnyR6AWi6zyWIQDsV15XqKMUWggq1Pw7c2oCe4yNVfXrLzFGBFtVoy
 INFHy2kXDQGqFS+kVCfYbKNFFgW28yd8vKonYNfWD2vOlYWDmGPPSGccRFFwryo7tKPVsjWot/R
 uixxBwYE
X-Proofpoint-ORIG-GUID: cc4u8cekI3HlVkBNK0yYlAxIqUshS6yi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 clxscore=1015 adultscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200015

Document the existing AST2600 BMC board for IBM P10 server.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


