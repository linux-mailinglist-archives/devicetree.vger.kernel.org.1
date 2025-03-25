Return-Path: <devicetree+bounces-160517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 997EDA6FFC6
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBDA0175440
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 13:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B9E267B03;
	Tue, 25 Mar 2025 12:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LvU8TgVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1AE4267AEA
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742905839; cv=none; b=svgtVUibe2E14pPjbvNgGIeHVo2JB0ZBRD87JVes+kFDxn474XLJk46jZeaE8XJx1mUQTEog8rsAn8AO/Vml0DySSli6hq4XaCVPCecG8gjIX/uyXLlvad8eye9TP+8kcb+tIfYcXJWjwuQ1mCqsB6jewSZQEQi8qEB+gh3DWVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742905839; c=relaxed/simple;
	bh=C6NTSl0+Rao98kSjPlvJlJr9IoIUUdvL89mpuJUpsPw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LGZQ/sJ4dlir4ycWKAnsbVciFbRhcfxrJ+ncVqOcJIdfr/2QxbFKkvkehuhTA8t5kTzpgY+64Lw23l2kjV8y8FtYgzGOxd1HvvNDmjBqf9qKjDBnJsh+R2+BTCKznDdkR3KZji0DQDGSZqs3ucptnXhsm+jXbaMA9AlIPESNR0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LvU8TgVN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52P5vVVQ024709
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Djrd/4JquWX
	DbU+icEttWqizSKPX1yxwU0bvPWCgU/w=; b=LvU8TgVNJsQgO4qNIXXeQyYTk0o
	g41uEQteuyHtcgDITr2HwMbcs4g7kouzJPWmO+2pI6/sZySrhtUkv94xrAfi9SD0
	1iAjuAZXSSfrFE1m6BA7aQV6K+evsHUcaYQcBKCtTYwQPqDUyqSSHy3K1qFOR3wE
	ZFac0vkKUioFTWz8jvrnLtyqCTi6z/D6ltBvLlyyW+mKEAGrNyp36VyavVllM5D0
	ReE1j7LpUmSPAG4CVSkb2Vj7PR6q8YCP/rBnv3WKJQRHOeAi7RlbPKFmUwtcEslm
	PISAvteaO0j4CzzrF4QZc5h7F7TIffW4OH+453Zyu0AX3NsovLtRHyJy3uw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45k7qjbd2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:36 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-227ea16b03dso5990675ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 05:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742905830; x=1743510630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Djrd/4JquWXDbU+icEttWqizSKPX1yxwU0bvPWCgU/w=;
        b=d5CNjUcNSuPTOl/nHRS3+2jhAG0fwFjQbWAeP+380wuvern0EZByHoEeDiFSZxyEv3
         kkWiI78Gephh9fSAqUlXrn3d2Zwkj976cRWSa+3s5RDril/wLsfzMuK2GeVl2MY6p611
         0DNu+0Cork+5T7QVtIaTJDLB6hISj/iCCDZvPl3qHkKS686F6dDJ5iyARMQCpqOF65EL
         pbV2ij0+CtcI4uyZ2fx9AU496KrzQ4ijvDDmtQfYM5UoujqREoHBDK1uJg+DErp6nqJD
         diMV9YUUqvYjYRtDoacWJVAK3Y0rwR8ymzX2c1jl+QVLkGZZ7nhsngMkv7CWWdxCaQeg
         /gOA==
X-Forwarded-Encrypted: i=1; AJvYcCVWKCJZdXGB1/Y+H8QoMvkXbzARGMG7lEVvoGtDgwlRBUge/z7qz1CQ8EYCcBH3mvJlRSHN1eHrDU1p@vger.kernel.org
X-Gm-Message-State: AOJu0YzFbkGozwfOCwFf9sCf7NIqWBgsql87Ofc/lt1AdO8Bcq6z2sFf
	jOvb5lK+gRZrYiwCkPUNEUMpKF1r5ebpYQNlafJf5MgENwCApKleHyilQDr47tXP/LpLTcyXYQW
	HipWKXBtglWmh+cnm9/OsobpIw7GaQUjyA/h6e4LiECbSQa6t5/pQvJ0TTfUj
X-Gm-Gg: ASbGncvjS9g3ITILzlD9K8WWPuyTqe024W7y0e8QnGOgUQrfHew1AY5VOAgjei8CUEY
	4Ru8370nj+C6tdQSCRXOhwzfZYDazAFpElc5Nu65f3vgrgPB0cI/97W3MprNeqLNH+3XTmLUjx1
	wCcr8FEbO+/lodRFaTzehXx9QtR+AAzDJjDdR7KtwfYB+R+EGV8XmXvr+dZdDQi+ng/4m565U2O
	t0ryyPPgd21wLqFd/hUvrSi6dYRn04bng55RovQzxv2iZG55Vk/3kyFd3ERVNI+66heLJ0BBayj
	FkEiX8R4FVNRdE/kHx+MOHKHwRYc4Acs6ZssbNywbZE1
X-Received: by 2002:a05:6a00:a90:b0:736:5664:53f3 with SMTP id d2e1a72fcca58-739059ffb6bmr24495762b3a.15.1742905829532;
        Tue, 25 Mar 2025 05:30:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1+SzHyug7TlpcnU1WYoJKsScRaV4mu1kQkM4jvBkv9SbhqL2kTaoaLZnX/fcxB9EwTIMLnA==
X-Received: by 2002:a05:6a00:a90:b0:736:5664:53f3 with SMTP id d2e1a72fcca58-739059ffb6bmr24495709b3a.15.1742905828883;
        Tue, 25 Mar 2025 05:30:28 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390618e4b6sm9987391b3a.180.2025.03.25.05.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 05:30:28 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v1 1/5] arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
Date: Tue, 25 Mar 2025 18:00:15 +0530
Message-Id: <20250325123019.597976-2-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: C3Ahy7W2-QQROoWrk3fcDQyVjgygxXL-
X-Proofpoint-GUID: C3Ahy7W2-QQROoWrk3fcDQyVjgygxXL-
X-Authority-Analysis: v=2.4 cv=feOty1QF c=1 sm=1 tr=0 ts=67e2a1ec cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=2mEde68aHbpXMYUSS8oA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_05,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1011 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 mlxlogscore=796 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250088

During device mode initialization on certain QC targets, before the
runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
register write fails. As a result, GEVTADDR registers are still 0x0.
Upon setting runstop bit, DWC3 controller attempts to write the new
events to address 0x0, causing an SMMU fault and system crash.

This was initially observed on SM8450 and later reported on few
other targets as well. As suggested by Qualcomm HW team, clearing
the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
write failures. Address this by setting the snps,dis_u3_susphy_quirk
to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
and hasn't exhibited any side effects.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4dbda54b47a5..4477ec14ab1d 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3657,6 +3657,7 @@ usb_1_dwc3: usb@a600000 {
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x140 0>;
 				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
 				snps,dis_enblslpm_quirk;
 				snps,dis-u1-entry-quirk;
 				snps,dis-u2-entry-quirk;
@@ -3736,6 +3737,7 @@ usb_2_dwc3: usb@a800000 {
 				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x160 0>;
 				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
 				snps,dis_enblslpm_quirk;
 				snps,dis-u1-entry-quirk;
 				snps,dis-u2-entry-quirk;
-- 
2.25.1


