Return-Path: <devicetree+bounces-22366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3080738D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A5591F21971
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644983FE32;
	Wed,  6 Dec 2023 15:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="TbTj+H0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E99CD66;
	Wed,  6 Dec 2023 07:16:32 -0800 (PST)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B6Emdux015892;
	Wed, 6 Dec 2023 15:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=jeL3QT7o0mBxKNPJeUdUZqEhxWca9D1K5PSNHaGGlqE=;
 b=TbTj+H0YrH8CJvfVXOaZCn4V8K4SgoIdPIDmqjcTwfxjgpbpaaB74suikR1eYjVLd1GH
 2Ug7fgzzPMVs6bb8eZN2qvlGAPndfy91omGmdNc4cwXx49RWhi1vKgZPsGem/ZR0Oiaf
 P0SzA78LdIlOx45KBqFSho1hWH7UPzXmEQaxJMMIYyWDBZ7s9NjE8L1ZsAXDstlliEHv
 B7p49X0Hho61WDYdehuMs6nxNOcnAil+rruk+17R4KP86pqEKCtRM26rzg/oJ5rcyNDU
 oQZiwXUE0JQr0O4Vmkx4pHApmbKSQi6LYI3KNc1zwCMn/2Y7qMvRTrepJxpl77cxnR4K Zw== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3utd51267e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Dec 2023 15:16:25 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3B6FGP2K023959
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Dec 2023 15:16:25 GMT
Received: from hu-pintu-blr.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 6 Dec 2023 07:16:22 -0800
From: Pintu Kumar <quic_pintu@quicinc.com>
To: <linux-kernel@vger.kernel.org>, <akpm@linux-foundation.org>,
        <linux-mm@kvack.org>, <robh+dt@kernel.org>, <frowand.list@gmail.com>,
        <devicetree@vger.kernel.org>
CC: <quic_pintu@quicinc.com>, <pintu.ping@gmail.com>
Subject: [PATCH] of: reserved_mem: fix error log for reserved mem init failure
Date: Wed, 6 Dec 2023 20:46:00 +0530
Message-ID: <20231206151600.26833-1-quic_pintu@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: z48NGZs03K_8xD7IbWBylQ_-5fXUs4Gz
X-Proofpoint-GUID: z48NGZs03K_8xD7IbWBylQ_-5fXUs4Gz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-06_13,2023-12-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 mlxlogscore=473 spamscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2312060123

During fdt_init_reserved_mem() when __reserved_mem_init_node()
fail we are using pr_info to print error.

So, if we change the loglevel to 4 (or below), this error
message will be missed.

Thus, change the pr_info to pr_err for fail case.

Signed-off-by: Pintu Kumar <quic_pintu@quicinc.com>
---
 drivers/of/of_reserved_mem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 7ec94cfcbddb..473665e76b6f 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -334,7 +334,7 @@ void __init fdt_init_reserved_mem(void)
 		if (err == 0) {
 			err = __reserved_mem_init_node(rmem);
 			if (err != 0 && err != -ENOENT) {
-				pr_info("node %s compatible matching fail\n",
+				pr_err("node %s compatible matching fail\n",
 					rmem->name);
 				if (nomap)
 					memblock_clear_nomap(rmem->base, rmem->size);
-- 
2.17.1


