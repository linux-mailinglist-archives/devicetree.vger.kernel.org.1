Return-Path: <devicetree+bounces-261673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP1TEYlUgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:38:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 944AEC93F6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D07A304752B
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C76288C2B;
	Mon,  2 Feb 2026 07:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="URDqceV8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxgfQJTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05A62874E9
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017629; cv=none; b=WwEzt+VE8ia8dFAfLuTOqZtnYGvfNKt7567Hsx2uYCQM5Wd9anJ8XSV5l5lmiUaXMf3HwMYu7u536EhhBZzC5kWBcn/wSpxFxuFiGAMZvNacIUOV2xmWMmz0uloLHZomUVus/KCYqs9+OCSz+P6qcxrjlZxNdxsbSeD2dg4kNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017629; c=relaxed/simple;
	bh=wJcPckga84qkJikfAo1lUUPEEg7e/J/GjdkMbFVlIWI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gyjOBWcJVtAUVcjLeNo4oSLT+f/p/gbiPW6lxLccBPea0aMoUEkAy0H/dqKseY/8AWcAKgj6EnxQIbPcO7aoJMgHIudISTHUkW8w5uo79IID/ol+4f9MifV7J8kSNhppQG8lDZ7qtGRx1lFOy1eHmWNRk2RtjROqHT3vqze9MP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=URDqceV8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxgfQJTZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611Nl2WT1244938
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+BdPd3+ghSB
	u/MxiQx/PvUJlHOTK+MgLo/HmYHxFwxA=; b=URDqceV8wABAzPNMGWP2hbzgHPu
	npmpmLFrp8aHrcwbttY2iQbRNiTcUjBq75AoaUa/qO92z2jh9V3k44wnJMnJV5EX
	cSvis25dXDEoijEJ/lHCudkfJ72IPetD80xTlVRg8YfgAIIlEIDLHaqFX4Ir3Q6u
	aNprTxugwJle2E61dUNkAAmrMOQCWFYwuE7lBcznUAYuzBPczARBjkIj6U1Ye4hr
	n0+z4ycmoR9cp+fiROifh4hfysO9GTgF7HeD6U4XpdxfBXZQsqWt3ZhZ+p3Zzi1x
	eIKHn3vm3Vq5zpTmllIdeAZZAi2zmHiZo9+pyAs5D+R3tsw8ri1mLncaqyg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as4veyn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:33:47 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354601967f6so790665a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017626; x=1770622426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+BdPd3+ghSBu/MxiQx/PvUJlHOTK+MgLo/HmYHxFwxA=;
        b=bxgfQJTZedxj0OUFHL28lZjXzRmeD4NWwJv1r8dXqWiN8f7kNcaYiUFuRFOtcBu8mq
         SxZB19emdphCYuaZ+lwa5F4ZLVtl4PHYyTaucSfM511AqSHapOOAJ6XKrrPZa9wf54gk
         xltQngE6aT3hQSTF9R24T+pbsVWKW6o2TjP0y7iXRERnFAj9HEg+DyX6b3nYFE75JRIP
         2a8mTOt5q5Fl+yUvLYJ59Red3QXQgKGJwCJ0sJdEbBr20hUl5WyS1DzOgey3CH0qnk1U
         4B/R5ujhM88wyDW9i8ldD7Ttr+v4V9wosfeLPvaSZ8lmu/C9HInq7NaTr+Tx8+n+567J
         eoKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017626; x=1770622426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+BdPd3+ghSBu/MxiQx/PvUJlHOTK+MgLo/HmYHxFwxA=;
        b=kZb8l922qUssqirM+Co2GRVf1yIPyPt5xVswVom5RKJBT2BlfVE6cKBTfn9V/AY4kt
         DrgJHk3OLu1dTduEHZowr2r2fYQ1BddFXk7S5D3jnyKDpA54Tfvfh9vu4pJBcOKJRPo0
         WYDB5IHfPeVZAivwMPznrcgMNYVlLj3U2RwevlwG300DPYM7GvxNf6nJxtoC7d3bRN97
         SxpQMQXu5IaxMSAmJPj5ycErNNsmRGozd5ouHm/pcCEPBdeoIR5o+uJxdV1wTWMehI7J
         FcGNqj86lU5WbDaj9CnJwstzIjtvYnzlS8MwMbvfPhv3ObsGZ5duKeCUwLCORAIYPn8K
         0o5A==
X-Forwarded-Encrypted: i=1; AJvYcCUsD1GMcFTT1h5omPaPb1x5zQ3tpPHEYMKbEkC60BpUR8+KpGesAYwi58iPHkjjQFuwl2loM5wdl8u9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1It+Nvxm0vNQ5isX6oT5JLwbqm9I/XOPvqK20nVd0cN6D8mG+
	6MxSWLQWd1KnSOGQj6tALAIl2tOXxMToRRNjb8SCNjYj8zXEZStfLKNfVXGcO/Uhg/GNPLEM1U9
	tssinr/M1rqmigsAUBY/r1wsy71NUZDLR0b4n1JKXD224A7EkD2tSJFa+KR8viYon
X-Gm-Gg: AZuq6aIIEO9K/A6DMUXsM/Sb4VD285FXO5r3QD9Je9NkH8rexSwXNovRtmnVT/C4Ncs
	VbfZ1ltRR01Qm6SlIxdrpqjD0hsWpwsFdZVeMSUfnp9uzWD+b9cvs6gAOicI6cUNJ1pZ1ipxSK/
	JIUKtSoIuEPGL1eJMCpn3MS22nutT450EeGqZaeFghB3RPI2FKblCpzF0VUIzUtiTcv9CZ1nrmN
	gaQcgAi1FltSIua4xu5+GWrXgeOaPzhFJ8pYJyMyXsGQzmFpXRLwbIiOL2g+9Az723aJq2WUGl8
	KPNBNcXks6lCeQnAHChAb40Mjt5rswwS57UKDJKOqVkNwMCCJY9vmKzky0517EFFqojIYdeM9T2
	LWWzIMPfyns990vLhziocKCZpU8BaQyHDDH53l+g899O91NnetkLBdrfKuGo+ncaTi6C1QdzzSO
	xOSzRDM0liMFQwmfAVwTyqoQHgX6RhTznSQsXz7m0=
X-Received: by 2002:a17:90b:2d4c:b0:353:2e1:95f4 with SMTP id 98e67ed59e1d1-3543b308529mr9198440a91.13.1770017626236;
        Sun, 01 Feb 2026 23:33:46 -0800 (PST)
X-Received: by 2002:a17:90b:2d4c:b0:353:2e1:95f4 with SMTP id 98e67ed59e1d1-3543b308529mr9198415a91.13.1770017625728;
        Sun, 01 Feb 2026 23:33:45 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e25sm20758332a91.1.2026.02.01.23.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:33:45 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v4 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Date: Mon,  2 Feb 2026 13:03:22 +0530
Message-Id: <20260202073322.259534-5-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XtQ8QIQXatQ4N6sQMbPOxg_VuBbdICyK
X-Proofpoint-GUID: XtQ8QIQXatQ4N6sQMbPOxg_VuBbdICyK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MyBTYWx0ZWRfX7PomLOrOmA8q
 7xHfEycWqowPOq71op6EezEPtM005RjGIRZWbMRYCNh2eSPNkytmeqQX2dVc5BuSGkdy/IMInE1
 TUR+t3pg1kLEeLDacx0I8Pdwi+FF3TEoqQb4uOPQWYWsf1xBuYgIk+6F882FsTz5cSgvqYKOG4h
 uHDkUEAn4//ahvDzxt1TvEYLWP/9LOedG2HTaAPNneggxys5KiT+TIZvg6MG9ZxiBHRRpfqoGgV
 KnwrkCTqjv8eUtahpyTg+/hOBXLbyY8DfNYLGH+KA3MZtTiexg1Wo2S9kD7FqDFwYSjgFIRVC3N
 EG2K4SctX2BJvr72U77j+bhGTl7v1711hQRaDI05IYM2nbUdQdRn5AWcuFuMtE0QwTdAN6R8qjW
 abcnq3hGWHFpm5KbG2Ar6TswrfpF9hyeKg7j8ktdXmNP6edhuvPtsT9OUNQedyGUQTkMMwBZ4yq
 9mqwxBssiSiZdCM0k4A==
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=6980535b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uDUrP39lUoFQp6OTP2wA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261673-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 944AEC93F6
X-Rspamd-Action: no action

RDP433 can have NAND or eMMC based on a board level rework. Since the
same GPIOS are used for both the interfaces, only one of them can be
used. Add a new DTS file to disable NAND and enable eMMC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v4: Move sdhc properties to SoC dtsi.
    Disable nand (that is enabled in ipq9574-rdp-common.dtsi) here as
    the eMMC variant doesn't have NAND.

v3: As qpic_nand is disabled in ipq9574-rdp-common.dtsi, no need to disable
    it here. Just enable eMMC.
---
 arch/arm64/boot/dts/qcom/Makefile             |  2 +-
 .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 24 +++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..d5fe12ef4300 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -26,7 +26,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
new file mode 100644
index 000000000000..9053838ef696
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: BSD-3-Clause-Clear
+/*
+ * IPQ9574 RDP433 (eMMC variant) board device tree source
+ *
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "ipq9574-rdp-common.dtsi"
+#include "ipq9574-rdp433-common.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7 (eMMC)";
+	compatible = "qcom,ipq9574-ap-al02-c7-emmc", "qcom,ipq9574";
+};
+
+&qpic_nand {
+	status = "disabled";
+};
+
+&sdhc_1 {
+	status = "okay";
+};
-- 
2.34.1


