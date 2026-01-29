Return-Path: <devicetree+bounces-260745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIjyCx7+emmHAQIAu9opvQ
	(envelope-from <devicetree+bounces-260745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:28:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE184AC352
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1E8D230074AE
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD17D378D88;
	Thu, 29 Jan 2026 06:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KsIqRtez";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F9Da+38B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C8A17BCA
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769668124; cv=none; b=J2QCTlkbfZExkULaqVIMgbtBs6IXifbt/KvY/34DVfmrL7bcjgk0zWflhs02MTyEhPbSZ8P7ZXcykJQDQJKyLdU1sVaSx71mRI1cXoCMqRGxgHF+rFPuACw3qx+1LKu3usTBwlInqSytnKPTK1FPm6Ecq/lNQvhj9N3MoOfL9Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769668124; c=relaxed/simple;
	bh=FB0pcXKrhC3z9dMN2P77FM4kA/5QFgLxVYcPCVyi2Lc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FxEUdSOmUYms95rq3QE6NrJ8s44Nf6X1vpWZbuGLUfBEjnlYAzIWcOV7CfKc5FXSbqBHKc6oLjR5CWp0gB7UlfoW5lGUMlSfZmu3IfbessD9uOI+mS8/6g+OOEcQKmLSjUOGrPQm+hallew57RV+4Pc16XQIpFdA++kjlbskrBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KsIqRtez; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F9Da+38B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2oldg2059988
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3NMW0FR1qhO
	cZDSBUwAeLpAcyB4W78vZQ8nf0I8VEso=; b=KsIqRtezEvbFDfjvIMKFCUTp+1V
	nVMCLxkKEKO0jh6LmXh/duKugT9ZBnD+jO9J8rZ1dojtr9b7+anlLyxocc4IYxNB
	VAhPC7g6PvKm+C1HPNTYoXhEhFSTjKW1eq4vygNlUYoyppA7tsxlU8UKhkMPL/6N
	3fmGLzbXCXaOLnavJZg6JfApo+2+vtVzPbiby6Ju1i8Fr73zpP9+4zxjJQHf9VKX
	c+eLQRVUOyV1LT5ls0LAJYmfI7UjHnA7YbmjIwiTLzaxX190B6FKJW1pa32ItuuF
	GqB3jLx/GOn+msGMlBb78UXhA3X4jCxdmXeSO3TUJkhuoe9IHt6dGuTYxzA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bypgrj832-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:42 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-352b6ad49ddso467867a91.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769668122; x=1770272922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3NMW0FR1qhOcZDSBUwAeLpAcyB4W78vZQ8nf0I8VEso=;
        b=F9Da+38Bezm5YmQsPdND8CcosP3i0U9cSTFCJWO2Y/Jrbig8hk1s7gIpTezL3p5UHR
         gx7S7xGalmMkkdlI6uDVS5X5zM0pOnXM1ZPoIgVl8/0Iuo+9FfFbK58abviyP+S9wCMY
         YUPmNHI7crQ/+PhxK4xWPlOy3AC4jFDeU85PjxZHiGCWMP9gIa81xuRZWSmwgX9oDLjt
         vGbjVEF/BLDbQbBbXGlOlc2H9vU1wLvn1a6LGeQNM1RVlFZldQJs8wE6u8h4aMDT3+rK
         oUuHOTTpGvnIUSxc0KDrj/KBv3cq6zhUqIi0asXSh6nKaziCzwex4bP6VDKTddsfIYBa
         GFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769668122; x=1770272922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3NMW0FR1qhOcZDSBUwAeLpAcyB4W78vZQ8nf0I8VEso=;
        b=JeU1C2m5dVvuv99KrStVXda/+y8+5v7cS48ypSbDsSn7MZuoAZx/G3tQCauqzgBmco
         yGJ7VoffokoE1ixptS9t3/WEGNNZOrlxJPVoYv7XMx/cNBR9/T0MVWNE5ym/J4pYLJwz
         xkXoB6N2cPJIG/By7+YLP+hpXmk12uOJUelHDE8SwB7I+ZjEHi7iSwT+Cc45qq62zRoe
         +YCGqs4K3MwIwJx0abN++5A2RbwgswSuRpAyneOfcGZEyhoTJB+eOBKZtBJQ6ji6hJlL
         x71Q4LTaYVXqXu+cEc+mu/JbKISA2JTNCXf8MK1VI6TD4ZSTzheNO+Fb1LKlaek6HLwL
         2EDg==
X-Forwarded-Encrypted: i=1; AJvYcCVlKv7YfwCQiQKsd92tdmfahEiWRjQ519QH4/CjjAveahVKU5RllrlubSroVpwefuH8oPFJATMcz/rR@vger.kernel.org
X-Gm-Message-State: AOJu0YwYBs4h+NEBrriTkxNHT5k5IWWZOZmJtVAaoYn5eMv6nsdJfeXp
	pNbIzLzHvVMxmytxyBsmrnu5zyp9QxxDHOgYkRIpSaVXXCtjjyNaIQNw3yRRr3A5tUY5Y2QjqHm
	GT2G6O+NDEjEeMozGsGVW3cTyo5nCXgLi3z23cq4xopu6+HwkF+21z2zgIV4x/feg
X-Gm-Gg: AZuq6aJXDQl7N/ozYadsyePpZS7TkuylJrfR9ch6n4b3TFV9uVeDtOdhnChv0AlegmU
	PS9j8GKaGoGeYJlIH+q3xgNLMArRhvx7M3jE2TfVLAaUKtHJ3NYyuWP1moLUaCHRLFRo/lCKW+7
	CHPR1N2oMrFOtZQF7vIjUqLA+/ky7U/04HowCkUrp1+TTJC7/kVOdLyLwkq3OozjyFESOmgvEKj
	xzUaPc+InI3EVfwewx71XEXM7We7nAxXrreqF5nlpUIs28DSXqNS8MOhLMMeIgV6rSJgSudjRey
	JIhO76JguMd+aLsApFhxwaXyr682hR41i0mp85Y+BYJrxgKoBlhrspH3BFqsn8Prh48806i3Z5T
	lEQuoitJamK2e+UyN0MfXL5A5q8vMH+SNhzG/QqcrAz4vm73DySuC878oTUWlKIU7ieBLBDhHVl
	+Kj8Y9fB6YVeRjQVdno6gBEMEq11wlAds1Amyt3L0=
X-Received: by 2002:a17:90a:d2cf:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-353feda6ee8mr6739332a91.36.1769668121564;
        Wed, 28 Jan 2026 22:28:41 -0800 (PST)
X-Received: by 2002:a17:90a:d2cf:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-353feda6ee8mr6739304a91.36.1769668121114;
        Wed, 28 Jan 2026 22:28:41 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f612917csm7215943a91.8.2026.01.28.22.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 22:28:40 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 2/4] arm64: dts: qcom: ipq9574-rdp433: Reorganize DTS to introduce eMMC support
Date: Thu, 29 Jan 2026 11:58:23 +0530
Message-Id: <20260129062825.666457-3-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=d7T4CBjE c=1 sm=1 tr=0 ts=697afe1a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=__n9Gvk54GoArngz-awA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: F34qgZJV8nAtgFSUUZXoFG1GX6E-jGmk
X-Proofpoint-ORIG-GUID: F34qgZJV8nAtgFSUUZXoFG1GX6E-jGmk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAzOCBTYWx0ZWRfX4/v4s5K2LSZH
 4+5oYSwPkmTIW0GTXzuT2NDeEdKjk5lr6NAoY2JvLz+oIu6KvwAIbE+zGCn3QWQ3UUdSyqwAFao
 rkn3NZoaEmK8b3jqLFpkXdQNZH5Y2xM5PQqxywJe0EYfbIWdVDlZcy2B9R4QMyFZrQZJL5T/CPt
 qKNED+SjzQ/Di51l/jZ3X0JHf36aWea4NmFzSKpF0b46byAi7Q7bSrTL3hDD3SSr75ospNn2vU4
 Q+4VAnYxq+hhv43ONy7/lIx0STzJ9tRAfJlm/p+YbH1Ydw/3X3qStielFOMNT09I6+1I2DSO4Qd
 4vVzs+YBO6uWP9cy4krVdEV6EMaUYgpZ1vO+iihsMIJ6CFCQzf8w1aYDlI0mzQ9YiyCP4nwdmeZ
 kG1PVrD3hQrMSoZ+fW6LdKI38zSIcsjAG4eHV+iKWQ94/l78PU9PdZDk/FJL0A3nylp8FyHV2pC
 JGJMcliTEoFm5E2BVxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 adultscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290038
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260745-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BE184AC352
X-Rspamd-Action: no action

The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
supported. To enable support for eMMC variant, move the common nodes from
ipq9574-rdp433.dts to ipq9574-rdp433-common.dtsi. ipq9574-rdp433-common.dtsi
will be included in rdp433 NAND and eMMC DT files.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v3: Since qpic_nand is disabled in ipq9574-rdp-common.dtsi, enable it here.
    Add 'Reviewed-by: Konrad Dybcio'

v2: Move common nodes into ipq9574-rdp433-common.dtsi
    Trim down ipq9574-rdp433.dts and #include rdp433-common.dtsi
---
 .../boot/dts/qcom/ipq9574-rdp433-common.dtsi  | 121 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts   | 113 +---------------
 2 files changed, 123 insertions(+), 111 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi
new file mode 100644
index 000000000000..49c1b83bed10
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * IPQ9574 RDP433 board device tree source
+ *
+ * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+&pcie1_phy {
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-0 = <&pcie1_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 27 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie2_phy {
+	status = "okay";
+};
+
+&pcie2 {
+	pinctrl-0 = <&pcie2_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 30 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie3_phy {
+	status = "okay";
+};
+
+&pcie3 {
+	pinctrl-0 = <&pcie3_default>;
+	pinctrl-names = "default";
+
+	perst-gpios = <&tlmm 32 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 33 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&tlmm {
+
+	pcie1_default: pcie1-default-state {
+		clkreq-n-pins {
+			pins = "gpio25";
+			function = "pcie1_clk";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio26";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-down;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio27";
+			function = "pcie1_wake";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+	};
+
+	pcie2_default: pcie2-default-state {
+		clkreq-n-pins {
+			pins = "gpio28";
+			function = "pcie2_clk";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio29";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-down;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio30";
+			function = "pcie2_wake";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+	};
+
+	pcie3_default: pcie3-default-state {
+		clkreq-n-pins {
+			pins = "gpio31";
+			function = "pcie3_clk";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio32";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-pull-up;
+			output-low;
+		};
+
+		wake-n-pins {
+			pins = "gpio33";
+			function = "pcie3_wake";
+			drive-strength = <6>;
+			bias-pull-up;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
index 5a546a14998b..e3c446eedfb3 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
+++ b/ arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
@@ -8,124 +8,15 @@
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
 #include "ipq9574-rdp-common.dtsi"
+#include "ipq9574-rdp433-common.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7";
 	compatible = "qcom,ipq9574-ap-al02-c7", "qcom,ipq9574";
 };
 
-&pcie1_phy {
+&qpic_nand {
 	status = "okay";
 };
 
-&pcie1 {
-	pinctrl-0 = <&pcie1_default>;
-	pinctrl-names = "default";
-
-	perst-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 27 GPIO_ACTIVE_LOW>;
-	status = "okay";
-};
-
-&pcie2_phy {
-	status = "okay";
-};
-
-&pcie2 {
-	pinctrl-0 = <&pcie2_default>;
-	pinctrl-names = "default";
-
-	perst-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 30 GPIO_ACTIVE_LOW>;
-	status = "okay";
-};
-
-&pcie3_phy {
-	status = "okay";
-};
-
-&pcie3 {
-	pinctrl-0 = <&pcie3_default>;
-	pinctrl-names = "default";
-
-	perst-gpios = <&tlmm 32 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 33 GPIO_ACTIVE_LOW>;
-	status = "okay";
-};
-
-&tlmm {
-
-	pcie1_default: pcie1-default-state {
-		clkreq-n-pins {
-			pins = "gpio25";
-			function = "pcie1_clk";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio26";
-			function = "gpio";
-			drive-strength = <8>;
-			bias-pull-down;
-			output-low;
-		};
-
-		wake-n-pins {
-			pins = "gpio27";
-			function = "pcie1_wake";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-	};
-
-	pcie2_default: pcie2-default-state {
-		clkreq-n-pins {
-			pins = "gpio28";
-			function = "pcie2_clk";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio29";
-			function = "gpio";
-			drive-strength = <8>;
-			bias-pull-down;
-			output-low;
-		};
-
-		wake-n-pins {
-			pins = "gpio30";
-			function = "pcie2_wake";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-	};
-
-	pcie3_default: pcie3-default-state {
-		clkreq-n-pins {
-			pins = "gpio31";
-			function = "pcie3_clk";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-
-		perst-n-pins {
-			pins = "gpio32";
-			function = "gpio";
-			drive-strength = <8>;
-			bias-pull-up;
-			output-low;
-		};
-
-		wake-n-pins {
-			pins = "gpio33";
-			function = "pcie3_wake";
-			drive-strength = <6>;
-			bias-pull-up;
-		};
-	};
-};
-- 
2.34.1


