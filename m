Return-Path: <devicetree+bounces-242913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4A4C913DF
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A9D1334510F
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE192E8897;
	Fri, 28 Nov 2025 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cMqJPVC0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FOU3kNNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C742E7F0A
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319218; cv=none; b=Io409j11llsWw6S2HeFvqwbgfmwzJ7OOz2WJElxhCmHxg/c7W0FdIFnqoHwrGBMFJfzMCT2RBkxogbrK0N7u10S6SvZMc4WLg3VxIjimOnTUw2Edz66CjVJWnpx3BqJMtqIHa0XKy/froLvz2uJZwRW5hfbf4JjW9kEjGjLlNJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319218; c=relaxed/simple;
	bh=4m3eSCxxytd3/9ULrzWMXUlBCzfX/0w0UNwcUeemTBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hJsVDJZ6Bac6wkzw/FCnZI6kQ6AMQJ4VS56XiCji9mWFax2wgD9S07uRkofwMGO1h5JoebPqVoNa1S4OzO5YUlMk7kQpJ8XDrL53wOiYE6Vs69+c+MMhBMUg8XPTszlmEn4GzckpgB9Jdqsq8ziIDp519Xf9BGtB9bNgSGb9nTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cMqJPVC0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FOU3kNNL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8OY6x3530959
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tNJ+LEhWT70faj1LvFJVUChOAyLj23F8IPQ1qe4AelM=; b=cMqJPVC0P1AYmG5N
	NqSDSnDMGD98V8YBzIhWWz8XosyyEHW1idRNonqZtV9EFUMsyLT5eRxl8PRC+s5M
	QKTUjJO+k8davh689pmlAEQUEWVBTj8vWyKZaNQxZNldaPAKbiC4ksa3cEhvG/iz
	VdcWYMUYKyrWt68IXMacKHx8+uYfgbMfqUrhWWpy2j2MdqVQmkhSJt9nkTjDMAHq
	CDBkEjbqW6QVyYuORDd1wn73UvSfwhkH4Q5aEv3j/4uP7eTk+tLixa6GwCCyZAFt
	kr/YAr6otq9MGn/h8svycqRqTb6nKluEeT14KnZI8NJj0TUoVrYRoQHGaPK/d7f1
	F3/NrA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm2rtum3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:15 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bce224720d8so2513241a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764319215; x=1764924015; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNJ+LEhWT70faj1LvFJVUChOAyLj23F8IPQ1qe4AelM=;
        b=FOU3kNNLatGd4jvQoM1JcqnxNfLkhxImm2KntGltAaf7d+hnX+lA5dV3sZp5/jSDK/
         iOJKWlr7eBDqQOerArlkjssDoxbTmN9B7bKrBssQKhxlmULJXYfBQ8SZ87Jcisx7lt1l
         V/YM0qyE8JvA+sNn7qyB8/XPgBhgaaIddDkweiIFBnDzcPzhnzyR6+zQOFiS121WQyIR
         YJBJr5RgpO3r/x/QT47wZHlfximrRkSLkT5XkPPp7Vrfa+MuNgDRLgwj6TaogVKZQij9
         0A576Xw6uEF78jqArpc5d0VsJAESTXpNiIkkCNDD0KAy6Anq9bdDwUQ3jBDKn2gUs3TO
         8Vdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764319215; x=1764924015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tNJ+LEhWT70faj1LvFJVUChOAyLj23F8IPQ1qe4AelM=;
        b=PaG0yVfbHUYu87Naj88YkadtZNA6GTJgKdPD7ZSYSdOfjwn6GccYb+kdLx9u791/dQ
         dTShZZ+mLJYyw+oEHNzx/GT4iseZQevxdEgNPfBCVHNq3J1jFz4F93wudAsogT8jC21i
         HLazWVcUOf2Hzd1oXfclrlfLsFkRK8kOtFM5Ikk530k0mMrrh++rGWoSKZr/21fqZOms
         xnVvNhH74JVcholwtervZn91/2QWBt2aNGVd5O4eHbzy5wPDUFOBeoVmwWdY+Dh5yx6h
         vu6KCh9jQM7r4TOypKtUyppx/yA8Rw5OpiosliAfs18+Wr80oR5be+bo7Prk7QwYmbPu
         DRfg==
X-Forwarded-Encrypted: i=1; AJvYcCU36It9ZaSBG2EJUzZ2hvxKFWUf7VrWw+tC3SJQf5eCu4U55I/J3ex/1dGNpepIXSA9lBsgCCXSoIRg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7d2Eip6MyiNiCLJvprC3UBc/siaPd5WHa34p0YEavtNaJijfs
	Lj4hL8WMGu9kYrasvJT2V8yaGU39UWBjfeb1QoeUboncdaNb+r6cy4NjO9aXgM59P26FdrdkwJt
	nzOHL2Fj6u0nAw0nJ/TYlySb/c1QHhUQrpxHKkSlIiAdUSgKHAx2ZP8BHDifO7anZ
X-Gm-Gg: ASbGncsgag+aUC0zRzHcdTIZ/LLnFCExw+vE8L8sWWXJQoUEk8U/fkvbX7lXWbmZxY3
	iwd6KpWqRHdlauXIscTQSA3JZ04Pcp13bcJNd90cmAtidAQrTYbeUTXjCymqNuKdihK/47QBfhe
	PNEbWaZwdG/PnTo+eCDdfPwATRjuIzgm4upbdr/uZ0d9QzrX6foKf7e3/f9h40P1RkMAB538X3G
	skgzPLVuzS1AlA9RBTVLNi/zVYsTRjnPBerGFxt3S7yYHMOq6fNy0pSkuSe865MHMRllXALjxIg
	iMoQUzMFA0INfvI+J1A2BQb7yM+Odw+LFYrzHnNfOUXVTtlfmLdOiPU2OdX0bB+uARg97oKGh02
	B/3zztrY+Wfm/ux6BkMSXJRzgJTfmlO0KYgGIZy52ijzriv6V6UlZ
X-Received: by 2002:a05:7300:bc0b:b0:2a4:3593:6472 with SMTP id 5a478bee46e88-2a7192e5cb2mr17064704eec.34.1764319215181;
        Fri, 28 Nov 2025 00:40:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXPQpamY2fDlIkuiT3ygR+MdZL1pAWcFiFrbesihBz0rPgNOyBAxYPw5kV+1l5Eqsw/N7AVA==
X-Received: by 2002:a05:7300:bc0b:b0:2a4:3593:6472 with SMTP id 5a478bee46e88-2a7192e5cb2mr17064681eec.34.1764319214613;
        Fri, 28 Nov 2025 00:40:14 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm21895872eec.2.2025.11.28.00.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 00:40:14 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 00:40:11 -0800
Subject: [PATCH 1/5] clk: qcom: cmnpll: Account for reference clock divider
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-qcom_ipq5332_cmnpll-v1-1-55127ba85613@oss.qualcomm.com>
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com, Luo Jie <jie.luo@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764319213; l=1996;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=4m3eSCxxytd3/9ULrzWMXUlBCzfX/0w0UNwcUeemTBg=;
 b=sp9K5nJf6Csi0yduFV2qnisYcsLERB8DNuCWdugfeV1u8aXcCG72IMAaMNgwlv5Xal8Fjv6Rb
 oOigt/zrEf8DMPASksXGEK2/ZB/UicqyzwC0PfVhL8u3gIIgJ8d9NYe
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA2MiBTYWx0ZWRfXzKmQm4mVr2zM
 mfXFigk7qDjx9lvVA5qr4YOaecCLXwtbW8vODmQe7Ejcw5e1BAguXU4R81K43ckwx7wEtOGkaSZ
 DSN3BIal/ehAzu9QD9EkyIR9mA24Awg3xqCaGugoD7T2iLUZS1xoXjN4VDBDjtQcgwZYPOP4G7i
 1Xva50dwzIN0HOe/MRGCu4GpI8pwEbp14iSJSJM5bF5a4tM3QKpDgZziMBQ2+8a+p/1usCVvrZl
 6e0d30J/eJNKwFUrdC/6JW856Hr+eZyT1WJbvhK+zfAKcPRjkiam8P42cuA4d65upXq9qhIJAWa
 mAI/wYh456vY0s1hkbBJIXdITIZ4CLK/KtdTAi3tLWvweGOKC6kbf5eGiBEq6QdmDnPAon1g2xt
 auWcuSZkHOYgwFjzvsc9F+2j8xT1sQ==
X-Proofpoint-ORIG-GUID: oCstFB60aoHHFIswzopD2HzkgtuGfbAF
X-Authority-Analysis: v=2.4 cv=W941lBWk c=1 sm=1 tr=0 ts=69295fef cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S55vJYNB7fQppqqD1sAA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: oCstFB60aoHHFIswzopD2HzkgtuGfbAF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511280062

The clk_cmn_pll_recalc_rate() function must account for the reference clock
divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
with a reference divider other than 1 calculate incorrect CMN PLL rates.
For example, on IPQ5332 where the reference divider is 2, the computed rate
becomes twice the actual output.

Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
applying the 2 * FACTOR scaling. This yields the correct rate calculation:
rate = (parent_rate / ref_div) * 2 * factor.

Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
IPQ5424, IPQ5018) that use ref_div = 1.

Fixes: f81715a4c87c ("clk: qcom: Add CMN PLL clock controller driver for IPQ SoC")
Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 drivers/clk/qcom/ipq-cmn-pll.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/ipq-cmn-pll.c b/drivers/clk/qcom/ipq-cmn-pll.c
index dafbf5732048..c6180116e1fc 100644
--- a/drivers/clk/qcom/ipq-cmn-pll.c
+++ b/drivers/clk/qcom/ipq-cmn-pll.c
@@ -185,7 +185,7 @@ static unsigned long clk_cmn_pll_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
 	struct clk_cmn_pll *cmn_pll = to_clk_cmn_pll(hw);
-	u32 val, factor;
+	u32 val, factor, ref_div;
 
 	/*
 	 * The value of CMN_PLL_DIVIDER_CTRL_FACTOR is automatically adjusted
@@ -193,8 +193,15 @@ static unsigned long clk_cmn_pll_recalc_rate(struct clk_hw *hw,
 	 */
 	regmap_read(cmn_pll->regmap, CMN_PLL_DIVIDER_CTRL, &val);
 	factor = FIELD_GET(CMN_PLL_DIVIDER_CTRL_FACTOR, val);
+	if (unlikely(factor == 0))
+		factor = 1;
 
-	return parent_rate * 2 * factor;
+	regmap_read(cmn_pll->regmap, CMN_PLL_REFCLK_CONFIG, &val);
+	ref_div = FIELD_GET(CMN_PLL_REFCLK_DIV, val);
+	if (unlikely(ref_div == 0))
+		ref_div = 1;
+
+	return div_u64((u64)parent_rate * 2 * factor, ref_div);
 }
 
 static int clk_cmn_pll_determine_rate(struct clk_hw *hw,

-- 
2.43.0


