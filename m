Return-Path: <devicetree+bounces-236415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CF3C440E5
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E91C188CB5A
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922502FFFBF;
	Sun,  9 Nov 2025 14:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e34DRIW+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q7AdMaA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170592FE561
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699183; cv=none; b=KUFWSIu90wboX3fth+sZwg6oe7xOoPPwPbJZaAI3LZqhsQ//pDKmY+H0KeKo82O7sSjAvHWc0V4S2UUCul71CHrmj11OAAvFH/uQCS1SBzwaKgCzM+bHIUzkORN268xC4DBQls4XUhpiUaxb9biHE25RSGSPrz1ApNwRs7I+nj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699183; c=relaxed/simple;
	bh=R3MfvFc6/bdQVm4YlgZtmV6Bl4EiIOJCDZmSi9IVDL0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gjUG7bFfUMImXywMppOuz+G3U71twf3surxkq+F3BEz0SoaouGPFYVpHI3YVVSf/Q9Kb2F6yfhX/Dt3VVoOnxzOsNCiE1hP3wEzQS1oK27rv6uWiudfsuD78fm9p5ZkfJFTjbZgCosQqomsSZd1k/YghbhmA0zS5ForCZM3SBKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e34DRIW+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q7AdMaA2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9AxS1J134237
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 14:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jDT1n8ZxH/CHdaAziXcBd4tY/Cun3ebrWgj6oFVzywM=; b=e34DRIW+aFKLkVZ4
	s8Nc6Xk9e9BU8glO/nSdKMY9s8rDlZxpTZZmwOL/PF2/hFKRSJS3Zj/PeUyc1A90
	6epxi4DWAezhqN922U3NX78TUMaX1dSFmaHa2N0CZ24/rok/J5dmA3DESlXAH2k3
	RBiRZoM70tctillhPKgc4q/D7HdJ/bXYnqmhnMLlCV6PYcO3kBluaZ4302ikSwPY
	giOskXUhNI7iBqf9e2Cq3AVFcSWfYRtrv2jqP3QNs6lSgZ9o1UipD4vLTJuCqNnU
	UpWsBtz/7LPsro7f4Xo3pUkTpNHzSkNCgXLQMqgXJjV+zrCXsjc7/dZoekeE0ZIm
	ZMkdnw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs7a8d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 14:39:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-340bb1bf12aso5262298a91.1
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762699181; x=1763303981; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jDT1n8ZxH/CHdaAziXcBd4tY/Cun3ebrWgj6oFVzywM=;
        b=Q7AdMaA2Q3SARml+tgAUYhzuRjD4aSs7hrJCn2Iwn42eoGhgQVChZyi0N9bXaobUGf
         ZUf/k+L4e8uC0SJPhjJ+pHwV3FFv42DJqs0jjdjkBd6rfvRl8aQDv4a+acXGNVOgYwDN
         Cp37xBs7q2jleZoE1q291TDv2gDy0KZSbpK98+5WEzfwy6xePMBqjeqYNT7y93Es1kcg
         5B4BhGYPMhqbArCMgvQ9t6v5wFg8nmxvDUqSPZxc/n51WDLgjWOgW9yMIOtDWG+ty05t
         DrucKKmoo2jdU20RVLRjFh5k7emfHl98ZGoCeDpyYj1DQBE6nyY4bBjLv9wwpG+59ef4
         quQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762699181; x=1763303981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jDT1n8ZxH/CHdaAziXcBd4tY/Cun3ebrWgj6oFVzywM=;
        b=LYxZDfeCgeUBznD1AOgi3TGlNjuCTmTx7IA0YQ/j5khTk3w7SBwR/1qnbFHEpE8MCv
         S2zQmmZYTul2hd1U+J/JYjTl4ccgDkeD3adDUD0J7PtjEcs5lFcWu8H0JeZa4wPxLwf8
         IZ+UJ5qtzA2kBhvhJ0Jl1serLN89lvJnBY3HfSaY02CErSHEE8szE6wi4Lvy3gNiwbSg
         InmkSyxg0Oz0qCbcyqnKBKLQjvpYrB75e2sGxPdvd7IfGHnAxPSvDndAx9Aapos27+N3
         Fd1XhEOWr5z50hEuOFAQ6nO9W6VT/scTcVYjJbiJUg2wBY+iQD//bRUwICaA6MxW/L5J
         g+zg==
X-Forwarded-Encrypted: i=1; AJvYcCW8IKbvYGt88lW2u+jEitHrQjHmKcmZqkZFN5qgqztBpDfevUUwVX1G8XxwyesWrto5zgicN90wcJCJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8v6vH7vgErY6TF0yhBCga5j9Zv7L+3nTKWK9pd2g3Tg6l9cbu
	mdTpZqFaEJg90shjp/v0ka3xym9y8H1Avw6kcs56PxnqhVOjnNf1rGqmqh9n2H0WPtbOFPalC7d
	L3Oy8XjXfLFf2feeFv3+ZTNsk42Djj8QpTJzUjjcZ5mRkYAt28MzS7aTwdA6IR9HV
X-Gm-Gg: ASbGncvDEb1eyLkaiLzwtI03xM2JO9rqd2OhS/KnVKkod0KgL5Rl157wNV/DqfB5Co/
	1gPfRqTLgtqW7DdjlWVy6Ym4W1M3v2PVkEBAyfKXOExFSpR02NSUZPLOOc3iUhf0mzgXzqkShDN
	rxXhWvYgiVEL3HY/Pnl/shxlhX8m8bWfL6ES7HMpIcgjGhBqZMS8qi9ngF0aaSzHDM0y6r7IfeU
	zR+0mgOUz1uD+CEe1j6MQsGF4lO3AWRloXs9h/ujb28yh/cmCiagogMD9eBiUX/Ww9ThoWvGKJS
	QR9SZJqfT6ivCqOrs02CTjogn84jCfQdtKWA7qRnbgDDgFX7Z+YSs5cNmHZtfLZqDhBmkPo6F98
	42caAkWIs1iJjMalKjbSyx/MNZ4DNjXPk65M=
X-Received: by 2002:a17:90b:350d:b0:33b:cfac:d5c6 with SMTP id 98e67ed59e1d1-3436cbb25dbmr6963971a91.29.1762699180827;
        Sun, 09 Nov 2025 06:39:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6UGkpZ4ivllNU4v/AEheb8P8LWmWGO/LPwOkhMrFYsVmL78fLA2Q/qPRznueCahMEJJH/RA==
X-Received: by 2002:a17:90b:350d:b0:33b:cfac:d5c6 with SMTP id 98e67ed59e1d1-3436cbb25dbmr6963942a91.29.1762699180337;
        Sun, 09 Nov 2025 06:39:40 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68a68e6sm14845401a91.4.2025.11.09.06.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:39:40 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 09 Nov 2025 20:07:24 +0530
Subject: [PATCH v17 11/12] arm64: dts: qcom: monaco: Add PSCI SYSTEM_RESET2
 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251109-arm-psci-system_reset2-vendor-reboots-v17-11-46e085bca4cc@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
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
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762699073; l=1031;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=R3MfvFc6/bdQVm4YlgZtmV6Bl4EiIOJCDZmSi9IVDL0=;
 b=54E+nkd9FWt/08GWunbAWGMeVDUP+hEKjK6dnGVejbyt3ewl73JQ0q6KHba6hNUtkGN94xIJx
 gASkoJxb9eNBoqbLVNq8Vr238KihsIdXNm9JRx0AE+SHqM4+zqIt2vg
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: cciJZ3WNVG82B_1l1unOSc6fTn2j84bl
X-Proofpoint-ORIG-GUID: cciJZ3WNVG82B_1l1unOSc6fTn2j84bl
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=6910a7ad cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_PJuSq69R3b4qrRYkJAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfX1MI+AfFDvseL
 7011IONWIMPLFXW62kLzvXwMRMEtBx0obwM+mXhYUPLs3A+9w9YmC7ELkCrvz0cEEE4uYHOfoP3
 6HT8HL3z3XK92ucSriDu6yWoLcv0CD8LJ8RTwvdfTGF7TE4MwtigfHCDuOexXel3hd+Z99pwVC2
 MPScKt+Xtnma7UghxYKXMfu9L0vCYIeQRSYro0/dNtDHVoW+eVTjBAJ/7fFhsdYTVdY3PbJxYiL
 YBX3YjOvrGr7jcazDQJgaCkDvd3GFBjZAcvgt1E9bKfUlCwoLs+UwYo5s0DplaHPRcB+NyPKTzG
 A3fjwpxtKAQFwCHIlE5oQMrujSi4lYKyg24fD661ZfPC/+TchYCuiQK9VY+87qHYBJSU4githf4
 jkvND4paudUgqQxikss6Vp7zWapL7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090129

Add support for SYSTEM_RESET2 vendor-specific resets as
reboot-modes in the psci node.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode.  "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a663b8ad176f93d2f18284a08c3d1..e690ba62d9099e270e14510325dd1422b152584b 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -732,6 +732,11 @@ system_pd: power-domain-system {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&system_sleep>;
 		};
+
+		reboot-mode {
+			mode-bootloader = <0x10001 0x2>;
+			mode-edl = <0 0x1>;
+		};
 	};
 
 	reserved-memory {

-- 
2.34.1


