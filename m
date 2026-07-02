Return-Path: <devicetree+bounces-319224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TaskAyQ4RmolMAsAu9opvQ
	(envelope-from <devicetree+bounces-319224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:06:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C29A26F59F7
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:05:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=hU8fwqvH;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=et8oITuS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319224-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319224-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60B213159D7D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A372F47CC83;
	Thu,  2 Jul 2026 09:41:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6187547CC80
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:41:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985266; cv=none; b=udkIh85ljNo9H4HqoUz21lOeBIn2r+wenCzX8UDOV8sUcd8gTO+QsxCJ6qca66GUAxr9dOmpwv7gbGWMnlVpLw3+msNbW910e0r1PIeHw4fuOZpGGV/FXLEckKl/+AE3BoQUzWjJ2eDYFsGyE2zU4pZWkootjA4tNTCq1qruDTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985266; c=relaxed/simple;
	bh=1G3LrXmYn2uEMTtea+X4pf/i7bDme/Ax046+mCCrLQo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SUrK9MjoO1tAtSz1izLcI9rk2zexQ+kqDqnlkum+SoCNJBEYrBIv4MCFNwsvgUpj94O2aO27VF57iSkCOJprgh60g6COYMR/5MwaNqM7YYC0My/pj+YgnFNlAlESyNTJZudCRDiAb3zpet/LlwM0UPm1Qzi4C7lAyKkO64BfVRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hU8fwqvH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=et8oITuS; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6628SpgV3050942
	for <devicetree@vger.kernel.org>; Thu, 2 Jul 2026 09:41:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=+TNm0mODHSz8vdYYesFSnv0FOwpymz1QDXT
	rzGIJgH0=; b=hU8fwqvHaWWHSLrw/cQFAr/WF2i6wbsxl3PTmPMHUluMlm4WVH2
	ugzEGWzJ1KxMlM/eNAPxZ1l6+nVu8qHcp9rICW2ILWDwQjXuWLEFykxQxKGjPEMe
	7/amCE/S/bzkoUIMrDkVYDSt9cnKwqL0uUKvOh/qeHLPUpk7M3kyULuobMDS7y5V
	y8EglbRsC2E6QHX0E58ALQ4d72Iyfx5Wcy7cylh5lYWVaaVBR2rF/WNERxbRUx7L
	zU7D8N87v84PjT/hEaSgDWKg7Z8gt+ataRUnt+qu6MHBRELzU8FiwK0RxEk2l//T
	MYCELoaq8RXDBnORIxVCabKy58tVx03hT4w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f56gpucgd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 09:41:04 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8478e9c4bd2so1802156b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 02:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782985264; x=1783590064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+TNm0mODHSz8vdYYesFSnv0FOwpymz1QDXTrzGIJgH0=;
        b=et8oITuSl7EGU8+g7IluucpFW3HzELL8wWhmX4HRN79kgeEuzLP/AntPFWBI+oTGNm
         b6Z0Y57KBzojqSuAWmjQ7/Z/TVDPg6kpBgmB5wDxTOITAX4wPTwdmwyCzoHLUGmYj8SR
         xL23gNjhsG8LR/ju2W1VRmyDj41eZiILc0jsGR5tYjGF98nU8p/Sy8wa8qKucybksI0E
         /KyyTcjgHKioJ06OWaoSAFm+w6JuOMpifINiLc4bmVUg164Mwu2lbHRhyzOdGXNnhjSx
         78lj75WF35zX4S9AXDSJGZWPkAgcDwGCNxG/huYECTyBKpwzo0Tktj9mtD/8F7yYZknS
         Z3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782985264; x=1783590064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+TNm0mODHSz8vdYYesFSnv0FOwpymz1QDXTrzGIJgH0=;
        b=UpsxhsJPwWBGucAakySoU4tML4yt9D8dG8YOcVvz9ys0D3gKYYWSYKJf10ennrfQDS
         fg3XAd3h8IfHHJdirAIV9ei6vsy4BBjGXU2f65YM5zgpf3UsYeB9XH2uTaKymckNosof
         3ymWixLrmbTxiYjcr4AVy9ITwGBl7RsRhJD4ZUJixdYdeFENoQuw9y9q+SjwdxYtYLmf
         ygJketH8HjSo/RnvBFVpymN1Z5A1vzOiwvXG7ryyTwmpSESdHmWbUa1i6n2eQIZrW6X0
         LUDnH6pwY4hMar2VyBvA1S6m8xMtNE9SrzJv1ZsQP4oZGcfFiQXzZ5elfNqLT/iJRtjH
         eYig==
X-Forwarded-Encrypted: i=1; AHgh+RrkevHflsf6jYazHIZfHrKKoeNAAL4xHh/ez96IidngkOaAuV2A2UbDYEM62/ftL2DvlDUhW9qDQmTh@vger.kernel.org
X-Gm-Message-State: AOJu0YyRBYLYF7CaUHoPXFo7UFDNBCiOE7yDjgRAF1NMYaFAdXFWvH2F
	16giF3Lh0vTjw/MX4CQpQBrjm4wGBLf3wytoxGmwrWWjaWKTIMWvI/+Urhxu3GcEV26vTb16RjB
	IKG4r06aLIMRCJ9A4bTolpL6jk/P7QxHFxBGwWnMfNO3W0pppbHd3CRBvei7Uwdot
X-Gm-Gg: AfdE7cl++g13Ap0SDmeypaSq44Ljvg8kmXu3uch4S9ggeoRuxGk9mMfeVaHNJK2YuWy
	H560zk673tX25oqGJgG4ztCOSj+ZtCSOsiJMC11veWZQ8D4+LSr8+m+RkewVS6O0oMqzL7kbVwZ
	oOgh7PVryYKQnz7sdaBaWCBn/wZh5bttZuVNojqapSRy8db+wDOax30EtG/rACLGHo7CSDi5Czu
	tx+OqPhr8RCaZJHwXe/hJ9fprpRw4+SbLqdlfdtBGCeah9QDb0kRrsw+ygk4e5AD3HdzqnWK6e8
	iTevqD8rMQaoy6Buf5rxQYOhiMx3YlXy0mOMyPhWw5ZG4zHUjm6MO61/AQIPN9tuxHN78mQpMrs
	Q1MTRl8cg9F6Qu7XOK+FEi/IcdXanL4dtuxQrFg==
X-Received: by 2002:a05:6a00:3d43:b0:845:e4d6:bd2b with SMTP id d2e1a72fcca58-847c519386emr4042412b3a.48.1782985263938;
        Thu, 02 Jul 2026 02:41:03 -0700 (PDT)
X-Received: by 2002:a05:6a00:3d43:b0:845:e4d6:bd2b with SMTP id d2e1a72fcca58-847c519386emr4042365b3a.48.1782985263419;
        Thu, 02 Jul 2026 02:41:03 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb75d850sm1141595b3a.19.2026.07.02.02.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:41:03 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
X-Google-Original-From: Monish Chunara <mchunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Sachin Rathore <sachin.rathore@oss.qualcomm.com>,
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/4] arm64: dts: qcom: Add SD card support for Glymur
Date: Thu,  2 Jul 2026 15:10:52 +0530
Message-Id: <20260702094056.3755467-1-mchunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA5OCBTYWx0ZWRfX/Yi6vVHUJLDH
 bHWMxDxSb1KckdyMG+Qh3zD3UXnmtBczTeqb63ahAznQeBp4e2xcEIZe1ldtWrU92dcjNCjPCHh
 GiMt5wb0JTca8+7WlN3EIbO6hs0IXKs=
X-Proofpoint-GUID: jhH7RvjAvswvr51ESZY_flu3qF9fc6ca
X-Proofpoint-ORIG-GUID: jhH7RvjAvswvr51ESZY_flu3qF9fc6ca
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA5OCBTYWx0ZWRfXwXMF7Xz2EA54
 KK5qV8aJc7o3Opzk5E9EL2nD5r+IFY+EbNY9rHL0/yqB4Ev1zCh+PaGamMDN27r2TrECchwE+6W
 eXcazyCUOYDtXtckaHZU61qKkW7N2Nrn/Vb9R6Uf51BhHy5N4W/7o3Bvx+/bLU/Kga5ZYlfRzeX
 SAf7JHCWIpy6yS0cnD2nxImG2trAS4Qd88xyWGFBoE0gSNjtDjnlhXHIWx4978EGs45WcQTMbzQ
 upALb2o5TlU1aOA6BTgT9DSzf+GlTrfSD/6Z93XQ5zjaVwKRRVTLYNOBRQ998i+ZVfuss+cQMa0
 js+gW//jpWO0oWzyxgoMihcnUQ73+G0P/AKyOdJpcDk3LafYRdCvRkWOntbMzF/4/N2K5uJmbuq
 NixzgB2tlcfJpdAX2Qa0eser7lVD/FB+zCKY5Yu2ZGSA7csym3HjtAegjh0i8wM5Zz8KpDZj6co
 tfi8MuYtTpC9mgycbiw==
X-Authority-Analysis: v=2.4 cv=K9oS2SWI c=1 sm=1 tr=0 ts=6a463230 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=vifq4xLP3jNeXsT3PTkA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020098
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-319224-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nitin.rawat@oss.qualcomm.com,m:pradeep.pragallapati@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:sachin.rathore@oss.qualcomm.com,m:monish.chunara@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C29A26F59F7

From: Monish Chunara <monish.chunara@oss.qualcomm.com>

Respected Maintainers,

This is v2 of the series to add SD card support for Glymur.

This series adds SD card support for the Qualcomm Glymur SoC and the
Glymur CRD (Customer Reference Design) platform. The changes include
updating voltage regulators to meet SD card requirements, documenting
the new compatible string in device tree bindings, and enabling the SDHC
controller at both the SoC and board levels.

Changes in v2:
- Rectified the iommu sid mask notation to hexadecimal format
- Updated the power-domain corner for 202 MHz frequency as per the clocks plan
- Added the BCR reset capability for hardware reset as required during the init
  sequence
- Reorganized the DT nodes as per the DT coding standards
- Link to v1: https://lore.kernel.org/all/20260610111508.3941207-1-mchunara@oss.qualcomm.com

Summary of changes:

Patch 1: Updates the voltage ranges for vreg_l2b_e0 and vreg_l9b_e0 on
the Glymur CRD. Specifically, it reduces the minimum voltage for the
VDDIO supply (l2b) to 1.8V to support high-speed SD card modes and
increases the VDD supply (l9b) for stability.

Patch 2: Documents the Glymur-specific SDHCI compatible string
(qcom,glymur-sdhci) in the sdhci-msm bindings, using qcom,sdhci-msm-v5
as the fallback.

Patch 3: Adds the SDHCI (sdhc_2) node and required pinctrl
configurations to the base Glymur SoC device tree.

Patch 4: Enables the SD card slot on the Glymur CRD by configuring the
regulators and GPIO-based card detection.

Testing: Verified on Glymur CRD hardware.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Kamal Wadhwa (1):
  arm64: dts: qcom: glymur-crd: Update VREG l2b_e0 and l9b_e0 voltage
    for SD-card

Monish Chunara (3):
  dt-bindings: mmc: sdhci-msm: Document the Glymur compatible
  arm64: dts: qcom: Add SD Card support for Glymur SoC
  arm64: dts: qcom: Enable SD card for Glymur CRD

 .../bindings/mmc/qcom,sdhci-msm.yaml          |  1 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts       | 24 +++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi      | 10 +-
 arch/arm64/boot/dts/qcom/glymur.dtsi          | 91 +++++++++++++++++++
 4 files changed, 121 insertions(+), 5 deletions(-)

-- 
2.34.1


