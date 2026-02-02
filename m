Return-Path: <devicetree+bounces-261671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBP2OBVUgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77327C939C
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E92B301494C
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC49212548;
	Mon,  2 Feb 2026 07:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DkjCPO8+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WIe1ytjA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDE92877DA
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017621; cv=none; b=XU1N0FAADi3XYU0xy6xr3G+mGBDUfNdmvgNARAcDwNPLueX/Bwml09CtMXsPTcqlWJcDWeGwjZ4EJRwBXLrxtcXQWOGIJyELv8ehR2+LLLWsqKeSnJ/mp/eO7d1z9VXCFsMEYJSFtNS22Z/GiRVPkrfE7x3K3vsclMPfcbqvH0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017621; c=relaxed/simple;
	bh=PkLK0xW2ngDTaHM3XdHGUr0HpsZL0cMm5AE/uDOJAh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=po2g2S8C2tCudz1PTsdVHgd/09ruaCBSNNm08PY5/9qu6/rv4w0H2MEiJjXC8Vs7ERDZVUpzg+aX3Me8FyPycFa09I7hb1iHP5Q+8KqT0GVDyM71WLciPSgeFtBTJ9ggDiI7MXdEh59z0ZcVmy8kz7LBpF7UXEpo81le7AhdjPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DkjCPO8+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WIe1ytjA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611NKQfH1192166
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:33:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UQSkxhB6wZi
	cS7MLS+HMXzCRxN6RPP3EpbHjPNlBzYA=; b=DkjCPO8+RaFECmyXqW4lKbqI5ZK
	jb4LVug0+9IwVoH4HS2xc4fjoeIyTyUL2tUDHbdVFOlONKgg9YatnYkGj33QzUQI
	rIYJijs0xd6rMrtkA7GxQiCaz0EoXant0mnInWHY1g+X+PEUjPl7YZV7FDobd0Ni
	1t7uZ8Ilu+MM5ahVXi4E2b+WDFbn225tLwKmCDlSfgRtexOPZdlaQUaiU7Y/EDd1
	mV27tCz46nN5PrnX+45DUhnGTSyWREqFbGElN62jOkhGI+7RXsH8qJAWAPuEd8pg
	JFncwkHsT0afTANs2eJCU5maqrXcl+VrJRSDX5+4CR5YFTu1ZUJEzAXvhWA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as4vey1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:33:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34cc8bf226cso3750187a91.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017618; x=1770622418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UQSkxhB6wZicS7MLS+HMXzCRxN6RPP3EpbHjPNlBzYA=;
        b=WIe1ytjAaM845uDGi/3m0CjzTT45KDurVa598UxR14j04yEYW9ccjGtAsyFtn4mxEm
         BvCc8NZhH7YQS0/r83nXkQUi9WXuOO+SWrDRcbPX/0l4+FVyXHY6mptzryYuvouf0yg2
         57maXg6ruRFb9EEE/uKLBf64EG05OL6C8ogIDdTw7y0bD2W/A+v8Xbzme4m8bi/IqYvt
         osFaqE3YPbDQjYScbSL8GKzlGbUvrQ1itvbYd0elQAlzZJlVksZZ16ipxg7dFIEBfVHl
         jCkoWv3lp3iCqAkg/lGkwCmUhDjyDaT5O8I9G1Yp61IxJOUbAN40hjEg6u49y7C/N9S1
         rhew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017618; x=1770622418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UQSkxhB6wZicS7MLS+HMXzCRxN6RPP3EpbHjPNlBzYA=;
        b=IONsHLOrnIA2Dq3vy7O+qiy+DwXyKKglL/ATteznSA0D3vx16BBi98/8Nj5jcls0ja
         cp9wYeswNPbST6Er14SZNoDIeCBNOLnCRVg4WBjKdC8DVKBvljnwJj/12qJvQeMWfnvY
         zXPmqPGLcjJrNeRnHPhQQ7dPFvsFBZKUAn91FyKkB9O8HzB1oyiSxS/BQ/+ZN4YRE1Zt
         3poL9pq02m9dEejOs1BnyeXBdjXVD8A0Dap4dnYekC45jRRo37Q8hbxrwc05RykdtSos
         E/EMIOvP2FUpiSGuwymKtCZ5FD2a0af1RGlo6lqIp2/kfxoFQAYeQ2SNg1qcUbQDUvAV
         0skw==
X-Forwarded-Encrypted: i=1; AJvYcCXXHb27fwD3cPsWgGwGwx4OP3Zf6YCNJr7ivaqdD3XpvVuViA+mrDssFtXPu8dijzzfn9ck+1mvjkmc@vger.kernel.org
X-Gm-Message-State: AOJu0YyZe/j7T+qeUf+Zda0jO/slKH4P+PxKmK0V3MFNesT/Adf8gPEv
	LGCuQ6QJCRG6G33SXV3f/newQ+H5X7L7WgJIkuBGhGM6atTB0VxscemLJKB2S1LHCOhQjJB5MLh
	g43QdAri1WhjY+EhtuF3JcZdce0tikgpYEfXIqoPgvbwnoJ4johIwX0iFdPOHhxps
X-Gm-Gg: AZuq6aJEVVzEmAgcR5rN8sLM2783y3DyhgurraVvBn29Jxa0+l3hsKW4YRJ0vsm0aDo
	ZNrJela71TwqenQJv7uui/lQe4EW3fI6mT2MGUeK47NKTbv/2cjaY2KdE9rqjiOT0MY1NnrwuDp
	ufv0YTKArBUcfCDo4H+uNCy31Fe9v0bpseE88NV7UFDlC+SZMhry3b3R54u/QiRrlx0sj9UP2Y1
	y0WcBbYeQeJcTLBeLycSGOtg+42fEHmPbWQOUG9NdvkN2xDCJNDY/dKJ76xR4JHzdYVr6K7eWvZ
	eKiZiL/b0KlBnsFmuKkBq2A63aI7im4HyV4U5cu9h191H8iQdXhlmY4Ir21bwZ110tzaZ0FYWkk
	jtOq02oEzUhrHXDfDmhXF08taKGur+cyLwtxWHmlVw9vZtWIOd1evc3OYZvk69ESZiJZlOF5DnR
	CFZBWRNKuLHWjGkiZU2ijjz5m4tpqtIME9lH/serA=
X-Received: by 2002:a17:90b:2e4a:b0:349:19a8:e00e with SMTP id 98e67ed59e1d1-3543b402197mr9276834a91.31.1770017618468;
        Sun, 01 Feb 2026 23:33:38 -0800 (PST)
X-Received: by 2002:a17:90b:2e4a:b0:349:19a8:e00e with SMTP id 98e67ed59e1d1-3543b402197mr9276812a91.31.1770017617976;
        Sun, 01 Feb 2026 23:33:37 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e25sm20758332a91.1.2026.02.01.23.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:33:37 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/4] arm64: dts: qcom: ipq9574-rdp433: Reorganize DTS to introduce eMMC support
Date: Mon,  2 Feb 2026 13:03:20 +0530
Message-Id: <20260202073322.259534-3-varadarajan.narayanan@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: egosaFduaowH0n-gN_J7S_vo9ROsF_OA
X-Proofpoint-GUID: egosaFduaowH0n-gN_J7S_vo9ROsF_OA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MyBTYWx0ZWRfX04oscrW2c1NB
 Lwk4oWZ61K24+Nd1YMJBoTyVYpBnIO1VbkQCj2eSQnVbN6CJom05kfNbO/nmkDEUlxeVGtkl7Ek
 MEd+GdVTcTPROmHIARtdkxNsYTzGct0cf1RDRYkHBXy9vGGawKkAPkzFSOtsjxk22/fdUl/qMrn
 BF5fn2hjynKOjQpuZnLIQ2piI4IQfnU89p+nzSqcUXXcLUzDRrh+SDKDTHnA8CmO482NhkM544d
 jLYSTaFPGGW5JZj5RQLihGtYeBKLi5BOuttFOyp6v5I3UsYX+vZ0pUp5sbzaGLSvocKOE1tBaIx
 jlHn+6jlN1AYN/iu1/g5x0HPtMcLjuQY8P1YRCn5DogkqZhZ1ju9eVtjbLXwBM/8JMwisJTWn2y
 lOBGt7jQzjXThNHPgsXT1vGKmXvd40Sb1JBNMAAnHDB/6kKTiD6Z45aqMLXCGdGDWJiSBE5RHb9
 i3FJDDn/2LVC7J83naw==
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69805353 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=u54x8HqV3kHLMJtzIbMA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261671-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 77327C939C
X-Rspamd-Action: no action

The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
supported. To enable support for eMMC variant, move the common nodes from
ipq9574-rdp433.dts to ipq9574-rdp433-common.dtsi. ipq9574-rdp433-common.dtsi
will be included in rdp433 NAND and eMMC DT files.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v4: Not enabling qpic_nand in ipq9574-rdp433.dts as it is enabled in
    ipq9574-rdp-common.dtsi

v3: Since qpic_nand is disabled in ipq9574-rdp-common.dtsi, enable it here.
    Add 'Reviewed-by: Konrad Dybcio'

v2: Move common nodes into ipq9574-rdp433-common.dtsi
    Trim down ipq9574-rdp433.dts and #include rdp433-common.dtsi
---
 .../boot/dts/qcom/ipq9574-rdp433-common.dtsi  | 121 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts   | 116 +----------------
 2 files changed, 122 insertions(+), 115 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi
new file mode 100644
index 000000000000..3422058ac480
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-common.dtsi
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: BSD-3-Clause
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
index 5a546a14998b..6794c9ac0b67 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
@@ -8,124 +8,10 @@
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
 #include "ipq9574-rdp-common.dtsi"
+#include "ipq9574-rdp433-common.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7";
 	compatible = "qcom,ipq9574-ap-al02-c7", "qcom,ipq9574";
 };
-
-&pcie1_phy {
-	status = "okay";
-};
-
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


