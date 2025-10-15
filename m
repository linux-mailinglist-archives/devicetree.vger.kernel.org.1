Return-Path: <devicetree+bounces-226895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8460BDC832
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 06:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D6AA18A83E9
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 04:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA462FF656;
	Wed, 15 Oct 2025 04:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJ2lVrDK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED552BE058
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760503219; cv=none; b=dnAVX3zNwBG2RVrBDvSl3b4NRx5lswPWefGFx/wpxZiSxo9GdWxg+PDU5Df6IboPHTE/qb9Eqd2LTTxxlG542nfqrUPu3iIOCgE0Zp6TAj0pAzmQhLrC9g2ltX7nECsQQK/TJCp+4zz7FJVuWPqnqV0A/YjDto6oWWaxAWLfXrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760503219; c=relaxed/simple;
	bh=8y1cbYiQTm0ZvzWyKT9/o2jMFMOXux3SijiU2Wa3LJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZMK5iqJ3yN8hqk440FeT1DsiCA2bKK3frsoaBblkNvOozqJhDOSpcgkAn7cSlxYyp1yt7uUbkgffhfC2tkA8WvtJnG/QayISXTkoxAITTmpfebgKLZ6RwqtUMTVnT7J9jmI/EXhNwrK9AXgZ4+mSOE7B7NDBfj1rc4bP+z9u0RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJ2lVrDK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sZeL003752
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tCB9nRmhWTH8UllODqI36LPvufsugmltxoeJ4FWith4=; b=UJ2lVrDKFv2mdGz/
	3tE6xJu17u2hUzwgWtYLuS8SgdIWLjUltTlQ7lc7hYSb4GzAkAt89zbcSIWRZYWI
	MstWr+K8ZerCcuvzToMDrInagM+61z7eGbdk5xiO9IMJcsY3ZuehTYC6wklOy3vR
	maoyzkh6juFzoLxZBcXnL00WQVTmEfhHXqgfB/+LuLl43zEGXyXVUQEvorTx/Ame
	fnL+qaVeQeXjbzGVcSlKRj+H8t74IYWCflb8FQHRpzq1vki+PND/UIh7RHujzmRJ
	z1kbjZe9kJn9CCE+ZWvZ8EV8TSY25CJYapBZFuMmCzFroinDTjsUUdtx3iCGIApY
	LmlLAg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd934cg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:16 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befc3aso12271229a91.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 21:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760503209; x=1761108009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCB9nRmhWTH8UllODqI36LPvufsugmltxoeJ4FWith4=;
        b=qpkt90D5VFk7uTuIDdPePHJyozmjemnVrkGMsY2u3CdzCrFxGa8ym/J31iuImoUrvo
         K0y7DysIlWDbfzP8XFC8pI7IRJsl0g//cNutv4RHR/BS7OAvWHsLGxYLao1AofKOYMQO
         Q0cDLoTBcVDd52zBOz4AMPZwj48Bw6z6u+UVu1CND/Io1nVqkMpMJeJCv0ZHRS2UEtWR
         rOEcmXNr3MEhwB2QzdL4y74lwnfn9s+8xxkn23OV+ADKsQseEBkFq08+4rg0wNUpEtvS
         CCmuRRKYmRm+8eA3ktbdmjY/zEbCMwSXPP3qoMW/lH9dYlkwlYUm5oSMePDIxysmI+3B
         yLbw==
X-Forwarded-Encrypted: i=1; AJvYcCXEC+/KUAhsOoicAbvD3raiN0IAcyJaBxaylZIL23sHn/4Skj8dYbTp4BEng3Lution/OwhlA5JXgBw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo4PpXI50HxiASrvYZgwB0GKI9kFIUGCA32G1XVaB7Kqn6Ptgq
	sf8L86+tdxUZC1h+Qv7e4Z/eHYIFZc/u4ONQSsIy6bZMHp9xonzEPaIe+EK8x1hPAvxvgw1VOYK
	R6IBjF8OkQYhgz+M6snhax0t85eJi6R5gD9cm1iwJ4dE5cDDPKuFfNT0Ibv6Se4MgfncRBiIk
X-Gm-Gg: ASbGncuXpD4O01P5mHCyxcS/nX6xRYTiEudrPmIy+AMcV2oqeXWy7qBPcDAfc9UpkDi
	k24u90/gqIhU+eLmXSLCj1QBGlYBh4iTJ8ODgpCTq0bbWlf0h4O5Dva0xbFzpSdUzMTvaz2SpDN
	bd7ICLJE0uXmC/4ylnA2T/nk+oLXSu+UtVUwFRNLnz7qa64GxHU2Ngx915Nm3APPvIJlej/FhEZ
	DTjRdS94G7pVp+eXvNXdZg4Ag4xx/PDgcMndbutATXG/h9U0lUxbTCjN0d0GjArXfg/SP+woYaj
	VkpneBbKftJVgXnrxTOV927y4ZxaJdVIYEpB44KMlE7tdmtymVGi064qz9fahWOa9VZW1WzbAFf
	l
X-Received: by 2002:a17:90b:4b87:b0:32e:e5:a90a with SMTP id 98e67ed59e1d1-33b511497f3mr39789304a91.8.1760503209181;
        Tue, 14 Oct 2025 21:40:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHORSza0VEh/h2tJOvCDq92nr7cNJeRD3CAUWw1vY0j7DXcuVHyWT86lYWW3ht2Z998Hh50Ow==
X-Received: by 2002:a17:90b:4b87:b0:32e:e5:a90a with SMTP id 98e67ed59e1d1-33b511497f3mr39789278a91.8.1760503208625;
        Tue, 14 Oct 2025 21:40:08 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787af5asm705406a91.20.2025.10.14.21.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 21:40:08 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 10:08:25 +0530
Subject: [PATCH v16 10/14] arm64: dts: qcom: lemans-ride: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-arm-psci-system_reset2-vendor-reboots-v16-10-b98aedaa23ee@oss.qualcomm.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760503106; l=1694;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=zMGGltlmXa3IlmXLTQs7IvClVW6N3DVlsizb5HTNzk4=;
 b=mnbE1fUg3oN/AAG5P/p1NKe8wGnyvNaD6robxPZDx8SEJQg4ue2rPIE879MZJ/pNuKAMwNfVm
 Jp5i+BW8zQ1AQWR3vnH1QUsGiq9jzLsTbBy8Pw4GI6Yzjxzkmmz6g/U
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: _YCDutSOVlvXEGxvQ4OeowSxstcWQ3Ta
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX1yfoNoZJFTj6
 ISv99X1bq5NH2nX5bEohimtaoir4KMOxP+dBStsX3PQTVj042E04e9MzLycan+wOFgZhy0Latyk
 brBRkSPQlohvauNr/4jkHzypWIyKe3JWEmIFIxr/H0zkw1nBidFiSQ7I6nyoqZHfMExIuIG0C4V
 57nzPO/TLyXu95mxyC3yMaaPKtI/7067mosCe3yW9D0q3TIt9CVT0kKq6M/Q1/flep47Ywcn+vL
 tBvrd8sRC+DaLGP1VdEnBCy/Gqmjs3AifA2xs0kgby9J9cifkIkCrz5+DB/4rOfq5dAHfiZAmfC
 IkXnn0zElU/XNjMrTsNdqDcTcyU40BwWL1WSMsGqyAlSXLPrzf0pXxM27a4Q6u9dWprmwJiHF6m
 D1pPYh/5U9Wtv6k5CtapJI3JQ5s3QQ==
X-Proofpoint-GUID: _YCDutSOVlvXEGxvQ4OeowSxstcWQ3Ta
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ef25b1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=w06kbW2hXDg5FjFnD0gA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
lemans-ride as reboot-modes.  Describe the resets:
"bootloader" will cause device to reboot and stop in the
bootloader's fastboot mode.  "edl" will cause device to reboot
into "emergency download mode", which permits loading images via
the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 7 +++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi             | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index c69aa2f41ce29f9f841cc6e6651a8efc38690e19..41ba0f4d437727cfe0c51e3d355427f37dce7f46 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -722,6 +722,13 @@ &pmm8654au_3_gpios {
 			  "GNSS_BOOT_MODE";
 };
 
+&psci {
+	reboot-mode {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index cf685cb186edcade643790ba22f6a900beb85679..5bb27665cfa95954543f7a66ec424452ddeb24c5 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -622,7 +622,7 @@ pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


