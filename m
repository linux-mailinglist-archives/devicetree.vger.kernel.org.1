Return-Path: <devicetree+bounces-262905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBngGXhehGnS2gMAu9opvQ
	(envelope-from <devicetree+bounces-262905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:10:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5A9F05BB
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF60930ECE41
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE4C3A0B05;
	Thu,  5 Feb 2026 08:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KfvJZ+YN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OpF/6gN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9773A39E6F6
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281997; cv=none; b=ulXjTwu+JQ9Y/OIvClko8h5bTd6oLUJWTb2lwQx0SNHkTnTOu0dcNtoXQsPp7QWAPJQILnomxL7VggFqedgx9GQsxaDW7ZN5QPVaYG3VgSCJjCm/NVCp9VDMR7oKoj95e6M3i41ms6tDzWCfMeegp6DAiSN55AqhhFrVZ6zd/+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281997; c=relaxed/simple;
	bh=jYTuh6AvT00hS+ztrHmmCLD/Zg4HW7+s+/ojFxST5g4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IY6M2jaJ2CA1XUYsjM0DP47lz6Miy+ebpyAQtAT3XnEI2pWl5SyLC3qOdQs9jelsFmhCut+5SUmYc6GpKyJgjrkaDGtR6ECSEioZvVHbj3ru1qugutZhGsiZSyT6aEu/ZbEhS8o+Bbp4bHJT10bvA34F3zWBN42Ob3B8ovWJQhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KfvJZ+YN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OpF/6gN0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dwOj2157858
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=wx772aEjSA5
	JzRXh8350g7n9FN/U+r11KMjcQ5sjnLY=; b=KfvJZ+YN8DWRDfn4X/bwE8sMGkE
	0Tc2ozgkIQnwVdE0BRbNR9+5BZFHyJC8MINTYFEQe6G/Slvy3dwRvqr1FdvAjqRX
	ouUt52zL8OnebdOORNKcTyejkKOa+RA/6ikf3pjqSWyrQpi4v+OJyN2tVXT+Omsn
	0Lti2HjEGZ+hI5J51tBf96BzEjPHglwNYbVvK5eHjvjoJqybVz14glbNarr0atMb
	UORgOiNcGAwbfsB/WT7jYOU9MbgpuUhToOUP5rjQ3moN4ygG42LZzL4kJadLrWe9
	6h7x+lA3PBAJDYXYxfihLgIPyVc8gH9t5wGW1nugmIWodHvaPSYCZLtPbeA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4gyns8mx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:59:56 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c54e81eeab9so483497a12.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281995; x=1770886795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wx772aEjSA5JzRXh8350g7n9FN/U+r11KMjcQ5sjnLY=;
        b=OpF/6gN0xejhoNXsMmEcQhnWEMWCryACGwPGV7Ta9v6T26NLu9jHxGlf686W+hKirj
         xjOPYE8FBYOHH0FGG5oj+Kkkz8c17fLm26/hekWb/e8UVPo/fX8Jz1N/wjYvEKF8cm0l
         7P7oH6rzEYUvdq2PPY9mzPI94F0xJrctkWoxDDTO6GgTfFi0dOrWSGV/xbTVT6ph3bQk
         lMq7s3mJeNODCpvpmGDjAtvp+IXdAyan2MJ+sIF95+LUAp+g3bmWjOtvFZygqThnuDTY
         UMdX+GpEMngVKvSdWX6qEeEnft5AVVtIoA4zYPhuLoubz7XXXrzpFmlV8YRbjFweLcJm
         KNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281995; x=1770886795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wx772aEjSA5JzRXh8350g7n9FN/U+r11KMjcQ5sjnLY=;
        b=BKkRv2prgn/Rp9vBILS9VdHkrPRXqOmJ22DWsdldByU143wsuMNIo5tyV+Hv5RCsMG
         VoKN2mfmH3pzH2nft+aXo9YWzKuTXS5b53ikgRga8eFVWMiKlU9q/b28aZSFRxSy2xiP
         xiZfOyADsUWdo2qG8w6fdxntbz1LNsIpDYRXFowZC/2EVXGhjIO5SpKRLq7xe4dcdLeM
         EtlAMOMD3OGM0IWJHkHhv+yS8BiCi9GKNNL3iWHqTou1LDTf2nnQR8qAsQEPGuk/tv3/
         PV1OpsViSWpd4+ZnR9qioN1H1MikUCl4ozSImdGQEHo9f2UljMDMBJtSrgBL1AnNbAWL
         yKyg==
X-Forwarded-Encrypted: i=1; AJvYcCW1muGdqyeeVcRUG9jVG1hQjlWr91oaNFdBjEyLMbxZaC7bGSqbokEgofi2OQUtuPO3BaDEeOKAQG49@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/SAL2xzhCv//lADM2Uu78kzZuzfFdGZQleatfK1ikSMJLX7Ra
	WSfPjNBaPMPFYcd6OKTnoi+1SELtV3Ao5TckXuv75dmvboCZWgUd59dcRF0pDNnEeei2kACb9ys
	Uh1bRzg0AXU/JN6RlZykTdQraJRqU4PLr4adVr/weZb7VdN4ydW6Y4gCJxk5JJQA82Q7+Hg0n
X-Gm-Gg: AZuq6aIrQ77/keilnnuXRBAcKO93u5+N7Pr9dMTp3xp3FSeGDfR5NKrQnPOtsITsgHu
	sW7d7cYhqBfniNpBJXp1h+b4aGLm1f43iGWAFyLn/u9wFFSgaJ++Bk4IjupCN9i+D2s+PQ0g1aX
	5UP26G1ABTvQmBOuiHm3FJzjF4GYhZ/YqKgRDYqWaG9xRbaNiOoaGdvFozZttjWNrZozLnmHZeq
	x4yCFNRsFWmaaHzLYs++CgmE2Gwv8wL4K8AIkCB76ElgvU3qJzvQHEx4FREV4BaI92zgbp+/ejp
	YycgskbExQyDFhSo/5FVazUvdxg+gxGWqnWzD516PDAedp012sVanJiqbm0FQbZFn9sPrnKY+d9
	odMdTyFPhIO/mNNU951G7FYOleBHTmPUTPIvX935DzFZLEMbwc8zR4QGZKBu13nPXoqkBBEvQ1+
	6fnnWDxP8TjQvbry6/EZnanZz2se4qDjzrWtzny5Y=
X-Received: by 2002:a05:6a21:e58d:b0:38d:f56f:cdde with SMTP id adf61e73a8af0-3937207383emr5542949637.8.1770281995191;
        Thu, 05 Feb 2026 00:59:55 -0800 (PST)
X-Received: by 2002:a05:6a21:e58d:b0:38d:f56f:cdde with SMTP id adf61e73a8af0-3937207383emr5542926637.8.1770281994716;
        Thu, 05 Feb 2026 00:59:54 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c8572b4e7sm4361984a12.33.2026.02.05.00.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 00:59:54 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 2/4] arm64: dts: qcom: ipq9574-rdp433: Reorganize DTS to introduce eMMC support
Date: Thu,  5 Feb 2026 14:29:34 +0530
Message-Id: <20260205085936.3220108-3-varadarajan.narayanan@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NCBTYWx0ZWRfXy+Hc0+gqAuWV
 RH8g1J5tf0ne40TKVr77qGz/Pc8+tFdkaiZHO+XYvboGvjD99shTPpkws22Mv3ukTJJMA6TjHJV
 sfTT4C60ptgQXmpokuakqDk6bjSuhJVHey0Xg1ZrH/3lbPX2gg/mUT7Os5C+v71MCy7MsSIjTJT
 9j2UMyAfdjj/R5O8FKyXRPx0lvaJ5HMjDvs64p1DZSRhZLxeerP3WLtkCBNP+B+iZmdAp01Hxej
 MN7nxaZH9W8vFfa5ZopXR03ERfyPGOSFrpPMDAt8rw6QhoP+iD/tlVI8Ankx+c/pu0Ivk4+4Nog
 fHBE5YUywxggQl6sk9tCyFuuP/BmdUkYFdUKL44TSUF1CDXmYcTSoUMpmHJ+w0pgVZxKKklAL01
 PTeM/BgucqR4clm5W6nNqn2pb0eutI3hQfpHCISTQEM/aeEa/HlgWvu4UMz/0pvNPEY/1PonRxN
 ybplDWn4LUo1wF4o6yA==
X-Authority-Analysis: v=2.4 cv=GdcaXAXL c=1 sm=1 tr=0 ts=69845c0c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1Iu_2fk8mI7RMVeon3sA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: 1EiUuakVXbopu_nfeauOBk3j-NaAtUxI
X-Proofpoint-GUID: 1EiUuakVXbopu_nfeauOBk3j-NaAtUxI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-262905-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BD5A9F05BB
X-Rspamd-Action: no action

The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
supported. To enable support for eMMC variant, move the common nodes from
ipq9574-rdp433.dts to ipq9574-rdp433-common.dtsi. ipq9574-rdp433-common.dtsi
will be included in rdp433 NAND and eMMC DT files.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v5: Enable qpic_nand in rdp433 dts as it is not enabled in common dts

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
index 73091067bad2..88439697c074 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
@@ -8,128 +8,14 @@
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
 #include "ipq9574-rdp-common.dtsi"
+#include "ipq9574-rdp433-common.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7";
 	compatible = "qcom,ipq9574-ap-al02-c7", "qcom,ipq9574";
 };
 
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
 &qpic_nand {
 	status = "okay";
 };
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


