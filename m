Return-Path: <devicetree+bounces-220978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9182CB9CA9B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76F8B4E3471
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C51D2BDC15;
	Wed, 24 Sep 2025 23:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K6F2lSwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7247420C00E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757188; cv=none; b=i1J+oeM1LvGh23i1l2v9zmpTaU2C8GQt5HFv4VaAeidY+N0Lkuozg/hJT+tFdjn9GGYaATkIFvGpbbRWeyHYy+jbqyoPj1L5Y8cwZ3/rxIr06QCaj/CadYTqnZEnTyBPMxdFFwbGeh9T6d5TL6+70J9uErxlZkxnVYH/UWMdwWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757188; c=relaxed/simple;
	bh=8eg+cFbUEqaa8C2+ywYwrps2m9GMnB3ORI9ICHtWuIM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=btKyYPZ4zVUux929OkRjLWnpd8HyhFhqyNDqqqTtwWAPdx5yoSXzLdgOlNAYSs7CjWS5yEdA6NzZhmgVWfZccpoJAG3OdlvnHO1+ooD4o9BPF7LMgk31UmDL4K20uyGm5n6nEIyhE/m08rJdRuYvcdCO/gCtomI4U5XCgHZoWWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K6F2lSwb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODQ8gI001992
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lO7q2RANT9ES5qL1pkzUDj
	0lrisGLmMonlVDVUcD5ZY=; b=K6F2lSwb9ptydWfM/GEgQdtIwjDpWbjdKf8eGi
	gOqgRzFaWjegp8ogQoDC93O8x9zhudGSDQOVcQMbo7C5z04ppknJn3MfE8mi9JIN
	z2u0zyI8xTfX0WZXEcEdCZLZX55rJXmEsAOgBFHOw5utFRr+NG6edGN/NwRqo3x7
	SdYqkDltigzjQLPsiRGEyGjaDM43Ua5vn9xNKySRSEoVR3a2zsjkfZD2tkBcHsib
	6wr6J6Uz6LK2Qao//wpBZLUdPdOrDm4Rj3Q6SoYS/Q++4e2/SsvO+Jfo7b8pZkNI
	yrCmkU/14QpjC+J7CWGezYD6rRCkPzb3U+YX58B361suLrCQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p2ru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:39:46 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b55251a4309so233452a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757185; x=1759361985;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lO7q2RANT9ES5qL1pkzUDj0lrisGLmMonlVDVUcD5ZY=;
        b=GefnWWt/4qmmk4gKGLiWxaXh06dmcpdQffWh++sSfjHLyMp3tsbm9Wdod3he134K5k
         FuAF2hHWbG8BHFJhzLDj0lOZ5iRNdgjsScU98DR5I/QDHRQ8ilWcs1IwPfAUxOmJqig5
         lvagVLX+f6BlsdvBeS4LEakNNdEQfXsPrBnch9dwWUt3Fcbxk6et/In4lvZsljWndJZ3
         oZ6GcMDvpnlK8o/68WrJ0Bfb+WEkANHp4nHhSRf72cR4fbRdEpRLq5z/YuLIdw8gVZy0
         9vAZWoPHSA7RhyYVdddkIs6jrsTMY5DNn3EwaDDP+VHQMIyQQEtzAog5MpdQOiwv7eUe
         T1JQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzzlPfyf0QNiB+vUszCLFRTwUiFgNOAWB+dgkaOolCvSLTOscFuawj2ZNIqrFuy0ptqK02WHQrtphW@vger.kernel.org
X-Gm-Message-State: AOJu0YxDxFQ5vLKL1qqip2laoDzc8I/CnPrvX3vZFeydQEl8roDHduiW
	yUDlyMksSzFxSoEygxkdAHVLMdkqd2RQs6VIhxurIjcOyOi17+pbYtB0UmAVUedpBAmenTLcB4n
	YPwj25yZ4K9yvQAL4OnzTzjfdRUMtITqG+395k6X4Q+7BW3A3i6VqfPIGXMI+PD32
X-Gm-Gg: ASbGncsek+Viooa1PkWBz1BF1I1giBBdfDrdLPU1My3nE6IudYEVkdaEARFNTpQYaKT
	IECb0+K29XuWbiGfp03XcoqG5BUpamsljbTCLjtEHbWRKTy/UKnJrqNJ/WHkPvuho7UiCTX4qg6
	Rg45tWxga6Iq2oWrn/CnZYOHwBnSAk2ZtdU0uwv7isnam73R3570TjiOzuhXFaHCnIMjpWxHDKD
	/fj13pRP4GfnUjzsUKUoFyg0UD1ZqcMEdNsznjURJdNXY7QZ8cNx+kQQCds+KP6F/hR3uFNdDcT
	2BclKuFO0uhcZwutJymrrFzQA7ll2hAvOT6phZLqNrPerI9+fOUjywPUWeNfZa9MqojT7ZzfYzH
	xTqK6CbP/FYlykB8=
X-Received: by 2002:a17:903:fb0:b0:264:b836:f192 with SMTP id d9443c01a7336-27ed4a2d511mr14978035ad.35.1758757184856;
        Wed, 24 Sep 2025 16:39:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGujwWV6tfUzBcIXoD7V5YBetQqmOFWFQHfV5bVrd9ni8278A6y08rnlQHTY7mPsWxSLm124w==
X-Received: by 2002:a17:903:fb0:b0:264:b836:f192 with SMTP id d9443c01a7336-27ed4a2d511mr14977815ad.35.1758757184427;
        Wed, 24 Sep 2025 16:39:44 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d3acfsm4610045ad.20.2025.09.24.16.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:39:44 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add support for crypto v6 BAM
Date: Wed, 24 Sep 2025 16:39:37 -0700
Message-Id: <20250924-knp-bam-v1-0-c991273ddf63@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADmB1GgC/x3M0QqDMAyF4VeRXC+gtSL1VcYu0i5qEDtJRATx3
 dft8oP/nAuMVdhgqC5QPsTkkwuaRwVppjwxyrsYXO26OjiHS94w0oqp5+A9hdikFkq9KY9y/p+
 er+JIxhiVcpp/+5VsZ4X7/gJ7DfKGcgAAAA==
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757183; l=659;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=8eg+cFbUEqaa8C2+ywYwrps2m9GMnB3ORI9ICHtWuIM=;
 b=x94gWnO2PZ9XUBaMDycBf8LYB4ff8yEt2NCyz5lQCK9EKjoMLizUhLRyQuSaVmwuiH7fuwo5X
 FeIw9pWGKN1BYhdt9yG+VDtUuviQ9TAM9911G+GYKhPfmrReaz0M9R/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: tYBBdy-wcQ9mT0nJj4NMnyVaYiV7q7cC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX2aSS+oztWaJV
 T4pECKygD8Ls565GGm9LclTDzvv2GTHQXkY7Rl13qJg9oplFNVPv/X9sBjcjWXtcLgpDI4TVPip
 fdkGgsb0U0vWKh49ombYj63+bSR3f7kG2totWLoTb/XpY4DbL6b6ax/6tKLKH5nPU6DGMwWXXW+
 XR35uIGUfZOdWrnRg4satGJuMTfe5lSSDiXII34aj2f1UAcdO4jO3HGCetTGiY4ALeqRtlqrwPA
 86W4xlOKRnO8w4+1DXTv9mfVS4/s3A87znIgwn3GnQfBayMzmFerYlZkOIl5nx6z301WntO8Fvi
 GcyaOlexK78DVULWRzxpusIEdVYfBoWZq5o5qtCDj5VGJV2HQqHK3YHy7Xv79AxKhELDq8OQFmj
 TPDSD9rJ
X-Proofpoint-ORIG-GUID: tYBBdy-wcQ9mT0nJj4NMnyVaYiV7q7cC
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d48142 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=czLK3_onmIaUr8cMAWMA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Add document and driver for crypto BAM which is used by Qualcomm Crypto
Engine version 6 and above.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Gaurav Kashyap (2):
      dt-bindings: dma: qcom-bam: Document crypto v6 BAM
      dmaengine: qcom: bam_dma: Add support for new crypto bam

 .../devicetree/bindings/dma/qcom,bam-dma.yaml      |  2 ++
 drivers/dma/qcom/bam_dma.c                         | 30 ++++++++++++++++++++++
 2 files changed, 32 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250922-knp-bam-c7e944a9b1c3

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


