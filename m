Return-Path: <devicetree+bounces-173614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1A8AA906E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8F0C3A471B
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928911FDE00;
	Mon,  5 May 2025 09:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k+QW7ixq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C360A17A31F
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746439152; cv=none; b=aHBFAFJ12ML6wUR4tm6c2hlrSYLKO5+cWBkL+dHg7oybIIdihFdg3XdzusEKtCW7YFyRHINinMKavj7LHm6f/RbT0QpelUfLEMaZ3k7EXyhqxRRwiK8ff1kdrW+fXBJtZ8UjbUPKWXuqGitsWqBThOngOSElmesHmVT1bsX2sX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746439152; c=relaxed/simple;
	bh=EpTgtXBx6RlAgy0dPCnR885Z0kSSu1ufdWaninmCbc4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jT8BN1Fjg6AuXksNAZbOE030v5JzzE9AUocFhPpLdekGBNGfB4HlO/1hTKbyJTTHKrCpOXrB0AimIRCHwSqYsRFx8eLp5uSj0dZWAJNoApYRLzlgR8+ek2fvFaCBsFXzzUoHZh4qxBQO6QTDlQ+E7twv6KsLGkvoHavQTRH6b7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k+QW7ixq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544MrceK023135
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 09:59:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eHT7qDsNgvG+6R4akd+due
	X/xA19TpqgzBOgKaZriFY=; b=k+QW7ixqvshVPaGVJhu4EZTmghmIthvptYdDw5
	IPMoV/3W3DV5uO7V62QK4QPsEGIAKunbGxdJ9wooFLbwA5gfoP2sRIuiosxlYspF
	He4PByLEcVyT7dwBc950MJbQXUipivcFJTaw9pf39xDkgcA+1FbWcHhC5wIWSBAs
	4YjD6NvsM8P8JcFIx50d0ImGg3wFgsE7I3Y4zoGRCdgyCKPwPTjk99SmPMyeO24X
	iFdw9IBqhjwIiqVsD+w3F7G/RjlWXHuyNKFxswlhuIkLkfjVwXUYaGbahjI5+kyi
	2SDreu9sdQX32SIlFTMwhji8yg0Zq2U7pQU0QwplrIwWr5FA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfkkm4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 09:59:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-225ab228a37so33706685ad.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:59:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746439148; x=1747043948;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eHT7qDsNgvG+6R4akd+dueX/xA19TpqgzBOgKaZriFY=;
        b=OxDg77mEExDFppxCqHh42CT/WwXaPrQa2QbPQeRNGejMJ2/X4FMpMB1LeZbVTw9gS3
         MnDODrBXJZWDG0D0RO/3wJLYV7qjJgv2FIHDKh+JgbV6JqzlJUDil/MP4D9PME/a0Hmw
         Hcry6La5mOd40kdGPNQHFrn/wFE6/BYoAbZ8AQEVpsQL2RKLJ8hmSQ4+WHffAbSAuitF
         L/yJLXXesJtgTtzH3UbBItqtdYW1w2cPf5iJBemrSnsBMFqvPW4WEYT/PHBt44noKZwx
         IVxKDnMXeSARwb2vpVW15n1Kx1lBIfXjgeVN2Z755WGM6JihjsMxmtSgm+F/C1nIjS8c
         ZVYw==
X-Forwarded-Encrypted: i=1; AJvYcCVZMG48uMVkxQJQw4Ld5dzWR0Gt+OjDVXPhZZRc6LgiWnr1d+Bb8Uwlkl+ygn6tVRZzLsZQPpB4ThgO@vger.kernel.org
X-Gm-Message-State: AOJu0YyBpllfcU75OLYX0Dty3JLb/Pjj/A4uJyJ29m+fwEBTtlMZ1Xqp
	yIlU8d/c6qJGQJl+UCV6UOAVy9p5Ab0NOVbB/cHis2XkWhjgeaBBOh1ySuHdfzPCgKZkf6RPCup
	9jtifn0SOOcJxSXtPOf2sbowVndX9VStmtRHulas48L7P4B3umBGYkc6gCTKj
X-Gm-Gg: ASbGnctmdenlIX0yh5iCwMaOQYxLPES+g4b8HEVm5toa9J4dOyKiuK2eJcrDuQaGENa
	skT/j645f1tSOdvV3AyJN+WlkIixrviEPrcLS2wc2+Nax947nfG1oigwx6OxNJc+ILDEpMOyGQR
	bWuibN3ieRhMmY79ivuf+K2JMS4i+h3Nbjy7bvMOtfkV087UFOABqHKkBriNKvfCEixVwQSc0/g
	7ipjWZn6UnK3aJMiNxySEt0ga95MDVakZdVdg/GD+eeEahqWhBeiyyTxSD7GDMeyBWPOJUDyFtd
	bpyTwhwPCvZbc7oIiotthCBW4UsF/BdD7DVppfXBmlyQkmGE7/IOWw/9txaS4feBQ56Wm0kvz09
	3YmfYq/78ZdnapqRpSxe0znwaw43LGRxmlHb8z/pdJyGP2A8=
X-Received: by 2002:a17:903:2013:b0:223:fb3a:8647 with SMTP id d9443c01a7336-22e18c390a4mr94964855ad.41.1746439147970;
        Mon, 05 May 2025 02:59:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkTKHq7ayRsAFVb77jjAyGhEnyopmqWN4059dMKSLYS6kyiwKuLUniLbs+PgPx3MUf41umOg==
X-Received: by 2002:a17:903:2013:b0:223:fb3a:8647 with SMTP id d9443c01a7336-22e18c390a4mr94964655ad.41.1746439147609;
        Mon, 05 May 2025 02:59:07 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74059064ba3sm6524625b3a.130.2025.05.05.02.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 02:59:06 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 05 May 2025 15:29:02 +0530
Subject: [PATCH] arm64: dts: qcom: ipq5424: fix MSI base vector interrupt
 number
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-msi-vector-v1-1-559b0e224b2d@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOWLGGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDINTNLc7ULUtNLskv0k0zSElOMTIyMjZOsVQCaigoSk3LrAAbFh1bWws
 ABv/EIFwAAAA=
X-Change-ID: 20250505-msi-vector-f0dcd22233d9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan <quic_viswanat@quicinc.com>,
        stable@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746439143; l=1189;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=OWgPLrSOsLj7bhXbTza3TATvz2EeFkP8y/S6sglo7cA=;
 b=C4RMvaIVPbc1OR76Rkn4sDLgXVDzfHP/yrG/GHN1eovfjvP+3za3gxZ14R5hJo6Ev96Gqpp2w
 wyL1GwwcMNwByot5mL8wrT9ixrg7nESV3CYlS5fjoXOp1NG+E7HmcJc
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: o1He6DgBY9vsEOIz63SkJynnXeDVa_QQ
X-Proofpoint-GUID: o1He6DgBY9vsEOIz63SkJynnXeDVa_QQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NCBTYWx0ZWRfX1VCVeD1QFR16
 a8Yi6iswcEdIonPULKCsdOHjP4n/2uoYxbcbwTABVatS0TUEqK5hY1xDXBp6uM6BkOm9++1gujJ
 Lh1ikV0VOp4m/xTWQwtmEAeFZNx8wL2OOqqYTfSWtNOE1tnIki7u+jv9jotDdWH3jtdKqzJPp6L
 BWG1mE7QgmS0+4CNbsv4Tv/9Ig5KXKziOFbBkb6fNaOD/SKDiwWoLMS6lcYRhmqOGFP7ouF0oao
 awBpDbg8VDx5GhYo4NNfZAHPFY1HnsbByhCJEyWs2RNakBjP+6PbWcywjh1lmc5ZZ7CFVJ/qJ/5
 zwoIMAKL5SHHuPwIpntaIUIQLH6HS8R3ncp0Qwyp/3WDEDtbyfaaAlHaCAIRmwr/kBPsKq21dIK
 ZYCjfF1F4p0TKnUhdTqSM0LV7w3jRzH/lgDrDNuDL1+e677w+TvGLo99j3+LXbRf/lJ8Aso+
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=68188bec cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=wQDUD7ZtUzV8iaVDUq4A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=632
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050094

From: Vignesh Viswanathan <quic_viswanat@quicinc.com>

As per the hardware design, MSI interrupt starts from 704. Fix the same.

Cc: stable@vger.kernel.org
Fixes: 1a91d2a6021e ("arm64: dts: qcom: add IPQ5424 SoC and rdp466 board support")
Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5d6ed2172b1bb0a57c593f121f387ec917f42419..7a2e5c89b26ad8010f158be6f052b307e8a32fb5 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -371,7 +371,7 @@ intc: interrupt-controller@f200000 {
 			#redistributor-regions = <1>;
 			redistributor-stride = <0x0 0x20000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
-			mbi-ranges = <672 128>;
+			mbi-ranges = <704 128>;
 			msi-controller;
 		};
 

---
base-commit: 407f60a151df3c44397e5afc0111eb9b026c38d3
change-id: 20250505-msi-vector-f0dcd22233d9

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


