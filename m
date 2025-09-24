Return-Path: <devicetree+bounces-220967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA4B9CA24
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DA0E3279BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14AA2C0F75;
	Wed, 24 Sep 2025 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nJ9U22+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02D20C00E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757054; cv=none; b=syqUCl/aBxlPllds0xwXqtGL/HUv+PRbElHUC32bE3KFiuVOtteVT1agjeOq7xV80iAIcdQTDLwTbxXcOqAHiE+1ND9Je8r05Xb/8qftFGvXmPkLJnJ3s00sd3a0kiNZ+i13YMHoI6zDoDCuP7OuXXUN2JnaWzTDr1k/TxpvMO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757054; c=relaxed/simple;
	bh=HbXyfoMuaXdOi+XNdzbbQmz+0DZCe36zPNBcfEwwZow=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cASHv1QuIyGMiOt46PP2p8p+85DBOV7gHoGs87zFCQ7iksVw7/Cn0urT/eSxmpkRHf1ry0+V5VTno58nMm/DQGNhX6sLhTQaMgZubXywcU5Pu3jWcNZt3CLufvM2bUmEMuwyW3QDTZ3586L99eay02Tfmt/yVngY7LIH9AXumVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nJ9U22+E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCx2pV016659
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yHPnfqqswUUOj8uDWMMqRL
	Rxv62OlWni7Al2oR+xh1g=; b=nJ9U22+EBEjBt5FnLJSVbCjTzFuYd1hsPFwcvc
	Od7+l4xrwKwHSnV+uQNOs8C2WhgphBplDHr1pA6F4MYSkc0Q7qZ4n9C6nzoilrFG
	dBwR/3hUwIP2WY9J6ZtDC7/tIoXEZV3Sb6JJckS1sw75Nrnet9I3T4YliVt2T3NS
	eNy9UPVUh4LB9Q1maIdx+2z2lcuY274xxqi1y0EEVWI20baykPQG8lEq8PyfvFQQ
	v3HIxO+FVrUSKely6veAEtaLiEgS/caqW918G/4tPytFuam5kKPUpLc5296URTSh
	/XtaWrHVjFGDiaaD3RqATmoZGRt2QtscZbR7JDpNHwfk2Dmg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhvb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:29 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eae48beaaso302729a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757048; x=1759361848;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yHPnfqqswUUOj8uDWMMqRLRxv62OlWni7Al2oR+xh1g=;
        b=Fa/BhoayU2bTWk5doGQZGnQVutTQb1ZDxM3f8VnUOk1/i8QK1MoFnOb2m2ZntDV9cw
         5/w8Qw4A1wegcjHv2U0P3Z3YNcJJcV30CtWoZaQnU2pPpGa6D+kAMGRHwkvQrqi3c5rq
         i/XWk+0/7LJJ8AYXf+0Aq4E5tsOxY0vLyYM+wOk3E5B9ba9y1lUf4Uqi4/gUSQn8/Emd
         dW7gUhQfOSKcn6Hmk71N8YgT3a7lPStSpxCDGVoD/r9ZeAJsihQoT9EoHQOyc6/heTyz
         /GuzOjR9X698GsSZbp7YdQOYdSFI4Z5pJ1GM32kRNVSx5iqPKysVpfl1VWJgDBh44e8F
         f4Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWOGJhbttDajMlyFsFET6CVRr0F/QCBxCWvf05lap28xqFmIA4F7Yy727ivq4Wma/QLyU90iUfOs5DJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwSwi2a2s9QhC3E55xElcDMcGQaE8niNKGqRMiEoWKOtME9USJ5
	LcOGIGklwC3yJlHVLJTxZAqa9ZAlYbKCZJXQ+OK/OV72vAocAukb/ALqNhFRjCywCQXP3U7bXi4
	ZYHFyi4epEze51AgtX82vsyJb0H5dAVKTqpEgsUqCP6Hu9JGfN/CWID3CLwPfIOdf
X-Gm-Gg: ASbGnctDcqOp+cFMGb+zpJk8sw643KPzKTpCmqWrQzFfb01cH53mV/iA/tgR2OW2Xrp
	gsTXP4wX37vhf+m7lIkGSujRQ2qWIibRWGZkWwSBLe+3nZfNCDhVd5HKpJW56s58EycazvrBWUx
	lEjrdGrH5Hyev/v8V361aq44Whv0k+e/hF69MZIAcyWYChQ4bCyPw2ILrNYmIcsOvD2GwWptk7g
	hlrZD+NBrsOPtjhiLCxCHucJzCCQd2LqdQVDQszTn91f9oQUMDLuuHuWc6ZGnUJ/CIT/yfTFp1G
	u4NWYI1Lf/YXyKEAhcnN1dynnc1rzqkgzNa0LZdV/YvMDpTOGdydzouP5XYHjH5X/LQVTrFWC3L
	YHgHhuP2FOOMmvUM=
X-Received: by 2002:a17:90b:4f8e:b0:32e:7270:94a4 with SMTP id 98e67ed59e1d1-3342a22f5c5mr1258193a91.14.1758757048421;
        Wed, 24 Sep 2025 16:37:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu1fGpjzdi1GVnmxxWp5bhgd/H2916Z+w4tQ6cpsammJ90qXtBWMYWR89G7rEEpNT2kZSv+A==
X-Received: by 2002:a17:90b:4f8e:b0:32e:7270:94a4 with SMTP id 98e67ed59e1d1-3342a22f5c5mr1258164a91.14.1758757047916;
        Wed, 24 Sep 2025 16:37:27 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d73550sm227187a91.3.2025.09.24.16.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:37:27 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/6] Add initial remoteproc support for Kaanapali SoC
Date: Wed, 24 Sep 2025 16:37:21 -0700
Message-Id: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALGA1GgC/x3MwQqDMAyA4VeRnBdoS2W6Vxk7xC6bYdiWRGQgv
 vs6j9/h/3cwVmGDW7eD8iYmJTf4SwdppvxmlGczBBd6N/orfnJF5aWsXLUkjBRS9HFw4xCgRVX
 5Jd9zeH80T2SMk1JO83+zkK2scBw/UJVrNnkAAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Gokul krishna Krishnakumar <Gokul.krishnakumar@oss.qualcomm>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757046; l=1727;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=HbXyfoMuaXdOi+XNdzbbQmz+0DZCe36zPNBcfEwwZow=;
 b=yTmROiAJGXM4/BM+N3MM+1kh85JsfNcQcrpuH20R/3Mgwdhq/fituUy1FsGbKULrP1cNxY6r4
 LHfRxxXWzRFClPnl3LAbm505O2QVF/ZfGwPwHhTCC5CGMNUStmQhojk
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d480b9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YhI_PNPeQObCTaMrVkIA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: mUWm3YT1Ju0RXTxy4AYSaHXGyYtylHFB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX/+jzcNVSopow
 KvJSoJUgybex+JpvK+Rcafr7trI0pdDphEOMhx7mN9W2clQomNELEgb6W8pPhwAI2aquRkOq0/9
 /7uuBBq+lhfPWTJASNv4Q5AGkBxGkBzYIKE9uGT6PIpnmuLHje5PQKjlXaC5pHwRAJ2stuzR1w2
 wWxN+MNztZMSN8f8Ph93MOdiwxh9/IEunsEoj4Kzvl+DlINpimGA+KS+VoHz87jKSfAzkvE8A9Q
 TRLjAm+V0pZKKzXvE9kn0FEPozr0VgXE1NLZs3djQ+24a7/kdrFlMYPtbJtcZdd5rB0cZk5ans0
 40PMugAVJlUY1qITsMLpp0ziWKw1rafuHCNjwsRfW7WqZn0iTO7EzJDfrIiqORMUPnCnTf8RF0K
 wSrTRCsb
X-Proofpoint-ORIG-GUID: mUWm3YT1Ju0RXTxy4AYSaHXGyYtylHFB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

Add initial support for remoteprocs including ADSP, CDSP and MPSS on
Qualcomm Kaanapali platform which are compatible with ealier Platforms
with minor difference. And add initial support for SoC Control Processor
(SoCCP) which is loaded by  bootloader. PAS loader will check the state
of the subsystem, and set the status "attached" if ping the subsystem
successfully.

patch 5 depend on smp2p patch series:
https://lore.kernel.org/all/20250923-smp2p-v1-0-2c045af73dac@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Gokul krishna Krishnakumar (1):
      remoteproc: qcom: pas: Add late attach support for subsystems

Jingyi Wang (5):
      dt-bindings: remoteproc: qcom,sm8550-pas: Add Kaanapali ADSP
      dt-bindings: remoteproc: qcom,sm8550-pas: Add Kaanapali CDSP
      dt-bindings: remoteproc: qcom,sm8550-pas: Add Kaanapali MPSS
      dt-bindings: remoteproc: qcom,pas: Document pas for Kaanapali SoCCP
      remoteproc: qcom_q6v5_pas: Add SoCCP node on Kaanapali

 .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 174 +++++++++++++++++++++
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       |  30 +++-
 drivers/remoteproc/qcom_q6v5.c                     |  89 ++++++++++-
 drivers/remoteproc/qcom_q6v5.h                     |  14 +-
 drivers/remoteproc/qcom_q6v5_adsp.c                |   2 +-
 drivers/remoteproc/qcom_q6v5_mss.c                 |   2 +-
 drivers/remoteproc/qcom_q6v5_pas.c                 |  79 +++++++++-
 7 files changed, 384 insertions(+), 6 deletions(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-remoteproc-4a2c41480982

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


