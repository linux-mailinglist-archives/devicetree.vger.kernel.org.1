Return-Path: <devicetree+bounces-250712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D98CEB408
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82353303641C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4C630FC10;
	Wed, 31 Dec 2025 04:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d4oYp9q/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FOAewJjW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A79430F95C
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767156985; cv=none; b=RF62UHZdXMcueOJLYgPHL0kvRD58nY5m7Ry/oP3oSjSIgjgNAfnZzjzNwoSuTVGWhGnxsOndcKaddK2lLoAvGCKblLyl3MoJw5qdZEfDy7GuuosVNsmf3H5M8cOGxvyzwSN9+thIDDIqhLRCiRxmTQm0Zqar6l/qWLaEhmI0Vpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767156985; c=relaxed/simple;
	bh=n/olLfZ4nDPE0Fc/nYoIgrhjqAFOMhm0RkBbmAj4e+k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Vo6bMHFjZfO4d5LX9wpLuF7RhJaGTGv+G0+FIwj8A2NF8FVuo+yXtYk2HmBbch43Sl/wtZ2g97e0T7DyoSt5fRTf++3ouKrEl0OavvzQhOOgzr8jioOcM70lteWSEt5nbddomPSdfjTZl9SPoKOUnB0fjsmizAhUy/4o//zBiv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d4oYp9q/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FOAewJjW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUEeb7j3539557
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaxEWXLeS4I
	QAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=; b=d4oYp9q/uUWbk9VaKQyOeCV5tI2
	PUZbuY9d7qDLGGnYFF/vu3UKASyntZSxiRLUkZsV9Ouna2y1PMBG+FuUx3DqN3Cn
	3fdUwO77APDOaOsUV4tM2T1jCCCcUTb7IqWDXCvP+1uKT2GVgmaaLn0OEWulcb6A
	myHqNDzFVwe3U678KNHwp/pAyLeqKPlG3bzb2TQhK8gJcanXVzz0+VRuzjRpwdUc
	pbZBESK/e9rA2EsGKe2W1WhOYUKdzc2sFa4OjFe1tAfNy9XFBSLGgcp2MiOu8anm
	27/H0e2GevC9rmmznaZPRwVRsg2Zisio1ouzPnfR0oIc3uBxacvujBZ557A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88yjryu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso29246866a91.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767156982; x=1767761782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YaxEWXLeS4IQAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=;
        b=FOAewJjW+9vG1cHDery4qRljWODsKYkdVsA2GtdT9H4q4x7rnQy79t+gil9kUbvJvX
         q9oHQePBhlc9JEzX83b70L/+WmsUq+U2m5MIIHWdOPysKARYVXsnGxsgPY485yFj5Ck7
         dlUATneCBWUwegkLj3ly8GnCEJECEFCNXPG+1JmINRGNiroj31n7Cg8ax45CodipBsAw
         RukZdxwFwuuyQQuoWfo3ddzSd1tdsRVWe6rFDA+9E4cIPBqs4VtIk6UBnG/03b8uWj2z
         2r7cX2RQBSleOdKIVErcZNwoGPZQ6TPJifYPq7bEQub2O9wwE6dMIrlCvxUbf2N7dBUn
         Tjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767156982; x=1767761782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YaxEWXLeS4IQAnQ85ZZDFxXJrHCM2rSQp1hb6FjV+/I=;
        b=Sy4GI6WCNd+QjzvZDaZxvjzbHvLngdErT+RJBcLVzTHoeBC7SuZhJLuTf8jBPMWX2Y
         j6XXdkfnMZZPK6u7tiK8Ci15fnnYSknESIEm+8CvqYH7He7SEAMhl4hewuKNxleWHD1C
         FkYKipY78BwKAvq0qkNWgkM/isdrOH7njnM2Y08MMx7fAQDSIMbooHDvmzFM3C2VPxeN
         sgTI/jRpVAIwT2DZIi8n8icf6SgtTo04YwYWkwsWSqSuXxKCDBE9l7dwIz7KLW01/tGm
         3o0MqiBV2/5IUyMu/IdUyuQN41KE5PbIBDdWEfqxiVcJSYLo7XwPdAgPTmGhSYgo1qZl
         We6w==
X-Forwarded-Encrypted: i=1; AJvYcCVqpjPGvzAskHDs1qvgU1PxktBEgfUbGf8HuR3A4ReX56Gw80Q7Bthla3Vto4V2FJNtfiES3b8Pb+Z1@vger.kernel.org
X-Gm-Message-State: AOJu0YxYLc/pt0V40NoNfPymagrmNxUVqFuP+JJP4sIF4F5Cl+u6BIHc
	fXtzIQ47Lahe5dHN/7PVceyaetqtlryPqAMEyl37gsRCVaDuRo9Hg4bPt5hPqJnWv+FXl6bW1jl
	AJKjHX1GHo9KXx3EDshPYNAjK53Zcmymf7HWcyq6WuMz9U9Q/rKZ8vuBsaT0fFqGu
X-Gm-Gg: AY/fxX4hAvtj75j5zjlvHa/9jkoh0dGNeMOgs+5ikkzMHkO07DZsvc8ho+dcAd1YRUN
	Lm7SFtdno1SQSFbcdRbkCQnJv36MJRt/CzOYdZCIeKXU0KGf8Tl3EXeArz5vcwoNLmUlmaRel97
	Y8uZNhIGud05q/NxVygm+QXeZIiTOZJp6sSq4h6NigHcD+Ol+jH5n3kvhlQVkuyuDYfJyvw8Vld
	q9PJ2nuoODOvmS2otXMignZIcBE9noc3YjAset9gTGKzml8cu7zxECVl2mG2sGIHh067+wm720u
	ZHcfvGuaQvRAQorVX0o+ZQkYGQjCoGymj/Pckho2VjDwub9Tkw0DAR1td7qJiiUaqW7iZqBr4xo
	KmGZjlSfENYW/KUJ+/oknDkREDQtydluF7GnqksuS
X-Received: by 2002:a17:90a:dfd0:b0:34c:253d:581d with SMTP id 98e67ed59e1d1-34e92139ac9mr28297983a91.9.1767156981835;
        Tue, 30 Dec 2025 20:56:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1Cw52gEmn3J+jHIF5EeK4gMmpZSxVOepfaWx2DOsUmuRGWiYQiMvdTve6e3AkMOg8HCyXbA==
X-Received: by 2002:a17:90a:dfd0:b0:34c:253d:581d with SMTP id 98e67ed59e1d1-34e92139ac9mr28297961a91.9.1767156981415;
        Tue, 30 Dec 2025 20:56:21 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f7d3sm34547697a91.4.2025.12.30.20.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 20:56:21 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH V3 1/4] MAINTAINERS: broaden UFS Qualcomm binding file pattern
Date: Wed, 31 Dec 2025 10:25:50 +0530
Message-Id: <20251231045553.622611-2-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
References: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=6954acf6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=52jqHT57hFt4fz_33zkA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: 6F2khCtBp4Q5nhk7LRQ18ghDO7GWNn3H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDAzOSBTYWx0ZWRfX8dj46X3PbQ8A
 PBiHuPbo5O4deN8UBUbPYSpUismOwQ4JJ2JL0iyhId5pa2pTNwoCUYJoi2dnBmvE4AafYuPDh48
 93ee0r0tlqqCj3T1JAkqqlDpkCQqaN2BAQgRO2cEa3+tSCLYyOrVejilawx0LGUodEwVRoc1ivz
 gTg1eAIEfE+IjjWvWHqxu/XRV004Gt2g34EI4HsdD1lacNfHsCq+Z5QPeIHMjAtkNyqN7ejAtx1
 PPFQrWjkuRZUGWfMxz2Mbysqkp4IC78EzadsJj+NpcqYRC5wCV6CEg8VixycPmBwHNeWzcii+/i
 47zNruBmctihY835qXD36kDCGk/88CHWrMC9zerBEaJP/ZL+IKuPbQPREJexfPyITY4fCmMuwBR
 B1PK+xF3RXZlVDaE1WG/BodqCQzaeD78ciCUcwa+aCiuM8wkGyRWgi1hyOJxrXZ60bQpssvKOav
 pm9LSbaW+a7rgV/Lp2w==
X-Proofpoint-GUID: 6F2khCtBp4Q5nhk7LRQ18ghDO7GWNn3H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310039

Update the file pattern for UFS Qualcomm devicetree bindings to match
all files under `Documentation/devicetree/bindings/ufs/qcom*` instead
of only `qcom,ufs.yaml`. This ensures maintainers are correctly
notified for any related binding changes.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0dbf349fc1ed..70c43fc74401 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26842,7 +26842,7 @@ M:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-arm-msm@vger.kernel.org
 L:	linux-scsi@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	Documentation/devicetree/bindings/ufs/qcom*
 F:	drivers/ufs/host/ufs-qcom*
 
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
-- 
2.34.1


