Return-Path: <devicetree+bounces-245749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EAECB4DB2
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8081D306222B
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE0B292938;
	Thu, 11 Dec 2025 06:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cqPBoDkP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Um9wdTyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B49F286D70
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433534; cv=none; b=dvqfV9Lp2Mu7Pg0jOaL+UyPnoRnQ9Q07hDy9S+wdsZksX3BSfGtDJTS1+JO7YWPrE/tZ7MESGRLIh5cXvJc+lxzeMdns+OZiKNr7dRAIoGLMzdyazAyunu7+uR/8Fq+qYCDYfYJWwbEEhrgcpJyCL4bxyEjG3pgrk2f5XrWNJps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433534; c=relaxed/simple;
	bh=TYSRWgmxRNSLt2fH+36XKupwzsybh26yro/HGps6z3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ufpr1uurGFZGhQaZNdbHJ3lMSP9iPVNqahbXm3jh/fJ2yoIiDNvkEGN/X+Jgqe4Fszatcpx3cs4ENGV6aKoJFmHFTE+oCKYT8DoRbP6+no9aMJbnRRH6t+Rra3/gRdA27wKQwpcqot2wtMmmVtDJd3siHHM2YcLrEaF1u5ShXcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cqPBoDkP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Um9wdTyQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB33sPq388224
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:12:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A4JiDGHmMEDPcD2wgDRhLge5WYsd8FkCL+2ifcxAdQk=; b=cqPBoDkPQS276QEC
	8w7jNdNzsYxlAy/ps/9Qh0U2H+cQWG31QZ+LUBvrw+bbkSJPMOAiEzngYmg4YTwY
	IdE+WJHSoD9pFYQMiAmH4HkJQWElLsNyWwM9y7bEk1HS8yLC7tbuFZMWNdU9PzJh
	30KoNTi6cINKQWaivw9/R9Mv6suGIR2ieOi0OT2zNO/dvdaqFYPwBzmSQN8qbSXa
	nTvV1YsFsuqWiHCCiG2QQhwcLP59NwubxH9DF8Fo+aUN+IUoFc2IlIzEwOenHy+z
	unLdg1n0NmgiNItAaowcDBOpKvcuF3uclZN96mjQyjoUXg19NYWBD3hruQsDAwA7
	CSBYkA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aynqp0f6c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:12:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-298535ef0ccso8897205ad.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 22:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765433531; x=1766038331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4JiDGHmMEDPcD2wgDRhLge5WYsd8FkCL+2ifcxAdQk=;
        b=Um9wdTyQXt3qG769K1A906luOFKvQ5reChsrSadD1vLTaqJFsiBSf4i0QV/eRsbfyD
         BGlbgVMttDJUW26w3EyzX9tPMSctNKLBvYRNYZL/WtmOIftfbYSFsDWlQy+m69jDKXOr
         C9kEbljXHTFSAlYogxCQ3FVcB1KhBClVZ8DHFGCTNecW8ka2JZQOO2U+Kqtrobu0+yZh
         h6X+1FAv2DW4lR0JeCOUoc68cYS4sB1LcjZBYCWJ2S5Eqsrh50ctu5i4ciFbgClj9gXK
         cSgJdKmsEeaE1hMr0K98zFkJ1qMUQli4ZnImY1t2HyA9FgauuiBYQqn/qWGktz+omv25
         /eRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765433531; x=1766038331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A4JiDGHmMEDPcD2wgDRhLge5WYsd8FkCL+2ifcxAdQk=;
        b=ABZb2KjR9KMVDyzcNzphQNX+SV9C7WdFQLoJVOrq8iEG/j95uAI2o+i8QPD0Ff/VFY
         63/E+hkvSZVjNMGlKg3ZKWc2lHskz/uAdJ1dTfiVZKFKhAR0BpNtCsyagK12wSi8AANn
         wBb55jY+APENKLX6iiI09BxWGXj9zIhhaY8FhaT3g0H1uNLfaDVzmC/zqd3WvglZoznh
         tBziTqfikK/Hpe9FfhXyRL3Wl4HGeeon0iroDio2XykV0xfBu+7+si8hDdl2GpGmVfQt
         ye0TW1LkMPOAbvJKA5BuTEg255JFWiWrGhudk70NFiFYHYIqfbkJ9sUgPiOIIIORTckv
         VUVA==
X-Forwarded-Encrypted: i=1; AJvYcCUWGY7tKgEUk/Wg6EQLV2j+u+YWjHPm12AiTm6qgo6bcc/3TmZDlvra1vBeX1EJs18LPtsApFpKiTIW@vger.kernel.org
X-Gm-Message-State: AOJu0YwobXfsWMRJro0bVN02Ay9yRg8/VZamXXlAFCx00pVmYD3uamfm
	vqhTqiEDzsnMlkAjEw9q09eO2SOm5w5pz2naC0a5IpIO642dag8C1iN89J49pLzMoC+0yjQp91A
	dw+eOtuqrszkV5Jt0BibLyNZZ0qXvC870xmB1KNVo8yzz4UNV/NDE4A59isTm6Etw
X-Gm-Gg: AY/fxX4c+QPns/Twc5gBGqkXsbmEjJ+115mutcYtrM+K5PVqR3twYXHvFg6KfVpI/jL
	yCmSGmf+gaA6fvGMU49KL3xIYxpfzHcU9zbOvyMvbgzFsZQyp8bsN7l5wSYC7LI0kWc0fa3Fd/4
	OzyNvz3T0LQ1LW4Ky/77wqCQgXlsLByp5t5vmWF7TAlfFT5UtltqFszdkEt+GsxN+kwuH2MGSIS
	vZrgsPX5q5hI4kdqNEjMY8Cd9OtYPfEajGmgZFVENFpPe3mw624jZuEQCm7uFDod1lRsVy4buWH
	5XXvjchUKHgPwIRvSxPjw64Fy2RZ56xMEW+PlYGPfTaQg2YIVUT2wZwjn/aL49MDWeooUQzAk8S
	N1HLT60eDFT7QK8NpAkv2yD9sEHdlJwKO10v+uDI1x3c92WTOIKoJaVhpIpvk+iA4q1z0bNyy
X-Received: by 2002:a17:902:da8c:b0:295:3ad7:948a with SMTP id d9443c01a7336-29ec22caca3mr46292655ad.16.1765433531091;
        Wed, 10 Dec 2025 22:12:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwpyeBJog8A/y6aFNZOvOQS7CL5HjLOWRtqjKGI3ThqTrSkk6w7Ru+P//VRVWCIf7gX5e7pQ==
X-Received: by 2002:a17:902:da8c:b0:295:3ad7:948a with SMTP id d9443c01a7336-29ec22caca3mr46292275ad.16.1765433530616;
        Wed, 10 Dec 2025 22:12:10 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea065186sm11725945ad.89.2025.12.10.22.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 22:12:10 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:10:47 +0800
Subject: [PATCH v8 8/8] arm64: dts: qcom: lemans: Add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-enable-byte-cntr-for-ctcu-v8-8-3e12ff313191@oss.qualcomm.com>
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
In-Reply-To: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765433485; l=826;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=TYSRWgmxRNSLt2fH+36XKupwzsybh26yro/HGps6z3Q=;
 b=Ux3XflkTrrUJHp+u7FIF254VmIX3iOfhW+NkBHok+c3zuJeA5LieWfVOFHPokKhPaZCUr783/
 7nAw//SIn3rCaw1MyLtijaWEIOLpdIrDfw9bpgsjr955vjm58gSoAvp
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA0MiBTYWx0ZWRfX2+CUd8efQnWR
 nsl8wF5gTBkRUToSRLFBRwvZ9I2w7I/cgydpawHgPZUGPnBT+/ElPd/dKlI6T5TrbYMBqrlYCOT
 h00/w8k4WnYAVfbK2a5TjmKtTaKnmC1otlyyLA1dDLujjJInUR/WLzjCCVFju0LQeD0e9dOCltu
 4zCyDDrpGH1yiyLy081JCEp976DIAJ7hlvOoXd6/QYMBTH0XDf1panu7ImqXsm6YNpDzFeLSm0i
 7/O0TBdkPYbfohaZuLcKDUFRYZMfRrjsxJDaWV3WUb4o448YaReIFnjF1MAzddpc8rRTjgkTPnp
 m+DE8on7nhn3Y8ClA9O1oqIT5szp0BZkSFRz0Kjk79HIPyfQyndnN6wvRB/SXp+fA8iGUMIO7wl
 4QKlE4i4Q0jtVXKIqf9ZbPHl1bF+fg==
X-Authority-Analysis: v=2.4 cv=dZeNHHXe c=1 sm=1 tr=0 ts=693a60bc cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 5hemEHJAdzWBIzhSby5ms1347vfk8Rob
X-Proofpoint-ORIG-GUID: 5hemEHJAdzWBIzhSby5ms1347vfk8Rob
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 impostorscore=0 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512110042

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..3c4633e044d9 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2776,6 +2776,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etrirq0",
+					  "etrirq1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


