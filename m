Return-Path: <devicetree+bounces-220183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2897B92851
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 19:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B0B57AE3AC
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927EC316904;
	Mon, 22 Sep 2025 17:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="B26jLV2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0605D316901
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 17:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563910; cv=none; b=P74ZGl7GpakGdpkIJ9xfq2xDDOI3TGWoQOfM+KM3H53eFHtk17mWzKwmving6O4D8JhWeodR0QUSlpRkyVPWAZvRHVS9vyWhacQrSqZw3Mwnvgs1l/x4r35c0ntaGESa2Grzvj1sls/ZtELbllXUrEFuuF2Nh6S6OJHN4BhMHMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563910; c=relaxed/simple;
	bh=SvjKOHmN2LBNjiMfjGDRf2Qzsz3S4CjoWU+N74PLvjw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GXzZyj/uH8SYMzIWU8K6XDIi7blCrLbpadpOW1por+MosEejr1f/Qo4a7BTasWjTiFfQeWpyaCoJRsENnyWFIdLE7/nye2CDO2DD+IoXGvHGe0COvaVKIq+52pNtHffamX/rc9360rP22RBTAzwrzpQUANByQFDAYItI5iVxwM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=B26jLV2G; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8hKIk005703;
	Mon, 22 Sep 2025 17:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=Hokf1lue+vVbLiF9V
	Zl0cEYqrAg1Uo/ImMJ3thEnMec=; b=B26jLV2G/Ug7yWWkrxpuoDWrpoCQVQ8fa
	yamU8TM1tQYbTNEWPsmb+cLC0mNFckCWGtWM80giswtlhEDUQzgnrRP/3DcYw2D6
	ZTgX0nmygvdSmhGVv6rxYV7naCY6bCk17NpsdxI05EOvIgvjterhCI6APIrmsMHD
	WnwJtKedpAIoINCAil2S39ixL214Mo+vIILqJnLDJKlQY6x06ov1YjuXaZixurCQ
	E/Nwbj9B7PS0hmPm6LK3wXTroKGuvbX3h4DSaXZzCSbCkP/HBQe5+++KoRE9Fddp
	7LAK/hQIIyAA1aop6uKhD47LLyJOzepzRE46NfuBAFemz8iGqPhYg==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 499kwyc183-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:12 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGWhm2019675;
	Mon, 22 Sep 2025 17:58:12 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 49a83jy9hp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 17:58:12 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58MHwBmI32440714
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Sep 2025 17:58:11 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A9C025805C;
	Mon, 22 Sep 2025 17:58:11 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E183F58058;
	Mon, 22 Sep 2025 17:58:10 +0000 (GMT)
Received: from slate16 (unknown [9.61.160.40])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 22 Sep 2025 17:58:10 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v7 1/7] dt-bindings: arm: aspeed: add IBM Balcones board
Date: Mon, 22 Sep 2025 12:57:58 -0500
Message-ID: <20250922175804.31679-2-eajames@linux.ibm.com>
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
X-Authority-Analysis: v=2.4 cv=J5Cq7BnS c=1 sm=1 tr=0 ts=68d18e34 cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=VwQbUJbxAAAA:8 a=AJooQMD86rzp5GWHMWgA:9
X-Proofpoint-GUID: y7dLO3GNmmBbI_P5OkOOK6-2tb4ii-xx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxNSBTYWx0ZWRfX9vAfq5vh/sZ4
 N1mOnStBrOrPSrqCA84CpguxmDazS9uH7S+oy9CRXQ116GP+XWSwXAqfK0aZrwmVBzu/7lFbnU8
 or3DZrBwc18GvwgJDXYKmngNiR5oWkpoSQKrxzusrW5Ycqp0Ap51chq++2MNPFa3roT5xsMuQk0
 MEpd/egSzMy5TEJ0/nHJjuXvclmg8r4L+ZwZ/zi8rOWTgVqGIhAAgXo6i4IvDz9ukoxq/HopyH3
 +/DSUj0EJij0jYvRUqKfAgmiB7Usw7cK9S31QL2P+lheD+YkA26dw3xGH16oB+/D/AXeHvg0zsH
 Q+PRyJQFMBwGa/W4jdTiTICyzCy03LN6EpV7R82oAVhN/FQcNibM0z85bpS1dTi7La+zkrsymaF
 L1Wsvyqm
X-Proofpoint-ORIG-GUID: y7dLO3GNmmBbI_P5OkOOK6-2tb4ii-xx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 clxscore=1015 adultscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200015

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


