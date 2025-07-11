Return-Path: <devicetree+bounces-195656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D69C6B027C6
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 01:43:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5FFB1C864C1
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 23:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5320E227B8C;
	Fri, 11 Jul 2025 23:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gGiwmUys"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D8D2248B5
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752277399; cv=none; b=rIXZAoarlbvqcxWripGvWZ4KKW0j7UsOHRLXl/0Ej7LhF0AmBqMOHq/St2L0mtQKNOrxi09XvomLChYnXNlU52VDgHb6WdvLdfmTvIdI5cRmNjR9cPFowxeHOOMn/mnpzC89wH8Z9bRwedrpX6UYWuEXfKzgcB2mjWjURKjeNGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752277399; c=relaxed/simple;
	bh=o+TxdKplz7IMXK+MXPpI9M1keWjAcNlhY5NAxQmThus=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MYs470sCINFBt8zgWJuGfiAS64Fj8qGu93dYtvC3BdWHlq+6zSN8uOU32NYy71zPYKjLmwzVPQyq3h2hvW1lwDTSERQmXz+pjlc9PSyGgLnazuBT5oCD8Kqyoz4iG/LOdjhu4ifWkSYtS/udwBSqkiQAadWYEziSBguXOQQ0J5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gGiwmUys; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BB49gh012865
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+OCt6BMCpo5v7w/ZAICBixmXIHidhh0RrXTKdHTXIxw=; b=gGiwmUysF5M/RsNp
	QvbJMX3YsNt/rPD53/kEILaFzH/5UF3Aysw692cwQllFe5TI2dZt5BQ3LA4awlaq
	hZlFYBs3olkLuZrGJ7BbhDU4/cIdCcQwhJ5DZ/4H663wM5Fu4tlhvBL2ARm6PdyA
	AEDrKKybErlw9w45qtnriHtdrneHKctfm2HEhQsBTXflP5MjizIESqoh4ydBMuaM
	JokfMzOj7TNshoINkXak6TQZuHdf77nmbHW+EkU03nwsgZz+91kHDtvNsO4iuOl1
	YofSg4i53NWUnJrGv6Ff8dhBQ1w/s47DEZKtFGHRT9oGB6TLIBGjXluRr3cP4m0W
	hr/c4w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9e240w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:16 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-740774348f6so2159962b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 16:43:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752277395; x=1752882195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OCt6BMCpo5v7w/ZAICBixmXIHidhh0RrXTKdHTXIxw=;
        b=B1T+o9RKpiDp6MNHI+Hl7B8HzTZcTOvFMep1Z+k+PxUi4DnWSlYh+DYnMPK5ioO4gL
         5v8z/JsdeH8DJZjFNVdyTMQB4bFICyvr6s6WKiv8XNvIfkXgZaTBbWJncVJK2R7P2Txj
         sKOD+5aF85xFiRTMrdcxPgMTOhN75DM5eybe7blszep5MvdNu1ltNfUFgH99KJq6iT5P
         nJGcbTXcPzcyJy+E7lyjQIPfdZsHQ63dDybVNdEGF7CPzPfIQY1qPmwRfrD6vdmYPrF+
         JuAvx5s6IthpaKyV2AhYaMz5tVRVS3PRewfefOr3ViIEaZOi9il2eKJizneQgjqXPBr5
         iZZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7pPqUQZtBzS7AlxqpsjZN6571b2mU+vPQ8F/3SaYsHHZ6IpMxp4ODnFN3L6uwpCaDn7BOByMCWJdi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2KtChHggkLb7NDVi3ud7ntiaCrBf7wnKKZV1vTbnYkeQDekQG
	xBiKChF5mz59C2AYesK7srqO2kjbhgmqRwyakiCP9anrmNcltj8dFAqIXWX01ksUDFzqDromg6L
	HUyOSyG16a7DIIBqZhqAvk/k/TZLP4dODYV4C7q93ORJ0G/qSGdmz0NxpjQJsKWl6
X-Gm-Gg: ASbGncv8XqILl/yjtXfMh3eXC6MbPToro86iijp8DmF5gZBfdX8rtA1GTTSbFH6zeOQ
	wdLDaD/z1E4vBj9cCvkDMP67IRQTcWDE++oDYjR6iI71lE03FoLI/ldxbFQ40DuWcmd6iH8fZCN
	G6+XRslNXG32ujKPPUULRxZkcicNgIZe5jffykog0mHBbUlkOAlqAM2UbrAJmhJonYeLAUbb0Jd
	h7oBmkrfMOoy6vj88kyEYlsZrRuQeIxusm8Xqt2EKFSkW3NX87zRurNjw0QVih1rT6zQzVpgwOV
	4+afIjYyNU2HzfdQU03qEBYIpdnjJGjyIPhqF0k/tqf7qrQ4/c1a3YCkw0p4v6HO9+RP9v6y9UY
	=
X-Received: by 2002:a05:6a00:178c:b0:749:421:efcc with SMTP id d2e1a72fcca58-74ee0baf892mr5310892b3a.5.1752277394903;
        Fri, 11 Jul 2025 16:43:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXejt1aDsFNoUQC63cutRdVOsMdt5NZCZV6i0r5vMKv23uKSleEdP9WbHLGSbKiYefG+m3Gg==
X-Received: by 2002:a05:6a00:178c:b0:749:421:efcc with SMTP id d2e1a72fcca58-74ee0baf892mr5310853b3a.5.1752277394266;
        Fri, 11 Jul 2025 16:43:14 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f1a851sm5869781b3a.82.2025.07.11.16.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 16:43:13 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Jul 2025 05:12:37 +0530
Subject: [PATCH v6 1/5] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250712-ecam_v4-v6-1-d820f912e354@qti.qualcomm.com>
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752277383; l=2217;
 i=krichai@qti.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=o+TxdKplz7IMXK+MXPpI9M1keWjAcNlhY5NAxQmThus=;
 b=ZWca0Ddc7W5T0rXsIYEqzD9JUgbVM3QMnjkdtO8USzHrEMvozJ7XuYmNl7Y+kfD1Tv2FYNSEw
 S205oL5qy1+AEYJSU4szvvogE6297IfGIGQBIXjZUw4VoIvTEccBMuh
X-Developer-Key: i=krichai@qti.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: ILc62J93qrU965iTALSt-QDOQ-e_Awp5
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=6871a194 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bvY3E1ByFFb03tV5gjAA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ILc62J93qrU965iTALSt-QDOQ-e_Awp5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE4MCBTYWx0ZWRfX4CESRvVZ4+yD
 01cYtRImGuAu/+2dtzuEQHEspGo6m1b3qUWg4RSjsQ/ihaUgJXu7XuxirlW/oVFsOL+Ql/5H/V0
 Gh89XapRSPWkP6X+5wIadpgaFMTN+KP5mORUyP+j4VfZHSWdn9DEqd4fLSIuqWghiP5N4yDuxs1
 j4ePbd7SZRe+TzNUR+yZCnr9OxqmZLXQwGMPjvrF8pSvYB4wc+tUKwRzSvGSbMmkh8Ce0GLkWE+
 mu6pztajqDza491584EzrDa+WKgfEYVZeOZccRIRRwpzV0KYepKmA6kGQEW0ll6FpnOwFzVKGz3
 oNt56rKHr1rgu4h+C1CJE8GfkDN7eAEZ+B4gh2ntqGifNDuugsyiatSpJAMc+4uB+gBhCKDz4f5
 l5sSYijxkhKzofuS7A+Ex1w/w4DutmzR7vDxebUhKb18Vvvtoc79L1jmG4KX//ecAvIGdfFq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_07,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=799 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110180

PCIe ECAM(Enhanced Configuration Access Mechanism) feature requires
maximum of 256MB configuration space.

To enable this feature increase configuration space size to 256MB. If
the config space is increased, the BAR space needs to be truncated as
it resides in the same location. To avoid the bar space truncation move
config space, DBI, ELBI, iATU to upper PCIe region and use lower PCIe
iregion entirely for BAR region.

This depends on the commit: '10ba0854c5e6 ("PCI: qcom: Disable mirroring
of DBI and iATU register space in BAR region")'

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index b1cc3bc1aec8b769021cdc25c8d66845e7bebe70..def0254ee0b6ee78153b9b10f534ddf8d6f1b50a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2202,11 +2202,11 @@ wifi: wifi@17a10040 {
 
 		pcie1: pcie@1c08000 {
 			compatible = "qcom,pcie-sc7280";
-			reg = <0 0x01c08000 0 0x3000>,
-			      <0 0x40000000 0 0xf1d>,
-			      <0 0x40000f20 0 0xa8>,
-			      <0 0x40001000 0 0x1000>,
-			      <0 0x40100000 0 0x100000>;
+			reg = <0x0 0x01c08000 0 0x3000>,
+			      <0x4 0x10001000 0 0xf1d>,
+			      <0x4 0x10001f20 0 0xa8>,
+			      <0x4 0x10000000 0 0x1000>,
+			      <0x4 0x00000000 0 0x10000000>;
 
 			reg-names = "parf", "dbi", "elbi", "atu", "config";
 			device_type = "pci";
@@ -2217,8 +2217,8 @@ pcie1: pcie@1c08000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
-				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40000000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>;
 
 			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.34.1


