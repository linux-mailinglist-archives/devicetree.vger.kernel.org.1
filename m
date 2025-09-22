Return-Path: <devicetree+bounces-220046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB526B917ED
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C336E188B53D
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3435C30F55A;
	Mon, 22 Sep 2025 13:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LH/XyQ6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B324D30F932
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548580; cv=none; b=PYHGpB2DQfBruQiP4nO1iDzBzxw55EPxAbrHdkB8pjBd+6SjSFwfeuuEfBO478tGgIPs+6sp0BYpCtyQ524mpUc0FScqGDx1B/7A3FduwV8a3dUt2WuH5d0tTx+Z0l2hJU+69TeUPn7c7vcNtRu4Uu8sAVe969uI7kP3Jve3SwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548580; c=relaxed/simple;
	bh=q1pRzkuBh9GAg1JcwXGzO3FL3XRWgrlscAgQj90ENvE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f+jPSEBAGVRgvWZ3j4tbSkIK3rD4roxoha2Ej8iEp9DDWa0sAE2m9ohhq3ZosR2HskqxSAERhfvEOTkooeIx7D4diHXbK5MJ9U+4eEwKPQuqKfU0yfFW90WkwGSt91jfDdQhqN6Z+ALqiyVe42qOVkJNFkbpwYKUFBxU+Hb0EyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LH/XyQ6q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8xZlo022397
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gBo9gZrkew51yYf4IHpWDN66o41yYqQF87bJGWuNb/k=; b=LH/XyQ6q7GwQT1yQ
	WeHim8j9V2ZZjHoy2fZAe5Cx+ZEnl/rPdzHLyUaOvT3k/A9g7uRGjHrqPbYbrsFb
	LZh1puTfpkEzzxQKeVJSQ+hHt00Sc9g6Xfs4/wVvtBC7zaf3Rg/UDD1rDeLVKhci
	vJU2/gQBswsLjgqVpUXNKn/mcbZjgFA7Ov2omFTf0PLnoJhuA4I8/SkkFRCuVv7g
	m1ot2UQXTe2Tab111v9dE9FUCleOGeZ1HIAYJZKvl+2KGEJmdIBrDTUUmSGmVvUf
	Qe28XLX2PcKw163ImR7620Bwqzhr3YnuIc1mgD+91TCwSrepoJF8ANUbstT2IFhL
	1JReNw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7sw1sm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:58 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-25d21fddb85so77812585ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548577; x=1759153377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBo9gZrkew51yYf4IHpWDN66o41yYqQF87bJGWuNb/k=;
        b=BQjUasiV4T+3HA3QlvVo0tqvURUMhyFusp4XLC2WurXrMxr+z8+yxhcZCriQoLpVuK
         atnxuOWTpAec1UX7tCGPp/kApK9pOkHLKEKmG2ctDRUrtG2Z47+WJtZvvdneNerQTxFi
         B3qk0rPJ+mPlV2/4kgqtKwz8gBpFsoTOwBEhm9u6/pTG0u9R2jtViKVph5xhvu/Tb4bb
         GEwKEZHcOzfysSxr3xeJkFJKqYkxM4FgcSI/rQhfuwRs15zowXhh5x/VEwxdu/aJY06S
         yayfNyfVwMB6wMZ0nFxbS4Kp56MpkeoORKZktnYM2c+YT10FvnzdIBBzOu71n1d+WRdP
         WKTA==
X-Forwarded-Encrypted: i=1; AJvYcCVg/rXKkWB8hyuOlXPXAnqbnZ/EEYgada8g2id/R3MeAVtut/cfkS91HuZrsPhCuPHCpLR3S1g9FWxY@vger.kernel.org
X-Gm-Message-State: AOJu0YwiFHz9eY6jpCAS8Q/dr7n6rJItEQ8kvKoQrDXMUJC9W+Qsnwhb
	TEhv/KH/amLnEcz9OZjCVwkcH6VSPJmhbBP7BAVGHIWXMoE2Uy12dPOsNtjlMYdM/vBupghgWDz
	+6pqOUhjSFrEYxn4DpuZpInsk7ixgq0IL8ar9ucFJZqhy8RRHiytgZ/oc0JyHHfJM
X-Gm-Gg: ASbGncsqC4diXiuaEaeBRAfGB7+V9uDbtjrKxWrs1GP4kw3gCWM89/ANThOXN2phLKj
	niK7oJLgwMcmXqb1vq8SKUPaR+B0TtRO/0nZGSGlFDkWbQZLPqTUHTr8rg7YpQwBJqvcivkbABw
	UehAnHas+4jvRmqBw82yMyam892DiC+5HuSFI1quwyBwIaaS68I+wrC16q+qV32QtwJK+jm2WPi
	2a2t28aeslW8LLQqaCKoyPirGwjaH8xaLq4E6SB+97mVGg192bDwo+ozR/5tRuXhMG+QQ6XCqSw
	g5nOFVqSTmyAi4xj+ngfgufcbMDYN2uSPMCrd3TVnLuOdbrHSzFKYkNJk6/wfr6DjETidtpOXnM
	S
X-Received: by 2002:a17:902:8c8e:b0:267:bd8d:19e with SMTP id d9443c01a7336-269ba45a535mr124622245ad.22.1758548577149;
        Mon, 22 Sep 2025 06:42:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9BBG97Vpj3NlcI1yrqR60H0FcR5ZfUsHTr+DhIzuL5+cXzftJ2Gp38ot3VHtbSZDVJiXbZQ==
X-Received: by 2002:a17:902:8c8e:b0:267:bd8d:19e with SMTP id d9443c01a7336-269ba45a535mr124621615ad.22.1758548576412;
        Mon, 22 Sep 2025 06:42:56 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:42:56 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:24 +0530
Subject: [PATCH v15 14/14] arm64: dts: qcom: qcs615-ride: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-14-7ce3a08878f1@oss.qualcomm.com>
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
        Song Xue <quic_songxue@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=1528;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=st897fJ7jTPYQ5eppZ6+OrlCOSPDdAnpzJ0eoXTLNbM=;
 b=dx2gCn3WRde0MdcHSdLFfQA96teEFnP5jmCVlplECfz+ZgOkk7Vh9CTblgMabl/rAcdZv7g+T
 im3TWdSIkojClaPhaSQhYBwkef0ZZR4dKCb5SzLOTZbseQpb9mhDVAz
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX4f8NiefYUmCj
 XRCoN6RmbPOGOX1Chrm3jIOGLLYzZiQHsRjnpxP5YO9JFHPqDDMVTdYFSWBX6IbKwUwrKTDfCc6
 kDv1lN6Qoj/qG4lUNlTVRUPL5XRdUlcv2OL/BI8rc+zoQ5MX1YSoAs6unVQpLvbTeqw2H2jVn7Y
 ZfKTgWg3xv01/+rdtX6X3r5a8PtvncCFc0SADhbX9n0dkdMB8vLSOHnM4r/nlb1JqF8hPRm59Sn
 M7exrjeFFy3juTwCfiaw4Jf12tVSzVaYLJ7ZgFBFm1B6No7mj4o86XOhn0GHRxLFmtUc2ikQSV1
 ixe2/NoxTmtUwVviwpjwFPyTtcVpfWX/iOdvfyzhaJEL53VeNmK+G6IgFi+yCnFVL6VDHryQuBT
 0jROKBf3
X-Proofpoint-ORIG-GUID: EfcLgreH_UmCfLRc5h52E9DaN8gJfT-z
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68d15262 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=pkXgoPqwvIc8jTsVjBcA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: EfcLgreH_UmCfLRc5h52E9DaN8gJfT-z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Song Xue <quic_songxue@quicinc.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
qcs615-ride as reboot-modes.  Describe the resets:
"bootloader" will cause device to reboot and stop in the
bootloader's fastboot mode.  "edl" will cause device to reboot
into "emergency download mode", which permits loading images via
the Firehose protocol.

Signed-off-by: Song Xue <quic_songxue@quicinc.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/sm6150.dtsi     | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 705ea71b07a10aea82b5789e8ab9f757683f678a..bfb504db43368fe73ff200476ff5220334872c8a 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -343,6 +343,13 @@ &pon_resin {
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
diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 3d2a1cb02b628a5db7ca14bea784429be5a020f9..9df5e94069f604e5393350f5d8906097d6d01209 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -416,7 +416,7 @@ opp-128000000 {
 		};
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


