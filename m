Return-Path: <devicetree+bounces-179397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A325AC01C3
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 03:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 723ABA24954
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 01:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB0244C63;
	Thu, 22 May 2025 01:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l5gzgfnA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DB53F9FB
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747877721; cv=none; b=mK201Cdxnv9RlcwL7ADKFgSOKDZf3utDwbDEbTu44RkVxiUeysIPmbuFdHfmMR4yiJZem4iHJMXr022KGyZpZV+wxzbhFRwjAPlCLT1GxUjTJV0KR1qWwSHwpcjspqMpjfnx9vHT4RGJ/um7ve2t+/e17+iS7bNFbdIS6m0O9K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747877721; c=relaxed/simple;
	bh=BHu2XS8Lf9dBTW7KUh/kM30+gqkNIrKSXMPHJWMCmHk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HatFtXssZfPHvhnBwJQrN6M3V/yDshikuAxicJyhS0PPEd0/WPpFLffsvqLJjw2uhB+E0TE9zBNDe6tb1RUyNnQ/zFYaxpUgyQJATGhD+wq9BR5oX1wPmYewqvxODb5wm02l6uR3hlQWT6LV5FcIsSCCpAfdAYuQe6BgbPKVgqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l5gzgfnA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LJgClB029233
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0H/cVOIUNpw
	OrSLOFwCw7lBPYVeMWU0kmPUgQl1LAeQ=; b=l5gzgfnANzrKADxGGtEb8waxTgo
	GysetOkI9QJ82PDIrqKKw2P5NgS2FYwdB2DP6uMk+DoYFZsDowkiF3wcBffg3mZi
	jIedsCfAdOHhnuh5T7NIJJ977ZKJyDhFlWI3I2SdtEJF62KrllE2C+/V/PJIZmT9
	xxVt0M+kfMKDaqGHCpskZvh8pVdji+1Hlkqj2Hsnmobtc3mkR/FlD/ycAQwG/mSZ
	+2L4pDg7Dj8B1T1ULGE+oP9EAp3LUXyh3LsH3I2HaluMGpv7wW30jJ1xJ+LiPYof
	mCDb2hlReqKySPvwhV2eo0KElPHDk2gyhiCZOzP4cb17tvU13vDejEBvCGg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfb4kfe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:35:19 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3108d5156e8so1710150a91.1
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 18:35:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747877718; x=1748482518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0H/cVOIUNpwOrSLOFwCw7lBPYVeMWU0kmPUgQl1LAeQ=;
        b=ko9yfw0IRlynnrvOzVwzxVj7WAcEnc687SLylTGOCF/OPft46ZaEiK71NSr3zm3b5M
         dVfmn/teJXetz9ow6963GIuBh0yoKlLzJJeoF48XSCdgS8q9MBQzsHvmymnJvYM26X+d
         I2u4rc4qUuKHpKnqInaeHGP/RcmhoNlLKafi94iw0NugurjrxrcgVaf1pH33WnpZv1sC
         eqXAqF/k1erdjSx7wCnaZWNj8DYFT0d3UpBBsHoCZ6bCwumKHFIXxZW2/JCxbbS7Kh09
         K07N0OmPMfLO/1cm3iO7lVhjFwIt7I2+wRwEVgl3HGWJSNyIlzoLx0aDvwDaUo1jZXX1
         crmA==
X-Forwarded-Encrypted: i=1; AJvYcCWae2wCu20vLiFiqyRtoFrufZmHjFb+KuCp1DEusGn9ZlIit9yJDEKGZUrgaDzwLup8aUO7aq2Mu5qi@vger.kernel.org
X-Gm-Message-State: AOJu0YxHDbt2xw5R4c+z1adtyg6p7lUZTiVCM3NA4Lvt8FCAle7JGbzC
	L8VLA5Ae/qzcHi23hoGk8A1bkCwmJJZvRTINM7l11gqYPG+e83s0vCuX7pMVaznHW7sSjc+uub6
	IBcTuBg4qQOOZJ26DKVHf+tLe7jOJjG0jmy+c5sO7m5TIXdMFYdNz+1hLqxy1YLA8
X-Gm-Gg: ASbGncuF87HI1fQ11f7BDJhxPR4LFC1tazw1a5EWQoazK17LEfq6S+fwaVyBRf10UCB
	6cljM6kfoHfsmUB/ojN7IL0mG4Ie1g8IjoBEmQjSKCmLVfGogsONnbTU7Z4ryfCTi4YZ7WlSgZw
	jcVeodgBE43oi83i2Mj7ExY7TgelJc4sj1bHqlUuvfwHralM6K2eVRAmmmInSoLMkGw6WQE5Fu6
	p1tK3XIsBtBC788Mch6BXsY4QvgsRUqHuZbVZpayNQhynaQU19L/ON/ASOSTTKVBjUCe4z7k27V
	1k1mtFtiIn1alcWi9kphjGMKLQzDUAv3Ss2nESRobzBCF2XA4hA5CDuyScYCA2pRDDL/noI=
X-Received: by 2002:a17:90b:48c3:b0:30e:8c5d:8e4 with SMTP id 98e67ed59e1d1-30e8c5d0945mr40642083a91.16.1747877717692;
        Wed, 21 May 2025 18:35:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbuUE9/ZskXFCWiI6dbO621KmEQBhp02PqxKIAGf7sPxeTpyZYhpy777m3MSdwOFa0Q247xg==
X-Received: by 2002:a17:90b:48c3:b0:30e:8c5d:8e4 with SMTP id 98e67ed59e1d1-30e8c5d0945mr40642040a91.16.1747877717338;
        Wed, 21 May 2025 18:35:17 -0700 (PDT)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365d45b2sm4341488a91.26.2025.05.21.18.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 18:35:17 -0700 (PDT)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH ath-next 2/2] wifi: ath11k: support usercase-specific firmware overrides
Date: Thu, 22 May 2025 09:34:44 +0800
Message-Id: <20250522013444.1301330-3-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
References: <20250522013444.1301330-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: JrxStf64KheSiSbPTP--Y_fQBUuQoAAk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAxMyBTYWx0ZWRfX3/GPDUGTbLZJ
 w13b0ySqfJzh4M5PgQ0ggY9Bh8QPhAs23w7rExQU4Yn2+JFzGnPUNTodScVLxuwgRSO+tZG1dW8
 LmMt5cBn5tZvnncOmkZsbRK/XqHEj27LmRQrD8D64/DoKGPCjrZ5peDrSSgEW5hnaUJtTBBBj9o
 uo5aLfIGgZWh5r9UDtdhqn8SQ5EBCE9LW1qHu+B6yi3Nwovamro80WU9XUT0+Mu66ejOE2RmZR6
 2WS8kbp6LNiRyzKE43ffyffqVCmvLqBXpchu/woOpLPXf7LJo4u6fTLDCJvtZ0AiIu08ty86AuT
 XcLQ21GmOiDhoyMogF7IJJbSNZC2Uk0sfZFFnqE9yWzg1q5D0KLXQ6ScfhP2+9/WcHEmqk/qhIi
 8EC27Cyg14VrN5jl3ta5rUoHDOOn7yDpjtIVeNqALJE3qneCyO4cveuxI5h83E+70bsGom7T
X-Proofpoint-GUID: JrxStf64KheSiSbPTP--Y_fQBUuQoAAk
X-Authority-Analysis: v=2.4 cv=dLCmmPZb c=1 sm=1 tr=0 ts=682e7f57 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=jX1nYg6MY8bSXAgjlsoA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_01,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=819 spamscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220013

Introduce 'firmware-name' property to allow end-users and/or integrators to
decide which usecase-specific firmware to run on the WCN6855. This is
necessary due to resource limitations such as memory capacity and CPU
capability, or performance and power optimization for different application
scenarios.

Currently, there are two firmwares, both files can be executed
interchangeably.
For example:

- ath11k/WCN6855/hw2.0/amss.bin,
  ath11k/WCN6855/hw2.0/m3.bin
  ath11k/WCN6855/hw2.0/board-2.bin

- ath11k/WCN6855/hw2.0/nfa765/amss.bin,
  ath11k/WCN6855/hw2.0/nfa765/m3.bin
  ath11k/WCN6855/hw2.0/board-2.bin

The former is the default firmware, suitable for most WiFi 6 STA functions.
The latter adds support for commercial-quality SAP and optimizes power
consumption for IoT applications. And both use the same BDF/regdb data
within the main board-2.bin.

Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04479-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1

Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath11k/core.h | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/core.h b/drivers/net/wireless/ath/ath11k/core.h
index 339d4fca1ed5..67b3b6d898fa 100644
--- a/drivers/net/wireless/ath/ath11k/core.h
+++ b/drivers/net/wireless/ath/ath11k/core.h
@@ -17,6 +17,7 @@
 #include <linux/average.h>
 #include <linux/firmware.h>
 #include <linux/suspend.h>
+#include <linux/of.h>
 
 #include "qmi.h"
 #include "htc.h"
@@ -1320,8 +1321,16 @@ static inline void ath11k_core_create_firmware_path(struct ath11k_base *ab,
 						    const char *filename,
 						    void *buf, size_t buf_len)
 {
-	snprintf(buf, buf_len, "%s/%s/%s", ATH11K_FW_DIR,
-		 ab->hw_params.fw.dir, filename);
+	const char *fw_name = NULL;
+
+	of_property_read_string(ab->dev->of_node, "firmware-name", &fw_name);
+
+	if (fw_name && strncmp(filename, "board", 5))
+		snprintf(buf, buf_len, "%s/%s/%s/%s", ATH11K_FW_DIR,
+			 ab->hw_params.fw.dir, fw_name, filename);
+	else
+		snprintf(buf, buf_len, "%s/%s/%s", ATH11K_FW_DIR,
+			 ab->hw_params.fw.dir, filename);
 }
 
 static inline const char *ath11k_bus_str(enum ath11k_bus bus)
-- 
2.34.1


