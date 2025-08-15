Return-Path: <devicetree+bounces-205156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6EB2820B
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:39:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 717095C63A0
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E53F219A67;
	Fri, 15 Aug 2025 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H9Zqoocq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E24244669
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268657; cv=none; b=c1YGc3BfKBz6DMgihMlKBZm6sdvowuI/5R68lE0FFLxKlky5erg2INTluQV+6u0mvTmrjPnmhNZaXUXre6/DWMdiw3oQj3DIDaukbTW3Pi88h6VhyFo6mkG+JfquQkgG2dIB4PeBv0HYR7vaLIxfacVyiwrIvjolnV774NDsgu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268657; c=relaxed/simple;
	bh=cDK0uRnpMgSKSIzk24D2d7W3Iv7lYhf3EwNLLYWok5U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BiM/Lp2cRMZHwvgMrlFJl/sm7eINIKZRYF/JGgI5ulAdDivKL8gaYEfdQlgQGcq/eOCzZFDaRiPDG8cS4pNhJN2DGiz94MRxkwnLod8DJs4uuro+pAiUfjfm11rGNPIMzh4UOvw+Kz7LI0ub6Fk8HmQuCoWDBv/zhja8jk6QJFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H9Zqoocq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJFIT022210
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eZI1ulbnp33sSmZzOl/WukD84JC7rm/wreXUDUVjjRA=; b=H9ZqoocqVzOu22rQ
	KmYlkKXCct4rsXUqtMwuL99d67dAemPz3Z4ECLC+DfY1v4FUHx5W1dplPUt4mS3B
	k75VEJqDi7n8KsFPDfJuTBQEXS0IcDQeXwRPZYKmp5n6ZhXSKK0GJiXn4aFJnKzI
	tveMC5u+gh9HdfHrJPWADiDLcMMfrztP11sMbhkKm3OzoBCQQeIrvbzBqqRyc+Cp
	9rY+wQPz5YNHJ4Z3K5tLalxqQEb42qrTPOCGZzhQQAWQtionjqMaxQ3GtzTXBROR
	V7HDgtcgAelaQf9acbhrZx3IQ84kN0avR0bIUAqX9utq8ADIK27dP1qLambGa8Bi
	dfoiPg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmk7sd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b471757dec5so2907532a12.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268653; x=1755873453;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZI1ulbnp33sSmZzOl/WukD84JC7rm/wreXUDUVjjRA=;
        b=C3DJnRAyOs7fMsksVLcBLnxNRsgdUEOTq4trmAHwuB0Nul8wOl2pRtCxpx5OGbbsIr
         VZ4+3I2yBky0L6zsp24eQDURg1nDxxXTZCNfSKor23a5O0qCuS3HmGAnsl+/EfdVGgkU
         OsThWxfvHs64sQ8ZIPqP9m/VqHdzWZ7KgVdS6t2I+K8YcQ22fDOHZVddh7sY+kGBtK2K
         i1UzuZsDowIzwMomzJ7OrfNwRyjhdxSD46yUPaSd7vdAa+0TzQYdLyxqiZsONKrL2yTk
         xNNTYXFp9hLgQfFbKDn3JQO7fa6ZsAdAk3NkFZ+PBGVnrl3bhzynQdmrTCgfRTXpZrrs
         MDLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpWuw9Kma+EK6W0Td6Cp58cQ/J4CoT10pafjBx+wJF6y/GiQr4WqgHmniLWxs7O022xHHu26EGxOk5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9v+ZsI46b1HDXKdyjxPhzVjldA5bkhwPG+R93jplk6/qi2iDh
	mqPbOoOX0sAISEgz717hFEuiaVeUMP1Ugyao2WeyLCILim/jVhYAqZuJf6Js0PznQBGwTDB6mG+
	7Bs2n8JnMz91vVodNX89+3p2VZIKwVGE8KxCoxssw39umvj0tPO0q7a9yX2jB4avbs1vTz7l5
X-Gm-Gg: ASbGncvjxfrKhoX5jr++ybrkPMxWVdhxEQsFmr/1VjW0mElPpFvozJMljY6P5PbKw7r
	KBZKDb/ckuERAAaiqfiSTFinpnEItCHBm9eWaUymkzgumWnj7CL0BEeGhUsGOKm/EygQAzgWHUM
	hQlTtGIKNyWMMU4q8+0LnzpLjkaBu10ZaypEJzt9cWtwEvG2BzMEBrpZJsvmJZM8eUzJCK7mgI1
	vMmdyPvnCZWF1awz+Ufebhc63do+eQi0t2PKNJ0qOvulA3vhaX6H1aBW0q24ar/nvO6lLf3Pois
	Xzmt/Y1t0k/4cmV7VYns9l+hMlVhbotxKta3viU5isPZ+vbWPlf3zKLe/aEMOg7MeQPjEk+QlvG
	3
X-Received: by 2002:a05:6a21:3393:b0:240:1c56:6495 with SMTP id adf61e73a8af0-240d2da1ab2mr3983860637.14.1755268653308;
        Fri, 15 Aug 2025 07:37:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGICSeKOM3amu5cDfHsCt6tTSoS71zRuUcFNv7sC0jlLIlPMtqsbosekt2XumDOgR42afsnSg==
X-Received: by 2002:a05:6a21:3393:b0:240:1c56:6495 with SMTP id adf61e73a8af0-240d2da1ab2mr3983814637.14.1755268652889;
        Fri, 15 Aug 2025 07:37:32 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d73619fsm1437576a12.39.2025.08.15.07.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:37:32 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 20:05:13 +0530
Subject: [PATCH v14 08/10] arm64: dts: qcom: qcm6490-idp: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-arm-psci-system_reset2-vendor-reboots-v14-8-37d29f59ac9a@oss.qualcomm.com>
References: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
In-Reply-To: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
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
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755268580; l=1628;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Dajt+SLbZYuP9ZjHPqwB/7XOdBkGsUiHd4YnzMvhaQQ=;
 b=MEXYaGDuDuUFhmah2GQbSrJ4wEfwuNgDwr1BX5PcCzsPjhFaX/Ovj9lBCsR/tOhqe0QLmR7rY
 mE1K9DazWzSC7lUWsHUgB371f3yxxZgg08tvl3sOq0dw32CLkCKQbcp
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfXzKBh01ebPImB
 PmjoMUh9kVmJB9lCMlnHdRIfLbuufEaZx1WrApA+6jwARRNhr8T+22hFzwe8ri/Si1LSl6Lhr+A
 8ahWYeJ6datMD33EMUcrOrxzGQjSEb3MTNIQx51WdLXCYUzjlQTtxMFz1qEiDFjO4MOydH7lODk
 WrakriLQKWhIdFW9eupGf/axnbqjUw69rvnGjOed15UhVtgay3chCFWLKRadjgx/DVR5GWcvPjX
 wGjQxiCLBHWrIyvPIKVakkurlxjsx6yRJ2KkeJ+FC+jehsxRHKKHrkwm4CfWqRZmtfL82++Bv+q
 zq3FlV8NszG8L+gE3MueWI57QnkOroOGk2RL9b52rIPUpaYwVvIqcHyhT2r361NmEVxsuiWhjA0
 6BLz/qp9
X-Proofpoint-GUID: EyxpR6CjXPS3iGUFF9WjDI41NXqsmi6A
X-Proofpoint-ORIG-GUID: EyxpR6CjXPS3iGUFF9WjDI41NXqsmi6A
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689f462e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=w06kbW2hXDg5FjFnD0gA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
qcm6490-idp as reboot-modes.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode. "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi     | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 8ed6e28b0c2977b831a1f156014eb9d6f70d0243..51d5991a5c392d2b7afcb5dd7726a01ededc199c 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -654,6 +654,13 @@ &pon_resin {
 	status = "okay";
 };
 
+&psci {
+	reboot-mode {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 0dd6a5c91d109c78333f6b90104fa51fcf3bd64c..0db3fab9915b247d3c30d7484625fbd89a3514d1 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -857,7 +857,7 @@ pmu-a78 {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


