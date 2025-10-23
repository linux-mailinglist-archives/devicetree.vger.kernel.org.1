Return-Path: <devicetree+bounces-230043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D31D6BFF307
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:58:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0BD5B4E59E8
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631AC2580D1;
	Thu, 23 Oct 2025 04:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OuEeMT2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ACA254AF5
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761195473; cv=none; b=BiB/to62XNcP/wHIkRCxXuXqZDoGQfOPIJ+lPDglF88pSZX8YVCJLdSoE+7HsHvVUHj6FFRz8L/a+3Ly6iy/w/MnJtOuKvznrn9clSFTe82WBXuOLI2WXaNP6NQ7IXvbtmE3bknUPqVMyo2pjhfXqF6y4QZs3tjA2dd4pQfHTNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761195473; c=relaxed/simple;
	bh=eJ7Y5VSwo4ss1PtD516LDcXHrGyKt6PZu+aZj51XL9g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=M14ay9hPLZABboeu5EQ/7rsOQahw62QERBJwVCSY2/BqrZupWYLJmS6YvYNU+mLEMEgQYn48vxWyQE4xT5u9fFRtuie6Pm8iHNbLKDjtzhAlpTwTM6zqg2Y/ouGW+siqU98zvEvXbWIjbYMsyQja94FE5tX0762JWo1nIukTcCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OuEeMT2i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIemBh007444
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4uQ/De1Ln8L8ulGWOV2no8
	d6dEvtTp0uEoplF7rP/UM=; b=OuEeMT2iLyj7zfZAcImMVQ8LdqeGeVUn+zB5ia
	Hw9EADA6ivalJEVi3qqDLMuG87KAJDQ2UwQLPVQNefWvwL6+Xrqg3zryKprXlmuV
	aCj/qTpIEz8KiEw4+T8cZonLSk9r8lqNclx/Fjtq4bOIApsIZAF5jdmCUb3j6DLb
	Ao7oAFGAbEP7m9qzbSHGNPc/xpbPalUzIMnPtlWNcHgfKqyMwOvlf71GY7lLcMxc
	tLx7XhRRk7Dv+QfNCBlfFX7TzJCrceHNHU5myBvhN7wfJ5MOCzD1EnL3lotqta2S
	SO7G/2qOfkGbJXK67o7uWoXSYns8fg6hxYwCEG++J1o8TzKQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v344747b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:57:51 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b631ba3d31eso241977a12.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761195470; x=1761800270;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4uQ/De1Ln8L8ulGWOV2no8d6dEvtTp0uEoplF7rP/UM=;
        b=kIehnaTyNEa2EX5vDa7iZPTdttt1d2toTED5tOL277pjWvzKAcAcSW31dSj6m8SUK0
         P5MYxTY/ggUaF7lnDTxetQoXdzeeAAR5CqFGzkHQc+7Xd+YXPLDnAocACMUgRqL8dPny
         Af7iog3uGDEOTI1pzOIaoCdykvy692SnBPPV20k1N7ttEYjKxFXazkHTXU3wpMh2hZ7Y
         BjCl8iM28iR9ogPvgKCx8TUEdhTnK+azk/Ir13Yahakw1wRSuNMiNG+Z2zKQB4k5E6M6
         rkLEUDnNK9a9ATs+v1XtWjob1NyDAjtefZbhQfAHP/mbsmYx6hMBkG1MRLSx9w9SByNb
         Lexw==
X-Forwarded-Encrypted: i=1; AJvYcCX7vbFtLWISgQ8TC1sgradgreAAjA64Y9tgoSQgpkfKsr97UnEpecA3ffTB55q4lJM1lmJFJGKw2zPy@vger.kernel.org
X-Gm-Message-State: AOJu0YyVuKrN0XzyljaKMLSD8S+PlsEJZKCSDvuRT54jXFZG0PYGM6oT
	Ynst+fIHS8Bxw5iGvL2e3pZBIjmDWD+avbdPF+MAdQuk9SQXVjJ2fm2N4kfWJktRIS/L3/PPgA9
	cXoaJl/BiiPI4yscK/LMqXDV1BGloeVRs0hAIz1ffoN7VJjVI+fR04PAghsk7zwYA
X-Gm-Gg: ASbGncsi8oAUyUyyMt/9ekyKsg9vQ2mCjthe5oQUkrmWP60iN/bGaCp+kcEmShUtsrm
	IOrSdG9HGNm65ME678AViikR8gSQhm3A2PhTUGQuui+AA+YmkqoXdmdLUustzgCSuvlVCQ+Qv31
	JNzzBXs2acVxU5efuhGf3s5ftJT3vv/5WIf6D+SuI1Rg5jkjPtxhqbUH6o/4/ZXwJuHijb7Hq3p
	L17pOKi559ehYExCSFIp0mqgpZsw/WiOltkE2sU/pThtD+/GUjbRxN2fIZzjL1Q7y9GEpwFb2Ho
	irI35K18aNf/7Uen8Hy1MCpft+zuHm9k09H9xCPnxNS7zoabZIlc2+8nmk0IM2mlzyCVS5A9Zb3
	829LZj82XA1xOiO5Y3YvFDSd5QwjO8fo7fmMg/QAOXk64YTPaMg==
X-Received: by 2002:a05:6a21:3086:b0:2df:b68d:f73 with SMTP id adf61e73a8af0-334a8611cdfmr29242013637.34.1761195470351;
        Wed, 22 Oct 2025 21:57:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqZ8VAhBRbtmgIzX3pXjSZr1ekf3A32HB7rzY3mUQ56n1fbN01Nzd+vDSQoWVzK469z6n2Jw==
X-Received: by 2002:a05:6a21:3086:b0:2df:b68d:f73 with SMTP id adf61e73a8af0-334a8611cdfmr29241979637.34.1761195469877;
        Wed, 22 Oct 2025 21:57:49 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm814289a12.7.2025.10.22.21.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 21:57:49 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add Qualcomm SM8850 socinfo
Date: Wed, 22 Oct 2025 21:57:35 -0700
Message-Id: <20251022-knp-socid-v2-0-d147eadd09ee@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMC1+WgC/02OwY7CIBCGX6XhLGYYoYqnfY+NhwFGS9SiUJvdG
 N99ob3sheRPvvk+3qJwjlzEsXuLzHMsMY114KYTfqDxwjKGugUCGgWI8jo+ZEk+BukgWNoZYut
 JVP6R+Rx/Ftf3qW5HhaXLNPqhGdp1w4ZYppR/l+KsGrzIwaL+J5+VBHmmAMb6HnivvlIp2+eLb
 j7d79v6iNNnjWZ+vuq/p7W8ZhsUp2NHRNbvjAHXQ+jR2NAzHZxSe0OBD0GhRq01V9nnD+JSK2s
 MAQAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761195468; l=720;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=eJ7Y5VSwo4ss1PtD516LDcXHrGyKt6PZu+aZj51XL9g=;
 b=quWZ0dtJBw4mgDgA3O477qU7bj/rsWlXk1U7Q+0f5WO4RQGhEgAoHgfVXdBQyMJIvE3cg/STS
 IyfLyvYVdmlCCoHBCXg6TkNPUSi3s9HhYWEf+oun2NZrDAZ8anhgvCF
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 5r6ZK8wNuqqf4vnN5bYJv3RQWEucC0xX
X-Proofpoint-ORIG-GUID: 5r6ZK8wNuqqf4vnN5bYJv3RQWEucC0xX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXz6YdooY3zqxq
 PjS7wtnzbjO+l2oHu7KtLDcxDdXpIcsNOLgsRdJfiNmo60PgfEfJ0wffInKb3PXTW2p+LrDl30W
 1gF5IGRIK8umWlCdyr3A/cuac+gWcCE5oOj1s4IkxGcHr9hQqka/iBDs3TU4l+iYSlU3PQoE3Au
 j0k9XtBHUDNwQrZ235vK4/Cbi6TfuEIt/Pyne5MoguD3a3ycLy/YeN9tjNqGSgk+NRJLGMwwpNx
 CXQq1/WNK70VudBvoRxn8vEtSzYJ5FsHFa6wOWoUNOb245TzOPqsq7c74pHqzxRmWHho1mPl8yD
 Jk5Wn0TEv15mrdv+exPfhBJODiIZmvYualXxNnC1SFZKH574dal4/hcWNK6a0WP6fgv6mnr9zCc
 cbN+zqnyEFOM5ie050aHRLEOPY7PGQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f9b5cf cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CTwZ_wOYRK3Eq8s6QOMA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

Add socinfo for Qualcomm SM8850 SoC which represents the Kaanapali
platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- Add info "Kaanapali" in the commit msg. 
- Link to v1: https://lore.kernel.org/r/20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com

---
Jingyi Wang (2):
      dt-bindings: arm: qcom,ids: Add SoC ID for SM8850
      soc: qcom: socinfo: Add SM8850 SoC ID

 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251022-knp-socid-b0d9a35ae9ca

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


