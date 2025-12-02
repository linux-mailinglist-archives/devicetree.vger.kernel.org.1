Return-Path: <devicetree+bounces-243675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5EDC9B233
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7E5F64E35C9
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBAB30E854;
	Tue,  2 Dec 2025 10:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hcUfdKCe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BLs82OOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C613E305E2B
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 10:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764671213; cv=none; b=aQ6478XjHncZa+vDpArE6JwbEIyhUZIPVsGXBrAHYezuf2TEGJvtqlA+fwJPzu5IW5NbRDYq1+v1VcmX6sY+3J6ZSj654Ft/c4ecUiwHzeaUlaGbN+eQwp3zlo7/11uCGdQq6dlOkIrt9dyeCY2O4qhQVfYlsX6XUV7iGRj6UEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764671213; c=relaxed/simple;
	bh=Ge74kR3qgNEQ/LEpUzlht8wDYy5q2b6pVpNdwGSdSlc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HbF0spINoQ3Cb6cd4k2Ive3433HWEr3v27ItZqnFIUN4MBkR0LthvyNns2X6+Vmsa+w8LVols0blzuEkLW7FZYtD17qEy3k4O8z22bwwREkLtq2b+roH9kPhigHJ8Be3Xsy+F2MWL0F1TgQzjFIL5hpLFFilxyxQbPO8+G7YhwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hcUfdKCe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BLs82OOg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2A2AoO1090991
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 10:26:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HyPluVgnUgAYmNSztPK9FzXm2nnVdVYGDg0U1TBzdaA=; b=hcUfdKCeK3ttKukg
	EI6yHuGnaPwb3B9IGNWU3xzBT/Nui1J8//lLC01yB2Xt1B96IWQ774hNp7h/KGmY
	b0nC8Bjxk4rrvwCtYenxJyZK1Mc+JrJftWNRcdzqeNKQ2rKtsZoyI3D/WMaywYhZ
	HcmyDWrxmuZ89G3lvx1Nenm/noBvc2CRKmXFwW+isyi2kQuP36z6pozOz3NNxhPG
	kRu49IuXGgSPWlutavikhZoOudtXnBbWSTR+OvFP9FkjOsrV5Rp316nFTK13QkfJ
	7UfW2pvTczdviQqKd3wekUDAxRqHK5WXQeoT6rqDXYQFiNP1gnibP7x0Xw82Hh6N
	o74nsQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asfu12ws8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 10:26:49 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a998ab7f87so6755895b3a.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 02:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764671209; x=1765276009; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HyPluVgnUgAYmNSztPK9FzXm2nnVdVYGDg0U1TBzdaA=;
        b=BLs82OOg7wPfC8++O6IjVQ9xSyBMhYABsYguEF0ey9QoIJi42p02XIaO1Q7Re90ZQc
         1JiZ5vOckSlms9/32JvbSlGU8X92+t4XV422F4FMTcBBpzKojNPQpQXJA0wYCpqsq+1r
         lgraL8ft9l3VIAKlFKtzeLWCZgWuUdoQXy/VSNsphdScmA58iXoo7GASVRvf7Wnv5gza
         zSPzT3XGmW0mW6E+gO2IsHUAbzhRMCKC4eyU9FytZh3vP81qVuu1OK3VqpE4vnCi8qPv
         HlWLm4hnIIHzUGZH4N8AHlgpz/ujw6TMkfhPjb0jg8uUPA9NlHYSA9fRLCL4mYIzDQ6I
         i8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764671209; x=1765276009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HyPluVgnUgAYmNSztPK9FzXm2nnVdVYGDg0U1TBzdaA=;
        b=K/u1ZERp83C5umxVUtRtqyvZK2yYA/rjfinRdKyclYDir1TVXy+2AQ/J76gB0yPMSh
         ZmCeRd8N9+ySHSywliiLuDtPyMKDCE94GznuDJ63sON44tHFtNnOh/tKUyCjHqICCywF
         c9Jl5XX5m9JktF/t1WMVve1M8zA0FORvFLalrQsWSb+pO49yaIjKMn8CdXO/GgHfepLa
         nQW8PBshCc+gk2OpMKuI7b5TujQD/vij2RIx9cRHCEwSNcFSsMR/1E3j/Gh1J9OEGpkw
         ioIRW/hv0keAWr9TF5d0s5VdYyofIBzWGt7zXG+wETBR4YFn6O12wYqzeP/NSpprjkVB
         l17A==
X-Forwarded-Encrypted: i=1; AJvYcCVs6nkhH0WDs68dyjPEAttkL9LNX67twwRlRLJFJOs4aHEiyHsfnRpPtM2tFd1JXGIKwSVWufmpJMlx@vger.kernel.org
X-Gm-Message-State: AOJu0YyWw7zVcGhmZlDzDCPbP85Kh/x3Lfsxa0Eo2M7iCdKFLM91UQT8
	COZJStkn/tozpw9BcpBz/CkUS9abJ7Da28EqH1iGK5NZscP3h0JWqQrgY/enCcIzHuQO8D1QiQT
	4IUMNQp+aicnLVWze0omFHFcyVCEie/FZitiIuxPcfIauxAZdLvWhzkrKolmKlIbE
X-Gm-Gg: ASbGncuJ7yX7e85d3jF//kohav6mCQCZ8Zu8hgM/AgeSWTmOnvmrZOVyPrlGa/v7cGj
	86lR7tZkikbBVpHZTX66oNyCMcnK/vO+WG42tKol5MvLdRCytabEqrvZ8zAJ2aE1oLyf+yvvwtd
	ujE6Tm9Il57GQbKx16rUHHwPmRf0qTGCKcrcWuAb1gcOokS2sDoH93+4Fs4nk1rsYWdk8QbY5sh
	QYJ9D+OYoBwAQrTXmwVr4o63p2zYLB29U6CKTuN8lCpzgYnAw7g31mJxqopNZhA7PW3rV3hg7+Q
	LcwNvy+BWg6XpJv10qYDD/hoQoc5fll8zGm7lGadtMjNVjPl1diPu2NOx+HK8ARZdpjMPQ76iVy
	pjUqoEspGhe/zsZsqHKyd+LndObM/CT5tZw==
X-Received: by 2002:a05:6a00:189d:b0:7ab:e007:dec6 with SMTP id d2e1a72fcca58-7c58eaf2874mr46343189b3a.31.1764671208749;
        Tue, 02 Dec 2025 02:26:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpNfD8nmqLv0TcMm5gxpZyZOh2xWWnJZnOrY2LiRkeixNuQOxOdAG4U5ATN7FgjOGKybBrhA==
X-Received: by 2002:a05:6a00:189d:b0:7ab:e007:dec6 with SMTP id d2e1a72fcca58-7c58eaf2874mr46343152b3a.31.1764671208286;
        Tue, 02 Dec 2025 02:26:48 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d151ad4d6esm16379511b3a.26.2025.12.02.02.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 02:26:47 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 02 Dec 2025 15:56:25 +0530
Subject: [PATCH 1/3] clk: qcom: clk-alpha-pll: Add support for Rivian ELU
 PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-sm8750_camcc-v1-1-b3f7ef6723f1@oss.qualcomm.com>
References: <20251202-sm8750_camcc-v1-0-b3f7ef6723f1@oss.qualcomm.com>
In-Reply-To: <20251202-sm8750_camcc-v1-0-b3f7ef6723f1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA4MyBTYWx0ZWRfX+Y9zWNs15TyF
 FTdaA8qL+MMfX1vsuuBKl3JnuVms/n2vgyRP3dh+Obr0wZDzbZjPuVczdVu8kII8TPLUmutbm8c
 S8NFTrlDbaa+F/LzRg21IwyhFWexM2wUzDI5PcOozX1NUa+osZjQ5pILFcI48GxNUHavPSyt3X7
 tMGQK6xqpUDHGYMJVqbTQHFvMCyC8Zn/S9Ad3y7MpiwwU1Bg1L+RpimvP9J226GePDz5AlB1YW7
 s8Mv3bJCsAVTN+mcGbruMUyniU1zRskaIajnfF2dHHP+4+dSEsv0wS8u+vm+riAbXv9L5mn9fAV
 Rt7f8agDSoG1naJ4YAG8WNmBEX/LHt5tLyIEOzKy9E6hYiwvjJcUWkohwBGuoeu4V7fxmezMoKY
 +tR4YOcv1jmUqP0cBZhp99gQDWMPSw==
X-Authority-Analysis: v=2.4 cv=BJW+bVQG c=1 sm=1 tr=0 ts=692ebee9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=03jAwwKPUxsBcueUP7gA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: ZHx_rB7RKsQ7okQLxSQ-OQRoBqqVPzQg
X-Proofpoint-ORIG-GUID: ZHx_rB7RKsQ7okQLxSQ-OQRoBqqVPzQg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0 adultscore=0
 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020083

Add clock ops for Rivian ELU PLL, add the register offsets for supporting
the PLL.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-alpha-pll.c | 14 ++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index 6aeba40358c11e44c5f39d15f149d62149393cd3..8586649d76f8aef119ed51fbf1ca90bc5e3ce510 100644
--- a/drivers/clk/qcom/clk-alpha-pll.c
+++ b/drivers/clk/qcom/clk-alpha-pll.c
@@ -243,6 +243,19 @@ const u8 clk_alpha_pll_regs[][PLL_OFF_MAX_REGS] = {
 		[PLL_OFF_TEST_CTL] = 0x28,
 		[PLL_OFF_TEST_CTL_U] = 0x2c,
 	},
+	[CLK_ALPHA_PLL_TYPE_RIVIAN_ELU] = {
+		[PLL_OFF_OPMODE] = 0x04,
+		[PLL_OFF_STATUS] = 0x0c,
+		[PLL_OFF_L_VAL] = 0x10,
+		[PLL_OFF_USER_CTL] = 0x14,
+		[PLL_OFF_USER_CTL_U] = 0x18,
+		[PLL_OFF_CONFIG_CTL] = 0x1c,
+		[PLL_OFF_CONFIG_CTL_U] = 0x20,
+		[PLL_OFF_CONFIG_CTL_U1] = 0x24,
+		[PLL_OFF_CONFIG_CTL_U2] = 0x28,
+		[PLL_OFF_TEST_CTL] = 0x2c,
+		[PLL_OFF_TEST_CTL_U] = 0x30,
+	},
 	[CLK_ALPHA_PLL_TYPE_DEFAULT_EVO] = {
 		[PLL_OFF_L_VAL] = 0x04,
 		[PLL_OFF_ALPHA_VAL] = 0x08,
@@ -3002,6 +3015,7 @@ void qcom_clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regm
 		clk_taycan_elu_pll_configure(pll, regmap, pll->config);
 		break;
 	case CLK_ALPHA_PLL_TYPE_RIVIAN_EVO:
+	case CLK_ALPHA_PLL_TYPE_RIVIAN_ELU:
 		clk_rivian_evo_pll_configure(pll, regmap, pll->config);
 		break;
 	case CLK_ALPHA_PLL_TYPE_TRION:
diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index 0903a05b18ccc68c9f8de5c7405bb197bf8d3d1d..b4492197419a7f326a4f6e6607ccee58ced509db 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -31,6 +31,7 @@ enum {
 	CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_TAYCAN_EKO_T = CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
+	CLK_ALPHA_PLL_TYPE_RIVIAN_ELU,
 	CLK_ALPHA_PLL_TYPE_DEFAULT_EVO,
 	CLK_ALPHA_PLL_TYPE_BRAMMO_EVO,
 	CLK_ALPHA_PLL_TYPE_STROMER,
@@ -208,6 +209,7 @@ extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;
 extern const struct clk_ops clk_alpha_pll_pongo_elu_ops;
 extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
 #define clk_alpha_pll_postdiv_rivian_evo_ops clk_alpha_pll_postdiv_fabia_ops
+#define clk_alpha_pll_rivian_elu_ops clk_alpha_pll_rivian_evo_ops
 
 extern const struct clk_ops clk_alpha_pll_regera_ops;
 extern const struct clk_ops clk_alpha_pll_slew_ops;

-- 
2.34.1


