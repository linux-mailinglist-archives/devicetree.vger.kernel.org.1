Return-Path: <devicetree+bounces-226896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D111BBDC859
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 06:41:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D81AD3A6746
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 04:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76FE3002A9;
	Wed, 15 Oct 2025 04:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JBW3ymbR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C052FF65D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760503221; cv=none; b=WDrBAxoQ0TX4XpTtV/RUXpZ7RWktdClWJ0Bd7C7TMZWV1aCBusrgb7cxKjMUg8usq70iQOv0+Q04kbjCid0IJlkhGtehm5s5oW+AaOzBifKlE3CekmZpcIdXnZPSNmQXvxz25hcTED1v0NQJrxmxC5oB3tClqX/cjrRWvKeE/DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760503221; c=relaxed/simple;
	bh=1jBpq+iZuKpAQm2NP3JS82veq+AIv0X5C7ExNAj56cU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sBwftxEZ94warw3Q0hM8zIu2cCcj169tRBJ1Qll7glq2YGERNdiH8O3iYq6ux/i/toYjFfAskEObrlaqs0gBzZx9SSgOcOZbxL2nveEmPw4PCJ108C4mMcCvrju7qymxPnQFPfzTS2F+/BHx4xJV1nvPMk0i43EJ2CHa2O3otH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JBW3ymbR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sEBo004155
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aaEbjaznfRKEBXAo6DFolWZjwipbscJpuOwEOXljFb8=; b=JBW3ymbRgEgRQwk4
	9rv7Ah2KbwTKe8OLqPy27Cp0xo0puRSYiInyXzZRHgaQXIwUp4kZuFgOmmXSNQDv
	fgrdEYUug1DjCytm+MVRhv7IRAOgU80iQqLoc3MBz1hXUAKWjUJMJyjhhUgL7oXa
	d/4s0t87gs0lKiXZoEDXfcpBOSiAhcEaiUII15KRlE24WuqqiDlvUevOOZ/KToVn
	/p7HV9w9OjURqZxkSF6D3F+E+6s9ciJeoxgBAbe9zfd9vdx1WH1Kv5vaw8mYjIhk
	HHEecjNtC4zd08X0okkke8BMqS2xNBo7hqW/+9732xCMhSjptXSiyh31LKY2waQv
	PWBZfg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwnbwe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:40:19 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-78108268ea3so508992b3a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 21:40:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760503218; x=1761108018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaEbjaznfRKEBXAo6DFolWZjwipbscJpuOwEOXljFb8=;
        b=JXhtSh/o2R4DeAf7JQXvWaA/wi7h3rRe6ijAU2wyi2XtMTZIkTDX7/JMe/WadGe3BQ
         xBQ/D355GK5/2Z8nDd2Qtp8WbHxpduUKpTlxuPAVTqgNkbQ27dwzF4epvfotBpaNNdMz
         36K7sQLhLr5/HovW1h/8RmkNw0OsJa9oPDq8ncfq7qi0P0hFihOD2Dtem8Y3zQBn1v54
         dwsjpnzA/BlsluZWMDn7A10RyjuoBoM9Zmvxxp8z7pZMEr40Rz3Bz5qNH90f580g6pwy
         eaX1B25NzDcmF4tkNnjHO4Mss1T7YseXzXWDjpv6E1KNNp32cbuawHpihkh/4Fg1RZiL
         aLTg==
X-Forwarded-Encrypted: i=1; AJvYcCWLhmJHPtT8slfUqOV5y+OQ59G0Jvj+qGGNOOJJn9UfHj55BGGI06YNa6FYYn78Is1dQ8vVjLvarHQ7@vger.kernel.org
X-Gm-Message-State: AOJu0YzFHEMvK15LYtoPxaGcYr+drR21Ha/Jf47v0vsSvL+Lfl1t6aCO
	n4l7m3VwPigULEzY1+xzv6P5tZGvzYWOUbbSLTt6Jl6bSbKfRmBexgYEAmzIjfT+DTXehHxA2fe
	l9/H0N0SzRUUJBgA1no7gVwjbuo0nUhkh/NrfbI78eaUA4hY9cL7jBHXNPS50prp3
X-Gm-Gg: ASbGncuKri2m0ZTCEG29bif+WF40RRk55b0oMOkkX86onfrGzNVxcModev6y85DLpgI
	KcojuVzm2GHeuQKr/pmfbvjpzSkDqRr8OeCQeUT6pwoMFiJMQyaDyeFjlzFVhego4lK4/rMw6J+
	lQ5HDAH71CP+Ui4O+U7lvHRu1pwnHaOflAeeZU3V12qCBwlT6bCjlH82Y4J/YkEBZVQtpz06YPu
	JmoFG5o/jeA0BNM7IGexME4LtIYJbVc/LVUZ3xU6ftFHoVv6M0Z3lBmPSi8Lizhi513rbOY5SkB
	Yccm2ka5QP2S6jTRRFCeWFiTT4M2t0J/WqwJjEaBlJJHiZb3ZP+zm/0RlK2bvXDDyb7M04yHpLf
	0
X-Received: by 2002:a05:6a21:33a8:b0:327:957:f915 with SMTP id adf61e73a8af0-32da8fcd0a3mr34162513637.24.1760503218189;
        Tue, 14 Oct 2025 21:40:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkvW707uWwbvXiG8keTQAlZReMI+HRsSwGyMxnWPsRVW43EYNt0vrSlWIfI3lMvZSsHDMDGw==
X-Received: by 2002:a05:6a21:33a8:b0:327:957:f915 with SMTP id adf61e73a8af0-32da8fcd0a3mr34162469637.24.1760503217682;
        Tue, 14 Oct 2025 21:40:17 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787af5asm705406a91.20.2025.10.14.21.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 21:40:17 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 10:08:26 +0530
Subject: [PATCH v16 11/14] arm64: dts: qcom: lemans-evk: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-arm-psci-system_reset2-vendor-reboots-v16-11-b98aedaa23ee@oss.qualcomm.com>
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
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760503106; l=994;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=1jBpq+iZuKpAQm2NP3JS82veq+AIv0X5C7ExNAj56cU=;
 b=lQ4o1jBsBU47/mjmjh1XOZfhtlXeUXvjB+DysCkst3CeU5k7XwEFoJFmc2egI0sxXbtLJW/nZ
 PsyQu7Lt+Y3BbUreCtFgJMXmjQg5IohsDBovTYY2Fnxpf8sWNtEl+X8
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX4wd4l5DYNTJJ
 gLk31cJVSncp+8lOTIiWmN/gfH6U8jVbG+wMG2vWcgIQx1iBXIvuI+sxXH6K1i5zi7C+KqTtTph
 NhRtRbBDH71DqkIiiLja+WGdO4jQnjz/bBUyzbZ/DrgONh8QEX5THzqE2t95xoLU+KozphqzmtD
 AVLrndS8+NqfG4UJ9HspzN2VpomG7XxwZNLiDQ8ZEU4qpOpsEsYDyEcKF3mVGpQtgM+FECrTbmY
 cv8a5SUGfUbd61+jJzTfFxBVZeN0L5UoU7gkjF/X8zFU2W+PEsB7xuEADnFBqfPrm49LAgEz7G7
 9bSvsXumySV4rg5nKY2vDUl8gQOP5SLbUTX2Rfdc+HPvZKVFPVB+XWoeHhVsHOGpqlZofYYMqqT
 4vvcFGyXO1yYE/F5oiLCzIHYmw4jjg==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef25b3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JGo1Z14By4IpQyqbhUIA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: aIPWsKGg3Acu_-BDgyvH_4MiIdAJ4_NM
X-Proofpoint-ORIG-GUID: aIPWsKGg3Acu_-BDgyvH_4MiIdAJ4_NM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

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


