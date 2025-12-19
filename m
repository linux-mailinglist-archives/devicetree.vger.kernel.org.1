Return-Path: <devicetree+bounces-248258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F07CD0632
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB9C630BB2A0
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F403733B6E9;
	Fri, 19 Dec 2025 14:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NaJ0+wa8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T/3inuWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48918339B4A
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155661; cv=none; b=OE7prKTOdDAaBEW1hNj52Sai0c/vZSLd5eUjkXN+GCwFJo93d4ZTpLR1rEtnrYyyu8tfx0xJk+bdEG8zbEk6/dfNxDFzwAkYOXJNreJlmcclcrokYDqD7bKbFdc3QDzPtmqoUWOmPwLiIb+FRVp9tiTklVPR+coHtlF2kh/bRl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155661; c=relaxed/simple;
	bh=REbU3xbh4FhgmPEXDqlxy22tlOdJMrBnjksJAi1Cfuw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ekQ0Gmcci/urWj/9gBQKbMlSsFhRqB4nq2tHvkJ/8LyeXPcS+s0W8SEEKa2IkPBMHuGhgIYKRDqbb+2OF122wVfFlOXiEMJYi4QHqW7YargnO406OOpOlXALp/J9qYsjaJVAdZAQpjqo188Ra1YmkeG3IO0zXNd1x1s6gSbwDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NaJ0+wa8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T/3inuWH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBlTNI3318713
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YvyklULcBWONHB6zHUzf6hIC7VGn5yKC57kVjZLZUrQ=; b=NaJ0+wa8mq+8xVGB
	nueinR9AlcG+JmTzvY5kIlUEDlSDjAwGRe6bEaNuFYZQSCFkJPhHEJFu59EYsXB1
	J5pa3kIqErYESI+NCtbzRz3U9UAyO2zEvmma32h3RKFob9MvISRDRjOeHB+HWdU1
	DVtGUZLbVnPXWVO+yAhfklCTVsg394yk3kg+LXCSd4tejOwc/q2TvOLM7qA0lAu8
	uLWFivRlamOTEmb8gZQYhgfP3rv5LKkcErXe4N7JQOHdAc/uBlShzhJzAW6hBT2R
	sMX+T5+QfQsP7n/f0wIpEEEoqOrEf8Vr1k9XjroKBXeaxkNUzcDqkq+25/NeitD3
	NLsgxQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2etxjg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0d43fcb2fso48917115ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766155657; x=1766760457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YvyklULcBWONHB6zHUzf6hIC7VGn5yKC57kVjZLZUrQ=;
        b=T/3inuWHt0Zc8NBA7uEdoQ6qH96bT0HcOqonVDgUsPmoysaZy8N72REFTxaUVWXGcC
         q8/Fspi3TAkm3GMpmyq5pmfLzlIdJWVB97UzyOcNozVB3csIYju9N8hXmv/TjGIRzRmg
         q9Ked+CP/Xke0hh52sNZ52RvMwdry7y3MXYOHrggREej3tNsdaNtryJKt0nu0AZohe5K
         I2U9NkUnoXFGCqm7S39cd6WhriZPZF+5BVCcQ2ePLs10CeXAnEJX0F2CN5byuiEMtQCr
         V/0gNAv2Tap1tuNZuxF3pZkvtlt62rfIKD+XjG1yhMyo0pLpo9UGyfqjWqf5Y63EcmZl
         qUkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766155657; x=1766760457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YvyklULcBWONHB6zHUzf6hIC7VGn5yKC57kVjZLZUrQ=;
        b=YMgd9ySNxC8k1o+QvKbDrjKUHyfKD697Y7ma4b0m3yjfdBrkQTCXz0J5+S1WXqfkYA
         mNFpLZTHuS8opmrxuJ0CFgf4rRIe7fAUupz0P5k+GJAT6Yv1CTOzngeh2NXZNUQBSIz2
         888UCjYkiJs98Lp8+DnoSE/3g+3iUFmfayH3KIX9f4JY5p+PZGyf8zdotgH9WTnwdLk5
         06rQGXACAej1hs9NhnAH50SnCJED7x7cY55zJWIdxCyO77zXPnT90LJFReJU9gNK4nzB
         XUc3YRdOHmKQ7RDP7xp1Lk5KbJRWhlLPA9DVI5aVF/K3NIcOyEw0xTIaLbVe/7I2Bmtp
         sqIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUueoFv1T4vwZR1o+9Jhj/oQKc8+zHpsoOTQHeJRIBdpWjjcSQ8sJgeOuIF7vIrtquW502Z0g4b1hhu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfoq2WXShYSJnkSMy2buJE1ep2H/jVuTnQ4HMeDjMiYXFQt4Ze
	LjEyxLJVSZNa6tRNjdxAM+p7Ghl26T/eHrwBIwDTXZpUJMuRYB3MJ856m+bvz/EsBhWQOu4U5gk
	/vtnSKfm+lhadB4DwxVppardMpVGEz9jiH4gOYLfQJfV2eZZOZeG6FpPK63ZiruEJ
X-Gm-Gg: AY/fxX4To7Mv5MGmxB44N2zXWdHYFNJ9Ch1gfnFV8AOnrvG5UTvXUJdnIum6yutsvbi
	GET0MrAW+RrQrWfSV7JDSi6IYJDFzP6DJ+kyZcRfTdhIEXHdWYX98gF/tBUiHlhq9tOI4K5snjF
	FPKRo6pa2yVdjim1BlOX+PmoM5fn2pFxt8MyVULq2bpx7XbtE4UIeveyp5Wu0h4kP75yape+sLz
	k1te7tQ0WmuddmtMV1OpYn8WeUF7Fsp7eKC2GGDvklA1GltbA+K/4kR12mZSuo6a4dZxtKFsAaY
	sTlsq6rJhOcBi3Nq53uUx/J1aycbPwKC+s4Qf7oAkeaoTBI8H0w6qkhQVB/DDS3x2bwa6p7lXMR
	LBLwq5CoKHfvkPLf2FtHXaGqj4avQbDOa3WaqjiODFh47ZK6soZNO2h6vzXg95iLOd2X41vzbLA
	BwamOfRnOh34vgeZ+fuYZAnidtLp96Ww==
X-Received: by 2002:a17:902:ce82:b0:2a0:c1ed:d0d9 with SMTP id d9443c01a7336-2a2f29359b3mr33327585ad.46.1766155656875;
        Fri, 19 Dec 2025 06:47:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFU/iBbketQynSkW5giGh3TgnwEV/xNF/jMruv4fU3BZmlZCud6GMasORULASLC2d3XegdmiA==
X-Received: by 2002:a17:902:ce82:b0:2a0:c1ed:d0d9 with SMTP id d9443c01a7336-2a2f29359b3mr33327115ad.46.1766155656325;
        Fri, 19 Dec 2025 06:47:36 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm25433855ad.33.2025.12.19.06.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:47:36 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 20:16:55 +0530
Subject: [PATCH v3 2/4] arm64: defconfig: Enable Glymur configs for boot to
 shell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766155644; l=1510;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=REbU3xbh4FhgmPEXDqlxy22tlOdJMrBnjksJAi1Cfuw=;
 b=gMQ0yi5n9c4RyldA44ZJieq/ULb41pM0Dv14bCeLu0YMKnJGdxbzQbHAxAvl599L1dvo0QoPy
 KarCiGx1DBGDMwjJL/5XoNbKJmrWzypQB5XNQ0E26eE1ap+luu+rMrL
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: 5oZXVDfBwtD0r-9h5TgfgKz9w5HqoDbb
X-Proofpoint-ORIG-GUID: 5oZXVDfBwtD0r-9h5TgfgKz9w5HqoDbb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyNCBTYWx0ZWRfXznTOX6PbqwCH
 7grawUdICi3gBCKiSIjVAFm6TWUca3ja9MuxDunnAi4jAIX8mno+YdNwo4uZJPR7jCk7Bg5Tmc4
 J0Bflc3NwZdMkFuZ5iwsyr2guIFQUmYhuOSjpWZH5ortrJ4+M3NS12hABTPh4FWBimQ/lL9DspC
 6rquzDeRjODGfb0CMIfVQBNfU8ZBUCU2m3ryn1LEdF5kupdzHfavGljJRK11+UtDGq6BN9oBRlg
 D3+/CIbZgUMNnt0UxoSVdoXnMJfetgGNPHWiyUG9A7MyjmzqfFGRkR6Ogjs1NB4ucFKn0YVW3pZ
 jhehTXyuz5rOUtTwkdCT0x/t3LjKEOQAgOdJVYy4H9SUDJOQZIET0fIt72daHl2kevmZ7qCfe0Z
 3jPWGDLziWXPDtmn0yvqIRvyOcKBTg27w6XWOHEjIouOXD1POglPogA47YHPEQ98l/dOzGfJAuG
 L14XycWnpKcS5Lbjcuw==
X-Authority-Analysis: v=2.4 cv=Tp7rRTXh c=1 sm=1 tr=0 ts=69456589 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=G4s3PgB1coGp2Q1p4bUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190124

The serial engine must be properly setup before kernel reaches
"init",so UART driver and its dependencies needs to be built in.
Enable its dependency clocks,interconnect and pinctrl as built-in
to boot Glymur CRD board to UART console with rootfs on nvme storage.
DISPCC enabled as module, used for display.

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cdb7d69e3b24..1272422eb727 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -636,6 +636,7 @@ CONFIG_PINCTRL_IMX91=y
 CONFIG_PINCTRL_IMX93=y
 CONFIG_PINCTRL_IMX_SCMI=y
 CONFIG_PINCTRL_MSM=y
+CONFIG_PINCTRL_GLYMUR=y
 CONFIG_PINCTRL_IPQ5018=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y
@@ -1425,6 +1426,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_GLYMUR_DISPCC=m
+CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_TCSRCC=y
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
@@ -1801,6 +1805,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
 CONFIG_INTERCONNECT_IMX8MQ=m
 CONFIG_INTERCONNECT_IMX8MP=y
 CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_GLYMUR=y
 CONFIG_INTERCONNECT_QCOM_MSM8916=m
 CONFIG_INTERCONNECT_QCOM_MSM8953=y
 CONFIG_INTERCONNECT_QCOM_MSM8996=y

-- 
2.34.1


