Return-Path: <devicetree+bounces-227944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22344BE62C2
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 04:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9339B4E5E8D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C2B2475CB;
	Fri, 17 Oct 2025 02:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V9jpmoHV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9AC21767A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760669860; cv=none; b=JKnIGJkejntzwuZrhWQ9PXPDqZrJycfixjOxQXHBLikjT6gHf/HfBKkItmQ3NryqqL6VhnmYpMg+odF4LmcTeP7MzhMjccBBdER1MwcPIEvGFJW83XqoE+WxVLzc5sNpmVkWVQ+8JFh+mqEVguvqq8fl7FL8y7AL3s9/0YSix5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760669860; c=relaxed/simple;
	bh=gioq/rreKsGDw5vfDqbUkugeReFdMaJ2zGZblUhmCHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YRxo4ok+aa1zQL42HnY8kjeQPbvAWVYqxtsDYOjqyca7j/0+j0gBGuF9chzkeuaKzZnzoYEREVwQWxzoVEsJVZdLaWlXSpadxfWfxo2P00lqhMyJcDS5RDEjYQzILH/YgZh8Eq5K2FFsiCvQEJrDvT9LXEsuSJhSpshrNuvedQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V9jpmoHV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLPge025235
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:57:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=57abpEGp4rsrQeIj4jVZ6x
	t60b5upYPpH7ku0EvaTMU=; b=V9jpmoHVINxLFqxQwQani2hrxktiCSihFRSNU7
	RWIF7dvihcOzpJDqEKTuke83w0PV139XoMxeyG2CkCT0yPQjWXHZOx/Ax6NsvHcU
	v09kMMfH+MG2xfj+a9EWQAUNWm7yBQs7Frs+g1w6sDDpfk/LoOygb19P3oFumE8c
	WzyaLeAYlbWQl/FDTwNCTCEGXtODopNEcOviFD1pfkKHSkngcaHhZSVEQ0aEaugs
	15RCW/ZRHh4P0vS0NUiNsELuBgmHZLObjHu6JkvhctLRREdoF7MbVr4AdzIRQtAh
	ZUsXSK344DtMaKHe8HA+TanqUDvV0EnUAcYCDk6CKdx6rgVw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkjkf0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:57:38 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-336b646768eso1678175a91.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 19:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760669857; x=1761274657;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57abpEGp4rsrQeIj4jVZ6xt60b5upYPpH7ku0EvaTMU=;
        b=DAAWQQV88ukdXpWGn0eEnLKVgL5sNbipn4h7nLALMSz9TVL3kUUPe2zG1kKSWJ2cZ2
         EjhoiYr89KNu/OOBAAl8RTq3bzXRjL0shrW91CK16vAGUUeoDQH3lq2+7tivv+v08a/y
         gnzurBNT5LMBaNWuyL5VHQ71DadMKB3Xei2pJgX/UVCWT+ZCLJu5WGLCCBRlFqgkjFfM
         bAV9mHPLNnAZBWDtyLN7AGDMDdwMZNBb+swqYjbGHol5TG7aX7RYye0FZIXWD4shOVsP
         2gCiT6Gx/Zd4mRC3uw23ktROulpdApk+POX7cY7KeBnJWMgBVi2o+EIaFn4V/ljWr8IB
         n+6g==
X-Forwarded-Encrypted: i=1; AJvYcCXzzdA2oabSPN7FqJOu6Ev3EzMKksIj+eqfP0QlRRImt0bO1ooqLHE9VyRBVexCaXImUkccyhZOyflK@vger.kernel.org
X-Gm-Message-State: AOJu0YxSX/kd8K4EQJvYUotzk28tYoQSP/tii2RSmtW/ZUgRbYD2GTpN
	YH/p5Ag4sZh1x+PT81ihZERX38vUretXRsEv69xO03TDf8rYyKjWZUcoLK8tjyn2mbIQCgXJqx2
	wfOG+TXW48a33Pcs4MvOACK2rilIEqwRRSXyFCZMvKKCucXIzHiF22qvoxcuZajQW
X-Gm-Gg: ASbGncsCsB/XfvH3LDaX/YnouFgGhzCxLYO3aO0TJvj9e7VlV9g641DYKH7foN0+1ML
	cwCDEYiHDM5PZ4XhHrRKJgZN5i0lT5LlcC5YKr7Pjpfjg+W4p5/iESozBEFR0+IWFINNcezN21t
	kpSuHgZkwIuNGGcxk8yeopIvqq41bEiAc4GcI7Aqgu5XvDn/GKCrV7Hk1ymAkpI7uO058t9jyrh
	JGxBsIuiOgra1sCPsOy1Oj5JEnxrHpBGJb5dFpRPeRHzempeBe3R+cO3nxAch8MKlytp7Sj5Jxo
	1SiQFrSpsF/LllORaOAWMYqFjHr5SyWkpcb+KwajmlLPS+/0I5v8gYAVMIauEBgOvtGXwou3pwx
	JvxtUvOLjGPdqvR2KaIjaM87AmkW8kJan
X-Received: by 2002:a17:903:2381:b0:240:3b9e:dd65 with SMTP id d9443c01a7336-290cba4ec0fmr21840515ad.38.1760669856948;
        Thu, 16 Oct 2025 19:57:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELK2esVZmsxe/N1H+g8EIuqchXgfN9778wy2RK38ItUmSSRhLSEWyy7a2rG4oRlKwmCzAxvw==
X-Received: by 2002:a17:903:2381:b0:240:3b9e:dd65 with SMTP id d9443c01a7336-290cba4ec0fmr21840305ad.38.1760669856521;
        Thu, 16 Oct 2025 19:57:36 -0700 (PDT)
Received: from cbsp-sz01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099aab735sm46210205ad.77.2025.10.16.19.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 19:57:36 -0700 (PDT)
From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 10:56:55 +0800
Subject: [PATCH v2] arm64: dts: qcom: lemans-pmics: enable rtc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-add-rtc-for-lemans-v2-1-0aaf174b25b9@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHew8WgC/22OQQqDMBBFryKz7oiJxraueo/iIsaxBtTUJIpFv
 HujdlkGBt7A+39WcGQ1OSiiFSzN2mkzBOCXCFQrhxehrgMDT7hI7jxDWddovcLGWOyol4NDRXW
 VUp4mKlMQxLelRi9H6LM82dI4hWx/HqGSjlCZvte+iAZaPO75LGECdqHVzhv7OZ6a2WH8+sW//
 plhmGujRJ4Jpm7ZwzgXj5Ps9oo4LCi3bfsCg+yU9ewAAAA=
X-Change-ID: 20250924-add-rtc-for-lemans-cedb3e630c4c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760669852; l=1407;
 i=tingguo.cheng@oss.qualcomm.com; s=20240917; h=from:subject:message-id;
 bh=gioq/rreKsGDw5vfDqbUkugeReFdMaJ2zGZblUhmCHs=;
 b=/ZpZMF7MoNslhltzpF5KZd0zv47Udhhxy/1OZFBwpXoCecTqHjUaiy0ucmwy4uy/LbYQjpnRZ
 Lywv0SHagvtC5Ggrxe3HQYZlUaxxnKUyhqgGomYm7QK8sZRht72mWl7
X-Developer-Key: i=tingguo.cheng@oss.qualcomm.com; a=ed25519;
 pk=PiFYQPN5GCP7O6SA43tuKfHAbl9DewSKOuQA/GiHQrI=
X-Proofpoint-ORIG-GUID: PtxdP-vctfyelMSJHugEbeMZFwwks6PB
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f1b0a2 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=H458QRQcw-P0b_fo_9kA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: PtxdP-vctfyelMSJHugEbeMZFwwks6PB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0brkcViEK31O
 4cPsAYrd97PFLvgd2KKJ2gMIpO93UBfr0qlB8jSHVj6XqBHKyME5/COaX4q/2U7IQ04bbt6ifEO
 Dqcc0x01ROR9hu0N+VC7ed07z0V9wJFBK1Xnobuet9bYRxv6mhCs0uymcIeNuNJ7qd1BgkgZTPd
 23yJh8H+kU2LlGgaeWVjLZwZDLncPJTBlBg0ksdM3Orfj933eQUAA6r0dADIkXZHqm/IMsHCZ+d
 +Ce0H8yiT2CqJfOnKyDa9Yy45xaoZhk02k2hDwLoFEuOWrTFFl9lE90zbH2EQ7v4V8BKODIIelX
 iO4dtyMJT6hEgx6uHbVdiCjMFs9Kz50PCg5gxKN/J50XZCgsXJ6/4Ptr5iS75kls42o4/bDMiKo
 PNbR7MvJSn8meFv7T2tVEfWcIG2t9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Add RTC node, the RTC is controlled by PMIC device via spmi bus.

Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
---
Changes in v2:
- Rebased on tag: next-20251015. 
- Changed the subject from "lemans: pmic" to "lemans-pmics".
- Separated each reg and reg-names pair onto individual lines.
- Link to v1: https://lore.kernel.org/r/20250925-add-rtc-for-lemans-v1-1-17fc56451c84@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/lemans-pmics.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
index 1369c3d43f866de9d8cd5cd4985241b99c0a0454..341119fc824406a5f45cfb3f809a07b95f71e0bc 100644
--- a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
@@ -132,6 +132,15 @@ pmm8654au_0_pon_resin: resin {
 			};
 		};
 
+		pmm8654au_0_rtc: rtc@6100 {
+			compatible = "qcom,pmk8350-rtc";
+			reg = <0x6100>,
+			      <0x6200>;
+			reg-names = "rtc",
+				    "alarm";
+			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
+		};
+
 		pmm8654au_0_gpios: gpio@8800 {
 			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
 			reg = <0x8800>;

---
base-commit: 2ec29dae47ca4388367474080fc48cd0cb7a4d8a
change-id: 20250924-add-rtc-for-lemans-cedb3e630c4c

Best regards,
-- 
Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>


