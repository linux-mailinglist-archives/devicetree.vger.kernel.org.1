Return-Path: <devicetree+bounces-220044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD31B917C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6939F19000B5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D527830EF82;
	Mon, 22 Sep 2025 13:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YbgjbRoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7830F538
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548557; cv=none; b=CJSoW08ewKex5WHjRmzuCO4Gt2TdK0noRu9/A7tqJOsqhAydSRvwzQYSVwQwQJmYn4md73L2870xzJW31w/zx1rXwPRohe9fjXLGylI1G5anW7fstdThEJuawX2AGw2eHJypPsz3k1OYzNdX4SfTN+GFj5MqLTpckUUq1iH/aA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548557; c=relaxed/simple;
	bh=wHkUdDS5bnjeIQ7bWY0wwHjrewyVMryPfMFT2XspY7w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XZd7CSF7CFJ7DOXLZe1vb28Rveyfv7qjY7B5r9zKhVJ3TVI9YPmuZYgRBPQ6K0UjShQZ123d8FjmAgVu/f5zNwJo6YG3I0ujKTyoyBFT71cGOyW1WQfX0/tbCO80I4naRGWeJeu5IScQ3p+NDMFwMq1/ZmYGiJcmRs8DINjcuIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YbgjbRoI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M90U4P022397
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FYXv947f4qPhFNPoWzY/DvCzODELrD0LuRjCAh5+0k=; b=YbgjbRoIqEyI/mOL
	GKrXdXBOINtnbNJ7xeXsPg3gIBkGvUlHOisSX/O5d6fp7ZePBEsDCsOIw4iG6cFC
	ZbDHhf8QHmqPhbY0H0xetHBF5czMShLIZX3vG8r42vYjC2obgE9Ta71+vXZ0d87E
	wQHb2rbW+1am0fDiVH8tVJ8h76ljLtnYnZPNnXsH529fpgqRK8M612u8xIaYjiuh
	6ujhciW4MFKFxhbj36H6t8xPLB6wCkrya9a+NIW6DYCPsFssiThER/ySCXrFFJ9T
	FIxh8WVhcxJCUpQF1CuCZVVyeOeL0C2PhBzVSbD8abjTq94aJGJqZ5Re0Q86++7k
	I3Q2wA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0vwdq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:42:35 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55443b4110so937809a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:42:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548554; x=1759153354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6FYXv947f4qPhFNPoWzY/DvCzODELrD0LuRjCAh5+0k=;
        b=R+DNVtHcQ2YMIh11xSrhb4mqLqsHJSjoYadgx7FEodYLfS9ibCjmybBkdTwtw/AGMm
         6cJrciKm5ibI+8CEyNyswRsotIueYPj3gg6PQtoglnr892T1NGGmMZlfVgbWVBYdLbH6
         p5AjNkXHI7YktqTHsqCMP5KijaZ+Xt/oQc99ozUi3Q7iziuSFl5moUAi8QEKwpLNDNlg
         a9PrppmkjbQsQE6eQ9JCqaxBllrHWKRv4kqZqiilrgQYFvxrJpnCPP/HYpYBueApHbYB
         uTzD2jXttY1UoW/eVacuFkh1sgid43XsXTMVt/6trzQBeyx348ieXeNnKBBqawH7/oRN
         47eA==
X-Forwarded-Encrypted: i=1; AJvYcCXiEMvLW4s3fDSXIKh/p0D7axWDwoGcqDqIL+6hrt4L0JQqxu4jHCxmYBW50pc0LNW3ykJBWk4PiYd6@vger.kernel.org
X-Gm-Message-State: AOJu0YxCFKb/B0llRrB0YR++idQgabBiLoSvU87nVUotFn5t+ykkSMnS
	74auHH+dt82y4g1yu3EH4CXTkm8oBKaVA0ZNQ4dgkprbR4RUOGMeAnTkplFLA5WG45+dgWu3Jqi
	HdegZ4ffqWRW4CJvNPca40fMXY14nroy9Q3WCGYsgUDctOnrF4r8cL9vL3jRB6Ppu
X-Gm-Gg: ASbGncuBGIZu3+5WPHYfXN/UIvPVzf96LfafgcCaneeFkdYPA7r8nYcNtrbZiVFWB+7
	KVwn/oQOtGVe+qossPrqP4tma9yDBmj2tsbKE5mkQzFAaKWP+H6gyDShJ1G0s9Jj/KTCE/kzpLL
	fYrTvjnlwBWCVkQrzNt37RR12GaMtAfGzofTEQNOdX8FtBMmiDF29/BgctMNdVN4yelwJb6DPfg
	qDkvKfCYSKgskazOcJwyay+81YM0pYYh6SAoBN/5qgjMOGEJfRMt6s9gWh24RIwW7uVuqyCXyfd
	nmOXD1oRJcrnC9niba0lllBYsaQqiftg4EoHq2FypIrm+2UjoOgWEYewnglWCSYQ1VT/UhszIzC
	l
X-Received: by 2002:a17:902:74cc:b0:265:62b6:c51a with SMTP id d9443c01a7336-2697d795331mr139723235ad.23.1758548553888;
        Mon, 22 Sep 2025 06:42:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETbdwlhVXEjM7yM22/JEEvIiUoy202zLd+b4eWbRtUU2DHlwKHc8Op5CjIiXXHqrVv39UJmQ==
X-Received: by 2002:a17:902:74cc:b0:265:62b6:c51a with SMTP id d9443c01a7336-2697d795331mr139723005ad.23.1758548553434;
        Mon, 22 Sep 2025 06:42:33 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:42:33 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:22 +0530
Subject: [PATCH v15 12/14] arm64: dts: qcom: qcs8300-ride: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-12-7ce3a08878f1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=1518;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=wHkUdDS5bnjeIQ7bWY0wwHjrewyVMryPfMFT2XspY7w=;
 b=TCxpE50gt1pXJWJLnvp2Xo5vGtRfCb5g6AIRIIKP0dcKGqc/CJoCvd8l4Qh1JixBDFnugZCHt
 zRlWDkiodHmCXFvnxFbQqcB6EyEzV5K9RPrJ6BsZ68yVSoue50/SEZK
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: HtifobsPWlLrEqLkBxkNKezVWAuya8Dg
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d1524b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tC4jzodRyx6YAeo6W6AA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXyArTGMRM0XpV
 Rz1egJQ6K8bquH2fQAMpQRWpru1Meny31q7jbc/PhGpth9Bhjdh/cOojjvYsIe4ziEKQ/4knf45
 /PfR1KjcURzBZfPHV0taL1yOMi2I8/OV2pDHUh53QRTtX4kIlGjN1bnDxUekmdEaBEaM5E0BPy/
 BjOWPB9WyG6qXgdm34JwXdhovVI3JjBQsi6exTJKDlfuDKMf2A4gYUIbqDSmYkS65lxMxLYHNJd
 cjrm6qZfKF7W0hC80u3HQ9RMy7gtXFxiiCJ2zX3CP3EK9eCoKV0ar9Qz37sB2a2Z4MhMDC/gqhC
 eGuxLOrZV+l420i9DgPt/Eggd9iiW5xKp+glcuBg7JoyewAM9dwoJfqV7PCGydnSKy3BJ/SYBZ2
 TJCSdcHw
X-Proofpoint-ORIG-GUID: HtifobsPWlLrEqLkBxkNKezVWAuya8Dg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

Add support for SYSTEM_RESET2 vendor-specific resets in
qcs8300-ride as reboot-modes.  Describe the resets:
"bootloader" will cause device to reboot and stop in the
bootloader's fastboot mode.  "edl" will cause device to reboot
into "emergency download mode", which permits loading images via
the Firehose protocol.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index f8ed510477cf2d23c6bd1bb042abe46b45ad35e4..dc36296d2c1ac7731d9e741099a2cc0115f584f0 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -309,6 +309,13 @@ &iris {
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
diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index d35bfece60d1afa5205d71c3b1b621dce49c805e..7d256c2f9a9a430d076000ddf22f8a56f074071e 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -663,7 +663,7 @@ pmu-a78 {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


