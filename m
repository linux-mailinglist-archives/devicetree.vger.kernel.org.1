Return-Path: <devicetree+bounces-175077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B841AAFBED
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D05E16BE11
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B3119309C;
	Thu,  8 May 2025 13:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwVQMrkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FCC18A93F
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746712016; cv=none; b=C1ZBktziPod4IS+ZgAnOrJZTTvKH8CxrBA0hpTonlMrLx/34juMiIP1a3tb3zLZG5aV6YWhObckb+YrnHQ/nS2A1yvZ2RXHcj+m+gyUfClRdQM9Z155IwNtmv/C5EcJxe3Gg2eLy7+NiMvWmvxUTjpWSCoU8Y/UiIEKmSH8s9NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746712016; c=relaxed/simple;
	bh=00UIv3EZjfp+e19Qr1XiCLjcZ87sY1P79LJK46Z757o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mdQDdryOE+wLJYgyR4rPdY7sMoilF0+n8KvBlYR3rvJt5hfq8JlDl+66CQpHBts0ynhtowhfPvysLFzw/dHe99GfwJy//1goK3ML0BwgFyDTFq6O1q6sSa3Hvbamyxh9NaffvCDSyqVUoVymsc+XZbkHg7wAaWPigVnHRkeK4Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwVQMrkK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DjI4x016353
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 13:46:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ria+LRyG0hX
	Dtj4N4iCruKkzRBUm5VLACf/+IbNd4TY=; b=BwVQMrkKiNsph28DX9QKzvUrspU
	/ZTJziXwCwQXhtbweglQ5xcPgl4vFRG6vXOpIlFy0HosBmw7NcsSYpIeEPbwejCG
	f12f2W3rT+kAdFt9xBkhBKFyzZCz3O77VDUyrY4KFIEwvv42j9xu83TPYueFnaSv
	UAozKH/R6XQ7eOCqut3tLNGuxKQ8vjOZV8uA0QtawpAPPZLo2Iy54TU87qx7xZyK
	FUnL9R2wRoihLmqaUyGPAKDezT1ERa4SX6AcibplTXzbBK7DAtEJnk5rzWL3R9oU
	vPjb96hLXj9Sw0H1IhMz7SVH17oUSV7kPyE1kBBYbhemaum6Dqp9u26bAsw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8sfqm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:46:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22aa75e6653so8323115ad.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 06:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746712012; x=1747316812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ria+LRyG0hXDtj4N4iCruKkzRBUm5VLACf/+IbNd4TY=;
        b=BAfJE7pZyaqTBYLE5gaptrcz1QCkJh5s1tGFM8yoI+6GxpTT5LMMOZ0bMciYD5vHLM
         grQsUushw9NtzQCCP9tHqB7FINbV3oKRXTNTEITHX1D5hVtibuLD1hYarEgLfOb0SctA
         fR7WBfxeUIk6ZdB3b0jEyV2ISFjJo5z/H+zSrsGVkqmE625thTbQOlsPFkhAxI0kRaGJ
         qtUGSCHcCVTwAjZo5Vn5eG11BClo4aGTBae7JXFTynIda0YkDA2BwLhBqiEP2757xNex
         /D7x+6VED6i5+eH1sePYF3j8nWTE3FyVBC+N9Ox4xrGCDvHBKYSIOeWZgUwsYmMqKGTk
         pFqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCHPQxhyc5n+Kc3/LcPzZulE3paCDxRxUHbIgew9JCpZSRnBi3qzyByLhGTVQjRlvt6PaoJAEMxOhM@vger.kernel.org
X-Gm-Message-State: AOJu0Yza6wSz2FvB7I/jNJjH7gKJxXj7MRM0w3kDF1XJPxLpgxEvERER
	EO8A9L5dna787YYssCvA6YAr6I3voeWXrS8Xnk4BnPEYisQE3gpdqH8eiaUjyUHA+jCtVGGPCKh
	Fo6gHqcWnRI1lt7WTUuDCpLJi/B0HJfwZ+HBcxGZQ1fmws80kRBRJeVh7IgHO
X-Gm-Gg: ASbGncsfaXKin+2m4oVjwtvjlD3fbo3/XWwEzkZ5HEwf+MJ4d6pLJLJr0EPkIEluXJV
	cmuNaHpLwmcVVSlxCXG8JCYsFVcLzPWUl56nFMwh7P61hQNM0NIdcpRP5p1q3XYzOWkGbqxA55b
	p9r9TB6WaCOX34mYKEIRTOYpXTHpR0IwikYgva45b4QGJGgTjwkAHBCzdYG14SG5VEsv9ZUaUfZ
	4KzpG7gYsihy1RHGff6t25L+2dOZr+7kQ84UTUSRGK5nHU6eNaDMjVoon+ojmOp/+tLcD8QVLiU
	ZH0fEkA+csnHz2TCmH7DVcln3pWd5zWqJw4hdOs=
X-Received: by 2002:a17:902:e890:b0:223:3b76:4e22 with SMTP id d9443c01a7336-22e8560d03cmr40451225ad.6.1746712011983;
        Thu, 08 May 2025 06:46:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrRn+7wTjv8yheir8mwT9EEJRVfj2QZD+8KvMvdxJ/YMsQjewJtkW+KGPFMQztegPOr48xCg==
X-Received: by 2002:a17:902:e890:b0:223:3b76:4e22 with SMTP id d9443c01a7336-22e8560d03cmr40450845ad.6.1746712011622;
        Thu, 08 May 2025 06:46:51 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e150eb56dsm112250715ad.23.2025.05.08.06.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 06:46:51 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] dt-bindings: arm: qcom,ids: add SoC ID for SM8750
Date: Thu,  8 May 2025 19:16:35 +0530
Message-Id: <20250508134635.1627031-2-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
References: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YcyKOsNHzPF4DCphmEQJ6rIxDAiTTuKL
X-Proofpoint-ORIG-GUID: YcyKOsNHzPF4DCphmEQJ6rIxDAiTTuKL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDExNyBTYWx0ZWRfX+WEAPkrhwFLB
 xkQ1bPhfMpo9lHMnnjAsxT7Ed8tvzRsQ9DAq8WZdOJxg6f02UIJy9JkhK2OcL9I8Mxq2WSh+ZbV
 LGpBGFxHFab78dbpC4z3rDuTxlmW0C22jOFwhig0PzRw87DXaexMgOxl0AfO5fC52i4/w1RI9wP
 XAztuL5Hh4zrxjkA/fVORvfHXtHbb/aO8It+HAB7OTfT+8BMnKp4IjE672xGpCVPES0dxmWRFzn
 qL4Rto7phHjSfjW2WzD+oKyMXmTU6iPgBizOIKMAvmxxug0KVNFbvs+DRz7XZYU7O2KgUOC7H//
 1O4Cm5NkJEsGU2PcfJ1fKiCNrJjMNXuApmi65VkxCMUOza0YnyJgzrIPB0KexIjTDO53aUvZzNO
 N1ue6C6QUot4RR9dkyKeNwQTTCqBP2UEF3BrNn0sP0FAEf2D2sLxxxvUCvs5AEttamch+yn4
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681cb5cd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=nBpc0M3TKDbq6_S52-cA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_04,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=924 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080117

Add the unique ID for Qualcomm SM8750 SoC.
This value is used to differentiate the SoC across qcom targets.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
Changes in v2:
 - Fixed the checkpatch warning.

 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 1b3e0176dcb7..897b8135dc12 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -277,6 +277,7 @@
 #define QCOM_ID_IPQ5302			595
 #define QCOM_ID_QCS8550			603
 #define QCOM_ID_QCM8550			604
+#define QCOM_ID_SM8750			618
 #define QCOM_ID_IPQ5300			624
 #define QCOM_ID_IPQ5321			650
 #define QCOM_ID_IPQ5424			651
-- 
2.34.1


