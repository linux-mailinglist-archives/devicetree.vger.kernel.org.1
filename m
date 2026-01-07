Return-Path: <devicetree+bounces-252261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4DECFCF55
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 10:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 300653065F74
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 09:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA926320CB1;
	Wed,  7 Jan 2026 09:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ozuw9KO+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I9Lxh+iW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715D320CA7
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 09:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779026; cv=none; b=due3xiXvk4pLyjorRcvAD5ZidIUpXxc+uUavp/VBhvN8e4FB57zpPDlAF6UFsu9NfDHcq716hq+qDbRS89eMl4//2b2QOKhkIz3ixe/+WnyKQsRRah86UIkm7Zimm9weijluLfBJQFIpkoFPF2oVeRr0+eRxgX+O+yoczpJ9/2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779026; c=relaxed/simple;
	bh=uaUKb71Wii11zvNl5sxMKKfa7cNnprwc4J+HBmcQEU4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DNMgor4Me22CoNBko9/41EpyGkFXs9fOYBaWFzlG8MHd8A+3Pd8hNh/yKIhV8P14U3JK6NQHyabvF66UO9fcP2hPUooI396ERym3dpuZSIA/ihnD/6BJMhGR8egFTZ7uc9MgL0kYHkRK7lYnCKlJjEldyJ/2Ym7uGB54np9uZ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ozuw9KO+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I9Lxh+iW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079ehE72988618
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 09:43:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ONv0dzy9BraFiB+TBKyhUqYoYWxp7ST7mWMojgH7ofw=; b=Ozuw9KO+XLGIjCyq
	9yEL5vyXjHzQBj1MmyqlWtdpct72F5AqBBYcSwHQdP2CqsqriZB8JwKdW1OuFpn+
	1wYpL5xlhlnrjzR/ucFEjrM1aY6HWRiMdznSBe6htuU3L03ymf498WrVRB+5PwQO
	wfR5DrdD0WyO36Eun1YyIF5xFvJ/VlJ/Ro/sqA3l6NnX4xzpwqj+uL1zqtRrPuX3
	jZCVzGLWEXYG/f9BeX8VmrUB1bmHO8pY+CxcTugbknXdHQhA5ivQzzAp+ta+j1GR
	V3BIUNFktjjMEeDKW+hUrKB1ohPRSWrK2U3TQojtTVoejnwl83KC2Gzqzf1nalkl
	S6aE/w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nr0bn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 09:43:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c6cda4a92so2964953a91.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 01:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767779023; x=1768383823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ONv0dzy9BraFiB+TBKyhUqYoYWxp7ST7mWMojgH7ofw=;
        b=I9Lxh+iWmf+Z2KrosQdm/jsz53ax4p0bwk1bM+KrMcy3cg27+hiutPHIeLwivOTcP4
         wPVDUHZM6s59f8xwx91mPkoMytCQy7tSPDOSp9uKcJbgvGKN5R5SAM4NgR+vz6mSCeIm
         Wm4N2zTT7/L0BU178gg04ZajXp0C284vUoCQ7Zqigelh369FzX+7kywUgd5DqjD/6DT5
         RJjApMeEBdlZ/eGA1XZgQ2+J7+HJ3nw5zIZwyspNXswqac+3pV6tRJzxg1u6nApaaiZ2
         AZHzDUNhQ8ED12O/2h5yWyIJuXMPn0koqZsl8aCI390RBZPOaGR9Ogxl42pLrFQT2oaq
         Z2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767779023; x=1768383823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ONv0dzy9BraFiB+TBKyhUqYoYWxp7ST7mWMojgH7ofw=;
        b=XWvIpx4yfrVPLrGjKmnT2RE83XAGPTCRDHgEBpVGAzhLp/e8LJMy2EQiWvbhbqblrm
         smNHxzNEPc+DqVSgJy5upI8P7nZiakalGpk5pSSgv49F89ObTOTt6qr9LrdRb8KGCS1z
         xBWzZ5RS0F2W18HCrTrALHCVYyYicar2gufjGAUzYIFf/Rjpwj8+HhSpXVCrI2JdZfW/
         qdKT0wNwUfwPn4spJjqUDudn8UWyD1QWwqB8Fshj7/RTYe/LgTsuJp6GhbZCmIC2ZmRi
         LRkUfKEY6ckHeT0VpqfYAL7r+Pb7I8VAy5ZHS3zi7Tj6GywBKl2n4aHYU7XZ4w1bUFNT
         4/yw==
X-Forwarded-Encrypted: i=1; AJvYcCXW6OgZeZynAThKFUAs6KOvUkSqyUsph+IwqJbNkDwYaCcOP8z8NsM0+FekK1EycbmEMaPg5ejZs7E6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+939R+bffGmkM242yQ0bBwLkIJZSpkrk7FpTUYHkeGqMFkluK
	L0NdOPz048Xkxf7DchtVcp9T+FFvrnYFejIk8xLc+1fv6jR7WOUhWxG4O3L9fJDIPve+zBV16ay
	996W/D/Ao2+UirILjb79XERbRvKc45OFr1ypwAcVClwjSivV26jnXA3FKl5nwwBvT
X-Gm-Gg: AY/fxX6OzLoQQu0uIQfCohA86O4WdIlfR/Xz0FBhxxRICKNm07ud+dyrORjLJwQq5gX
	vc8XnQCQzXLe2oP2kNfl2qXFH+Znd5xn37zoSzKI79SHiR2vAFcNN/htXmO1TJ0EfpOjlnP00bk
	DL/NUsZaazrSRkZy8l5Typ3nof3g2MP8AUuZaiqBML7MJylXeMvEEFeT8dulun2xFnBqDwHsWdH
	HYj78vLWkz998u8lij710fqReqw/LNVvkqVIvo6Mno9+yTYmkG4zCkDAGGLcXJ1YVKTvdRaiiYt
	03pywLzo1MRCwtul/vPcxCynkCWgYHF/biE1ppiw97etuJDMnui+K6NAqWHzLs+AW7ySHvpSo11
	vCFtIrpUH3NmOA8aCG1qKxp4NLhCW3NcdrQ==
X-Received: by 2002:a05:6a21:99a8:b0:366:14ac:e20c with SMTP id adf61e73a8af0-3898fa66b18mr1776791637.74.1767779023059;
        Wed, 07 Jan 2026 01:43:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0AnOJy4NH19DQo79E8i5R6u4z0mklQ6JkIdwaoZ6T/2epP4OoF3d39rajQElEH1uLuGzY+w==
X-Received: by 2002:a05:6a21:99a8:b0:366:14ac:e20c with SMTP id adf61e73a8af0-3898fa66b18mr1776749637.74.1767779022553;
        Wed, 07 Jan 2026 01:43:42 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9568sm4472944b3a.15.2026.01.07.01.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 01:43:42 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 15:13:06 +0530
Subject: [PATCH v3 03/11] clk: qcom: clk-alpha-pll: Add support for
 controlling Rivian PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-kaanapali-mmcc-v3-v3-3-8e10adc236a8@oss.qualcomm.com>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA3OCBTYWx0ZWRfX0rqxaUSa/u8R
 EoJaa2xqYm/HPsMGEJ7jHCfjFjSDf4oXESdvn8kOaL6ZymrZnaFLhxbIRdKYq16XvQFIrLrV3vY
 Qhr3QAToxcIrAGIJfMN1t1Jt7uYn8FBSAfCB5W0iBBaRau+AZob+45u4xFGi8ySmZSZJbOUbuMf
 muYcyfNvOwxdeHOZ5z3i6UazQEbsiqaqVCqmioQUFjlLs6LZrYjqXtlrbkOH67Sc0Bi02OdtWwW
 +cB7IhjChbDq1BfVLtFTqqIc2Zvbn21AUspfrdCw39u6vFJ7SrlSz/hmPGyHgfRD6QvVLnjH2wz
 WDWfI5H1HsfHY2UHIzpiiXWTz/GsLRABVFotlq8IiMcnatU5SD9+44QUACIfh1sTK5WwY0E1YLf
 A9KIGMN79MuLRNERMtRK+u/vAb+LTXGm5z/j4b2DSL9s9zlvRvbFSL/BC0FLwPrQbst0+t8XbtQ
 LdmPujFOA2gWoKfo8Zw==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e2ad0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fFf9reVGpRxvdFVPZdQA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: XnzgWieGbqn2iNq3hUR1bPiMUV9f5jgZ
X-Proofpoint-ORIG-GUID: XnzgWieGbqn2iNq3hUR1bPiMUV9f5jgZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070078

Add clock ops for Rivian ELU and EKO_T PLLs, add the register offsets
for the Rivian ELU PLL. Since ELU and EKO_T shared the same offsets and
PLL ops, reuse the Rivian EKO_T enum.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-alpha-pll.c | 14 ++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.h |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index 6f50f0c4b984e991982ee8914a496c00c4ee063b..3fbdee6e67f9c82a2b93f2624a112934f01686d5 100644
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
@@ -3006,6 +3019,7 @@ void qcom_clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regm
 		clk_taycan_elu_pll_configure(pll, regmap, pll->config);
 		break;
 	case CLK_ALPHA_PLL_TYPE_RIVIAN_EVO:
+	case CLK_ALPHA_PLL_TYPE_RIVIAN_ELU:
 		clk_rivian_evo_pll_configure(pll, regmap, pll->config);
 		break;
 	case CLK_ALPHA_PLL_TYPE_TRION:
diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index fc55a42fac2ffe589ba270010eb47c0816832ca7..da7d3d75592373cb2df472b9976f8c7063dc5021 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -32,6 +32,8 @@ enum {
 	CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_TAYCAN_EKO_T = CLK_ALPHA_PLL_TYPE_TAYCAN_ELU,
 	CLK_ALPHA_PLL_TYPE_RIVIAN_EVO,
+	CLK_ALPHA_PLL_TYPE_RIVIAN_ELU,
+	CLK_ALPHA_PLL_TYPE_RIVIAN_EKO_T = CLK_ALPHA_PLL_TYPE_RIVIAN_ELU,
 	CLK_ALPHA_PLL_TYPE_DEFAULT_EVO,
 	CLK_ALPHA_PLL_TYPE_BRAMMO_EVO,
 	CLK_ALPHA_PLL_TYPE_STROMER,
@@ -210,6 +212,8 @@ extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;
 extern const struct clk_ops clk_alpha_pll_pongo_elu_ops;
 #define clk_alpha_pll_pongo_eko_t_ops clk_alpha_pll_pongo_elu_ops
 extern const struct clk_ops clk_alpha_pll_rivian_evo_ops;
+#define clk_alpha_pll_rivian_elu_ops clk_alpha_pll_rivian_evo_ops
+#define clk_alpha_pll_rivian_eko_t_ops clk_alpha_pll_rivian_evo_ops
 #define clk_alpha_pll_postdiv_rivian_evo_ops clk_alpha_pll_postdiv_fabia_ops
 
 extern const struct clk_ops clk_alpha_pll_regera_ops;

-- 
2.34.1


