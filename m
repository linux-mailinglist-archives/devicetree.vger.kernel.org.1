Return-Path: <devicetree+bounces-220042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CA1B91795
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 409A23BEDF2
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A7230FC2B;
	Mon, 22 Sep 2025 13:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ab8DZ3qS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8233230E821
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548532; cv=none; b=V/p7tBFSxfaI8WZyU/Ze6bKgj0YaMADCKUHYi4Qn0DGElOANlyMoUBK2L6PSxWdE6f2Q9jHBuqwYJlKO5QJG5a+CpstHuc8GMeHRQxwlLPErFUh5qOJXuoZSWc6MR+90ZMKVXp4q1eEmjezY7HD7UdytiNJzJlmIzl8OaitkJ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548532; c=relaxed/simple;
	bh=QB4xC2r8HSjzjCt03b+mFUm7g8ywQrhMCL5u9OFpXPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Abx24U4x53PL80lDtJs8fOuqRkftUqP7EPstnGQ31fnQDCwgvocSaNYgCXA+T2PYI2SWfjvGLoU3mCRy4b+yHWr0c1vbC99QTkUMuvQdTA9pVyo5GVz36y+9MclJ2xFPKJISUXc6Zd6V8AwCUCPimPkl23i9s9SbgDwHLiSnsbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ab8DZ3qS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8v8I9008034
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wh/7I9nc7TXv1Vm06bJQFYN7WbWsJIBlNpOLoUHm6eE=; b=ab8DZ3qSguQFoTGW
	kFTO66q2di3b8ZOp1YaEo7vrzMv+514XYEISEu8tFMORASuaVhlVvXIDM7jYv0Y8
	jRI0zqXWNLQMjZWRib7HajrSWUS+11KEKzPO4xoQ4k8K4abCG1iq/IAKsGTmd2bT
	Pvat4Qzba6YaCfSu59iqqO7bblemphQ1CJWgetvHzlwx16aog4ynQUXJ5HhY0QVV
	wmvtcau9tXo0FqDTtk+D/hTEJktJ4EYA5Vm+vwGpoO1fmKJWnOSLwcL8mK00S16w
	YZpidBU51waE2iwIJFhQkBKIFSwNVaH4lSSLegMeRuvdouGAP0ackfSuJc6v7Yay
	GK8jSw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyen660-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ecab3865dso6908832a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:42:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548530; x=1759153330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wh/7I9nc7TXv1Vm06bJQFYN7WbWsJIBlNpOLoUHm6eE=;
        b=X1gPbMIRODBxVuAx+4c6OPH/MeYpuqg7OT8FZlcTjUuCk5WSFSyLMfYNgmCKPfzZcX
         CpU21F8rkJulgevm6byWfP/Wt7+cDctUP3bhVmwMZJBG2CdjDfVLVE5H3JOMeXKKgTp8
         rZtHVrxvYx6MM1E4z8Sfq9gunKeteGjdGqhMLoutHl+a41UqzS9ZVipSSf3TPWJzKewQ
         nr7zx2YBEStKVE3OT/ovHYtfTKjhBFpEryeQvjEeQ1t90VlVq6Sz4+Kyr4bOc5RG9Pip
         iF5FUqhVHaWB7DN0cmilhJNmjc2jdVfD3Uzmpt2LtVqlr1loJCpP1OUNBen7xn8aHN8m
         /G7w==
X-Forwarded-Encrypted: i=1; AJvYcCVP3higpWxP4LF15s/STa/RiMBY0+rGA0Lx2x10HWIE1titItkDtc1btsrBMIibeHj6LQaUCvqTuJZl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0vfIasu5LPh2A4+KD8sdXWNwMwPgxvhL6YAHDxhNZjHKllldb
	PMFzJ2iVCKcVj8n6MuaX37Lx03/IGdiDSqUgjoI6xXVV2wMyjHRTgEZcbkLftAz9zAhOzrtXmGr
	jMuRECX6iWP2juQVY3JCGb5MunvAP/zsEK7GNGEEXygC8AiCm+MlXAjbScYvk+Ib2
X-Gm-Gg: ASbGncsIntzf9OFMmxhvWxM4H1uR5m7kUpcOUZIUkY1POdC6EWEjXi7XLsyiWCZ2/pj
	BOnrH8ldiZGnkZMJMIG0iQ976vFD67TurH8WZWVdgPXJ1F0nZcX6t2wja53xEQAMo4zt4DJSFnC
	t5mkzG4BQeIHb9y8u7dX95ifdbdUio6onEqC4yD5METh6CavGTw3H7nReFhXCvJFGe+QSwyznlJ
	zhSFWln7Wfr8GRMZQnjOa+Vn69oVBO+WgCKI+mkPITP8rJ7/kja7bygJoWibx4bMCT4Nx+zo3xG
	xwAq15UT2/usi7mpEz9tY1217lpdb4cizpiQOuMVdwQYUn5YsrUKPqLknShSfm0+rfEkDbFGrdR
	T
X-Received: by 2002:a17:903:f86:b0:267:a230:c657 with SMTP id d9443c01a7336-269ba447e6amr190098615ad.24.1758548529874;
        Mon, 22 Sep 2025 06:42:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpliuhHBSE5mQTDz2xt7nLTi+MDrburaFwR8LKRa9AbeTGPcx5opIE8WzGuUVQXBbgbn8g4g==
X-Received: by 2002:a17:903:f86:b0:267:a230:c657 with SMTP id d9443c01a7336-269ba447e6amr190098175ad.24.1758548529471;
        Mon, 22 Sep 2025 06:42:09 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:42:09 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:20 +0530
Subject: [PATCH v15 10/14] arm64: dts: qcom: lemans-ride: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-10-7ce3a08878f1@oss.qualcomm.com>
References: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
In-Reply-To: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=1694;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=F40UDJXOJIO5Y2uSSmyA/SwLwR5DxDqZFVD3o9nJtHE=;
 b=rvw3vrmSYr76Z78QZ7Ue0WKvVeCRs7jqZ3VeZ9VGFJkwFAAlLXQ4vd/k5os2ng/2rMWfZ/L1S
 +4jrGqxkOyDDsDg1MwLjnE2Ml+VRwxJrecPL7wUifnKqeiOCbgiaoK3
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: aAC3gu1bI8oPTZ2F7zJdufhRlW-kYk6y
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d15232 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=w06kbW2hXDg5FjFnD0gA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX26XOOmJjb4dM
 S+i+7EQGCzFVaTuUKBnL7Kk80WFJehCTu2wH9Z6CSMe6plWeWvi1GlXwduxC0/fA5vmldw6CEyn
 CcORtavsuQA+j1lHy8sWoAvvTaeW+hekaKQImCOby0ylWn0r7N6boEVo2PcJBwCtAHr2W308trY
 zSwLoYQzhm//+95KiSa8VBXhbPUViOSSSEcEBWfSc69i7/rZd17Sh/uxaqpNrTS4VqHZbmodJqa
 x9cdDkB2NKVagdQlKjRd6EG5Yja4S/si4M/dkDXzzXxiLdOAW/dV7dYG6UPtqyLUfdiFtTA3QJJ
 WClb9aLi8RhFYhR8+Nac9vv9NFiqu1AbpOU4ClPeCRAyTvCPZGIIuz8O6ZzZDy/GJUzwuIrbM7C
 9utOnLS8
X-Proofpoint-ORIG-GUID: aAC3gu1bI8oPTZ2F7zJdufhRlW-kYk6y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

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
index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..586ce54a374d5b3aa9d87a673471a5a25410a9f6 100644
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


