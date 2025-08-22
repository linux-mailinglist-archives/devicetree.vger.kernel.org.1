Return-Path: <devicetree+bounces-207929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B6631B3131B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B13F1B63249
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22BE2EFDBB;
	Fri, 22 Aug 2025 09:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aifvqgzh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DA02EF66E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854874; cv=none; b=dQyaYNXGgSg7daA0zBMHEeq3r86dRhFT99qwOAnXcF94suzXXQU0+EGBI1V6SQhDCUOf2/cZysqumxU1BMPpk/Wr+FIbVCkLN+WOdVwyz2MsnNLbimpDXeMZ8NEknEQiiDDS1P/AO88JbWdgBwK/U5RXtM3BFEsTs++DOAzHFB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854874; c=relaxed/simple;
	bh=9CBfmxAvq02vasDOK9GiRt9O37eldSDYJzZR+Ih4/NI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dyHTg9WnGeeDH5JfD/iiXe4JccG2snJzlUAIbXiEV7Wdg+n5VHVpdMREYHZQd04bkzuUkPIRymoz6Ev6fmGXwYLyx+NVqbDyi0pMKnvpeN3MU8Jhu4J75KtnhwpaTfupT4HpNhc4WW6VaPUqUNBY9LtZY2e54q1RcYRXAzVoBNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aifvqgzh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UlFU029672
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q4BKfFv3tKNplKEqotWZto9ii2lZDoPptOc//ona8r4=; b=AifvqgzhCiOb2XJO
	QxQOQRL4bKx8YbTfZI50fNgjK/uOAf8cNhPd93U4yR+k/jqHTLEk9vMYgDhZv+KI
	oRU7w8cbig3/dX+GOr7O88VZKSeG+vUdZiJcLu6uBfQd8HEXI446MMCf+zmQ/Ip7
	SHSU9evdievigBs4JiDwq5IDdgAt4gqAbwSvJH6+m3crZaMcMD9KwzywnI59EfPF
	MzWR651S0y2+yrnuLPmA1BcTomJRnkn36HXuto/L0SiDQYmGCj2V8IXsCVyVZ02A
	+tQTRNuOwCmi5aq9rQyKNrW7c6Ad8hDRHvOfK/XsFw4gTSjGk1uEWFH4/l+8hj1Q
	kjT8Ew==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52crpb3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32326e2f184so3381661a91.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854870; x=1756459670;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q4BKfFv3tKNplKEqotWZto9ii2lZDoPptOc//ona8r4=;
        b=Rc2AIBIs9Nppnd+EDhG6KLgMptVQVO9cmN7bOFA/88KcPGvBxEHQwaLiNs4CIGitZQ
         JgVQPgcxGUlz4MCVuVuxyd03hzsSt1vMcs+UnU1kuQEZTL9F1q9NN+2q3xgj3yldjuxk
         ra5W3jrJLUfzi5XYc5XLy+TNBdEz5fzcwvzHNLHMMe+mBZvdZaVz+TJX5VoeMYTtr92f
         uGOcNkTMh4Hl5V23NwTt4QotlZJ+QlVQr2KznKqp4BpnOt3h2TesfX9I4J5ekH78uXPN
         S3C+TUXzRpVAfy46vfPYkRm3NhuoFNlL+8PJFZvnMp4ZhqTNNvecSCV3KNMpYc3zjF4F
         15ww==
X-Forwarded-Encrypted: i=1; AJvYcCU0+KJcpv39UJ7lA4FfrGGivC3VS0YvQqlJjoD2nP8UDY5g0I0K/QEZhrwgaS8OgUoX/OEraXP2+k/p@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxfs7iiI0O+3KgEpRI1CijhkC/ER+VBs098d4popIsClpS7gpg
	xAp9VtedfJb9raFTRt36dnwewU811Ym9RtB6pN3TT2HnBYddngIsWpREK7BMQAd2b7L27Ek491w
	9KX1yDLYgCo+8oMBcDCfa2Q863JDvyG6xyXQKv7+70a9Fg5XO4szuUsQ7esbqAbjr
X-Gm-Gg: ASbGncsc0srvGLrp6G05F+aMDWmNHNT1Hzt00FJVsoGh6rBiQESmZHNEsskuFzYdTXR
	jsMo37tMnpVoIo5xxhmJun8jq6ihcyja94oqAUpVhvnHc7+awPjS90Oc41NYjpuKaqfL5SZPYpf
	kuh9qb+nUs1D0ff9rO/T9Eo0P26x+9cXC4Y0v+3vVqXHJdluiR8p+qaw2h3/OkVxI4OVUGtBKg/
	ex2NJFzCSaaBSnDUp1kSqp0SJ99lcCGHMqh3ORlGx6A1hkUTMU8fodU9Q5IQMUWGdXGW9f0dp8b
	8mw2FXKloAyCoxxG6KUv9aipUDRUw2+F0ZIJmyM97DgsQNKcH9ypzc4tXGNmjELYcDiHsBCu6sk
	=
X-Received: by 2002:a17:90a:b388:b0:324:e4ca:136f with SMTP id 98e67ed59e1d1-32515e41261mr2612526a91.13.1755854870504;
        Fri, 22 Aug 2025 02:27:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIlK4D99AL3hLwtqlCeMEf+I64b5jD9J4a/BKrHbWVevdo6V+xZVWh6EFFsUPnS1bL4GOKWw==
X-Received: by 2002:a17:90a:b388:b0:324:e4ca:136f with SMTP id 98e67ed59e1d1-32515e41261mr2612499a91.13.1755854870048;
        Fri, 22 Aug 2025 02:27:50 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32525205d1csm549417a91.4.2025.08.22.02.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:27:49 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:57:29 +0530
Subject: [PATCH v7 1/5] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ecam_v4-v7-1-098fb4ca77c1@oss.qualcomm.com>
References: <20250822-ecam_v4-v7-0-098fb4ca77c1@oss.qualcomm.com>
In-Reply-To: <20250822-ecam_v4-v7-0-098fb4ca77c1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755854858; l=2217;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=9CBfmxAvq02vasDOK9GiRt9O37eldSDYJzZR+Ih4/NI=;
 b=TuRpqCqsTiw7VmBmKck4eZ43pIeiO6WcMzI6tjMM35Nt3gw9jDIMfztWQFJfYAh6RlOSaZcFw
 b4yJDbP1DlIBnBLx8WypcbFATIEZKF6LhMKUvCnNPmKp6R4yged/F1T
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: ho7bNb6mETf-jAzXYQJGFaomnD1zIaRg
X-Proofpoint-ORIG-GUID: ho7bNb6mETf-jAzXYQJGFaomnD1zIaRg
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a83817 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bvY3E1ByFFb03tV5gjAA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX1+hyJY/ZBBn8
 x7HIgNOrgWh6cxYLKY0+FKui+i+W4UarxNzeC+TXDRhUZdoZDibm8y1Xtuf4gTRLsTMITZ6bXQQ
 TsYnpRWgFohyHmPmYVMUBL7ExRH2YrRiyN8TMy70cfnpjTzOzzW9G6qyVh1didsmUy/N1FlotPH
 FhvryjqaXvua9Fo8lW0Jgy3GRbabcbGmDhgsGXtrfGLU6swTL+hoPoYCj0eomc9ayiKFpZOX/6B
 nifhKGk1RhqQTPeub9ud/1MMrvvoDwwyrCQBtnXb5pcmbF/3+S9kPE4Xpji2TTiRyOwME/lNlX+
 TchXWIUULLB7I6XYNG2eSMOoFPRt0OUgDAKWU9YCSxiaXsnmY404y23nnCJNv61dNgSKXUDLaJO
 a2AUi2ofJpPwonVmt9oph/NaAHIq5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

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
index 64a2abd3010018e94eb50c534a509d6b4cf2473b..36afeb2e45937f8ad301c55caf296babdb499820 100644
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


