Return-Path: <devicetree+bounces-233977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A03CC277A5
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 527071A264E3
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7512874E4;
	Sat,  1 Nov 2025 04:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QpfW27k6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GXxFVzGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34567288C81
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 04:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971413; cv=none; b=F6f5tMK1axFuuekbeuS2S2VHpo2Vti2iz1ayswfD39JJ8cJboytn3Sa+LUtZCvVmNY2IgW9Rndwx2h9G5ZdslbBpolWFbMF0uaAWU1orEZ//8Kvi+m0z/UUpFiNcqqXuMcaTRqvxUgfg8D3roMlzp/9a8ndA0KeikfaFfUHgEKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971413; c=relaxed/simple;
	bh=VrcDCZTTzA+LINiKOMWUnoZKZnxjToLdODEk4F9zscM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y137DtJpRB/wDkX1XT/sFeXZHXrIR4Mro7s2zPrXvFGP1rZi0RVzUMsf4yA3ETnEHJydyJYYi9jHcnRTwVO3EDML4WEZ3scRHSyYzy4mrIjNP7m6vVVa4VqKiioVaX3ZgZHvAzqs9kruFj6byVXCxbCuZ9Cnj2zjUDtlbx7YrGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QpfW27k6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GXxFVzGJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A13Z1F6428777
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 04:30:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rEmntNzIgvbd3ZfuZ5iUUv+8+XvQ/yURzasHSY5J4tk=; b=QpfW27k6/ts5uivf
	O0Jv5hlAtu0EzN6j07MkZDDnO/qtug/EcMJcALOCtmKE2IASg9lvaeOtddlQMScD
	kiATUwyQTn1msT/NGI57gx0/PQbk8RK8/BYpKS55Xbht5Im/pKu6bwVMMJC5lbEi
	dcLtnvXFJewtbMhH741KAzTA7IWWI9aViLmGAMY6rAyzty8bPliBy0DZ//kpjoLg
	iObSQwVU4uQSS/FK2Q45jW6V0SpXS6AnHufPSvzAEjLAAOTIpQnHdi3JStnoQRKm
	8pTKt2Kw9Z17uNqRxbB0BRiiDXWU6quRtoAzYRvOBWcp5JAbVx1+kq8SayX72wPE
	D7zKWg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ae3024u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:30:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29526a0d1afso17468605ad.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 21:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761971411; x=1762576211; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rEmntNzIgvbd3ZfuZ5iUUv+8+XvQ/yURzasHSY5J4tk=;
        b=GXxFVzGJenN8+qiAL0iOu+KZ7HSCP4nM2C9ztkL7Y6d6N2OPYBm8eJHw2xwDC0GbhY
         flQ17DBbF3EZjx8T22sgbbnWaDqQKVk4ADZj4ZG3q79mTqTHROzedkZpmWxsRMYLMRql
         2hyTzdmy4jwx4VxTYCOcMKKYYp4r+066uoJu0adS8IVuLd3QdKao4g+x//pnnAE/RlxZ
         87s1aFl5EPw3+a/8S7FZbX9qk6tqP5JS6FPm8qsspvGjjerfDzJ6PFuqt/A4Rm0soju5
         lGKmurcQTd3TetdixQdcnhGpnf8cYM2VpHAM1H/ELDsTO3lMV3DnMQ0BWHfbyo8YUmQ7
         KC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761971411; x=1762576211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rEmntNzIgvbd3ZfuZ5iUUv+8+XvQ/yURzasHSY5J4tk=;
        b=ofZ4mPxwbme4BeVmiSkIuRJKIw0DKT9zZhztaCqoaNvsvLaSdcowbzGeU0MqPOf8KJ
         5gQ7i1ygYMPoQ9eI+tQOhOBeg/8QCmHYN3C/Psn4bsP/Bmo9b3ksFnax/ZsGcTr3P627
         6Ucqe4nmzs+3EDYnK3FBgJkxesrGehyZmxGaKS6sfAjOeuHxQofp3c8PxCqFl6MTEOGa
         1Qb9a8UIvgD+HNKqwPdsAa1FnNS+jjRzC/721GWdenSbg0ssUTYetaTypYVU+gE1kaVv
         LJ3WTd+09M2w8sWZLLXxjLZUpI3Xn54Kkq+8Eh1/IEZCpGdUOwhdUPnPuC6Af4nokkAT
         jCVw==
X-Forwarded-Encrypted: i=1; AJvYcCUuCF5J9Uw0FxG4KlOjhJOFh+X8aAKqd3QgyFwggg/s+VgG05HseCrQBuyw7/3LDwB0CcypXyZ+HJsx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/QOu98Nmy3u4fz/rrJoWmcC++MAMJObMJOTaG/XlrkMD007O8
	NEXbnRYFq7ff9bD0pYH45ZpF7dGFCTJk8/fjQ7IxlwD80olFCPVytqbOVwDOLMdesa+fdbevXKd
	G93x7xL9EbUgts7ltHmbhQP8RzwOjrqrHt8BZTXfC94GFQvDCYa3IlK1ruzXRGWkD
X-Gm-Gg: ASbGncvuihrEPuUmRRjNhFWJA2p0TAfZW0oy55ltr/mnbQ+rxNakF8knIkJ2mFMs1dR
	zxB3xRI9krq2qio+w50fXIRv2M8FePLZ6DJYm2+tDhNMxYID8C77MasPdYZmk0Dg6iraUwehMwS
	9LxS48iU5b2Y4v5/wSXmxTc4KQllwvZ+OkRgfSmPlCc+GXMw3EJ4SL5exf8V437HOC+mFK/vXu/
	om+8Lw+KKMoSqMXZc2qkpwpgE+AU3TbIE+w4hilQW5d5vZwOa8D9q2pEWQ+XwqIA8mRONRJLJhZ
	3H3TbXAe9POqQUyEoS/OgQdq33WABZmxpYuV6vNSvBLjQhgRvnWV2MG1o9NSYJYIdE9pcwO2pqZ
	6GLaZsv676ZBA9pQFu0GhwhIE
X-Received: by 2002:a17:902:f602:b0:295:28a4:f0c6 with SMTP id d9443c01a7336-29528a4f5admr55696035ad.0.1761971409400;
        Fri, 31 Oct 2025 21:30:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVwZ+kekou+fixvG0M2Vz/vgve/y1Kvl47T2KxfST7IaCXT0xX2tM2WuyIGokWq2NTuaVOZQ==
X-Received: by 2002:a17:902:f602:b0:295:28a4:f0c6 with SMTP id d9443c01a7336-29528a4f5admr55695065ad.0.1761971408819;
        Fri, 31 Oct 2025 21:30:08 -0700 (PDT)
Received: from work.lan ([2409:4091:a0f4:6806:9857:f290:6ecf:344f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm42273285ad.2.2025.10.31.21.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 21:30:08 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Sat, 01 Nov 2025 09:59:41 +0530
Subject: [PATCH RESEND 2/3] arm64: dts: amlogic: Fix the register name of
 the 'DBI' region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251101-pci-meson-fix-v1-2-c50dcc56ed6a@oss.qualcomm.com>
References: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
In-Reply-To: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Hanjie Lin <hanjie.lin@amlogic.com>, Yue Wang <yue.wang@amlogic.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andrew Murray <amurray@thegoodpenguin.co.uk>,
        Jingoo Han <jingoohan1@gmail.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        stable+noautosel@kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2433;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=VrcDCZTTzA+LINiKOMWUnoZKZnxjToLdODEk4F9zscM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpBYy9XwQb731Bpv0QhX79igT+SZRYiSopEBiJ4
 W2XERk5uCGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQWMvQAKCRBVnxHm/pHO
 9Zh/B/9owuOX+V5eWryUwchPVToFhqEvoXpFH2c5lRHxiSrUbe1aaJoP2pPhP1t0wqK49vmI5o7
 UVb8r+OdIcFl+ZF7Kn0gr4dOv3xXCbYKb0+vgmdMxHFTZUUhzt5EMnZd0S1oobqV2hJvmpbMWEn
 bx1QA9Xu9f9Al2l0hUZQm2SrCJPKqW3c2qQbEetzF5MVp4isGqYffd4VI0Tm9vyS73l+60be+2I
 +bnZiDs4mYAkGHM79aBXBZUizbn2qYhm4dP/kPatxE9ipGiiTivqjIfiXR7s8X5mwSSyqM/fvaa
 AjG9aS8O3ekS4FGuOqfCEscfcTNjaHgzg2ieFHftf+S8v6Sb
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: L7yC-mz5wa0ow9gTM3Ic7rnD92wVGXIb
X-Proofpoint-GUID: L7yC-mz5wa0ow9gTM3Ic7rnD92wVGXIb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzNSBTYWx0ZWRfX+zeE1VGYddcL
 +3VvF4S5+V1SWScdC9PmWX+xOOBwQ2b/WZpqE9yczarW2rgZY17ihFcSlrKP7wieeAPuyZz9KUT
 uiclKgpt/bSUYByDusEdvCM3JkaClE3cCAb1g5C6II0BtTnC9nyOh7s58dtygMfMe8Ef9mTdJ9K
 dh/eR8L0UZaBxk0Pgf+ysZQTiYDaKlKT2AxBlG9f3zQNqHqWCQES01UqVzAbX6NZ8C6zrCbzlh1
 yITeSzQSvX5y9REqFI7ersZ4Vfe0OIGiqHF6bDO67MSHWX/b0JYSMUcsU2OMknaSmNUq+xRRhOi
 6pz8EC0Du6rU8I3YoPfn4tGuuGt618bJ80lFqQBrp/fXFP12XX5JU3icp/0eRRwiUjpbOd5syiQ
 e3d8fJZoibgc+1n8/VhlyghBAZWvOg==
X-Authority-Analysis: v=2.4 cv=CfUFJbrl c=1 sm=1 tr=0 ts=69058cd3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_UaV9RfZZwOaPWMAg4wA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010035

DT incorrectly specifies the 'DBI' region as 'ELBI'. DBI is a must have
region for DWC controllers as it has the Root Port and controller specific
registers, while ELBI has optional registers.

Hence, fix the DT for both Meson platforms.

Cc: stable+noautosel@kernel.org # Driver dependency
Fixes: 5b3a9c20926e ("arm64: dts: meson-axg: add PCIe nodes")
Fixes: 1f8607d59763 ("arm64: dts: meson-g12a: Add PCIe node")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 04fb130ac7c6a498f7e8029aeaa7e511cbfe815d..e95c91894968b2c8b3b8e96a5f5e85cd60f3e085 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -208,7 +208,7 @@ pcieA: pcie@f9800000 {
 			reg = <0x0 0xf9800000 0x0 0x400000>,
 			      <0x0 0xff646000 0x0 0x2000>,
 			      <0x0 0xf9f00000 0x0 0x100000>;
-			reg-names = "elbi", "cfg", "config";
+			reg-names = "dbi", "cfg", "config";
 			interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0>;
@@ -234,7 +234,7 @@ pcieB: pcie@fa000000 {
 			reg = <0x0 0xfa000000 0x0 0x400000>,
 			      <0x0 0xff648000 0x0 0x2000>,
 			      <0x0 0xfa400000 0x0 0x100000>;
-			reg-names = "elbi", "cfg", "config";
+			reg-names = "dbi", "cfg", "config";
 			interrupts = <GIC_SPI 167 IRQ_TYPE_EDGE_RISING>;
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index dcc927a9da80246da43391f9f90049c3570f10d2..ca455f634834b5a52db8ff4e6ebca35a87ea17b7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -138,7 +138,7 @@ pcie: pcie@fc000000 {
 			reg = <0x0 0xfc000000 0x0 0x400000>,
 			      <0x0 0xff648000 0x0 0x2000>,
 			      <0x0 0xfc400000 0x0 0x200000>;
-			reg-names = "elbi", "cfg", "config";
+			reg-names = "dbi", "cfg", "config";
 			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0>;

-- 
2.48.1


