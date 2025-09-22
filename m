Return-Path: <devicetree+bounces-220043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34092B9179E
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:44:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E29573BF070
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6541630E84F;
	Mon, 22 Sep 2025 13:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OqFk9OyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E117C30FF2A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548546; cv=none; b=Ogb2bA9wgWlyGXXCE4qtrmiUP9RsI/+vF/C9IheY7ul01PD5JRcfbsS9VwH55qWdA89mO/6yZPDyeTQMo2zv7XINofD2DPcTnt/2ox3zzgvHDCq4snpEqpHcwJYM6pZgo+t19aS6No8unggMXAOfS60bvEePOnQwbepCzz9YoW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548546; c=relaxed/simple;
	bh=1jBpq+iZuKpAQm2NP3JS82veq+AIv0X5C7ExNAj56cU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tz5d81cvyJUyXARPwapM6w59PEwsmA4raGY7kxEOIRCC7jX3Q8/mve8125ozGIFKGja9O13L+HZY36lunM+H274ba3DUhnIsM/bYEfkCMRmZaKXyZRfIWA8brHDuIhaR8DJWGY6LLdsLz3bedKko66hAiHwC2U9VTkCvm65c/xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OqFk9OyQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M90cZl023579
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaEbjaznfRKEBXAo6DFolWZjwipbscJpuOwEOXljFb8=; b=OqFk9OyQD0bojcrD
	6CGV3Hmzs4zqpcpHvCAhRiiLafSENQFuOxR+rV3JrKvWvMBzpauFacz9A1ZcXkSe
	qfknBiEnEzoc+4Uf40SCTH3QgfT1ytxDAuBiJaXIrzxlWpWVzEwVzfdf5J/A/86E
	I1jUbjUsuTbqAgDM+hFWa0r5+0cNwP+1IpFzNVqXfQyC2B9o/JLaRdLAhWaZ/v4+
	6SRAjGYgLuEh15shauDEKmNAdP87bvNxQvgIcEWLxks7+sWruwVpkcmyrugwg33L
	sHUgd6xxi2xv/S1WB3ZfY0y4aSND8+/uj6rUht5q6GGNI7AMAWkQaQas1bOQrV3x
	z83BRQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhmy2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:23 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5531279991so3362024a12.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548542; x=1759153342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaEbjaznfRKEBXAo6DFolWZjwipbscJpuOwEOXljFb8=;
        b=QrBvFXWi0FMBcedzRE+yMSQV04NYcY4AGMbC/tbc/UDPMfIDDZvb1N7RP7wpbUcvCC
         0Qkxxe7eJ3Hho1SwiXYLaxnrqyS1DnG4AKd4IqRXZiwWnInJ7moUm10qBzgfQaF8bwKW
         sYD8cIaA3NuKt5nomVlXEoC1/tNRsfVeKQwsq6j1riYy68drRDORWTen2EJ5WQ+7tl+l
         wsRztZ4LPsIK6kWjCBhxsVmJmy7HpHF1w/9V0S8QiZGCJ5DuRUomcfHgbGK+fLepUuFB
         CrUkbxN4Z8Ser4HAwie47PLjEWtHdq22DZS52iArpPErAftfrcKaRBxP6F8vMLnOclFG
         7kdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqNUQfpOWR0td4MaIZZLqsT8N0cSUBiHo95vP6UfbC10rLLRevuFdydgJ9TPjHFU19VQySzssevUOj@vger.kernel.org
X-Gm-Message-State: AOJu0YwK7Xzm4LKkWwwpdftnmB4TYW+aM0tcEQ0EMfdtfRnxhmkgyDFb
	Ob8s0N2Uy0OwIAtvmAlQhD0vNC3qbje++nu1xxoVKJdlkKV6Pt08SuPfdkkVyKQFoq0tvv9gOcn
	uAZ2lDw0xNGBTwOtnVRLWpeB32GC/w9zNmR9aWyHMZG95elk+txNXJ1BRvQ/YXrW/
X-Gm-Gg: ASbGncv6pNIKTj9xY+KspNzDJ4t4SMTlKGBTHX/xF1LKngtT1x1lWCSa6dHG+pBUzRc
	jgqcNwuXzpAfv7NqwgcTnt1sZ0z34dewOdRP26jr/DwmFGBVJVhPtK/fLyI6OKyDb75YfBV7Od2
	/5jOBroJDvxj2avmZwmuerIBwXpBe/QzhaRZcAG906dpFgDeMhcRpisaYqyP/eezR8jmsjhB+3a
	ieM+IoVvXOTPNNWD9q0hYLy7vfWwJb7PAMvSI9/aUwCICH0BVmGY/72izoF7D0mgrC4StjhFruP
	UfHyiunyGPfE7u+XWEldjk5A1W2tHjlXisu47HBTKO+AJoSdxkD5Au/z7esDIDaeyCz7Q2ql70K
	q
X-Received: by 2002:a17:903:40c5:b0:24c:cb60:f6f0 with SMTP id d9443c01a7336-269ba5892b3mr158901215ad.58.1758548542352;
        Mon, 22 Sep 2025 06:42:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYaq8oly26Ao9AwkHXBiB7SkRKPK/ArZ104vPbq6lanvIWpYVCmWpjrPeli8srR+MQ0I6aZg==
X-Received: by 2002:a17:903:40c5:b0:24c:cb60:f6f0 with SMTP id d9443c01a7336-269ba5892b3mr158900825ad.58.1758548541893;
        Mon, 22 Sep 2025 06:42:21 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:42:20 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:21 +0530
Subject: [PATCH v15 11/14] arm64: dts: qcom: lemans-evk: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-11-7ce3a08878f1@oss.qualcomm.com>
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
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=994;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=1jBpq+iZuKpAQm2NP3JS82veq+AIv0X5C7ExNAj56cU=;
 b=mqVVIESE4qG7LRS83vpCr3o4bWFn4SxgH4lxwuXGeOaww6B7yxmQGhmpCOj8eRJuKPkyfTyrK
 /NYlyvyI69bBCqQIJAx+wnZ+vdGIO/1FYRx9IKisQTRrT+MovMwe/xf
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: DF2R4JytU192fh_b_3nQhava_n-vg5e1
X-Proofpoint-GUID: DF2R4JytU192fh_b_3nQhava_n-vg5e1
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68d1523f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JGo1Z14By4IpQyqbhUIA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX5VtEyhxn0/+7
 ZLxp5WQ27/hNP6EQ81SQ+I6xEL1eFpObQTcLZtwEkp2rjH6SHknQLkCBIuvIrcrYntsu7UnqFvc
 2BsNGaUUtqRpzcjDzuodTghhGJw/C4cOp/bdvB35w0r2Q7rPKSvbcyxDrMeedV0820RvC7BH+LG
 eWs4ITHvZ3HWBgVZUSGSYT8oZzVWrqntIB9hAONUsWMfyPVZKRmUQnU+0t+Y3NoVGb6kKiTCLiG
 H7wOQbYu7PpNymZuPW6+cZ4gg957pXQC+yUbbnwwTFtnd5yKmWFDqn6cxfM+6YeexSTjyG/5OTa
 adONK9fKb6I9sLxVSn8zWu3MU889gjM9DvXnhgc7iH9BN9AZibIkjAHbzW/E4jwMHO/3OalzzrA
 8VTxnIYt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

Add support for SYSTEM_RESET2 vendor-specific resets in
lemans-evk as reboot-modes.  Describe the resets:
"bootloader" will cause device to reboot and stop in the
bootloader's fastboot mode.  "edl" will cause device to reboot
into "emergency download mode", which permits loading images via
the Firehose protocol.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f445787a87ba4869bb426f70f14c1dc9f..09460441888a7011ff613c4fe9fa4b6872e12172 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -587,6 +587,13 @@ &pcie1_phy {
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

-- 
2.34.1


