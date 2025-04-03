Return-Path: <devicetree+bounces-162902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43357A7A24D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 14:03:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8E70167AD6
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D1F1EF0B6;
	Thu,  3 Apr 2025 12:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h+RYcbR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227F018DB10
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 12:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743681794; cv=none; b=p7Zb5PHDpN3ldZ88DJ83tPjFr3XJmFdNrkLPWs/MiH4bJzj8mMkl/II7ydSUwunQl+aOPcwLzQv2E7zENc5HngJNl+X+qwukAtihmKVtkihPE33chJU09KMjwt48I+1h8zwtJKs0H9e1ht3DKB20VF+bU3tB96NC+G5aXZjbfiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743681794; c=relaxed/simple;
	bh=oC1M00cCXgCNX7X9++RAaVFkOSUXmLVSWM5wcUXAa30=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qfPAkBokHht6yA/lckbbGxPDKBj+beZFU/iXXTaOaFKrQwyaEKyPx1nzuUZ1jsh4gtfNBIgZc9blcJX9bQlqUlU6m8QcsmRAsnLo7WXFr9CQcXsx9+uIW/Zg8e2CuEE6IKSyPi7X85us71CJHSyNbhSO3WOzFcJMJe3nynCLaPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h+RYcbR4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339s0Qo027455
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 12:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=DDVA9Do/PLB3lMagbE6I+HiWvtdoXJ1c2Zd
	dJk3Lyx8=; b=h+RYcbR4AHr/AKuv2p9apA8+sgE+8MqDlYab9JoVCTiqfA6lqVf
	o5XHBock0gP+g35PRWYvixCJm+7eXUlwtNdUxa46fsX10sOWcJjA2sH59DJwFOKG
	EwqkSWnrRY3x3Y/+6SV6uzW4ulKbNhIf45/LbmhoZePihPaM6dw6BaLi8K2JaviR
	Y6M3DJ2ZKayalp/wzN68HhT+ARXrBaKj35gpOCe4f+tOMTQr4bwn/iqHnoPKZunL
	DDur7ZUstV/tti9AwWf/8tL2JVZQGWjTaeMYEbDvRiT7oERX9i25wLEnHtj3QTPC
	Oq9psCyfUMLHOhiXAIElE9PR8gbTq2eRFxw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rxapvjep-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:03:12 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-af9564001cbso657253a12.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 05:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743681791; x=1744286591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDVA9Do/PLB3lMagbE6I+HiWvtdoXJ1c2ZddJk3Lyx8=;
        b=njWTbR4qY9ordtIg0yt4M7jFvfktGM7eK4p8xHLd/op1pp7aMahlqSxLiObtt2nn/3
         fIW9lYO3B+fLupnT6CkugQ/g9ZmN5olQdmZEdByhJW5XUPRVFlHlDD4TguDKT5rH+G8/
         XEz3/iD0eWdpEJiQxT9idI3RIdmjq6k44KuTUK0f3v6VDbw+2zBlv13VGuA4OAN7eSt3
         l2HY2aW8TNdocR2x9IaktBnyvaApuock+lhrLXHkRWBLpLfqUSZar/bta3Fle13N836n
         tf4/THDplPzYRq7Nmc6oQI6X5d84km1jsrTQdBz1mHCRqfYUYbTU3UgqSncm1GEJzGTQ
         +23w==
X-Forwarded-Encrypted: i=1; AJvYcCU8JzAFVEtUI3HvG/yxbeyGN6YL/W4qW1UjO4SSMtDm87W7l8IuF+79WcG1MyIxK/mqkie2Dw26HYr8@vger.kernel.org
X-Gm-Message-State: AOJu0YygKVsjVlvM4lnNnsE2qCbACj0PiAEQuaBmdzRe5sadi0csOZbB
	PVxaeXc8fxBI97NrRln0TC0MLEkRtKYYQm9Onept/M97Jvdcdy3v7zeQrPxopCOJzMJ1SqNarNV
	436ny/FwcApLhl+8wC0JPBKlzHNI4yCI1sbvUDMAL6T7+pGMAMJb0GgZRo8E3
X-Gm-Gg: ASbGnctT35BdieGJKGhNPkwZjJ0qOZHnIbNOLwjv8MXAX2lDWKp57YbkMElntY3PS+H
	V5BJ46MP6ygfG1tw8fIW/Wx6RI27yziyNw+35c9HYvQgYCVqfmuUpNuDb/0WFJ1T24GEsjGjQ/T
	ItdFyNT/eTN3qkpRsdk9TFT6C+lg8ikFvIJh93UEkjzossFtXm7ofz/q0VkW5Mi4oohV6maqTFq
	8SqzMdLetr1snje0Nmh5eGPCRgv8aJJAxWp4PLDuZpO2WAcPE1BDgN73RQbyS0d5by0uNkd4ndV
	OzhDdmHKGIng2W713sPIXcLrq1zE6tSJSa3/p1u5VMVBpVoONmiOs3e2Ymm8NVZMQzmnxNUu6Av
	soV5uB6FGSWm10FrvkquR8RO2+6mVRJBNxRZ7qbw=
X-Received: by 2002:a17:90b:510a:b0:2ee:ab29:1a63 with SMTP id 98e67ed59e1d1-30531f7c897mr29054291a91.3.1743681791237;
        Thu, 03 Apr 2025 05:03:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8ZDPyuYrzBkkV5yqtn6oP6UerprW1PvapmMx7mPIQ95bGIBcxDK1It6/5dH+D9GBvZ9euBw==
X-Received: by 2002:a17:90b:510a:b0:2ee:ab29:1a63 with SMTP id 98e67ed59e1d1-30531f7c897mr29054256a91.3.1743681790823;
        Thu, 03 Apr 2025 05:03:10 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-305827d710csm1285799a91.10.2025.04.03.05.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:03:10 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V4 0/8] Add new driver for WCSS secure PIL loading
Date: Thu,  3 Apr 2025 17:32:56 +0530
Message-Id: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Vbj3PEp9 c=1 sm=1 tr=0 ts=67ee7900 cx=c_pps a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=LpQP-O61AAAA:8 a=T6R8vjGxMvjp0dNr_V0A:9 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=TjNXssC_j7lpFel5tvFf:22 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-ORIG-GUID: d-LBm2IYXbXSlYcf3JG0dwokwk9XubqB
X-Proofpoint-GUID: d-LBm2IYXbXSlYcf3JG0dwokwk9XubqB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_05,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1011 mlxscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030050

This series depends on Sricharan's tmel-qmp mailbox driver series v4 [1].

- Secure PIL is signed, split firmware images which only TrustZone (TZ)
  can authenticate and load. Linux kernel will send a request to TZ to
  authenticate and load the PIL images.

- When secure PIL support was added to the existing wcss PIL driver
  earlier in [2], Bjorn suggested not to overload the existing WCSS
  rproc driver, instead post a new driver for PAS based IPQ WCSS driver.
  This series adds a new secure PIL driver for the same.

- Also adds changes to scm to pass metadata size as required for IPQ5332,
  reposted from [3].

[1]
https://patchwork.kernel.org/project/linux-arm-msm/cover/20250327181750.3733881-1-quic_srichara@quicinc.com/

[2]
https://patchwork.kernel.org/project/linux-arm-msm/patch/1611984013-10201-3-git-send-email-gokulsri@codeaurora.org/

[3]
https://patchwork.kernel.org/project/linux-arm-msm/patch/20240820055618.267554-6-quic_gokulsri@quicinc.com/

changes in v4:
        - changed q6 firmware image format from .mdt to .mbn
        - corrected arrangement of variable assignemnts as per comments
          in qcom_scm.c
        - added scm call to get board machid
        - added support for q6 dtb loading with support for additional
          reserved memory for q6 dtb in .mbn format
        - updated dt-bindings to include new dts entry qcom,q6-dtb-info
          and additional item in memory-region for q6 dtb region.
        - removed unnecessary dependency for QCOM_Q6V5_WCSS_SEC in
          Kconfig
        - removed unwanted header files in qcom_q6v5_wcss_sec.c
        - removed repeated dtb parsing during runtime in qcom_q6v5_wcss_sec.c
        - added required check for using tmelcom, if available. Enabled
          fallback to scm based authentication, if tmelcom is unavailable.
        - added necessary padding for 8digt hex address in dts 

	Following tests were done:
	- checkpatch
	- kernel-doc
	- dt_binding_check and dtbs_check

changes in v3:
        - fixed copyright years and markings based on Jeff's comments.
        - replaced devm_ioremap_wc() with ioremap_wc() in
          wcss_sec_copy_segment().
        - replaced rproc_alloc() and rproc_add() with their devres
          counterparts.
        - added mailbox call to tmelcom for secure image authentication
          as required for IPQ5424. Added ipq5424 APCS comatible required.
        - added changes to scm call to pass metadata size as equired for
          IPQ5332.

changes in v2:
        - Removed dependency of this series to q6 clock removal series
          as recommended by Krzysztof

Gokul Sriram Palanisamy (3):
  soc: qcom: smem: introduce qcom_smem_get_machid()
  remoteproc: qcom: add support for Q6 device-tree loading
  arm64: dts: qcom: ipq5424: add nodes to bring up q6

Manikanta Mylavarapu (4):
  firmware: qcom_scm: ipq5332: add support to pass metadata size
  dt-bindings: remoteproc: qcom: document hexagon based WCSS secure PIL
  arm64: dts: qcom: ipq5332: add nodes to bringup q6
  arm64: dts: qcom: ipq9574: add nodes to bring up q6

Vignesh Viswanathan (1):
  remoteproc: qcom: add hexagon based WCSS secure PIL driver

 .../remoteproc/qcom,wcss-sec-pil.yaml         | 146 +++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  71 ++-
 arch/arm64/boot/dts/qcom/ipq5424.dtsi         |  87 ++-
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  61 +-
 drivers/firmware/qcom/qcom_scm.c              |  17 +-
 drivers/firmware/qcom/qcom_scm.h              |   1 +
 drivers/remoteproc/Kconfig                    |  19 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/qcom_q6v5_wcss_sec.c       | 526 ++++++++++++++++++
 drivers/soc/qcom/smem.c                       |  26 +
 include/linux/remoteproc.h                    |   2 +
 include/linux/soc/qcom/smem.h                 |   1 +
 12 files changed, 951 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
 create mode 100644 drivers/remoteproc/qcom_q6v5_wcss_sec.c

-- 
2.34.1


