Return-Path: <devicetree+bounces-258922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IG+6KUpjc2mivQAAu9opvQ
	(envelope-from <devicetree+bounces-258922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:02:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A19875812
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 640B23042996
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C638634CFD4;
	Fri, 23 Jan 2026 12:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LX+bqICh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SYRt8zia"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A99A305E19
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769169640; cv=none; b=OsMqfjTYpwszUupx1NGQi8u0CiY0BQgkQSm0LNn1Qtmx8CTxTwrqZ5J87H2OjcSNWT2+0vLrnF1Wu7DfDmv87Z4c4rMvuCVMXBLL51JyKrMhAghus/WELZNEZutk1Qy7jfdSatCVFhouZeFDlQrhdVnLBx5ckd/LPluG6wwfUa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769169640; c=relaxed/simple;
	bh=hF/b32ukfCLQN0CGDM2N1sNsOSIlI0Pc0Jfbni0I5Ao=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WikhgCTgDpN8fFq0D7f+Ld99KblgzoCZ7soxu0nIDHNuRG7EGp2i4UmOuyn5IUkFyP8h1tKt99gGUwnFJpSdRa+4EpZ9JpBW/rBBbi3WXk+2Rc/sD0SctuVEfNXADvft3dGFFCTQNbnd1Mb1kXAMYbBqKDE1ZRfTEyGxy9K34wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LX+bqICh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SYRt8zia; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6KroC322603
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:00:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=a0oRFhVBMAA
	/MRcBJ7GOTygpsv1bOmw/lNxdwt2fHfU=; b=LX+bqIChfovTPFFAscnheaTlpPo
	osPZXzLCEJ6x4p/ftJZ+sbgR/+vmLPO0BakJekP+7tR4wxsO6Fj0js0dnnG+5Q51
	zUSNUqlNNQuVNA5V/NJeJFQqoJnOv1jzXw43DsColiW9wJsxIzeydi/PYHhVbuny
	NdCCFyfTTU8AOPgLchHuJ0wUs14qkEkN2UQXzi0mtczcff+6sHQTV0AWWmhiqBmm
	OFhpwexEq6akFgre33lxPTWlLWCLTxDHc6LXS/d8jiIOm4rIqI6oo2miIhgp73xA
	ddvPCBLIGDKlEYuGapbN2zRuzYIFL8omHXLSpXGDVIPd/H3mUpdAV3EcANA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv3mq97f9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:00:38 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c634b862fcfso1075266a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769169637; x=1769774437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0oRFhVBMAA/MRcBJ7GOTygpsv1bOmw/lNxdwt2fHfU=;
        b=SYRt8zia/3Coxv3x77MvqRJeB57VkXvADMBl6Ss1T7l5I/v7g3wLQWYT5mkc6ke2p5
         tFDHgwl6rVXLSt1c2MFyU5KZAtoT0Df6LpP/wmx5BFFp5pH53dgfk3Xx8AGGT3V5vfiE
         Su5BSXNVyzaot4DxAmkZ52n8ueBwT7G7DQqqApiQu48+j/MI3tZHYV4wRKejRG9NWbjZ
         s3qBJgTZWxFFypsrz6Fc7n3GTY7tFUmzNY11s+zhsM/WStRIAhZkBhQZFot+WZQuGPgD
         ywWy5BeGhsoave7OfTeL5hx9HSN/xMFpVO/Ka+t++h6FFEUIPVxOSP6W+4+lI2ZixGFN
         TxSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769169637; x=1769774437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0oRFhVBMAA/MRcBJ7GOTygpsv1bOmw/lNxdwt2fHfU=;
        b=CNCa268L+wtWn7w6AwYXkM6Zntt7FCdRWFE3xgW53JxN4aRzb/bQpkCvUFjCBvz2rL
         Jn4l4c3xi3a6juHuFUveCkE26xQOuKXsnzw2MY54MUs4LUoWcnkgeeqYXHJgZW3ja0+d
         hK7rOBDIOfF+0TrZJJ8W7e/osp9fiHNeGCq9tXcwN6QeT9BNideQnTy9WE/RJPQt+hFo
         kxIjTd9jfC8c5go9l47IhgRU8BX9xcPB8IZFdVU/jrTBzuRfBbMApSKCFIXxZdFnX/C/
         KxwDYP4+uhAL1puLgLKJLUIO9mqtBlLus+m1cJN+fJW9c0LUpZXuMgETAFS7i3WYGhhB
         FY2w==
X-Forwarded-Encrypted: i=1; AJvYcCWlI3We4RoLz7VYpjvffBCqjnmVno0uEOfgU9auBb9tnMezYy+EaZXJUMZwzSUu46oDbKl0bVLZ3Iu0@vger.kernel.org
X-Gm-Message-State: AOJu0YyvCtWp//zAgARwrVhK1Af1iSZNzQ69UmzMuLH1rnYHlWu89EF1
	JWHecFO43iTf3u+2cW3oSwamwLaezmrNakLRssEDTks5+VfrjQpo1XAYbgGafddKZCH7qvSuDeW
	XTFBEI2shY6LOThB7LPGOfvrEz79ySFxPsRDX4paHtKp98Ksr97bgMthtdMMT1lMWTFjaQFFw
X-Gm-Gg: AZuq6aKWIAAulrtVE7N4MrZN8IVzH2VCHmsYMTCgrv4mcmmAsYQ+ynzDD3KnniTRTZ4
	e4GbwYf6G2oABqC4RZxCW2PJzXO1SuM/IxjSs4GqKYFCDDYzcmi/70bEre7a+VZOPx7qNYZwK+Z
	sDtPLjk5ZGsW6ffr8gS9pj1iPw1eNnlh7kw4V6qfQx5oIi5Uv48nCx/YKwqQBhktizt0D+qs82n
	HPOU3QHnh4bxxmXXnosPPjoEHM7hjz93r2iDrHr3sY5GRzL0rz0D/02FCT2rrBZ91Tgyz4TIcrQ
	g/SiMIVEwRY4I1SFtd20tqezmvP+RYs7vfRFHJK5PO1pveFncQiIASlcx0i7EjWDOe8HAw15ca3
	en8nLQaQUnHyBcJTdDbO6EjgBncLzRloeMV4TQM7IeSmLW3TkQdBHt7FjCyrvV07gD+GXkGo6Np
	S8Vmnq8vkpy7ZH7N3xVzg9/f6KiadnG6c0/ND+Wl8=
X-Received: by 2002:a17:903:2441:b0:29f:2b9:6cca with SMTP id d9443c01a7336-2a80ec6825cmr9386275ad.44.1769169636805;
        Fri, 23 Jan 2026 04:00:36 -0800 (PST)
X-Received: by 2002:a17:903:2441:b0:29f:2b9:6cca with SMTP id d9443c01a7336-2a80ec6825cmr9385915ad.44.1769169636278;
        Fri, 23 Jan 2026 04:00:36 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802dce0ccsm19047295ad.32.2026.01.23.04.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 04:00:35 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Date: Fri, 23 Jan 2026 17:30:16 +0530
Message-Id: <20260123120016.3671812-5-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260123120016.3671812-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260123120016.3671812-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: EfdB0IW0fpOOZoC5kPspiEGa_QukNqAY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA5OCBTYWx0ZWRfX2tfnWnNc1FCj
 0w6RqOe2APa+0++57VjuKtXX0s8npxhlUYaeGacw/FVjloL5cXNg+/cyeuKynJ4qC0C/dQHk5qv
 LcSml6ZYt0og05rNJvY/83+olTHMHVAEUV9hLYmnyjeAxckZuDkMvrFIIX2qulTOjtRZFPO3XxO
 BFGTutwTm6a0QaOdqHlKTAU2yP3GLOmH+y2JhJPGE4EnYkC+ftuB67SHVtFv+37pEFu/M+ce33H
 SAyvi54xhntCjJ1EwXOMTvvLD+RPC6qb29wmlAZYi3Wds/yK7nBNVCXkUspXz8C7uAh3HiI9kRA
 Vsn6KOLvJf7emekqtri3vuJJuyvL5An7+ExHPdK/ySLnlY1+BT4Lrp+49ngvh98qHW/jyDPqaK+
 gfTi7xuLTZXyEGdidMvdR+K1JVxwpu0tlaLcGjle+EH32xpZEPCHsdubgHsGGX20MNQmIZiFTbQ
 LRjwQXnwxJ5v7sSYFrQ==
X-Authority-Analysis: v=2.4 cv=SMpPlevH c=1 sm=1 tr=0 ts=697362e6 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dVVBzcRkQPyMEGPpQ3EA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: EfdB0IW0fpOOZoC5kPspiEGa_QukNqAY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258922-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A19875812
X-Rspamd-Action: no action

RDP433 can have NAND or eMMC based on a board level rework. Since the
same GPIOS are used for both the interfaces, only one of them can be
used. Add a new DTS file to disable NAND and enable eMMC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v2: Instead of including ipq9574-rdp433.dts and disabling NAND, include
    ipq9574-rdp433-common.dtsi and enable eMMC.
---
 arch/arm64/boot/dts/qcom/Makefile             |  2 +-
 .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+), 1 deletion(-)
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
index 000000000000..c4989d00b18a
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
@@ -0,0 +1,32 @@
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
+	pinctrl-0 = <&sdc_default_state>;
+	pinctrl-names = "default";
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	max-frequency = <384000000>;
+	bus-width = <8>;
+	status = "okay";
+};
-- 
2.34.1


