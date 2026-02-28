Return-Path: <devicetree+bounces-269558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KQ6Ld7oomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F01C3206
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CE303067B08
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3420743E9C1;
	Sat, 28 Feb 2026 13:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JkHbKbcG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fsY+FJVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC0443E49F
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284101; cv=none; b=RYbiXED2m0sVI7MX5JggqxmnQpJIXNemVvXhMwqsY5YyHvBhXs7w0DLBLITmpz2Vber+Rz1FE6r6YQxaTvg3QaAgpRYBWt9OuFIbOigPWglbFqCItfX30sVZ0KjI2J7uxaseW9aKcKBxzRLP/mEnYRn25Aj6m5pvENdlMVjIhVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284101; c=relaxed/simple;
	bh=QYBFbOz9TiMQxoHQtRM5/kLIez9/KH1TUS2fZ8GLZp0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y5fZGB8S2aJos32KOG6ND4rszVjmtgEikbMQmExiMJYX4joov9BvhrH7QJmAqIerQkOXAAEhtTMSMnviJhtMplxbnxTYueW7rPtb+xj60E5p9GWOOE1JfB/Ft4WqoCmYDh6ADD6XZA9fvceu8H+jbvVr0INNZMu8E2IDbCRroH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JkHbKbcG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fsY+FJVf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61SCLU3G067799
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nOs9PR2qqOHj15q9IFPpGhkkcvSZeAVnHLJV93pHR3Y=; b=JkHbKbcGqMJp/t6o
	z0sLFDUFCQwG2RG7PxXhXJU7eX9u6kS3trNATgbh8G3L6fjqLkUpAmMNL1WC8AXF
	wbO+/RXz8n6RhYK1Zo3IcvX9Eb2U5TkGSo4gNE/DEsxHLW1HrGlT7/GF7t1sCAo2
	4WbGxVkeIJwOBHusfirmsZyMCjwGMolJUwAIDfIbqsZVoDGLTi9Rqd7lyYfgv0Kq
	Ss83jHoVttj9CwrrvPYdUSoQJ99ctk+fZeEPX5GHntv1z7/l20VKMdUDpJHyiths
	GbezJm2Y+nFp+/H855Lr1gV5+xM9wSl0l7L5jol26XSKSoWx8gQdlhnExlcj/Rom
	c9fPZg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6gw43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad3380076so21835255ad.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284098; x=1772888898; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nOs9PR2qqOHj15q9IFPpGhkkcvSZeAVnHLJV93pHR3Y=;
        b=fsY+FJVfWxJ3/XCzPPsyORhUTnhDtzgpzhPi8HpBZi5quo3wKIFN6dbxjhJRK+nMEf
         OE9ruAFXwBJGr3YhCvhhhRobeyZ1ZNKdLKmViv9c0qWx4YNxMWJbPeNb13U4GvWwr/rN
         yWriB1Jo0jw6aB22khuYMbwPEGxl5Tg5j3aDVHAczauhAix6KagyX6EOakDofdEdopbS
         zoLrafG96xWXhLXIqcwwzpdJD6obiRFkYpGURu2GKAIWPwfWlnguu+sCN8PXate5+sPQ
         lkaDdW0dLqBOw2Cn1CmFyPxPduVE+9r7Vetxd0dKENg0ZJ9egHPKKF2znMhz4eamH7Pa
         72sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284098; x=1772888898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nOs9PR2qqOHj15q9IFPpGhkkcvSZeAVnHLJV93pHR3Y=;
        b=MXTTdkXdCZYbNp2f+jz4jMvPwApdgau2UI8JwijlDzXS6YyoxsSM7crgu/BfQZdgIT
         uFcauqSrwwTUtEAsKrOIRx2cgXhVxDG76/MRxB+HcoNf4Ur36QDD5v0e6Cwh7fppVnQm
         SpWWz6WRsh9AiFwTP/tgIuA8Xr8EDfpjUbCVObpUERG4gIoMEJx9D3gngZaUPubCE6yX
         x40zg9nq81K+d5EFycXZZEZg8KXDNIrZwKmTnnNolTtye4i4eWhGeS7LSRhVp0o/h+Mr
         8s+TfRrGRj9cNM4LwaNetzwaMQT0YS3tg5VxA7uYXe7T4z59tcLEm1qOL2h2Sxxnq8GV
         bBbw==
X-Gm-Message-State: AOJu0YyABjva8mKV0eFDy8upX2fMRwzxgKmmeAjbniwK4YTxsAwYSa4d
	vBv2ABBCDRc2MZSWtpihk63q1YeadCWuiSmQ3zOKOh5hVCwWluJlmHEUNDzI12d2SHPp2iJdSlD
	d67yYoncpJI/Pw9bGSvQQnOkVHI/d0St2si3M70gk5pr87loYX0vxwlaEAxd3tIjw
X-Gm-Gg: ATEYQzwuSvuqJhBoflHWcyrH4G7oFErL5GdY+dmOMZpeT0g/uOWLnCt64ZvMYI5ErlF
	xziY16WNuEREy96mKnQcmx123xsK4v3xcIHPG0pvbpoJ4LtMWG3mo0CZJ9wB57GBs3kb2+L4WJI
	0WRJ5caN5cQWbqPWLyPRN01y27GjvJLO9oeNwIqoTPWNeBOHmJDdtL6SDVMjAe2YP2LO+L3Anlh
	LlhVezSGQxbd56Pv6pVycV4c3Xjup1JKSyp4xQqwl5Q3nVsn3mHyfUT6QVg+g9cK3dB2ltuqqZ8
	+MKkQg1XLdDOTVYKtLnQ+F9jegBnUI5LhGpWBT7VFL+WDNtAZAS0VOIbBz/VA++e8b9IUySvzuC
	t6DRvNbTlu3I9Rphhvz0s0LAr90JiFCVs63+Oq6a2RheNfW28C7+fSdD7gEFy11MdiAZkyM42N7
	BSrdo6w0ZtHr8RI5ZWa5Qsz8C1oWB0w8txYksxeQUBGqjpN2J/W2W9rRIZ
X-Received: by 2002:a17:903:2c0e:b0:2aa:e47d:e3b with SMTP id d9443c01a7336-2adf779a7e4mr104157685ad.0.1772284097781;
        Sat, 28 Feb 2026 05:08:17 -0800 (PST)
X-Received: by 2002:a17:903:2c0e:b0:2aa:e47d:e3b with SMTP id d9443c01a7336-2adf779a7e4mr104157485ad.0.1772284097334;
        Sat, 28 Feb 2026 05:08:17 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:17 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:02 +0530
Subject: [PATCH v3 3/6] arm64: dts: qcom: ipq6018: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-3-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1215;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=QYBFbOz9TiMQxoHQtRM5/kLIez9/KH1TUS2fZ8GLZp0=;
 b=L4J13fODHMSDcDjw9bFyfBmLBlvTVCcHiMRSghuWlInx2nuTxjFcwTkt64uYvR75+ZrCOPBac
 51kH33ZhdtiAancYjOnJhGM2G7SV79NCYXY7Fge1e0XmiuKd8mGKHQu
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: Jb0Jl5_chPEbEp2mvXBMMd830cySE4Kp
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a2e8c2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=kuyrhOGAXNEpbtS0LE4A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX/ZEIsOwNjfLi
 iTh6MWFloAdMuF2eqAJW6ZCeMZY5IoGbprNCqPkp+YChfgi9G1i4WXuf2GpEcZen4gyRZJY2adY
 qZRq5t054A6PSPnpUrnu8HPjk6GWzx3V99o1Ce/HhF1/bj0QR5edZHphNqXoIOP6P/+/nw4aDS6
 gl2QKjqPzaYJ7AOHekSOgC7zNFxl+kH6scSjsGIePVBY3cFQOqK4+SOAqd1/bnNknbkoSI88lb1
 S2AiGhXAcIqkxKBm5poduDe2a8q/4QpKoAU1yEwkO7v9IwMDTKFGemK3SCex76l6+CNWUKpZvKy
 76r9mEbf5kEPBg8G7GGGu5HCMi5bvKTZ6DoQrlV668roQO37UVl4HehqqTYVnHgRCQVXaLUHAf5
 ivSl4s+LYgyKHtjJiVezgByQbOETWBRVivqd6SUSAtUTXE/jG/sF90W9BRPeRZVoAcWkTC62ust
 NVOjui8JOBPBva5+5JA==
X-Proofpoint-GUID: Jb0Jl5_chPEbEp2mvXBMMd830cySE4Kp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269558-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,8af8800:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.131.57.192:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B3F01C3206
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 32KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 40f1c262126eff3761430a47472b52d27f961040..7d6f1821fcc8809c643ce974380b02828b438b90 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -659,6 +659,17 @@ qpic_nand: nand-controller@79b0000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq6018-imem", "mmio-sram";
+			reg = <0x0 0x08600000 0x0 0x8000>;
+			ranges = <0 0 0x08600000 0x8000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb@8af8800 {
 			compatible = "qcom,ipq6018-dwc3", "qcom,dwc3";
 			reg = <0x0 0x08af8800 0x0 0x400>;

-- 
2.34.1


