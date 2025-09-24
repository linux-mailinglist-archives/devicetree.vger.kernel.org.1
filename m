Return-Path: <devicetree+bounces-220977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C024B9CA8D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C127325EEA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FC62BDC15;
	Wed, 24 Sep 2025 23:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P+vmaSSn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36EE2D0C72
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757120; cv=none; b=Qwrnd2lSvyAOxCbdKIsZCwYFcs52OJJZ5kTNpv8uZe8q7O8VLH0LKcWx7vwZMO5OqCdHiOLdDwMqqOlzQyB5CF/KTJnSZt6CMXu1ksm9qeCJ/35NkRNDGoIq/sley47lMo+y0cPOCP/4VKRxCwZoP3alR4/18U+3oTkdTMd7tiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757120; c=relaxed/simple;
	bh=EYcDLOOAdfr8YSV0Bc7gPxBXZaDX3/kgVqAiQjIqBmg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mD/FZqhGIzXQwXa9NUowrU8x05+2O+vIUWjnOaCPB+J7PktRW63woPAiHsuci7Gaha/SylCEZUD6Bj/aosxTmcx/aQpfhQ+bT0w5UJL1ODDRG3aWZggmKcLPhVE9JR8+kQdtJtX4ICj1ddgeFSPgjqXMYBekqDSTuU+D2IvCt+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P+vmaSSn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD4q9T002127
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NHm4j9oXZTwgXLl43jC5XXZtpL9N7hEYmckPaMSIIEM=; b=P+vmaSSnw5VwJgNQ
	/8PMpV6gFEUrX2HuhrdqsZ4pblcSOXMyr2AjuBaRvhf0Nw2ddhgvCtOGQlrY3GY4
	BwPqgvvUK5nMFn0/GRzAbhiItyeWFc85bWevwiVr+KCHkUTym7L3J6cQb7lMiDS7
	8zuNCmYqeJLwKkS9ULDzMxCzhs3982eb7gTdOVOmxMW41VP2W11NDGXmKztB9sbJ
	WY1bbua7dYaoQdwD1TMg/ZH3WA85b48oazgRReg0dXT6jtdPRgVzTx8ec7n6UWEx
	AxLZrmppveAekID+T9zZiSdY72bo8umD1fK7M3i2+DMKxDzr3npkNPrunSxgwKDG
	rq5RWQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p2np-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:38:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4f86568434so206603a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757116; x=1759361916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NHm4j9oXZTwgXLl43jC5XXZtpL9N7hEYmckPaMSIIEM=;
        b=hnFf4GysOa7zvB8N4zXdgVCWb8kef+xhffrJ+ddEzMqI4+jaW0IgXvN+ifeDtT1EWC
         X8Y7jVR9Rb/o73huCXHB2nEsOd/1GDwF5ZcArw0M5qIqHqapkUrh50kE0U22+cUsU/ZS
         RRzeMOQTWVuZXyXhGEnmEiU4ZPYngYjqcQKFarT90zj2/S/8i2ba6kO72gQtBbhpE5KA
         4905VYFbf2B0vnrkdnH1E6jywGJf4n90oV58W/QAbAu+PxmfIK8osDHxowwT78Yf26dn
         zeaKcXxUfnUV2GtPkW0EhDCleqpzmolZLt0ZamaV/LMMT9AGvjzNfT2KYDk6YO9u6kBu
         Gd0g==
X-Forwarded-Encrypted: i=1; AJvYcCWm0Ah+6NpIUR5HFQXp9UkTcucRvUsNq/TpDdSqoyQPZQYeL0Gq8R2HbC85ju6v6NYhSeJ2tOQkXeKv@vger.kernel.org
X-Gm-Message-State: AOJu0YwzFsdrjb9MvO9B9pQH8asuR6im983A6cmQlb7qwZZi7L9gWsiZ
	jlM6PzYVDq+HIyr2wYRCRM1iy4REDxs/1f++sN/0RQjQpISlY2K+y6DKtgij0PtOKSURhgJ32ot
	gNFBVRiyGbXxuw2zxh0kDok+VkVklwFbyJA+mufsDY0TZ1qUwyaBxmk33c2gRWTpW
X-Gm-Gg: ASbGncv3NV5+bf2i88zNujdazCdhJg2QecJeSrFSNatsY4lwp8p9OKCuUojJnX52YJf
	sx+FUkZRE9K6W0TVLYyCJZMI4/F8SwshjzvuNtTL5JXP/SxQNQ2HcCs0/ovvdUP6hVLK9IWpzr+
	o+ilQ2hZ+gWIjzeTCcCQoHQDw3EOzThZem2+rlTnvg9qTKlU9RW1V2UfHxDagn7l6b2qAxMzoGQ
	0EWXdZffFIgTAUBahINzbx0UfUWtnWr5CTfwu2T/R/6tPZYiC7nvx1Lb7TKtQ0stPrlyJMJRxyv
	sR7JVDj54rsUYinTjpiQTnq6Z1dTaaU5kBr6JZRYIGLbWzhFKg9M3Dl5kDLRN7S1IIPnNJOlrPW
	RRx7ShQd2orZ6C1E=
X-Received: by 2002:a05:6a21:6d81:b0:2c9:ff13:bc75 with SMTP id adf61e73a8af0-2e7c4dac23emr1484323637.22.1758757116546;
        Wed, 24 Sep 2025 16:38:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhqNaPs5182ORw0oQXYSFI6CJu5xfa7z2ky1Lq0mvlwnlX79+axvhkEWVo2P/vTVF/zwDGLw==
X-Received: by 2002:a05:6a21:6d81:b0:2c9:ff13:bc75 with SMTP id adf61e73a8af0-2e7c4dac23emr1484297637.22.1758757116100;
        Wed, 24 Sep 2025 16:38:36 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c0709csm177056b3a.81.2025.09.24.16.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:38:35 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:38:29 -0700
Subject: [PATCH 3/3] crypto: qce: add support for QCE major version 6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-crypto-v1-3-49af17a231b7@oss.qualcomm.com>
References: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
In-Reply-To: <20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757110; l=1164;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=SauQtavFOiOqWZeP9+kQ5KHbCT6o/Jn8ICNZiwWcqYU=;
 b=5iC5pA8Sn2kHE2uOAFyqz6MaYpKfN366zuev9tK3Q7pmmJFw/Kdu39eqhridZudhaielj5VOR
 SPtznmzhhh7AIlH+QGAuCaY71ulBCf4b929qMYwMbf6KeYURY71tAst
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: dvtZG3_fP75ZiORI8VxCJx02GA0FqtLE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXyC4gLoZMF9dw
 n5rjbAuiFYe5k3fNZT+U69OzQa893ILarc3wShNjxOwsYANLF6FOSEW1T0LK5vPTW0R/mvQw4o/
 f37IWzHdSecnrq69oWgHRuGq4CPHXIYRcctZB5gF3/tA/70YrSZFd7/dS7voUQJJOph47ed2jq7
 jo51agiDktEjXMNlMzw+zmC42ZVvH7OAsgpsm6ARFdvdiMqknRzwGX8ekAblMLa0NQ3UjLP6inR
 7GeCUj2Tx7XgUxjabv0WyA/jlW+889d1qKsWGaGwjRuhX+WymBgLN3bqkcHrnwufUir40FKnJFg
 mWm0FZpukqXx8h2EcwALCArwPEMeuikIABz8w2LgDRcKiJQ8DFCR8c88BUEZQPYXU2d5oSL/Rh9
 QA7lYpFw
X-Proofpoint-ORIG-GUID: dvtZG3_fP75ZiORI8VxCJx02GA0FqtLE
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d480fd cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7enFwbqk3NRG6xSZt3cA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

The Qualcomm General Purpose Crypto Engine (GPCE) has
upgraded to version 6 on newer socs, this makes the
version check logic obsolete and needs to be updated
to account for v6.0.

As part of this, unnecessary version macros has also
been removed.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/crypto/qce/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index e95e84486d9a..b966f3365b7d 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -21,7 +21,6 @@
 #include "sha.h"
 #include "aead.h"
 
-#define QCE_MAJOR_VERSION5	0x05
 #define QCE_QUEUE_LENGTH	1
 
 #define QCE_DEFAULT_MEM_BANDWIDTH	393600
@@ -161,7 +160,7 @@ static int qce_check_version(struct qce_device *qce)
 	 * the driver does not support v5 with minor 0 because it has special
 	 * alignment requirements.
 	 */
-	if (major != QCE_MAJOR_VERSION5 || minor == 0)
+	if (major == 5 && minor == 0)
 		return -ENODEV;
 
 	qce->burst_size = QCE_BAM_BURST_SIZE;

-- 
2.25.1


