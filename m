Return-Path: <devicetree+bounces-166939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 287BCA89017
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 01:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F11D189B653
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 23:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7AB2063F6;
	Mon, 14 Apr 2025 23:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BV5OHA+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA119202F60
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744672942; cv=none; b=gp6PRUMbLL/+3NloaUBdWhmKuyVK5XKzCcNqYER95sbQqlEzFhdnJ2ICyTaeP8bSVGcxr8s/hq2oIa02Zk2eo1A4cr42VCLD91x1yUQNbItBNVmnKFB3vmL/9bnpyN9rJOuddZ8RHD4QCKosPQ8ZZa57ePXnAQ42/8LA4B/Fc7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744672942; c=relaxed/simple;
	bh=2/EMhU+NqxnUmU9I5ZqfEP5bIJvKe/ALVnWTmcXBqHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CvKKvEPgePKhd+hkeLRzMQA0vERNEpDx28pqeiySsuYDrbKakmQr7ayTHOsjENoSUErr/tc94JFBlz5VV85sCGNTdc2h4Tu3r7zvHaGQhn7p4+A/jMUt2x9rWtUZW9h7Ux70aWVWK6WiB8l+QKd0Hw/7Dh3o6s5vPuxM3duw/zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BV5OHA+N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EKePbM032464
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3r+u6vzzB030wMaT0KPS+9594z+nQC40xkulQ9mf3qw=; b=BV5OHA+NgkT5xwQC
	N2kTxzsY5pH8y0HDNhM2+snvUXwJX0cLmEbScteuci+k6683Bw3+Er33rj95vv8h
	F/CEmT9AI1GW7hkGxXKDdYUtaYcZ2aXlgKDC8VE07cctPx4p7lhGYLJbRcsZPUUP
	v/B5SDFrjKOhLt+noLFFgQ62bFimhSqlhIxRhN1T5G8hgDc3yoCRuC9m/C803n2G
	WHdIgHH5rvHXJxgvrQBDG1nB5m3bX9omvxxqbn7N5nWQYYGtbfGXtbUPVH8tMmoy
	s5T8S46C5WAPgw1YQCEoTYK+5INUDO8UhTZPOVZWgGgfCJ8U8dLvhYVKH8Is/u5e
	2sP77Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpnvjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 23:22:19 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7398d70abbfso6242173b3a.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 16:22:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744672939; x=1745277739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3r+u6vzzB030wMaT0KPS+9594z+nQC40xkulQ9mf3qw=;
        b=mkd+2fN5de8wDFKN6TYVVhYxaZuIw9Pf0MP337zIQiv89m+nM2WD8JiQPkpUpbXwYJ
         TZvoVLjM4JVQXbUcUkd/+Fd56cdXIOMz2gnRlNaNzQ/Q593/O15EcxD7JoIbCv8ZEHSg
         19s7mNG61ZLdZFcMxw1zhSZAG4TR5EljRc8pjKtkPG3KdgjQr3B1HtbEbhsuXvB6hltK
         KD97ZIdu3lalx1soF0LQNONEKIPTgxsY4ftYNlzYkYneVOfWn2AiMVtloxcMW4i+C4EJ
         FfSR/wro6tyCaVlZtEvg7Dvojqvxc8iSIZllR+iH2qihezx2dDgvPopvn50S44tPdumv
         jqlg==
X-Forwarded-Encrypted: i=1; AJvYcCUYIKa/MNo3GwugmNprTaqAm9z/TjYuUWkT/m9jfjU28eUA6enkydZ8eHdknngUaxgnBNyq+U7oZIj/@vger.kernel.org
X-Gm-Message-State: AOJu0YzbLrL1D3aM561RyIigOUveN5wczqq2FukkBboqqC459wGYhCVZ
	u5A6Xs6RPWi3po3JiMNveR2DsQM5q7K1EcWP79p41U2jxuSLT7qlZrQLbQXa75zAhj9UnHifbHl
	YTVnhZZq4Fbjc+wBOWMLBv30JGTMNGBin3LR8I4RAFjaPIt159RJewXJRMwTUd/vvoQcG
X-Gm-Gg: ASbGncsZcrykaI7Awil/itw+HX3XntL8XJoMVVemcpPqa7PZlsAMhRf3r+IN5lViIBv
	/1J9sFX3vQolLpTAHDwtF+gnCe19kOOEsrmoxpkf6EssF6wRYVXV27PsfUQzBWOZn+rVPUl35ps
	WEckY6NrDN9waZoBnBtPNudiBI/4QJgatj6xsFsEon5ZlBdHkGw/6Z9fenuscU08KCncUGueJzV
	1a875lngmBGy9NcqSq/DoLYOJfEw2VpM9m4taUuFNmu+q2bCu4RFV+gu+C97kCEBwiN9VE1d/xl
	SN96WZvvtgRNq1E5Nt+Z6HfyVCrWqCxp+KW1Ewv3iQtPaC7uZTWpjEfWVuNhHVZEyPc=
X-Received: by 2002:a05:6a20:7f8e:b0:1f5:8748:76b0 with SMTP id adf61e73a8af0-20179946424mr19756588637.29.1744672938858;
        Mon, 14 Apr 2025 16:22:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaqJlewWArOqT1w34ez2AJMypmsAuhKGyK4qZqwA+wiE6R4JLg0tM0YTnPyLM8MZygxa813Q==
X-Received: by 2002:a05:6a20:7f8e:b0:1f5:8748:76b0 with SMTP id adf61e73a8af0-20179946424mr19756555637.29.1744672938534;
        Mon, 14 Apr 2025 16:22:18 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221c7bsm9746298a12.71.2025.04.14.16.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 16:22:18 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 16:21:53 -0700
Subject: [PATCH v4 4/4] arm64: dts: qcom: sm8750: Add LLCC node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250414-sm8750_llcc_master-v4-4-e007f035380c@oss.qualcomm.com>
References: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
In-Reply-To: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744672932; l=1338;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=2/EMhU+NqxnUmU9I5ZqfEP5bIJvKe/ALVnWTmcXBqHI=;
 b=WrCHrXytUYfg6wuQFRnksvJi9qMbAAOpEezYN6gaBkFoGLhRN0EyuB5g80zakzMaeXqtBBVPp
 hXGPY6YArK+Cv9kIH8hSzZ6mqu5f+LIfVvsmb7pv19L1PFywwezQMpZ
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: uGXhlmlX3EAMrXPCUBHdz1oBaaNsGxWl
X-Proofpoint-GUID: uGXhlmlX3EAMrXPCUBHdz1oBaaNsGxWl
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fd98ab cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Gx2GX35Bv4c8b2S2wRcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_08,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=668 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140168

Add LLCC node for SM8750 SoC.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 612b99dc3c55495d06b3577531ec6996554bbbb6..5d3a96c6412095fd89ab1fd9a586fe9ad4dd7ee9 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -3310,6 +3310,24 @@ gem_noc: interconnect@24100000 {
 			#interconnect-cells = <2>;
 		};
 
+		system-cache-controller@24800000 {
+			compatible = "qcom,sm8750-llcc";
+			reg = <0x0 0x24800000 0x0 0x200000>,
+			      <0x0 0x25800000 0x0 0x200000>,
+			      <0x0 0x24c00000 0x0 0x200000>,
+			      <0x0 0x25c00000 0x0 0x200000>,
+			      <0x0 0x26800000 0x0 0x200000>,
+			      <0x0 0x26c00000 0x0 0x200000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc2_base",
+				    "llcc3_base",
+				    "llcc_broadcast_base",
+				    "llcc_broadcast_and_base";
+
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		nsp_noc: interconnect@320c0000 {
 			compatible = "qcom,sm8750-nsp-noc";
 			reg = <0x0 0x320c0000 0x0 0x13080>;

-- 
2.48.1


