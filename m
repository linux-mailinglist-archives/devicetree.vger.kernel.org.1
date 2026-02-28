Return-Path: <devicetree+bounces-269560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJQ5LFHpomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:10:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6961C325F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A3593129DDC
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E3E43E4B6;
	Sat, 28 Feb 2026 13:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uc++eTv+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DjNuqCAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2116F43E499
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284107; cv=none; b=IxBU0ZfFN4fqZmOSpeZWNtwX66HMVdEBg9aSzPQf9LybMwWsEhJAOS7nOR16rImZQYI0zsOYdvZTq73fYBOYAEXOP+21wR2lbkHfrxx9vr4LmPMUyJDIMxRhyE5dTjmk2xUemGFi2yGvfEnSWfb8qA0iwPbcd1pPgY8hXzCP0FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284107; c=relaxed/simple;
	bh=cMCCpqwpqcjNbbuP64JBs4nAq65DogFmBQmU4efeZH4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nTmo+HOLkI37nDcB/bnvfyVuZxzF5AutRgJxgYleF9y8l2366o7N1HZGiSgG+/sLu8u6F/ev1KGADcO3ZLPjDfwZvSPzp1HjwVLAdKe1GKa8bOB20/iSfZsAWPxp6bRcnk+N3MNOQXYh5kGUg++I0EnwaJkweC6THrtFtKfHbic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uc++eTv+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DjNuqCAQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S91HX03437405
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8FCoqo731tRRbXebYRk14fugKCPt1QYyhCRWYzz14Rg=; b=Uc++eTv+sunx+ejY
	Lqo9Q++naPoNUaMa5auNyyuTU+aKinx/5g6cUqEa+lkj5g9SdweyxJXAEGZy3gLO
	3Q9UG3nGs2o37VZLk6n42y4oypmZjQ4Dr0vSTd0OdcmTqkyfYmBMOOjld+JyuQVL
	urtkGFt4ghgqbRTz14sAUUH7Fk+U+mq6V2/wqc8ghMQX8UvIVC0JXe/q9xo4U/LL
	MqfRQ9+TtTzm2BjUtD/Qu+mWkj91QZPuRNdvhH0hG9iCM20vGRSXnjG3qArkcRVm
	TY51+k06S78v5cB9oq5SQqA7GTIywGYJ31MyC5kvXHwdCgvbdoMxQmDzivcJawPp
	1HVxxA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshch02k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:25 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae04f58b19so178414145ad.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284105; x=1772888905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8FCoqo731tRRbXebYRk14fugKCPt1QYyhCRWYzz14Rg=;
        b=DjNuqCAQ5D+jN/18eCZr2UopiLj80CJrxrwJneTXzyDlmZxkX1nsZMwwoJfRbll48i
         0TUVe7WbiDM2/a+cd2efOYuvYG7sr1SNHsiMa7tiKxLNa3sYBbCMTUSuq9YzrgbB2Qca
         RoUJLCBk18yWRERof+EHYjVitN5bW1WUWd4HP2ILC1iX+QJF4+UBz41X5ON9KBO9HUuS
         nsoBfUQNZvyfgjyogSHNtjePBJlSAk6garUp5q0zrrnvN5EDv71OgS2oAreckmU8E/EO
         cQ6lhKqozanupBAAhmFeSUCAp8Z7MgglBV+FcVNxfUw7HbVZQB56Sy7O0RMcfxHId+JZ
         H7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284105; x=1772888905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8FCoqo731tRRbXebYRk14fugKCPt1QYyhCRWYzz14Rg=;
        b=F441++j37axblBPVEY8dbormygty2F+blgA7Ypbk+TjQUiQQjzqIgxi8gbbiGXaPcL
         bvhiGxOxkPDiZfGwuqEeBZRiZJaVrFl0Sjhi+aurEbPJQ11hwzreM7lv1seujPuUAWs9
         f3D5wR56eKQlStDAoWplFiz9aU6fJ2eXu2CeQ2aiKcKGTsk22Bfvh3LOpR/Wwgeh01ok
         qZq6KNXuHCapAl7YBAmeAVil1k03GPkkg3SO8fshAR6ZOWy9rCxvh5JkC8TgUWo9FB1c
         uNBrmoKQD4zYDnXQv0VlWLLN+IonPcgy5aWxICZM8eVjEElk2XX5KYXcPq7FXMkXt+5h
         owVg==
X-Gm-Message-State: AOJu0YxQghjbUTwy2fn87YUzujRJEyq/wzlf89cmZ2GIOudm8Zr748TX
	t231vI7HyNrevfGKKGykjN1bTFRzF5ZeWhplOgaB2nF8AGPPZPWBAGV4eshIK7ZACAzunXTNkI4
	qsebIZMFHtqyxFpWCcjJcY6DvWRa3Imk8dVbJ4w1idicQxbGiA+erUHK3+8G+F3Mt
X-Gm-Gg: ATEYQzzMOf7t1rUUXiQTmQSIdxXK57wBVo1rUetT2mX6lrt0djocBQ1RLhnT+k8q19P
	yD4gt3UhXLf7+P3QFwkNnTL9Mv7TDbGAi8zlod0EsG+YWtoiYowT4DwRFJmGJ8pM2fNMcNnVbTy
	LqDxiJYvPBh1BSPTznLWxDFx7FWkJGm6Oq+uXMRvnHXUcJJqiMJYHM5x/Ls2CVntVatahQVtx9E
	8qqEF+jWfWgMINxslRMHQ8jxRyv7h8Bjr9yLiFU2YUagX9hlD68OhmVf0cPLOZqQOcE2KAKZCfe
	ocC4RjdCFfePxppiCi4DjynFm891dd9mv9mJ5lnu1j7UaqEG6w9I4lT7lhaHRSvAxkRJ2/4BGiI
	b5J8o6ylYFOQwkWJXiTjwAW/711m5TXgt9PZfpaRbIKuOHp9066QDU3mpaqTjngwVxfYeIcubu7
	NLE9q2Xn4IC9BPo4PYAL8KnBJ8CsgR6FFjksd1IAjCFZ2hHPGGFSnzy8Fq
X-Received: by 2002:a17:903:2442:b0:2ad:bdc2:e053 with SMTP id d9443c01a7336-2ae2e40a197mr55696415ad.20.1772284104595;
        Sat, 28 Feb 2026 05:08:24 -0800 (PST)
X-Received: by 2002:a17:903:2442:b0:2ad:bdc2:e053 with SMTP id d9443c01a7336-2ae2e40a197mr55696215ad.20.1772284104133;
        Sat, 28 Feb 2026 05:08:24 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:23 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:04 +0530
Subject: [PATCH v3 5/6] arm64: dts: qcom: ipq9574: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-5-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1186;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=cMCCpqwpqcjNbbuP64JBs4nAq65DogFmBQmU4efeZH4=;
 b=rh7DVa8znI/LtwQlQUWp6XP3e9+dIgqDQbJmdaNzVnhNUNP50JHWO3I3LeUPgBajjs5OHjQ/s
 PTr1woZW9VKCnc7xIQuFscGkburN2qt04Tve/KKyFb1+PkEWNrhWz1T
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: so9C-APrasX35kFVNpBhiUXnwlB_HGsV
X-Proofpoint-GUID: so9C-APrasX35kFVNpBhiUXnwlB_HGsV
X-Authority-Analysis: v=2.4 cv=SO9PlevH c=1 sm=1 tr=0 ts=69a2e8c9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX/yy6aI2Mdt6o
 U/P1LyY5DPrid/TSUmAfj5RNU6URAlcqjHB076if84qzsOt8CQzylAMJARfWwwYiXq4zizBJ08B
 OQg1qdO0ZS1/UJx5v5Am9vk586gFieOENj55sKUIo7dbjmEd1ktye+8m7elLKrmQIM07fSk2xXM
 zjKlwW3qGK3bh0feDu/Ot4Tn1ybImWURMq/3ikbahrHqpO46RXMUq9mXdpzKd0a79JKFBK0IlcH
 7mn3HAo3nprlEwdfcap9x5F7LzZrlUA4cV2DArhaK8aY5KHpFQX8ICvkvT4L4ZrXnUpP+tO2i+N
 YdR/6ijuHfDDrLQfoP7W4GWmtbyDNqn/8tkodL38nuUUiuMRleksGecbUgue3krIvtAM/3KoiH+
 six7H506UNxDLtUJBFA/b+0LI8IsTz4sAnXkxfoIR7ZAPMUFS5AWorQ3FhLhBwmd5SsXy0dm3hA
 rlBMZxJK0xDOK76AEGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,8af8800:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.131.57.192:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269560-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4F6961C325F
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 32KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index d7278f2137ac58305cc4e82c1d6c26c08bc7a405..2ed111139c579787069def7f29f2d07e9a454e04 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -741,6 +741,17 @@ usb_0_qmpphy: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq9574-imem", "mmio-sram";
+			reg = <0x08600000 0x8000>;
+			ranges = <0 0x08600000 0x8000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb@8af8800 {
 			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


