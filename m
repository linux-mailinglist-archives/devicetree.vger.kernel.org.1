Return-Path: <devicetree+bounces-160516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D08E3A6FF91
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6D3C7A6814
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 13:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A70267B00;
	Tue, 25 Mar 2025 12:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B7z/Rtql"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90005267AE9
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742905839; cv=none; b=uJ0PFW5pYY1NEXmcUzQo2xCGZklji+tRBV7zvL46yoq1K0o/oxlDwyegowiD7BwY/QC7TXcQ12Ch91HA9ddoIIdXuhCEKKVYVo/OZMXGz7XcgVAQ7WyKbJ19rCRg1KWNOnjd8wya8MZQithVsA3oQX0ARJAFanQiYZ7IDqAMSEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742905839; c=relaxed/simple;
	bh=EWJKXkB8LgOYgPO2GqjsxkANuQt2ed1jlqMbsU/LlwI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CFkYqP8RqyjGeHYs3OH5TlVBP1W+rs7WYz2vnO9NnobE3wMQGulSKLzhHQ6UIOq/6fAFV01iBhhz1Ah86eLBDqgqAjH5FsHWU80z5Z2nvE1WT7IerqFWxLfFcoH0clWfY8OQ+BHbpyAlU+PQ+e6cQNyDBCyo3lrBAEjDiZ0qOCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B7z/Rtql; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52P5vX6o024750
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/EQM6DEoDUu
	6zxmdeqRLQ9xyT8MDYjKcZBBXwIJ855Y=; b=B7z/RtqluDa1rImIos/tyMn+Tt/
	YhNGPX6sxI4vRWKSlSTbR/BNhIKdpOsdgqjrNozsWKFozs8fKQczvvmjgFfJ23KQ
	GX5N74aCFVJ5+9Mn+UTULOhThkXvMC+BtSfbpKSr6I3vXJaa02wzH7M4IAn96yFF
	HtvQ46Lygqt7/it1K3qOK+KUo6UIW+0A3CrFU7sW2wlM4kTtNgn8YDCy30hszN11
	rtHzW4ts8HN9erkSmOEwbPTQJq9hb25988OUh4CIPuHQBhS0VdcKtn0IfhQzPqkM
	pkBCFpHvBloXhHIhvZll/XXR7f1KELvsUdO/zynaphcX/NZBBR5GuHJ1PxQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45k7qjbd2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:30:36 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff7f9a0b9bso9637196a91.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 05:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742905833; x=1743510633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/EQM6DEoDUu6zxmdeqRLQ9xyT8MDYjKcZBBXwIJ855Y=;
        b=Qy2thFZka/Th2S70y4e/nDRNX5Ojrn/drKvvzRSd3uUss33HUAGR7TGURHEnVH4FTq
         pT3+Ci4oJ1B27aWv3SarpgzcvoBaEVKoXSAIQEpzr7H7H7qdgJa3Xek2blCaMjAE/5rW
         u76JUWdLQlPIDctnOCaInp5wuKLZHgGk5Pwen7RlmdUslf1sj3NfMC5NqvykaaVpAw/4
         s68Rbwky8LnX7kYsuX+pjd+IYqsFyaqzRANuN5ljfVqNvkw1+ki7UNDI1Pu0GLFMqgl9
         Ou95sz9LMp/Xn1LKQ7KiFHrtGZHUF5NszxB6Bkf1QVasmllA1iNnADzzU15jWsHdwc+e
         CB2g==
X-Forwarded-Encrypted: i=1; AJvYcCXoPRFoNSigx7kdOsJ11d35sw0jHngxsdygOBeFRPW5TWydML/W6tsH4HAdJi3tdmRiD3jh157lx4Ez@vger.kernel.org
X-Gm-Message-State: AOJu0YwEO6ODmipjeHotmjhwiTdECstd7QJrAIMdv4veNDv8tDTpR/Te
	tSYUA4En7mtysW9k209/UdOI4O77W974bOVoT/0Ylwb8qX+fkLYT59pMl9R8xdu2mrrmgBD7lIj
	vrf0fO9Kn5m4VOP12TrBPEe1OCWXaIRzAefv9QYKNymYhO/3hkqd899wTnBNp
X-Gm-Gg: ASbGncukD6ucaCcAQJVl4jnkGWeO9ng4w7FlJcLF7w0gwGFfk9KzYZFMPkFDe2i5Zae
	VfeCWFV92bVILC6ULyrLudZbYl1ttWD3IowfDPnZGyVS3U2mkqYMc74OnreM7hwOA9JeX2m5/5K
	1+MGMdhdTm6/8bL7V9MCV4+eLv4y/jnmiWBoZVRZZ7mBhYKYUdT5YvI/ng71Lg7OFil6F8TKLYD
	s3qfDJEtfIDrKAa4H4NvnX/jz2+RtSzwGMacXZNSFGplRcp8dH8VH8enaq0w9hpl/Qf0g6cVLxC
	pWwTGWjje9HEA0mzyPH+nNKX1coTHTmlUsRbZ+hmjNm2
X-Received: by 2002:a05:6a00:1301:b0:736:5e28:cfba with SMTP id d2e1a72fcca58-739059ffb1amr28507109b3a.18.1742905832867;
        Tue, 25 Mar 2025 05:30:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHouuf4m/7aas0Ea6VvKqkVXtocGxmnrkYVDOh+y2Z/ngsR4dy9YmGQThpYoaWuqqdjbhek2w==
X-Received: by 2002:a05:6a00:1301:b0:736:5e28:cfba with SMTP id d2e1a72fcca58-739059ffb1amr28507042b3a.18.1742905832325;
        Tue, 25 Mar 2025 05:30:32 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390618e4b6sm9987391b3a.180.2025.03.25.05.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 05:30:31 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v1 2/5] arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
Date: Tue, 25 Mar 2025 18:00:16 +0530
Message-Id: <20250325123019.597976-3-prashanth.k@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: CN4cNgRSGZVIfOzx1ZcxgmWLAN5a8XFF
X-Proofpoint-GUID: CN4cNgRSGZVIfOzx1ZcxgmWLAN5a8XFF
X-Authority-Analysis: v=2.4 cv=feOty1QF c=1 sm=1 tr=0 ts=67e2a1ec cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=tc1TWAvYerzeY2VvnAsA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_05,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1011 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 mlxlogscore=793 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5f93cae01b06..a4fc3657ff87 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2651,6 +2651,7 @@ usb_1_dwc3: usb@a600000 {
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x0 0x0>;
 				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
 				snps,dis_enblslpm_quirk;
 				snps,dis-u1-entry-quirk;
 				snps,dis-u2-entry-quirk;
@@ -2729,6 +2730,7 @@ usb_2_dwc3: usb@a800000 {
 				interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
 				iommus = <&apps_smmu 0x20 0x0>;
 				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
 				snps,dis_enblslpm_quirk;
 				snps,dis-u1-entry-quirk;
 				snps,dis-u2-entry-quirk;
-- 
2.25.1


