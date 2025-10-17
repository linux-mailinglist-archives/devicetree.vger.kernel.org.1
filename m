Return-Path: <devicetree+bounces-227923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94081BE5E31
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C78119C65DB
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9151A76DE;
	Fri, 17 Oct 2025 00:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LJJhu8ju"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010DA288D0
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760661039; cv=none; b=mE8+N+d4qxuDgxQpLJrkj5DzMspubjE+piQs7mLQdoeesYSt21jZ5aA7prZz+YMyZBlGNrsI1FIpWcHK6lJrcdQwMcbKXtVJVTx0nGbwlJZcwcMzEzEWfEu/YUE9xK+ZVjtyc5PcthGETT0KMgzK/sFXLSN7MCnV3O/0OJ0Vy5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760661039; c=relaxed/simple;
	bh=plPCRytJPMNMkedqxfIhoirrL3iZbMoYA+6Lwx/N7BE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ja+wGSAwYDDgvRnCSqgAsd1Wwd82x9z99h4q1Phymlh6O+VpnLBDSwSnYTr5H200QGMVGvj103N3l6vTrVXZza/rf7IxzAyri4xbgiQeJgfFoaFsWddffFTbdk2V40fgElvl8evzhdg6O8ssdaoZK2zlFN+Q98RSG9bfLTUFke4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LJJhu8ju; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLXFP016623
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WhuBaQ0vD5RlijFZMAJ7wtP6QS9Fh1//v/3
	i2yHv/fo=; b=LJJhu8judZXWCezkRLFmztBubw+tbQEn1qRtNVPWY0kvMoku4UV
	v9hYHx8YDFKk7UmCwQl07Q8xnSYHboAVRjDZh0pMKU4meF+pZuSOu76YbSceV907
	JyfDDcKSqNDK3XzzPNV/M3o4VIkT1EucjEulDpmogz8mHG2f89Vz1KLhgy9SayPy
	VNDaGpE8OVvR6QMsUp3KXorBjRL/zoB3eIGGm5fGRg8E7NMICjw6p7eib4yvmz4r
	iHSpP/f3u5CfqXYY0SJVRusMACCe4XfuCEYncnTyna1lqB0MfBnSfNithCVbqO7x
	sp9B1A/tM+xKXNtaPBCm/oCzkLvuHnZbDzA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5tenw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-780d26fb6b4so1042171b3a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760661036; x=1761265836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WhuBaQ0vD5RlijFZMAJ7wtP6QS9Fh1//v/3i2yHv/fo=;
        b=w6fUFXegk8X+QamzYFN0E23HH58Y2DT6CA8uGKqQa/slP4ni6Dgm31fBx3LBzgpU1S
         bcCbtAZrz+VfNDpDEPsAnFXw2WXvByfsSyaEjo1Rs5+FNsN2vbk1wjEGKgGkGR4MIYY4
         y7fzP2yEckTfeWBvzEjiMtl5uuow5KVcPeemn+b6A37yWhmc0OYPHaXZjt5I66ThmXBw
         jzNyvidaAXPIKou8+CjT7pOU0mmCt3BCY9dxbqejVmK2cS5GWYN22674X4aPJyro6I/f
         Nk4G1D5dsjlfOEAKtAFxrunO5LI8XEnC/ZlTcZmV3jYtC/zRC/uQjlx/Zq5L8gCmqXrj
         ymRw==
X-Forwarded-Encrypted: i=1; AJvYcCVlygYnCHUKbP55r9rxJ7cXG0Oc1G512HGz8lvd1RF+tYK8Zw5PZXMV0cdNZGotByF9G528Fi9jJaad@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp4yijKv+4HmIZ9ItknSNlOBRZUJHTRGNqF3KkyVgzmsI44Fwc
	/vyrjXBAjhQ1/pVuqgSu/i/MASkBoTAVyBzYSsAjJZrtXoAhe/6ItU/FwAtOpY44vE4VnuYgYWD
	hOSsx08l51nSImWRImE95NGEIEow1ksceEuxPaxAgRPU+M26+Pa0SIzAgg2tpZtM2
X-Gm-Gg: ASbGncu4++RKiUjXEqETnJMddF+sjdyqR5j+nXyj/op4aadpJR3Rmqz9u9dM1GKIzg9
	EPF6i8FFKE8G9HdP6oG0D7RnfPjrBILDXJyiYoSuL5qymo51b1nMRgOCVmiA0dJMK6A/D+Iig8B
	ftaip30CI/cDNnbbbzVS20SESHNQnJVHfsj4NDjLcAEw1263FkWGdSUqHQ/sckXTXrj/bvoWewl
	VDNMnzptbbtzDb/ZLMlWbc7WlY5XmCqvv6FU0LGbcszeBJcDo3b31JwLXQPvgEwjbS9n12UAGld
	4Rtj7iXz9YolvnzYQjbGV8xyjfZ30t9+/SHBYJnSWgwAPAE3xu7euCSd8qwRnNw1YbrOooWLOzZ
	XKVUA3qko+gmF6CAABPTZAGf3ljwAmryL6suKgcHDQH++PJTtTezj+lFYUnhAbw==
X-Received: by 2002:a05:6a00:9508:b0:77f:4c3e:c19d with SMTP id d2e1a72fcca58-7a2208f14b1mr2369508b3a.12.1760661035558;
        Thu, 16 Oct 2025 17:30:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGE9f0Yv8LO/RR0RoaRlY7SCaHq3pVc6vgSKnvPNDE9IgXwyKGCiHBZIwanOZsjZ3NSJukoQ==
X-Received: by 2002:a05:6a00:9508:b0:77f:4c3e:c19d with SMTP id d2e1a72fcca58-7a2208f14b1mr2369469b3a.12.1760661035083;
        Thu, 16 Oct 2025 17:30:35 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0966d7sm23613050b3a.40.2025.10.16.17.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 17:30:34 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] soc: qcom: pmic_glink: Add support for battery management running on SOCCP
Date: Thu, 16 Oct 2025 17:30:30 -0700
Message-Id: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mOEr1VbHS--ldzpVjGzZX7vGd6SLUdKT
X-Proofpoint-ORIG-GUID: mOEr1VbHS--ldzpVjGzZX7vGd6SLUdKT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfXyg/9FFv6x+sL
 /3jrwdtHmfeCI3D0+Qf5gwDhNlomSBELuDgOA/DyBgIBTBb60Dt1JJWOCP5XcD0PqqGwibiAN1S
 mlymDmZsHJQqwZk1gTej9L/WlpOuSi48/ReGmSdudz9pJ5mlE4NqVDENyuq88JRTQX8ERkuBo4V
 Mtr4IOsze2+KkG1Pg0jOg9Fn/j/sWq5dllcD1pNOsV3Xi9yTw2E0603avnapa5lgJMQ4hrCKj4+
 xwt2Fjf6/8feEIGCJh/d5vrJ6qLVsOxaxmzIYyNXhfZEQLU4wqWECsUyPDHaw9y/2vV1nG9smga
 c0gnaq92kPZxKh4Gmp872YWyJ0lQOCnpNEiObRqL9n386mPumA6ooLk20LzcnUerQs30zSrVXUU
 ZPvmEqv1etANwHW/2Z+UTSMWJY7T4Q==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68f18e2c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=K_O0-d9jgD1I_3XzafcA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. Add support for devices, such as Kaanpali and Glymur, 
which are running battery management on SOCCP.

** PATCH 2/3 - was picked up in this series and prior conversation can be found:
https://lore.kernel.org/all/20250919175025.2988948-1-anjelique.melendez@oss.qualcomm.com/

Anjelique Melendez (3):
  dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur
    compatibles
  soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels
  soc: qcom: pmic_glink: Add PDR service path and service name to client
    data

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  7 ++
 drivers/soc/qcom/pmic_glink.c                 | 74 ++++++++++++-------
 2 files changed, 56 insertions(+), 25 deletions(-)

-- 
2.34.1


