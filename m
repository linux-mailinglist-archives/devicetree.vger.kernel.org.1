Return-Path: <devicetree+bounces-262907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC34OrRghGng2gMAu9opvQ
	(envelope-from <devicetree+bounces-262907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:19:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F68F0860
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FB3630F4DE2
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA1343A1A36;
	Thu,  5 Feb 2026 09:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E+BxuSNy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OBjmPb0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F963A0E9A
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282005; cv=none; b=Uh3RWSGRWiqaSHpezJq4tdi5A8GIjt0Wt7SC7iVvz28z69402UWXNwy6iKJNf9wkfFgmIB449Unk/jwofZmqwq15rEhmne3KzQSmj6TcVkqZ0fY9FKFRJX0IgqmcF+49tLYLQqWKqIaV01CM2HsCCXXFgXtZ3rJ+yN7yIaBsmik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282005; c=relaxed/simple;
	bh=21fdaBUWeDxZmA6Df3np6P4jP8BBhRCucq9y0UasJTA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e+R6TEeS4Udfc5/tyjdPw8E5x93p9DTx0ybmKMUohC5Iix2DI818V7/R3nLZbuaVIjjAfnytK6DlwMIMuyn4KTyw5tLSSd5mwcEdghsmd8hLPjVA4aa8/dtC8FWMktWEYkG47SD+zt3b7y8r+u0pkpLHXXDgP13+TIVGPfYlizs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E+BxuSNy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OBjmPb0a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dlXW2712961
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:00:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=WEE8SBDF0Nx
	ku2gvfbiVDNux9KyywUXPgoJiXkiEH70=; b=E+BxuSNyf+rvwXgIFIgaB8ZBKB+
	Tcsy4Y5enZgnDE9+VjlB45q0jw4ak1RL3ybE4BNAP13fNLsn7uWnEbOub6vywL5H
	mRhyxiZjCLpCXZ61CTvKRcTNYe5VNEj9a70F0xQjS4b3XQu7XKNSZ804fPGPstmZ
	X04ehlH7BFNrwk8YIDeoGlgtdCBFbUnVGkCtgW1zIZAykA2fKWly6nMbTdLG3qvl
	yzBA3w83knNnAw65cWSOXMgytAEJIka9FG9DUw0YXNGEK4GnJeRab8sDs1mMmzDi
	+tnxXL1khh4PhWeb6DSUQmcDQhwAL+zF3Ir2MGkx6BONmp8k3wuiVM1XsZA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c47ja35my-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:00:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a863be8508so10930135ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770282003; x=1770886803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WEE8SBDF0Nxku2gvfbiVDNux9KyywUXPgoJiXkiEH70=;
        b=OBjmPb0aOXgXwWOd9s6boU+glBn0HfIyBCGprtzX1yfqJNBQP3gcVw0Wv5Fi4fA1E/
         jbK22tclz2RGs3sLeVKaBEB6Kzef/fUpE9NHDlnCExosbeRkllRpCFJBHahEZUpVEpuL
         psuiGvOS8/qlXUNqbxS/9jRldZyNzmpax/Ip4wzcBadA2qrJiSM9Ghkk0QtI0HCWbTzn
         KGElq/PUEobMqybk6kqkryAJSt0yGQOD7mr7VCY+VNpMA/ZZ6dNJtNBJlV1YVpRrv0Iv
         8Bl+jn/yPfIM0b9IJ87SVhdqko5HFIZ27xzmkZy7MqY0q6Md5M59sDdUPw7bRdgrgmtl
         Mw4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770282003; x=1770886803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WEE8SBDF0Nxku2gvfbiVDNux9KyywUXPgoJiXkiEH70=;
        b=lBJhffCdwILwqdlTxbA99ILBgNPZPqN59LWM9wYtrE2UsD0zk6SCAA7+NDNhpBt1SX
         OQX1vvdQaN12DsP+hokj3PkpBF8tMpJ7lFE8DRlFinuZlWQ0x9hN1HVgsIXGb3Gr4S5z
         77CDDSUjITmgoHzO/ZdoC4ykFSodjfkTijmQB5mHfeFGVGMKcrIF6fJPHSUd6nYqW5jL
         PajOHEaAEMbsbJ49At1v9TOEC0t+/ocYfo7TK3UKWRCCqyB7PNBlWEY0O5rQd9W1kLF+
         g2pBcuqXSapOCvsjC2hC1UfzE0ukm/YpSuCj92wfXvETkCv62YJYs9mqQg8UNEBHc6GD
         Mcdg==
X-Forwarded-Encrypted: i=1; AJvYcCXZT4RWjh7SPlnXvgy8Wgr/Mvp8BUPgQpz5olSNOOidfsjRWMrmJajvZOVOcEBQUF7xJouLHk3ICiHN@vger.kernel.org
X-Gm-Message-State: AOJu0YzyIsrMrZ5TWQBkPpRz3mOeWroG//1ZOGssqcXKJZJeRDKZkpsF
	ohyI2u8Kmt1MWQGDR5qlLA5ewn3edHGzeChT/LM9McekrjeEkX3oncnpUwN/dvpZk7zJoW3XSoz
	169NL39obLsUJdNNO62riZbszxfjDhYAJdGKAnroT+f894FJDjvK5ZS/k1UDrRqOb
X-Gm-Gg: AZuq6aL7j2zmMNL2FapOcY87ZGve+R6XZb6yZdwrwDf/nbbj3QQrqf29zxEbiwS8ycP
	FYBAbSFQVHqJ1SIGUPtp2JW9E/Xx7kMMZU1qmuIQYNBB2TMNZailjISBNJhj9ryHMGwKVZbahs9
	BGZFuoHCMT9eYaPexNsfP04D9A011cvVwHDjEJNNHGQLobx4UpiF56aVIjgpxV9llkNUpD41HNv
	BbvP12gwF9Q67R3Ylg9b6HTz/FueiHfuTJJWeUFMl+xsRw0TEdDYOglRGhZulEg4np15nFYy48D
	aqYkRJtfvaki8ImSNKMj9bWpfQZEu3+3+tb+O6g3Le1eSIFhNl8IxXMktdhKAIGrouSBusDmi5T
	qFmXJDqLJYmYdESgKdhZQJYyv4P29WZNvIsV0CY/iOZMoRp5kkZDVy19xX0STxezgbOlCPU7aJF
	8tetWFwQIYSyr5Qioe511lBPivI2gNU5CTFDDzkxo=
X-Received: by 2002:a05:6a21:7d0b:b0:35d:5d40:6d79 with SMTP id adf61e73a8af0-39372098bf4mr5242595637.12.1770282003071;
        Thu, 05 Feb 2026 01:00:03 -0800 (PST)
X-Received: by 2002:a05:6a21:7d0b:b0:35d:5d40:6d79 with SMTP id adf61e73a8af0-39372098bf4mr5242558637.12.1770282002589;
        Thu, 05 Feb 2026 01:00:02 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8572b4e7sm4361984a12.33.2026.02.05.00.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:00:02 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v5 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Date: Thu,  5 Feb 2026 14:29:36 +0530
Message-Id: <20260205085936.3220108-5-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205085936.3220108-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260205085936.3220108-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: _pmM9Cm6Lt2f9lYPntL_FMkaPFsY6xPV
X-Proofpoint-GUID: _pmM9Cm6Lt2f9lYPntL_FMkaPFsY6xPV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NCBTYWx0ZWRfX6KCqMG3kwiiF
 lCTMSSJhyW7HNEcf7l/VMW1ERo6PzOKaCETloRIqGOsr0Bm81jbZZr/dKmZfC0BwkkIFWAvKSON
 /MvlqhJmWGD4i4vvEVy9HkLtNq7xbhNscv8/aAwUTx2PtTES3Xo5pOl8iUu5ZqMvJA0x+mBIPGl
 pXBSKrKVAoNfN+a59T54C7/p8u+tb9v3REij7MJ33nm7GT2KbDfPz80DKaU8h+b7LbnVaDkL/66
 u+/4CKimWy0eteMRhHUSpJ4tVpOIDTdo+mtlb9PgBjyVX6H8lZ6ykvnzJT6JdjYrn+iXTas5WBS
 WQ0857rvg5/xyPwotxgVh1h1ZpAlG/qHbtm9doFrkMl6gHXUNdiXOwRALlIMIrLrM7sZGipnDo9
 tPwG+VsXNv2mm4sMEK1O4Z8+7bRC8O+gKatfkYNP9zY8+YaBzsuMRRa9kdeKl+ImglnOaC6xbFM
 x4pD02sOjDESFlJ6qMQ==
X-Authority-Analysis: v=2.4 cv=a8E9NESF c=1 sm=1 tr=0 ts=69845c14 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dhyxJ1omlQZND__UZH4A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262907-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96F68F0860
X-Rspamd-Action: no action

RDP433/RDP418 can have NAND or eMMC based on a board level rework. Since
the same GPIOS are used for both the interfaces, only one of them can be
used. Add a new DTS file to enable eMMC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v5: Add RDP418 eMMC variant

v4: Move sdhc properties to SoC dtsi.
    Disable nand (that is enabled in ipq9574-rdp-common.dtsi) here as
    the eMMC variant doesn't have NAND.

v3: As qpic_nand is disabled in ipq9574-rdp-common.dtsi, no need to disable
    it here. Just enable eMMC.
---
 arch/arm64/boot/dts/qcom/Makefile             |  4 ++--
 .../boot/dts/qcom/ipq9574-rdp418-emmc.dts     | 20 +++++++++++++++++++
 .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 20 +++++++++++++++++++
 3 files changed, 42 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp418-emmc.dts
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..0ab21ccf893f 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -25,8 +25,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb ipq9574-rdp418-emmc.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp418-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp418-emmc.dts
new file mode 100644
index 000000000000..2cf35c717411
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp418-emmc.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: BSD-3-Clause-Clear
+/*
+ * IPQ9574 RDP418 (eMMC variant) board device tree source
+ *
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "ipq9574-rdp-common.dtsi"
+
+/ {
+	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C2 (eMMC)";
+	compatible = "qcom,ipq9574-ap-al02-c2-emmc", "qcom,ipq9574";
+
+};
+
+&sdhc_1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
new file mode 100644
index 000000000000..44884231499f
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
@@ -0,0 +1,20 @@
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
+&sdhc_1 {
+	status = "okay";
+};
-- 
2.34.1


