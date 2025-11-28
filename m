Return-Path: <devicetree+bounces-243010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938DC92637
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AC99B34D161
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1823D32FA12;
	Fri, 28 Nov 2025 15:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m3P8P2oh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VlqqHRj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8487532F765
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342124; cv=none; b=ggmzymu9SDLQGNgTBy+CaG2SEIefPxXONR4ANNxhazUxsmbFTG1R7yk74kxNTo3oIBwkha7HJ7p9UET1hzSSRKW5WE7UaNsyaZSZQzpoT5wKAv0Fc4BC2VmG3cWWGGHb4L+C+Gdd1ErghckCRw6KnuHk38kFnpedCcHe4PBoRv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342124; c=relaxed/simple;
	bh=UU33rsjB6cwkxiQZjs9flKSwaQBjR62L8vGfNNoDXYE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=RrDAA4bTdihNkj3T37SfA8Y8a0k7Zjfyy5bjb9TV5eTeloIS13U8QMjO7PgS1/HdS1pWjabftauzRm1N9FUH3R/z0oasoCDkophj/jAfrfjpKvumqs3+CC8uDz7WvJa5n5BvkYUzAqykIMjPM5tHGsG7otJ1Hei1/Vg5FGCYtLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m3P8P2oh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VlqqHRj7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8O54A3476490
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:02:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=poPZ6JaN1QNodsl/vhNAHQ1cQ2m75xykuLF0QgSfxXw=; b=m3
	P8P2ohFmef2Ja/2/+q2JtZ17oPf1GLNl6AP+1MiloBWs/7PLA6tOonf3L2Qxb2Q+
	dt1ZN5LVqBemcqo8yoDx+gS/H14NdSGrdizQh1I+koTHNnqb5smt93IuhY1bdnyi
	BxpTWQ+xC7xyAphoxOR7Ht6M3oiPzPa8bAuhJ/AcR0Q+4o/g+/ZjHc6SdaEUstip
	UQQtl4cDJLnLX4Qw2MjSHdWG2Gg8l2LuyHs9VLpViN6TVuHskGkHxRK6e4UiSJll
	32dTdZvI+36savujiuWiOg176qrNiEl2+Jm/XoaGJ74EyyMOrIzWii+yYgd0RN4f
	8+QzpG0G/WOQJG0lat6g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aptpuas00-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:02:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29b760316a8so21854525ad.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764342120; x=1764946920; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=poPZ6JaN1QNodsl/vhNAHQ1cQ2m75xykuLF0QgSfxXw=;
        b=VlqqHRj7PWZjgQySBwoOiEP/nExUmfmAlYqRhBd8LPqYlu0JvnR4aPIDorryC+bmOn
         o6NlpwsNaGM1zgeq2qRTfEooM7ogwO5s6erjxIBeAoU0UuWAAEjxNBGMXqWrMZQemfRZ
         t533OMH6eOZl6U65p5yu96AGgfNrdUIOAPTqXYLnd8YRCQs1l39B2IrKN2iM1wr/I43f
         dH4auKXMXn3kk/YonCjMqfQXyn+jOMOElGFCUnHVtJ4Em4viEk3LJ1NsMcibX9tIsJ4m
         NwN1N1wtNqNX24pXiE/ZhBRO6GET4uDAUX6ylV7hgWtvlocC4z3XbVmX/xK9+MKf9yax
         hFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764342120; x=1764946920;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=poPZ6JaN1QNodsl/vhNAHQ1cQ2m75xykuLF0QgSfxXw=;
        b=v+V6wXQVCiDVaRMdTEAN2kbciSqStIoZQVOIhBrzOwbWuXo+YN4/2QYQDfZ6Z/o7TY
         RzF8gBnVC1iyFYuW90LAfImDX6l4tlq6G+1EnHAWKmYioJI+Q8LffotEMlnzt+zXE03V
         R/Coz0RcD6Vs27wjtS0rzEc9lvpfWmrDl1lZ3uLws3SM/OTCsioiiDZ2CD7fC6GZbyt4
         5Bf2bzIqvdG6P7h3D9qTS+Tq4uHzg/5ehdFhq6wOXYHidixxJUiByEUM80g9MIbRnReI
         Cha1TcSGBl5ncFE53ZfuCk4AFApjFGtteijOOQmvlakxkm85E2H8qZfEr6Leny7sPdMP
         XQTA==
X-Forwarded-Encrypted: i=1; AJvYcCWJyTanNYY7g96aqfJpdASffMTFc/llj8sJfp8u0lpmwbu/jv9dwbgFzi9WE+hyvmLY1seC5zY4F8lu@vger.kernel.org
X-Gm-Message-State: AOJu0YzuD2x/YPfLe9+NDKj0ZW3W6QBw2oM5GBtlkwTsaz4dNDrbCYkA
	Kg617wz/fQnY52EvOSlvfKUSBrMICqGdoRtW7ge6CjMDRH5FvZ0+LqbIBWO7qtO3jsbTfBB/hHt
	Hu8qG+g/prnCSOjy5ZMd12w1/bobMy01d/rESg5L9jxBK1btvkmXA1Kcd5pWOGwiC
X-Gm-Gg: ASbGncvOcd6ifQ85yhlS86oYblDJJCyv3hmxmQEop7PDfUCpTlOUc3UvNQfpmUbVPs0
	zme67RwLMUJolPtoOC2BFW2RY29yRP3+KWadfxtqxjxW0fg7bYXy+4DScSTKnUSGvlGe4Er9iGY
	uJoq1WLajWjW8zCuH1OJeKl09pdaOtuP9At31V00m7GqkZgAmQqRWvT5Z1RBCxNmeQ7VuVCs9qI
	9+TKgVFRNQxma52lpV6ZGxlYQd8jiE7V1NCNnCpvrx4uHNVxYCABEZMxxBGIX1XRlc6Mz/tRiiA
	HVcAGhA7Sn4eTp+nFculRxp5SiaaQSSk8O52arnnnZLz7MXzjZFT1mRQKv8BMvsLiXHK4FEy3T7
	rbTwYkWr9VZAnonDZEpUUnd548G7SlkFEP+M3siQ15GU=
X-Received: by 2002:a17:903:2349:b0:296:3f23:b909 with SMTP id d9443c01a7336-29b6c5767d4mr358754305ad.39.1764342119359;
        Fri, 28 Nov 2025 07:01:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFW3/L7cLZ+hDAXvD8QfActpsccZMuajQkivaccixnsOCM/x9NoRUUj+OFFkquvpAv6OgjhJg==
X-Received: by 2002:a17:903:2349:b0:296:3f23:b909 with SMTP id d9443c01a7336-29b6c5767d4mr358753595ad.39.1764342118720;
        Fri, 28 Nov 2025 07:01:58 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb7cf89sm48930635ad.99.2025.11.28.07.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:01:58 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add clocks for QoS configuration
Date: Fri, 28 Nov 2025 20:31:06 +0530
Message-Id: <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-GUID: E9jkijcEiKqfQov0-8vv-snVfeJwkh2p
X-Proofpoint-ORIG-GUID: E9jkijcEiKqfQov0-8vv-snVfeJwkh2p
X-Authority-Analysis: v=2.4 cv=WIZyn3sR c=1 sm=1 tr=0 ts=6929b968 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=lpgrqeBui4GLTciQF88A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDExMCBTYWx0ZWRfXwIZtwElk9Ize
 +hcX5Wfgo9VH8xQeuevKmPdCADpTDzuaHxV6PPQC6DwZT+uCKq58tBeDpk4PGWWpsGeQEty6tZ4
 CzVDRYoPLtR6Q/R10YatUTQn8Qz9p18MQxRY4uAl7wyGMGgfViUMA+fb0MDYVULTT3pZwz+WDR2
 VHJ/7WkNGCTHNcpF7JaPWElSY+E4jeZP35sH6KzzyeO1ePhsZOgLMS/t91S1i/9Mpmr0hlc+FgA
 fwqQhNvhxFZst0idNw+1LP91e0QNAEvMV/J4jGvyA0/DYeZG1orlGTFTtNvYgPuQ6ZxQYXlhp7D
 DAvAJ7qvFJeS3SMke6pVIfe+M5xxBMlvvVu2asqoBVSugvi2d9WwStRqeXaFpJJHLo8DVBJjwsq
 X00QzRUluJkCm5tMBZ3pnjz3Hej/tA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280110
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add clocks which need to be enabled for configuring QoS on
qcs8300 SoC.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..6139511ea525 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2226,6 +2226,10 @@
 			reg = <0x0 0x016c0000 0x0 0x17080>;
 			#interconnect-cells = <2>;
 			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_QUPV3_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>;
 		};
 
 		aggre2_noc: interconnect@1700000 {
@@ -2233,6 +2237,7 @@
 			reg = <0x0 0x01700000 0x0 0x1a080>;
 			#interconnect-cells = <2>;
 			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
 		};
 
 		pcie_anoc: interconnect@1760000 {
@@ -4560,6 +4565,7 @@
 			reg = <0x0 0x9100000 0x0 0xf7080>;
 			#interconnect-cells = <2>;
 			qcom,bcm-voters = <&apps_bcm_voter>;
+			clocks = <&gcc GCC_DDRSS_GPU_AXI_CLK>;
 		};
 
 		llcc: system-cache-controller@9200000 {
-- 
2.17.1


