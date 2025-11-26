Return-Path: <devicetree+bounces-242536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E11C8B62C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 19:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4D8094E0375
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E992D837C;
	Wed, 26 Nov 2025 18:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AFylIdLf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UTiZSxH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8BF26ED48
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 18:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764180586; cv=none; b=J6gXhcbicsa7PQpmSS/diEYGd6CiPNCFxLF0UjX6oBmYu0XxBwMSdX5LJnqeAv4+mTLW+on4k+gkf0SwoSTbdu235vAzaIQ+yEb51GRTJzdqTdt5N2Vf86biI96lWbnb26Meu/8mfiwqbwwaBlZI0n06AgVLBn+5MTcx/wIoLqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764180586; c=relaxed/simple;
	bh=hCi2eCKxJ5E8cwkQhQsDZzhvZpag4vydnsTZaV8EP5M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=nkl/L8WQ2rnCqjcDaul7okWhmxxNDZ4OoLkEYOiYv3iPelTxJl088BIxcHiT7IU1Vwo78cWKn34P36e72T1R7/9mfOQNb5Mn1exHa8x2UC9u757dV/4Qi6qwrbVRsO/Y9Xd6vmNvPOXVzhnMH2gDGsS4EA2oWUoTynXr1OVrRs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AFylIdLf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UTiZSxH9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQAskrH1700304
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 18:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=j37MaCFjUw62cRuBDaXora
	U2a8j71cPnRU5B5JQYZZ4=; b=AFylIdLfPWQzCS6fZUe34jVzwihrA2P6RNBEmA
	avEL0IeHaInyPv86sDhpGV/cjqkXtVLh7DURvzaJg3l/ymMqqkfpSeAOIuYoi48R
	Cln9zsYsqktELk2XmL4BGwFAFAct1jCZepnvoya9XQazpmyPjJisfX+mw5eIZIH1
	vzGJxPUOxlU8pRuhMBi4QmX1NjmhmVn216jXW1MFAy5w9dgo7cGtKxh8/iKEBXif
	RJxVxcMqkH1fUcgh2tQNQaa40oXSb1//EbEJdIultm1E15PkLg8soFLz8o8kxjm8
	81JRWAJ4SvsU2kRTtVu6H0vcBfl+om1sQrRhWzkQDMyxVH2A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap07a167y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 18:09:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3438b1220bcso13771a91.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764180584; x=1764785384; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j37MaCFjUw62cRuBDaXoraU2a8j71cPnRU5B5JQYZZ4=;
        b=UTiZSxH9xDZ6FdNOaozpElcac7bbwwZVRMtZoBwPSVzwnFFVYLfDhRK3XU9FRs92nc
         pu69Avg5KeEFM/BfgDvRZcTCJv7vgaoLf+KdgvYsDC8plomaXc9Uh6pTEP7+OvbaBFnB
         AOW1py1vq7I6WgP9ZPQcNJofjkfj9b2tJoPtfI+ti267aDkME8XZfyD94danpjAXhcjC
         ZENBeOiqOtzCz0736HTjg1A/fxbkEQUjkaTPu7tb3E6oXxW8ylyW6t7GNL+hcDUAuI/q
         ubZUAZI0s2BXyqCsNxiPGzaCwfDN3MhoYNON4jozD1Fosdlaqc/Y0boQ4etALqQC5vfu
         Krow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764180584; x=1764785384;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j37MaCFjUw62cRuBDaXoraU2a8j71cPnRU5B5JQYZZ4=;
        b=EpMk8lNsaQaMWoK8skEQ8JFhmn4O6kOUL+O1Lq/Jo5K3VslhxnCEdVDEX+6wZpIPEO
         HxHJ46UqJZuBXXFh7jYDmh7pj5L4/50Qd7tC0NlOc8D9Tlp3yOj6XPW1qYgP84cO782P
         o+dBXldog6SuqXphrQ0yawMuX2+XzskW51L8YWxZXVr/qT2ygRMKrWKIvThsXB+99fTa
         0hKgiowLAbtHLXb8aAmYI02h5zZSuj8P/4tYu1H5x0d1vUMHZe0dL/GD0THI6xi5LT9r
         /97Vdi84GU0XBqGlAAIVPsKpOWRd2ZKIbxDFBs6FfRxm3sWFllj2ZOmmCho4W/WImXtw
         MXcg==
X-Forwarded-Encrypted: i=1; AJvYcCWy9D5VW0j9CO89a9lLFh2Vq/7gNIQ7jZ6bdd8G5Seqq1qBN/OHxTvTC7wpfNcf9wxKwc8kZo6T0nem@vger.kernel.org
X-Gm-Message-State: AOJu0YwZYFqNSz3SnKXLdsaoa/KW7gnSVzv0hGgVorv8+vtJqm4LPd7h
	oyNH1OCd7DZ3K0HApqgJjNAd6bR1V/FrjXq3sjnOS2RAufQVUHn785puGaUVOrqVjqdjW8x3d6d
	iEa+p+egwOnSb+zRbXQxKqxzYLq7nNffKGBCGACX8baeNRCeKMa0nvKLQY6bGODeY
X-Gm-Gg: ASbGncvTWVtTHGXPh2pPVy+OPY0lPNc/86wMOyr+x4Z8MHRTcCJytmkArGawcDPnoIm
	H9HP89S5lGeHYKW9+26u5N46hrhxcCYRzdvkLyc4j7nLyWxMEkwQsRe8VEcvss5jPxZx202+sG4
	G7u397VH5zpPmlTKe5EeoV0EUfY4Jsb4DG5ZvZ0rnsM14LU6Yb+vGJAb6ViT2LBm1irAdlPcNyy
	5nL60Rk7GRMazNE0ji1EFPlHlWzvaJRr7laL1uvkcliJ6KFkrr3xm8UIG19979DgjUfuNMPhKOK
	uV1LaO4TWjUICTIb7Ur5DWwcnp9ymCCUh4kiMMKqzNSfsBWT8NwXZr6KhKX79jg7P82fPiCroVb
	iEknYe8VI9u9u2lZAZA/Pl3nw2argbbYAvw==
X-Received: by 2002:a17:90b:4fd1:b0:340:c60b:f362 with SMTP id 98e67ed59e1d1-3475ebe6763mr7667279a91.6.1764180583417;
        Wed, 26 Nov 2025 10:09:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYcctD26R7NBEM1n+c5pe2hqEuEJUZCQA30LCjbik/c9HRTpP38oa9B0O5xveVysMMUoeQyg==
X-Received: by 2002:a17:90b:4fd1:b0:340:c60b:f362 with SMTP id 98e67ed59e1d1-3475ebe6763mr7667251a91.6.1764180582937;
        Wed, 26 Nov 2025 10:09:42 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3476a56b252sm3224890a91.6.2025.11.26.10.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 10:09:42 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 23:39:29 +0530
Subject: [PATCH] arm64: dts: qcom: sm8750: Add videocc node for SM8750 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-sm8750-videocc-dt-v1-1-a848fbfb257f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFhCJ2kC/x3MTQqAIBBA4avErBtIU7KuEi1inGoW/aARgXj3p
 OW3eC9B5CAcYagSBH4kynkUqLoC2uZjZRRfDLrRViltMe6usw0+4vkkQn+jabUjQ70jb6B0V+B
 F3v85Tjl/HaY/HWMAAAA=
X-Change-ID: 20251125-sm8750-videocc-dt-4328c4c98cd4
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=ZZEQ98VA c=1 sm=1 tr=0 ts=69274268 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ylueHw9rjOQuq7YDIEsA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: 9L9P2tqvagWyZswUoft-t_eYsZRMeK9H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDE0OCBTYWx0ZWRfXx5TGuxSNlEKi
 N6zkOXGhEiq+n5eNQvlq5xE1SQD3BNd9dmtl6e4vWiukkp8foh1PrwuXLAWDDu1jAyDqwdX/ubj
 oWKC7tHsJ22YLbOCNKBwBf2JhMPSBfYewbhii/Rc1Tf8W+3YtKyJswHbV4XFUNAFzMczfTysX4G
 +wUONRZChsElo81mzd54AiZoISbMb33TNccp8BBE80Z0UGs5+u1ELIy/eUiM2k8jIDbLPthwn95
 g1r7IXTSO/EpHCoPEmEu9VEPsfpqFTLXdDf+AMMRrktzKemoz0DDVgKBThYOJxiU6WFCvzKkNS2
 27sQjy5PoZJJwAu1Afzs8NrAxUAnGuuUOwrgXX50pt58B9KnP9HBHdgsYiSxzZ8PmPGGiB7dWZE
 2LWETU5i/RE67tw4k1fSpY4+v2+26g==
X-Proofpoint-GUID: 9L9P2tqvagWyZswUoft-t_eYsZRMeK9H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260148

Add device node for video clock controller on Qualcomm SM8750 SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..18e43c509f1f24785d55113addc5cd9f96e986f1 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2740,6 +2740,20 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		videocc: clock-controller@aaf0000 {
+			compatible = "qcom,sm8750-videocc";
+			reg = <0 0x0aaf0000 0 0x10000>;
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_VIDEO_AHB_CLK>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

---
base-commit: 92fd6e84175befa1775e5c0ab682938eca27c0b2
change-id: 20251125-sm8750-videocc-dt-4328c4c98cd4

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


