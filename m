Return-Path: <devicetree+bounces-271192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBFsDH1vqGkkugAAu9opvQ
	(envelope-from <devicetree+bounces-271192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:44:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7E02055A0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 361E63011F06
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F543CA48C;
	Wed,  4 Mar 2026 17:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YkBK21wn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nj+cnsdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9659B3C2786
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646094; cv=none; b=fGAhL/Rg3EmVcFNP6bEgOoCMFa+pysS6g0KqzKFGN2nxYMXhijrmazZTYgxb3f+l3YLcpULB3L+5F7tgPkOc8S/7UlJGH8EHcx2A5njF7pBIwKb9IYcnVm0fzH5WERVKELUqnPo5URf6FtudTqV5yhrWq42KhKp1CSKtIOZ3DTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646094; c=relaxed/simple;
	bh=OL4Epd6l4mbhBF7WNIPFfHQcOGLSdv6qnBiTHQvvHxI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o2D3StoM4FRd2qjP5+7gpxTxrDK80THVQonaQtNeNYvDI+cL0qt0UlgVt7fsnPjkFPPyiAU7Vmbd/TYGNqyaw+9MsrUukF3U7xEWN1x/xGd4hGabJd0/ceuv4qQWQO5SkZDnYgA+y2dBIBNhI5EGAijwJos3eMbNv1plsdBOHVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YkBK21wn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nj+cnsdy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HH9lE3837917
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 17:41:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HolbXLYprWxs2ZitZBWwrTqvQVPUtHF1Z9ZCTY+6+to=; b=YkBK21wnNGI2hrZX
	Em/9t7b/Xk76/Ue3tXoaawGc1t6Ex4cky4rSYAMOSCI1+7WzT8n7jYR/0GZ5c7eJ
	d+2hjTn+0AhUMv1PXg5mpkKgq+mBvJ4geZpFGElAEaXqFwI152NplAHp8CHvqMb0
	l9v5LmhepK70VFxJi0B5yEbcUqFbUzp+bjL7C+AyH5dfXZJyoIOxAr2W01d6RW0o
	nqCdVS1xeryLuRqKW7QONBnSonJdT4QsVbvjoIQgtWFVaFAyuvdBFUWUg9hZhsTG
	xXKpLncm3TsgVX8kW1bngD4U83GqhEwnMlvuk5TxVKHyRidtYKG6uHDfNuvnPTSF
	JWDyqg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m0286-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 17:41:31 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35980a994d6so20643991a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772646091; x=1773250891; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HolbXLYprWxs2ZitZBWwrTqvQVPUtHF1Z9ZCTY+6+to=;
        b=Nj+cnsdy720YpWb15QiBki71Cc/N/hnMNKBJoEokaYSUwqXiaOyNl4sG7yyml2UGPL
         xc2s+9uHLT//2qiHAQaxs/5y/1ooMIM50PfzC7wZFkGl9jdi8vkKtzReWJkIp721kcR4
         MbOF8AvZDSp/+SIJfG+GVzo80se64KlAuttpO5C/KqvBd2zTVUZN4O/XaVscyKagFdsK
         RIyFSErNEbNlJMxzuzXhRiM+dD94ky98P1VMc5KpPHj808kT/0/lDxGAkoe9FRo3laq2
         B4mi/BrZhfMf+zOY+q9Zf6LQIYJcjdaGYexSqytrXzPzPcsiUnPxHPhhQ89pvH4u8KNn
         PUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772646091; x=1773250891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HolbXLYprWxs2ZitZBWwrTqvQVPUtHF1Z9ZCTY+6+to=;
        b=uS0r8d8gGT7faFJAEgihK19ETRFS7QPC4CiTXL3NzpaxKdm42gApwXFeNlip2wkA2Q
         R8hxKoX9akF/DgZuTgrtZTTw5hvYWpJGrL2uZqTtuj09KQZ9bO9P5Qwo4xCaRSTXdH/y
         jU95kcAOpnfUIPfjBeJj7ZZEYmoRw8DcteJRIQckhP0wW6e8X1KuEJ7fa7EmF+hp0QhP
         OdplCwM+la8tcX4mUkVhXBDdjWOpelplNQuH/48fK2KOh+wLehXVlAMs1c8OA/jsf1pz
         neBn+ILIYrqXSrteAgXuhyivNRxex5OUlkYjKZ0Q3MHIriTcHQx/Wfwr+CQo3e76dZDL
         w7kg==
X-Forwarded-Encrypted: i=1; AJvYcCXtrGGSVW0cx6xxMWSpvK/reFotxJAda4OfA5KskvzBhEZOw+05kkIjBtIuXPylMyjM/h/O7pLCf+2K@vger.kernel.org
X-Gm-Message-State: AOJu0YxqVi0rLvwJEdUMS+8risQQ9EYTU1n5PMQn8qRNA6rset75ZZQ9
	E/V/NHump24HpH+RBOBVZ11pPlwb2XZ1OE9T7lYdFLZNKBax7k+tiRUyOIkO/4LG2dV7ZCS6vOl
	W6Wn54VHccbPU/rkFQxtq4D6TAs1EVp95g3oGqoNRKr4gPmJsHkSKQ7rg3KE1MdTp
X-Gm-Gg: ATEYQzxoR9puUPV8xVVdjzXG5c2o/klEhkMhReV+3nxAFHKhKj/MU8DMAXvpiycm7s1
	j8i8ej9R98wnZ5pTroPjvIQq0MFhPORT4koOXmObz7XKS3Yh2ZRlxEIs/9+AMAwAFFi0LE6hPv2
	1neFn9+xuKfkuFPyhEM81k//haeMVCgyjOKgAtBeytNUM4pfhja3CLijmt5Koj4to+e5nRG6eqt
	9dn3uyjihIbUZRj732z4dh2LHNCXqo9CnAv4eaONchZ1c66d7Mk562JlwOB/IgqBfirGVJxPlIw
	hzB280FpbRpGey1IJVAlXzbdehmI4fgxNF/5mwKXUhvHUUp72Is59IQp55cO7aTqBD7p3o+cL6/
	5tYCUzb171HmU4RtVWnvqUEL4wZgF4ogeyH7rjggew6rcviI9PNE9
X-Received: by 2002:a05:6a21:6e97:b0:394:5dc9:9758 with SMTP id adf61e73a8af0-3982df07e03mr2732909637.28.1772646091110;
        Wed, 04 Mar 2026 09:41:31 -0800 (PST)
X-Received: by 2002:a05:6a21:6e97:b0:394:5dc9:9758 with SMTP id adf61e73a8af0-3982df07e03mr2732879637.28.1772646090660;
        Wed, 04 Mar 2026 09:41:30 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5ea0dcsm16608794a12.3.2026.03.04.09.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:41:30 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:10:54 +0530
Subject: [PATCH v2 4/7] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-purwa-videocc-camcc-v2-4-dbbd2d258bd6@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
In-Reply-To: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a86ecb cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=F2hG9-dZ5E7o3FMX4mIA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MREiekyR3imkHM65Y8ZW6lqCToWQwlAq
X-Proofpoint-GUID: MREiekyR3imkHM65Y8ZW6lqCToWQwlAq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NCBTYWx0ZWRfX6Fg4QK3/tM4k
 D4JrKICqoFcaX5WCPUiD+OFYlvV2mIEhlgM2skW1JsOdUDU+FaPtD7eBVr6EJWOr1VRdTc/JWyH
 Octb+vSLo89wInAyHSUpsbadt4y1RS8akFh9GeC/F/9KPqs6VIkOn5MUJqsyvt5bNjIA7iYaDoQ
 wN3x3hMeeGWWWdebLMJEwZCSndQ3YhKi6aHwWWwpvvZSK9bMCVYVqhQFid+bkL872kvT0+jj3pc
 DJTGMeMam72hQjBjrkQR7hVGRgQR8CaKVHb8FiAVHOnk+XH2Y/IODJW0ThYWUZachypivoEopgL
 GgoXEkmx6GhYy6bIKKHfmRMstqP5CrEzz9LVsLETKFyziYIBsFsPcKj/fCr23wpMI5a1Xcp5KvE
 EkSCEkGOQnPswMH6hisLbJ6VjdUF/UbpmybdqzGfbqqeRomIIMk6FCK4HBx5aJXJZ3L05yfl02y
 1nMvHYfSGGiFDuoMLsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040144
X-Rspamd-Queue-Id: 8B7E02055A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-271192-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add support for camera QDSS debug clocks on X1E80100 platform which
are required to be voted for camera icp and cpas usecases.

Fixes: 76126a5129b5 ("clk: qcom: Add camcc clock driver for x1e80100")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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


