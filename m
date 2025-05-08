Return-Path: <devicetree+bounces-175076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D04AAFBF5
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:47:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB96E3B97E2
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A062B199E89;
	Thu,  8 May 2025 13:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KRy8Io36"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195B219309C
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746712010; cv=none; b=ApnqVk7Z1a7EKLIrR2gRWUaKMUa0b155foprk0QFeg2zAXmtDeF3J+vj1W14pB8zj5emNsRQ7/zVJSdyq8TZ2e0YhmAtqLhYSb6Uw9yGGmn8J/vtlh+PU5RVaud7I0Ga6kujLyMrnkpXOXW2JTv5wXcGjJUnEIK1efL4Ozei2Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746712010; c=relaxed/simple;
	bh=yDYm68h1Bm2lJGUcg2lqsdhSxaWsAHDqK5SuFmjw2aM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bbVlqoQLZXt9CrzkDjD1/xs33779qj0UPSlerGO4ibupjIakRiqZQARnZLJnkX3hWnZX9MWSYutyGJqTYjQUV/Rx2c1sTF55CDkcHZFgXuAko8Bi1kgQ96EDn7eKQ2U1150Cz1x4H4TmvLagDCXNmzm+oM94GRobzGz+EiQcJjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KRy8Io36; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548CjWn7022752
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 13:46:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Z+VPL5jaONVREsPq8WN451MgmFt5cHfrMq4
	6TFJpukc=; b=KRy8Io36QGhuDlS+WfH6ebBhki/2KmdVDto0B0Lla/3HF+TMBC4
	509bV0JjyN6F1/uF2Zi0NCkvMsKYMhRbnHIa0JSLYcUJefLdaPA4hovvsQ+eLPvj
	kDcyqtAqdc+1sXIKuS9LXjR74XtFRzr280XP75C9J/TmiaqS+ILrZz9y1rxgjWTb
	Qg2/MpRvFmG0C6iqN2H1oIcSKfEA5R4PPqfx4bYbLMNLewu96tz1KRR9OEBoH069
	YBn/ecimv2yn1USbiBKxdaQ0tDot1GieFkFFWekRH09gj/SgqJNHd8+Ksc6zPppR
	K9bFDURZg9e1IA7NN15FnZbOuKG6zwWZSFg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp81gfe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:46:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b0ae9e87fe2so1751429a12.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 06:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746712007; x=1747316807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+VPL5jaONVREsPq8WN451MgmFt5cHfrMq46TFJpukc=;
        b=HTYwfNzRKler8dKLjPgci2syOim/O3bH6WF652e5GOG4PFKCKKjogIU3vdJGVvR11P
         yuivPoBNGlz/a/snEGqWoouVBUkyaqG+XWuRoEGaMdzcQNMqoK+vUR1JlPwCvOCR0Yu4
         M76JfdB/Rtkri1DRtJXTDFGmHFKjwGOk4WELfMTanuwPZbSDj5La/RtyrPIElstv9kCq
         NtaFeKyBm1gqZwgamML9qrKJKtK9yx9cOmaWhbtlLtD/SD25OufRd9gcjN18c7Wz3BvI
         OSr1pjCrWKaGP6DeOXJhLLxQvkyi8sG+XAWwaKT7QoJ93VUPKTd4PJlGLwGchMr1V3LK
         tFgg==
X-Forwarded-Encrypted: i=1; AJvYcCW81/8QWteF1K6SWDgvEupjiX/XCGfduPscliHVC1GMjDBTUNF1h6dNwOTeBOZvgB81uezPjzvRMwIN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/y5xAwdso+yUkvikQiyKwnavZiNKXBCLE/pXGl3MvWFOgPuRo
	i1azyxrasQHoEnrLPisEOwM6wxhlXj+qWNg6jMlTfb4VkTAjsbCFyj66KoMvHzoXeV7ykogY/kT
	zRvYOKoS2uLNQal2iSeJvy3A+0idxCgqcwyHXt+eDjslOalw6wAwqv1Gq3KNs
X-Gm-Gg: ASbGncuJZA0lWNXgGJ0Ed+7yRbZoSvHogqag1YnvgjKVuDOSciJB2yQ6vPjfNvHxhKD
	DTX4lbb8vd52bB+JKG/RklnYmVQF/HwL+xb/fxljgNmkf+IdpCB7Fip6BtmA15P9CMIIfKLseoq
	v3kDr7DPp3Faythbq2c68kIlE7zPK0dI2j3/iX56FcB9spTh2llMGO674jMek0p3PFCBC2pn6KL
	atMnb55P3Kzl+bVHKLSyrnwtaWXmIR9LYnCbgcc8YLz5yJNwOxoau8SMEsr0OVXZCA8UnNPm70+
	IdU9NnlzbVUCAm2uyTKsTRRrz6FWHC73CjvSD+A=
X-Received: by 2002:a17:90b:3ecc:b0:30a:882f:3120 with SMTP id 98e67ed59e1d1-30adbf115ebmr4283637a91.5.1746712007232;
        Thu, 08 May 2025 06:46:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLHpIxclHSE6DjLVAKIRzd29Gr18qYY9O8ZT+x/Mg9QL9oz50P1jI84fERlXXPDILDciDVfw==
X-Received: by 2002:a17:90b:3ecc:b0:30a:882f:3120 with SMTP id 98e67ed59e1d1-30adbf115ebmr4283606a91.5.1746712006779;
        Thu, 08 May 2025 06:46:46 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e150eb56dsm112250715ad.23.2025.05.08.06.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 06:46:46 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v2 1/2] soc: qcom: socinfo: add SM8750 SoC ID
Date: Thu,  8 May 2025 19:16:34 +0530
Message-Id: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M7xNKzws c=1 sm=1 tr=0 ts=681cb5c8 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=_M6AKFXzitIoBsXHyycA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: CF9uA31fuCJnVOSRJARwHPMbUCmD7Zwn
X-Proofpoint-GUID: CF9uA31fuCJnVOSRJARwHPMbUCmD7Zwn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDExNyBTYWx0ZWRfX5XJCqSnoiG1c
 cPf35Zkos4JguZVTXYyHOze/E246t+xMWFYOk7AFRSCSZmJMX6GZgu9LILWRDMu4REG5olRSnya
 Ca+EyzUfGJcq8s1ysVy6fl22KG73hrKfSUvVllNqmgCGjKO5zyd3WwxlLmqezjBJhheRuOUDeR+
 XyL6Vksy8RZeRjdd5B6D5qn8hETWgHe45GwIr5R8zeRZG1gF6UPeulM46HhEvN7UY68TfnknhPj
 GK+IjdttOpFpy2IVifRvcRlZDcawE8QYfhXSVGPA4FYEhVdQOZLj75sRfp0kPrrGYK+N+8wsA4n
 ouDB1KW94X8iC+irmUcUd30ZtbVAb3+YYMwoPnZGgmhbcixMNZ3SWZtqt3hXNiYkHcDsnArM6vh
 J7aXErxOh9SY1+21HiFVMlNzWOMot9CsK1eEiz/bkJhKn76OMPFa3pzkYGSOfQMYUeBfp9Fa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_04,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080117

Update soc_id table for the Qualcomm SM8750 SoC to represent
SM8750 machine.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
Changes in v2:
 - corrected the order. 

 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 18d7f1be9093..8c4147737c35 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -444,6 +444,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(IPQ5302) },
 	{ qcom_board_id(QCS8550) },
 	{ qcom_board_id(QCM8550) },
+	{ qcom_board_id(SM8750)  },
 	{ qcom_board_id(IPQ5300) },
 	{ qcom_board_id(IPQ5321) },
 	{ qcom_board_id(IPQ5424) },
-- 
2.34.1


