Return-Path: <devicetree+bounces-260099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QITNHdkReWkcvAEAu9opvQ
	(envelope-from <devicetree+bounces-260099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:28:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E046599D14
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 768843014917
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3855236D4E7;
	Tue, 27 Jan 2026 19:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cz+nzRrH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MUSFcK1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16DE36CDE7
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542027; cv=none; b=OvkukaBSQtjbEPhLzBnr5boamr/J58ruvjb525NfrO8tbEdgPP9PhtC3zxBMs72LI/QN2crmuGQgzt0Wm/Ft7dY3DfEfRQWLKVIa61K6g67kod1UlX8UKgFmrBTzODtbZGcua4j+eCpfU2TRU748/8ntO441z8Z6FhDWOT8q0WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542027; c=relaxed/simple;
	bh=PA99VsBvx5SIs0szb1JLsFFEYSaP5u8l9YkIWjVzo1g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BAidrSFdj9XEM3/rA+h03m5570FBDqeYjEUc5Pu2pc/ZKsMKGeAh0mzSOVmQkKm6VQSMF3rklrkMAgxuXnp1rKxk1N29Vphsnv8rosYZJ9AXtsylLF9NmzRs1Xs0M7z+KaIxMYd+bMGmT1ZXpipSxUd7z0byhzPHsPz973eN8R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cz+nzRrH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MUSFcK1B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RJ0gd92436402
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u478abj+sjd2lC/OaHT9eDhnZeVzUtBngbIXopIxjcw=; b=cz+nzRrHWXi/tpcT
	QBdeiVqo8f//p7M/X5XT8G+CI3uDE1/SCSvefl9QeUeMsdsvjCJZ8jLin6/qHD/0
	GbFZQtNeCrdzkua/lFv6jTXEd5QRI/+vKKvi6EskIEgRBb1jG32nYmP5/OttQRpV
	XbxBQZMJJWnELsQP2NfIo/+Ae6YWqyJqS+60Q+fSjWczCwQiy5sk6aPtJemrgTDp
	4F9vwSPZEUsX3tzotiaIQQKvZxaOGjE4bh0GIGNXyjO0S1tgYCDZxo9Z3ensMHkY
	uFEJMJ8pEReZ8SiCsdwRjeD8GAJK3oWkqQsRifBh0lM2s0eSPC+Dk7rciFWYKcLy
	QKBsrg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355r309-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f1f79d6afso61117295ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542024; x=1770146824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u478abj+sjd2lC/OaHT9eDhnZeVzUtBngbIXopIxjcw=;
        b=MUSFcK1Be3OWOLSTo4r71Qd65jmcYbhMz5MeZWpP/K79i/DvDG+psZBkI9iKirRfUd
         dcUFSjrXoRrvpEozdt0Qy4fXy/NEcsFtz2A3SVB0gRiAZK26Q5LdAMqZJQ5JK8Gke8fI
         1bPofCnwiVZP/xJW/mgYAuHRwfzp6bRUXYFM07EbubfP3II1y+dUccxPceYN92Sh7cNu
         5DTzF98pIQUjxIoZivV2iehbqqxLhOfkElYSe0Mz3x5/hYewbuzqrl2rfwDC5V3fTAIp
         Jlf+HFPE1oQoLDEEcmaANUVaamI341mU1czUj+S+4P0kjZ2V4tNntq9N9IFoOns9TIQk
         +R0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542024; x=1770146824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u478abj+sjd2lC/OaHT9eDhnZeVzUtBngbIXopIxjcw=;
        b=SFF1Y9GaBYTQT8HVvFrKcjJQV4FwOkHtcnnk8kjxQmwzlNSh2FIBrhfBPpLgWw02Lj
         lSihtU/fNziisp5BnzVvw6CIjI6NMhsRbYXL3EyCwtUzeRC2dSeaBSFNDifAp6FFLdKg
         TMeQoEo2g1jVEm18R8dMXaMNf7AQbhyIKUiXa3lTUt7bJaGzqTq0dUsHVcxa1Va+kujm
         w8zvcxoWnx/CFRtxRqbFiEzTuTWy6Ly2k+uq9rvEifnhrjEHMjRHCa2HjutQCRCpcmJ4
         WRTF5oFkSFHH4vYH5p+cFRzneS/WfptNqesfdYDiy55pn4krEqMh4gU0xpQaVypb2gxr
         xYFA==
X-Forwarded-Encrypted: i=1; AJvYcCWJFSMwWgBSrymENy6rrk/xhIplCP63ugaU6yMX8HJxkXo+nO/ZDfrG2OmXCVpWhV0b4jUAbBw2nvPz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0W5YgB5++fHwwHNbDIphfz67G3A6AlY/hjRVCNxwdQ1XfHehn
	RUDNvZj/yTWKHcby8Y2cvaJ4x7YWWcU7mS4ccs0o5PFTnpEyES1Iuegsn+pTrMngaTU94DgGEdg
	HQY5jtzxg4w3WDfmmeYbeTmVuWhgpEDYG0HhgAM1ayBzE9slNO8TG3vKsreMHZ2I7
X-Gm-Gg: AZuq6aKoKf0VSVv5pIS6CdJsNS8u234KHLryE+Z7kU/fTy0CpCsiDj1sT8GiMW6nD4v
	O6pkSe4WLwm+SgeFWsd/3/BgvCzLiAxn5f8z8AyeebmlBs8w3wVBvb7rzrZFWO7I0eP+ywrFc14
	pS5VAyMFMz/k1wG9YjDH6qAen7eZOenOOnV6S4fSt9go92PDTGmYuO3otxlP0r/hZUwSnz0zHJH
	Fm0ZvYY3Lp6hIDRZmD+t3JLDn9EsYR58yfQ9uF0fB2e/CzDYrzxBB9y7leaIijKyTWSlU1EH4Oy
	3hUFEicOim9ZvhmSl+FQdYGylAXwx3BCgHv8kYeacgdyLHBhQW2qEDm4KBgIyNYTBQohi8ErLqe
	qtGlNr5DdVmDPjRYfDaSHldqRt0hUl790JhXut2dv
X-Received: by 2002:a17:903:19eb:b0:2a7:8486:fe65 with SMTP id d9443c01a7336-2a870d72aa3mr24926255ad.22.1769542024173;
        Tue, 27 Jan 2026 11:27:04 -0800 (PST)
X-Received: by 2002:a17:903:19eb:b0:2a7:8486:fe65 with SMTP id d9443c01a7336-2a870d72aa3mr24925885ad.22.1769542023638;
        Tue, 27 Jan 2026 11:27:03 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:27:03 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 00:56:35 +0530
Subject: [PATCH 4/8] clk: qcom: camcc-x1e80100: Add support for camera QDSS
 debug clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=69791189 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=F2hG9-dZ5E7o3FMX4mIA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: nyFnriAPkvGQ6d8eKap16xUGveBaEElE
X-Proofpoint-GUID: nyFnriAPkvGQ6d8eKap16xUGveBaEElE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfX++OhKGbxjrM6
 OO8kLPeitBASi6SefZJIdlnXoeI5nRVb3xUBzjcZMXJdZacGm14uAfRm4+hP2kPEDaG6RUEklyR
 FRynnAGPd63kQpJMtiDqNyEESe0iLKJfKDf0YS05ISyBdvs1aqXGeBGZBgI6VKRih+LHgA3vxsP
 n45QqYS1IOlnBqY9L6R9RASBSsYm0EaSyo1/iFGV8rBb6t+A3qQz8To9tnMtb8RV2Ork0dTaO6D
 x8xr6LWfMpkWyE8dOdl4dHNqXiZ7MY3QqTnTgDXNpGW6V7czcbBh2BL6CmJOZwESEDyaPrlufVY
 OJSfF94OxTrGHQldVjzUz1ds2K7mzzHad8SG9HQODIZ8Bo52RN8Ljz8j1m7911Bg4zAEa7kqCYR
 Rvzfzdcfo3DjhApdATpCjO10w01yYKt6+OuX0eHfj+JO23EF43Q9M46F0g52JlYhpvtiudV2rC+
 FHGlb7Rs2MI66/Z65Cg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260099-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E046599D14
X-Rspamd-Action: no action

Add support for camera QDSS debug clocks on X1E80100 platform.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/clk/qcom/camcc-x1e80100.c | 64 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/clk/qcom/camcc-x1e80100.c b/drivers/clk/qcom/camcc-x1e80100.c
index cbcc1c9fcb341e51272f5595f574f9cb7ef2b52e..7e3fc7aee854eee841176a1330f97dc91af91670 100644
--- a/drivers/clk/qcom/camcc-x1e80100.c
+++ b/drivers/clk/qcom/camcc-x1e80100.c
@@ -1052,6 +1052,31 @@ static struct clk_rcg2 cam_cc_mclk7_clk_src = {
 	},
 };
 
+static const struct freq_tbl ftbl_cam_cc_qdss_debug_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(60000000, P_CAM_CC_PLL8_OUT_EVEN, 8, 0, 0),
+	F(75000000, P_CAM_CC_PLL0_OUT_EVEN, 8, 0, 0),
+	F(150000000, P_CAM_CC_PLL0_OUT_EVEN, 4, 0, 0),
+	F(300000000, P_CAM_CC_PLL0_OUT_MAIN, 4, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_qdss_debug_clk_src = {
+	.cmd_rcgr = 0x13938,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_qdss_debug_clk_src,
+	.hw_clk_ctrl = true,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_qdss_debug_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
 static const struct freq_tbl ftbl_cam_cc_sfe_0_clk_src[] = {
 	F(345600000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
 	F(432000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
@@ -2182,6 +2207,42 @@ static struct clk_branch cam_cc_mclk7_clk = {
 	},
 };
 
+static struct clk_branch cam_cc_qdss_debug_clk = {
+	.halt_reg = 0x13a64,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13a64,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_qdss_debug_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_qdss_debug_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_qdss_debug_xo_clk = {
+	.halt_reg = 0x13a68,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13a68,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_qdss_debug_xo_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_xo_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch cam_cc_sfe_0_clk = {
 	.halt_reg = 0x133c0,
 	.halt_check = BRANCH_HALT,
@@ -2398,6 +2459,9 @@ static struct clk_regmap *cam_cc_x1e80100_clocks[] = {
 	[CAM_CC_PLL6_OUT_EVEN] = &cam_cc_pll6_out_even.clkr,
 	[CAM_CC_PLL8] = &cam_cc_pll8.clkr,
 	[CAM_CC_PLL8_OUT_EVEN] = &cam_cc_pll8_out_even.clkr,
+	[CAM_CC_QDSS_DEBUG_CLK] = &cam_cc_qdss_debug_clk.clkr,
+	[CAM_CC_QDSS_DEBUG_CLK_SRC] = &cam_cc_qdss_debug_clk_src.clkr,
+	[CAM_CC_QDSS_DEBUG_XO_CLK] = &cam_cc_qdss_debug_xo_clk.clkr,
 	[CAM_CC_SFE_0_CLK] = &cam_cc_sfe_0_clk.clkr,
 	[CAM_CC_SFE_0_CLK_SRC] = &cam_cc_sfe_0_clk_src.clkr,
 	[CAM_CC_SFE_0_FAST_AHB_CLK] = &cam_cc_sfe_0_fast_ahb_clk.clkr,

-- 
2.34.1


