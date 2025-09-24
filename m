Return-Path: <devicetree+bounces-220855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6162AB9B829
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:38:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 147B6325ADA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEF52DFA54;
	Wed, 24 Sep 2025 18:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CY1gpxMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658411185
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739077; cv=none; b=ulG4cwGtJ3Z42wmgpgkTMIzXSjgKB1fCS6VHkv7LdzLp0D4Bqe3ju3vJ1fZZcQkXMhk2epIV/7QSN7H9awNokexTRR3gZ5A5Xi8bJMv7nYON6m3M1OnSEgAchXyTzAGDSErSF8khRxEvg7LIyhhFJffK1FO+5UJs8zSbu7lQEtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739077; c=relaxed/simple;
	bh=mzcBpIew28uM32FyQmevqMPECn+YhIPoaGvu5PHcgPM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MEfIgWXL3JR/KKN6CyzjdhVk5pf9cIAmm7KMQ7AQUxyuFPKULTYYAGUIRqbTgsRts7t6X0pcWudch2eITCHEKFkoB6P1/kJ1o0dLqw4XROq2/tzlbmw2sHSrlzdw1NX3mWqmXs/c4lQruboGlNjBZ1I00v8qTmDIis5CZkXOPRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CY1gpxMA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCl5oq016458
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2YJp0AJoPJela+qIoEKQr2oyB8xKumCAl4d
	Z3LNuFmg=; b=CY1gpxMA5Wirdr3GLCnE+1AEoi9PX0us9Fyf8LxOeRDJzqekzc6
	PbyyDitdDPaPEv2406hToa/CCclZ/S3erCFVNfad1V6FwSD934rgkJNiyOYgiSiU
	0QiU8DkqEKWOk+QrIHzN7e9SUuiUFC7KZsSIopfxQ/gx8BkSFFkc3WQ10BdDEX6B
	FZzYZ78OWCgmH7eIYfTrEtYxfFuyNDEu3jSAGaqxwbggYgWJe+sxcRxwkLqqcOJZ
	mLtzjWPJ3t+Huo6hBSRTiOXlHR39sC6G2TsfevRNRlFkSiPsbSXUFK834U3UR/kr
	hHt7TrXlufUv9avDC1arHMVk2yHaXDVnreA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyh8br-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77e76a04e42so798383b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:37:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739074; x=1759343874;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YJp0AJoPJela+qIoEKQr2oyB8xKumCAl4dZ3LNuFmg=;
        b=ppOGD6wwTg0MIkLgMeA/lx18eZcwtQRpAeMJVdxE6juROP3m744r414+AK8rX1Q2Aw
         DEIZuvYC/c7BAPa3bWKMmS8HoRTG0kGzG5d6SL5nfzhwLfiJgcTBKWL7XHn573Iu+vNd
         FIGZVM2xaVJt4WPnpwfp96wv7PDpfuqDy7Jz3yYdL+g11Y6ylMsr+b9tS0LNsTAfEw91
         WFLqmW3JZoGApYilbovtSm3zqFXaccCJNijJO5HUXSjOFAE8TOO4LLa3igAvLPkIu/SO
         FsDr7dNrp4rvA88Jv5VCFbUePvCiRrc/K9y/xnpr2ZswZmGYBufevKq/jz5ZqdQgIrgB
         0HxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFHgEoCyjCEzr1BGB40reodcE1QZe0q95/rWtSs0Pqg21zf1UHTvVZUvoXM7X4pmbdUE6m2GbjIv8f@vger.kernel.org
X-Gm-Message-State: AOJu0YzpAZyevQzMRtfxfTqz2VcqS81GPh2wMpVFdY88IXKr60wxT/ev
	AJ4P/A6z/L/R7213KT68G5u/3eriy1ejvIyffrQsVi3zPzyDCnpMEete4wZ00S/NLKc+fbbpNDJ
	uwCD9a1xU7t/qUym9+AjmI1Gh+1C9ibLB+Hv1l0usoTs+Kd8lqEi4CRsKyhYnMa/W
X-Gm-Gg: ASbGncsBIfs7oIO+3E/x4q/D1AnjuJ9W+4B1IRvp9HMoYviH9iX+ftbVEhcRLfheqKQ
	yqXUzSFig9ONq1VEFq/7ArslN7iCT86dE/1PYB+wLBQoFq8ej3hbG1JCJnTIm7urUHERauYE7L6
	t3/aDyWxoig7abDUwZbC7xIXIyfU1bxmoev4zKXJosNdyoNQZSDDKpJnbNiXkK0AjbwDxUVuZ8B
	ZQP0d7xqNPa8b+DtnYI3kX5vKrQ+C6DfIMVp/LAqnirWUqU4vKtExuqvBsa3WZ9BqjnODc1Gs0P
	oPjw+xMr7fT6Nj570FsovpcAFsf17WejQm//3BrYpoW3quebiPaDCfnmd4PfW3tvlqSa7YYbWfa
	0RVy1BlchvSa9d+9VEq+7PETGv/74MIjgkzG1HEc1YNC1MkvIH6XPVPI=
X-Received: by 2002:a05:6a20:7348:b0:245:fc8e:ef5b with SMTP id adf61e73a8af0-2e78f003672mr806185637.5.1758739074406;
        Wed, 24 Sep 2025 11:37:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJgBc1x8MlTWvXGM1116gCob5y5IWdsvIyBP1B7OfN0lEnpPv4P9NKMSOaFxcOpNFSOkokkA==
X-Received: by 2002:a05:6a20:7348:b0:245:fc8e:ef5b with SMTP id adf61e73a8af0-2e78f003672mr806160637.5.1758739073966;
        Wed, 24 Sep 2025 11:37:53 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:37:53 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 0/5] dt-bindings: remoteproc: Document Glymur ADSP/CDSP PAS
Date: Thu, 25 Sep 2025 00:07:21 +0530
Message-Id: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d43a83 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_X9-DzOTpKYA3bgxq-AA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: vPL1geipQmmreSMoZ9uVQ7NSju0gqdPV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfXwmpy6rCZlHUQ
 EoLYZ5ezToJ+cCEZhT6x5zrWwNGXrL8d1l4fyb6M79suHAejk8jm01I5sGhLqIL0D/7ckRjj7am
 wMgRL4caKhcGf0BBxv7iEK8xcLOZhvSQZxBD7+KKB9ZydKQLXsjVZLja6DNRgDt047y1pd/Wcix
 1UObJ3QNRzzXud7OiVrVkfB8ACVtannaiHERP04dV6V9Wu0q3W7LGZMBCkkhG8v1f2cGJPRGquC
 bgHz6IwmJdMb8wjiQjjF3PkriuB+I7cZZ+UXUUmINjsDW8VNFJIVPMnDs4VzyivH7wFksC1XfBe
 KBYKDmRoKkzplLfZbV5DEMxtidGViGhSoqQkKQbUXIDlrkhpgnXwK+pgIyJ/i+MGGGl75t/c+m/
 hvJaZY06
X-Proofpoint-ORIG-GUID: vPL1geipQmmreSMoZ9uVQ7NSju0gqdPV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

The series documents the AOSS, IPCC and ADSP/CDSP remoteproc bindings
required to add initial support for ADSP/CDSP remoteprocs on Glymur SoCs.

Dependencies:
Peripheral Image Loader support for Qualcomm SoCs running Linux host at EL2:
https://patchwork.kernel.org/project/linux-arm-msm/cover/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
Patches 4/5 have a dependency on the iommu binding added in ^^ series.

Sibi Sankar (5):
  dt-bindings: mailbox: qcom-ipcc: Document the Glymur IPCC
  dt-bindings: mailbox: qcom-ipcc: Document Glymur physical client IDs
  dt-bindings: soc: qcom,aoss-qmp: Document the Glymur AOSS side channel
  dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur ADSP
  dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur CDSP

 .../bindings/mailbox/qcom-ipcc.yaml           |  1 +
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  | 22 ++++++-
 .../bindings/soc/qcom/qcom,aoss-qmp.yaml      |  1 +
 include/dt-bindings/mailbox/qcom-ipcc.h       | 61 +++++++++++++++++++
 4 files changed, 84 insertions(+), 1 deletion(-)

-- 
2.34.1


