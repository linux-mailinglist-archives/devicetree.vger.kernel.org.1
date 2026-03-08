Return-Path: <devicetree+bounces-272649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KF5LdIIrmkN/AEAu9opvQ
	(envelope-from <devicetree+bounces-272649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B3B232C16
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60A093056167
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377B435BDC4;
	Sun,  8 Mar 2026 23:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oShP+5rk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TylCoCVO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10B535CBDD
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013041; cv=none; b=ioYzMx4QV7gJs4Q+dmbAgfvre/oHSGvjCOFxm4Me1KKJOdTK7uR1tBxg4AW2ishZo1e8YBGBN3Ad3V3Hrs/Ly+2VkZxc/GLUsdaTKGT9fIyqb6lfiq/xCDR3KfpVKPBCVFQd90vgEokSXbZJhni8NbfAXDoren0VloPfNcya79k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013041; c=relaxed/simple;
	bh=sWB/MCTZF0QRfhii15yqvoLZyv0Ws5yxWGh7O7kBK4k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OI9NMs0jk2ZQuuD+G3/MGuQ85MNbBWMv8/LZ+QZcEeiiQTA6OFDyuV08YlOEU80Ay2UX2B7Bkejq30eZLv9UfGf7dKcUAG4AvzUHvsBkeZ6teW1y/OPw7qTy9A8o4QDmiBPpt/qWG8LfjSRhEiJlBPzps68EiPFeroq9LVan0mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oShP+5rk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TylCoCVO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628MUhdX4164456
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 23:37:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qfGr5maJy8e
	2oTmsd+kPNeiWt8WWcfirQv0+zbNNfi8=; b=oShP+5rkxsl6e05+yC0tgLORSr0
	FEzdxGAa3QJp+SrnWEzMGMWN/JxYDmslKzAsuAz8egvHVbj5cOLkUR94/+y/P/lD
	mf24Q32/AgNsJ4EzudmDm0Ja1BZNcjIJHQ1HXKs4LxuPQXF6I0PpILvKTqzDUVTo
	ShcAVhBenzITlkJvdAL2hcD9mGz5SrtOu4VSPdIKd3WdsB4kwBtX25iD4zdSRn9e
	RXC2Ktn+vtHxhAeVVF/l9VeY/hThg5qBWC6HOc0rPYpMt1W7Jjd6ctxrtHeH13Ft
	9S1xvm7aQexsVSFd0uFLHmOm6RaSRiR5StNuNigGIVZqjaQ/xvLFCsa6ELw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crd6fb66t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:37:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae4af66f40so82343245ad.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 16:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773013038; x=1773617838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfGr5maJy8e2oTmsd+kPNeiWt8WWcfirQv0+zbNNfi8=;
        b=TylCoCVOKXTq9t+ML6eYNpc7nAmedst4mHjyApJUU2BS1hwukp8OnNpjNr7tFhLyFx
         sTpHrNhrCJX4DxrSV28UEZCuvGA6pwkjEBt7J4R6o0vRiA36H46mOl07NSLdbR/t4u2J
         LPTuL5V8pm0uWJbBapEns6dx0z9PvKy54v6kR8+f1vo5Dhw5vNWhHueh7qx4ZFjqNbVU
         42I+2IVJbaz7waKuziuUP6C/+B67d7WnEgsxqAlOdmysjzE4LM6AFxJDn/xfKCt7RJd+
         ktr8sMdv0uMKYR9pyohU0tIusoysBpvagPzwWXfmUxqiO65HNXo4FICKMVv8K0DlJXSY
         PoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773013038; x=1773617838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qfGr5maJy8e2oTmsd+kPNeiWt8WWcfirQv0+zbNNfi8=;
        b=LXz3oox4cq5RA7WHszjJfuGsZl5Iom5qx4FYnqBaGuEy6EdaZQCYe+WXMPL2GE2JUE
         8mH7Rk74V7eGTREBenUeOp6j8nZRHjG20jlnaGmXtn8qQshy5c5eoHopsaaOwz1ximTB
         5/GYSRUu+q3xiZSKJDzyA71w1hS6CkO8LKaXIMA1V6A1Ib8i+2xnPOHa3FORA+W9Uxmt
         2EbBbtJ6WC+SP+A+BIfZNC5NHeluraL0tMNrjshzaKf/TVWlg/lV6yOyYbl+IW3qtQEI
         PrMw4jraZTbG42OTA2RzbcxifJMITIfWK0rTVguBIXi0UCCiVLg6CD+d7sKf2/KQxZt6
         ERqw==
X-Forwarded-Encrypted: i=1; AJvYcCW3ns6GhcYqO9WH/0VTjEg1BAL5mboXcxgzSpN2TnM4pF/AQw2Cf8kIVAA50eqNN47ySEpjGDrIOOJa@vger.kernel.org
X-Gm-Message-State: AOJu0YxftIyxNUV5as3fKZwh7A5lOTuvqPUaJtt3sCFf7m1dJElcYIZP
	fG34yjiUBf+Iiy/4/rTWuRLZBf5+XaLg3dkl4eGqmcv50PnoJyxX/gZzxAvsbkvGc2TCjPc2bZU
	vDGeqEk+Xo/9Txca0smV7FOhVFtzYGrmI9f0nvGePT5yhyqx3ej4dNgwenPFGqZH9
X-Gm-Gg: ATEYQzxqI//Wl1HZ7znw2OTVkgeovQIYKls5C2kE48PXZ2oV0qp0SpsQRlHYXQzaetq
	sDabnd8QKbNZi6d+XX+I01Q5u73++Q/Ud8JSYugFOqYA8ZTz9Oqk/5NM5VK1Q8nc6COy8Ffdv2p
	JNXckV1hOlcGKCIGfCbt5lY55vp7RZSQd7Xjcj43B1MpN6ms66UyTM7JHsF8hYeWXog2JWvZe9N
	jpLTChdvQIRi55oSIdwtokrtYiiN1SFvP2tH7rPFwJn7ddMHZZl/iYIGrSQyxDCSZkfmVQJAYn3
	PF7czIKlwG259W8OetAZxYGTmCrfkPoERLogGy2f3UJJVjbFSsj2/uDwKg8gK7CKELiPnfkAC2y
	r/28pQsakV7IgD7QOia054mVVeHvKI1kr6ibD1YRGk7QwVJJgyarLZKrKn4Anlq5o66TMYeYWkS
	INeuXaIbjM/AHYpBhcgot6LBnJJeDgBeZqUSDX
X-Received: by 2002:a17:902:da8a:b0:2ae:450c:951e with SMTP id d9443c01a7336-2ae82388a53mr82981815ad.17.1773013038532;
        Sun, 08 Mar 2026 16:37:18 -0700 (PDT)
X-Received: by 2002:a17:902:da8a:b0:2ae:450c:951e with SMTP id d9443c01a7336-2ae82388a53mr82981665ad.17.1773013038074;
        Sun, 08 Mar 2026 16:37:18 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9ad26sm114274845ad.28.2026.03.08.16.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 16:37:17 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: [PATCH V3 5/5] arm64: dts: qcom: hamoa-iot-evk: Add Embedded controller node
Date: Mon,  9 Mar 2026 05:06:46 +0530
Message-Id: <20260308233646.2318676-6-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 7RaP6B7VGL-qMhonpUB517ZYtsbYdmat
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDIxOCBTYWx0ZWRfX4MY5OWNOTtpq
 TbQZ+t/s7mzebzjPyQ9ERmNHHYdV8c8mtg7apOd2+xqyu86W/Tzt4nHwOlozF/bo7GscR2e9Tc/
 Ta8+tvGgProcNdt0nONWyATaK1GGRM0HUfJR4IY+mIgcbYPHMUvlgdyZLRxJ0I6/aihjOidxhO0
 HbmLWm2OUkonrH3ql8MWC8qmay0GDJc++PebDReBBAjxsSGvopX26dZI2BixoKDvLZtjWsvOq9V
 aB3L0U8o1JsFwXaK79oguy7rwcvt9PxjOfn70BP3PzOY1WnFqVstjrEXuXm2sVmjs+nkPgxl39q
 ckt83JFICii9twDK6Q/GfK0vD0nst/gU0lWCjrw9NNv4I7aTOiCkkXaFR9pUEpUluX/Ony6TNeG
 TXoKmSuDYlNK8dPkhK5Mo6TkMjz7Sk8n7EtZxd1Cw4YhHBGP0UEiIbkDAXztp1eWpEzF+86B+o5
 34kI2LqvOQlXmgeo3KQ==
X-Proofpoint-GUID: 7RaP6B7VGL-qMhonpUB517ZYtsbYdmat
X-Authority-Analysis: v=2.4 cv=RP++3oi+ c=1 sm=1 tr=0 ts=69ae082f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=ltsv1nNgzXx585P2vnAA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_07,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080218
X-Rspamd-Queue-Id: 17B3B232C16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272649-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,4f:email,0.0.0.76:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add embedded controller node for Hamoa IOT EVK boards which adds fan
control, temperature sensors, access to EC internal state changes and
suspend entry/exit notifications to the EC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts  | 10 ++++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi |  6 ++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 630642baa435..3cbbc4a0dfdf 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -799,6 +799,16 @@ eusb6_repeater: redriver@4f {
 		pinctrl-0 = <&eusb6_reset_n>;
 		pinctrl-names = "default";
 	};
+
+	embedded-controller@76 {
+		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c7 {
diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
index b8e3e04a6fbd..763399393daf 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
@@ -475,6 +475,12 @@ &remoteproc_cdsp {
 &tlmm {
 	gpio-reserved-ranges = <34 2>; /* TPM LP & INT */
 
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	pcie3_default: pcie3-default-state {
 		clkreq-n-pins {
 			pins = "gpio144";
-- 
2.34.1


