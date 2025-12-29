Return-Path: <devicetree+bounces-250049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAD6CE5FEA
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F12DA300D93B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD94275AEB;
	Mon, 29 Dec 2025 06:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jUYBntF8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HmxTO7B6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA46221F15
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988434; cv=none; b=FPU84Gsqe7O0hUGrrdKFpoH5pV8dLQKPNu6hy4gSh3GrUuAhL28UTlzc8amcRCZpJ2IWcy+ny1FXlzxPElR8Iowneo5yYhLt0S0W2BETh3Jxvz+OiUApn0XmjnP9XiZnyKGmztrg6wXaZvUz42ptAGfFC/FjP7panahzKjh12tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988434; c=relaxed/simple;
	bh=TX/gNHgRQ7J1bS3tbk1Dh+FkfVaSgF4IVbbXpym+A6A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pTeSl8A4scWvULaRu+8VeEKkSJxKzAuzob9/beiSGUTZ+kzRC6ibCEPWr6UktRD4XYMLfJF1QvUUwjcndnPZ7czrX4gn8CPXp844vK/669YUEtM5iOuH7w0GziMRqldwI96mq1G56nfKol9ez5hD4CK8dqvNWBMNsDuD4YV5P9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jUYBntF8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HmxTO7B6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNkVjo3328630
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4N
	I+FoNRCE=; b=jUYBntF8aOw4klv08qQXkvDKALehx5oKSZ6ucnSqZZgRfBVST62
	akQKLhygbqFWG0SlYffuQWo/hWg1YilYCzzByMfuzipqyxuoSxvfq3MiGSVclnLL
	rmKdNr6nW2ZSJzD4Y2iUuUfWX4+Jn/B6wXhaOpmNU/c4260WfA+LdEh04v1+borH
	nnJPC1Hx8hA/nhQRk8NcUbch9VQHgoR5gZZBVr3g+znilFigTHjSzepMHsW1qCKy
	prFVC9GIa+SjFglDUVotlM9iEJMUyhMkcMRbD+ZOHnxgeQhasY9W8ajN7Rja8rFT
	7nJPMf9mTA1aeczx8DTvU0vvsS3MCHYwgQA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r6bduk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:07:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b952a966d7so18287004b3a.3
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988430; x=1767593230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4NI+FoNRCE=;
        b=HmxTO7B6TY3NdBh5yHTVbjz9+a2Q9e4FtXSW49GbNAmNhEBNI8mLk6eZUHJH6YfL/F
         VwBKEkoLaXWFEBAQciTp0PiSKV995xohU6t8sLHB6wU054jNS5ssK8oUKCtHsPs0Pzir
         m++yJ35EolpnhWQEq2GmJ7+ElsQ4VVCsxmQZAB2JDE+ZU99bnauDK8BtWAG2oqzPflCP
         qn74prGFk7FutaTWevnPkf5MCp5c/KTpwjWBcn2o0d8FEmVvX5WgUanoLnGpVx36QM3r
         HJC/zwxDXE3McyO1M8ut2u3t9JERRnthsnOXCaSqFylzbAt9FR7tjFZNPEwZvIcde/Jb
         rvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988430; x=1767593230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4NI+FoNRCE=;
        b=YyZpvzudRJ44GGRlnJrU9yoGYnZYBHg1pLP2pDIQ6KVgpR8OotDWZzXF8VceIQrUFp
         yua0LLNCqJC5p64PA9LZIoC9VP2jVe4jy7coQd+hcGpuZlQtzx5CW3fm8rCdPG6uqv6L
         Eoy8WEojDtVTsDjUJjDWKzDQflAyjTFwDm02Q0KohyZMmkBHJoy5eWj1xhxDrSPM2nf+
         O6CK061E2XFVzoyaMOM5I3pmM5QmXmGUuyXyFa2zTKc2NhHm0JCM6UlnEw6VbyxtbjpD
         nvE7UvMHyRrAI9NYs6m/3sRHUhpSuJvPxrWu+JFa//PnbGEl5MxfoMWUFtd83aKmTiT2
         W3gg==
X-Forwarded-Encrypted: i=1; AJvYcCWAZ8ixXxQxBIvnOd8LqbmpEdEbYMe0nFcWS7KNU3HoLPUHxo+v3m0m/lITO4m4VoPz33cQqa2ZfdWU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx50RrnnDij8LYpHImAY3WkfK9FIl19QGyr1qD/2pC6GjK+adAb
	9WHEBjZ6+D/kkbqawbtDCkOt+/rc+SP9jXN3JrRdQc6YDjnENzeta4RRczOXBSbciZg612wOe6w
	q1ip3mJaiafXS/t4hZ7+4PvxozHNS4qCSanjkqi++rMpzQnNAHmNLTi12CL+aBGB6
X-Gm-Gg: AY/fxX5XxNwGWwihn5Gmir4iP3r2fxPehTzDwMrYpvrGDQ9fAfA74CLVl9Ec7RSWuI/
	6p6LTT2DZwYlznNPdzBHuwueI11oI5leFwv5GzBweQSZ+gf1V3Ax9eP2prvZGePYic6jPjWaW1K
	4LJ6gb3A3n2KgklSobL3+OJNnyT9/voEyklsKrM+c32xs3XtRfa6MJJy6SrRz/Or59s7kHZUmVa
	yk9PmKAOUouGFQjtJYjLseTbFXNTsso6LYDMiLPTSTVY2y6bNeQbrBwnfnX+jq9gUtHEd80jI/C
	HoHTfLTifYkpvnAKaVh0/evZMdnYEx+tC689U0l1rlMWDc+UbiDHlbURuNryVZKza05wZp5hQ1O
	A9AkL9ovLNS8wRbn2jP7DVU8enRpDVKsxEFm75KiizkIpu1IdjtX8
X-Received: by 2002:a05:6a00:4f8b:b0:7ff:c51d:7e0 with SMTP id d2e1a72fcca58-7ffc51d0917mr28101046b3a.3.1766988430502;
        Sun, 28 Dec 2025 22:07:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiR6c1hYnyTq/21Gn61ST9siCjyEGbeaNeJXv4ebdm6O1biqX/yA30qxEpWML0XJqb02hwGg==
X-Received: by 2002:a05:6a00:4f8b:b0:7ff:c51d:7e0 with SMTP id d2e1a72fcca58-7ffc51d0917mr28101026b3a.3.1766988430008;
        Sun, 28 Dec 2025 22:07:10 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:06 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 0/4] Add UFS support for Hamoa SoC
Date: Mon, 29 Dec 2025 11:36:38 +0530
Message-Id: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=69521a8f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=MLyGsh9vszGhAdf804IA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: Y6Iavlz4wq7DaRRY7xvfBAHe1aNiFYoc
X-Proofpoint-GUID: Y6Iavlz4wq7DaRRY7xvfBAHe1aNiFYoc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1NCBTYWx0ZWRfXz/bVL15NxO3+
 K8GWjftO7gK4X63taKLmIr2mu5t9dzEGFQvn2LH427sVMdCvhLtyOLYALMg0QAfjgAcYutCKbnl
 wNHzL5E1qBNqxkXbxZLfSpRO/H1508P1D/JU9Vl3/jRdhpCi3dV/KDbacqAVbk9zVSp8uNeLe/7
 Yzzyq67nYQ+hsH93MYGXU9HSOOXNUMpDwpSYBKnpOGq3mWJQOLK1pd7rVltelYhO3ukEuye2sPG
 zYQF9I141iDff4DFnDcA0VyoXDcMTnccyDTecgXuogydzAwQGcDM2rFbPraBKoyjBZiRa4IwWN1
 iJjqvas9kk4u/m6FDXqaa81BF1kmI0AeImJxGfh8mWvcwcyDPX5xHi9dXqxCoSHqkwm7Nt6GxIM
 UvrB7Iz9wtkJRlk7QfjYj6AQTCQKuBfLKxY9ds2Al4mX1NRCqHmd/8mgDs9lGrnefX8z2m/fjGZ
 Kx3V3Or4qjgjKBHZsWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290054

Add UFSPHY, UFSHC compatible binding names and UFS devicetree
enablement changes for Qualcomm Hamoa SoC.

Pradeep P V K (4):
  scsi: ufs: phy: dt-bindings: Add QMP UFS PHY compatible for Hamoa
  scsi: ufs: qcom: dt-bindings: Add UFSHC compatible for Hamoa
  arm64: dts: qcom: hamoa: Add UFS nodes for hamoa SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |   6 +-
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 119 +++++++++++++++++-
 4 files changed, 145 insertions(+), 2 deletions(-)

-- 
2.34.1


