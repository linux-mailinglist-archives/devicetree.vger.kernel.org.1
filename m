Return-Path: <devicetree+bounces-228784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3159BBF0B42
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F109A4F28D3
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C812594BE;
	Mon, 20 Oct 2025 11:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MTAHstol"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5284E2D594B
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958004; cv=none; b=nTYAgDl1gUxi7LSjGsA9z1l9SmuVGSndbxr/8xlXQNDCX7u6TsFfkYhm+W86A2wL8dJPi/pjs4U/xMe/YKjEoae6e4YeXcASrCZpcLuHM+/n3peRPxHg/yPdh7SC1uYhloWWAp6CflXJ+99cuSELqmXATE2W7MfqZfDPWkzgxQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958004; c=relaxed/simple;
	bh=14IBdIk0VWgOI+eCkc53st4gjSAtuHjTlT42n1vEQwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vDxhdkoJQ7RB2egZWB3dffSNvk01PbruymFcCNpbCbkqruFYqJFUqcwStXdh8F/NwZHkkYIAfE+39fFO5Q1IcxtkOq7V661njkipdK6ETI4O3yNdDwJ7nWF4Eba8kbEuA5BVzJhXHDwVEX2OsW9yrV5C/D1ns8JVPcIm1+MxMP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MTAHstol; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JNj3Tv016958
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:00:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9z3Rdc/B4X/+lumDyrvl1D4/
	e+rPgF8EjJhDbz0wnyQ=; b=MTAHstolc6eUPrq0Rv4wui6J8qUera4HlBzcxo1m
	nAH/JrmV23OkNMh5TA5+TPFsmRUSy6q6J/u7hwKFX7Bc41TcSa6cn/ywOKt25jbP
	fF4+8iANCSnUf4r/NPD7qqLMaYHZb2CBnJFmv3Maxos818qo+DQWNR19kWxGGvMX
	336cOxNgGlBoRhAFEcU++7xqK/NsYKJwZ03UXHvII4kibKEzTrnKpGP7I8doWnUt
	ujoWesrIqHjg+gnNykKWmXgGeDRCYuzQiiXntz00tp+HriDQh91g4+1vTvS5fEVK
	/mYF0Ze4g4pE8yGC6Ps12bX3GFMjSTMnaZG045XfgrGS1g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k4d8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:00:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88e91599ee5so976317385a.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958001; x=1761562801;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9z3Rdc/B4X/+lumDyrvl1D4/e+rPgF8EjJhDbz0wnyQ=;
        b=OVbzEVh0agZ2K4jrmZ1Y/00TKPE5KpK7F6a3j2fL6sdxwuH+6dPU9MlMQB1SofFKSd
         TTQCuta7jLss7XZHGkjqlZlNlMmdLdi3KnTXV6rbtwDFgNuMHV1aLgAKfx1znhlFuKCZ
         g+k66uPk332Aa7vSCUxGyJ1+HibSEy/Ll+sCfrocW3QCNP3wUJiTnbPXmxLLBLWsrDe9
         I0LtCEU2PkIGrJf9H1XOtPKzVJ7HSKq2C87Gy1wuONJTYfLu9y0Vpp8iASvwqlTWVUN7
         zbXsCBaBmJp/c+7vgy3P4Mn4yxVURvdmz+HFSNO0/D3YOLUPZPE/pe701DRmaPUMkI6M
         4gTA==
X-Forwarded-Encrypted: i=1; AJvYcCVYiqO1Ex0s2hNn55W9Y2kpx/V45josk25BjoCYvMHbCpJkm1MPMkmOO0m8hG9XuIBZXWUTqAcrZjnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyrdoDAHOdWHZbEvIbaVgPAzFYmJcPd5KYApQBi91yUPl823vXO
	B10sxWFyzAK36XiQ8fL5wlHnUQopEI5cbIAt7JW1lXvEtmZBEGBHkCgUPjp9mix9f6WGAuiw7UG
	8gzcd5xqxFgnJppA6BRXyntWvRULVRJlUdpGx1dQgyVxSJfClduZg9i0784JGeEsM
X-Gm-Gg: ASbGncvQbsrm3lzkEZWKOsO3LghsG9ra+Nipj24fyig8ezQNNgwYrAVcelnXFVvsBQX
	GJfOFZIXBCdgKyh1aBHc+vlSAAQOnJJ2GryKxRTI5vkkSMHvrbBXRu4FaRe2zY8FHnkVd9A7PT+
	wWbpL7mFeWmBw4rd6xBXhkD+gHUCW4triCv01rTXTccvQeNzqdaWDDC+rZu4ByNeYc+yqhdfqt0
	+qO+hD/b5YTcJ+gNBzh5+C+ALFXIM9zrGOsk9eRl65x6dDal2cz/Ghuy8iDnOBgt04g3bdVREr4
	HlMgCScg4H3hZkGIIs8XgOu7+RLBRdqFFIh45fpK5l+jH83f0Xs+JE3/UVlxAab2m3HRLklSI6n
	hMdRO/uiqUjJkuJT4w537UYBtCBCZ/aj5DOaFEAhWExdIXNjHL2tt4fAzIMKR7QVT54pb0C9/Bc
	QLQ858aCpvHkk=
X-Received: by 2002:a05:622a:1a2a:b0:4e8:8b15:3180 with SMTP id d75a77b69052e-4e89d3ae832mr157357851cf.70.1760958000920;
        Mon, 20 Oct 2025 04:00:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9kgWQDQxssxXi9g79uzGEY8tRPOM8E9DkJHZayEc3eZVMwNKfchjA2PDtn+fdHPDEn54rYQ==
X-Received: by 2002:a05:622a:1a2a:b0:4e8:8b15:3180 with SMTP id d75a77b69052e-4e89d3ae832mr157357491cf.70.1760958000412;
        Mon, 20 Oct 2025 04:00:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def1b37dsm2416453e87.87.2025.10.20.03.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 03:59:59 -0700 (PDT)
Date: Mon, 20 Oct 2025 13:59:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 4/9] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
Message-ID: <thy7r7my2i3gfuy723rrq36k7hjobzqcnlzbggpagg4fgfvvzg@g5wzzxoppja5>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-4-29b02b818782@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-clk-v1-4-29b02b818782@oss.qualcomm.com>
X-Proofpoint-GUID: LhZoZWPuTdyQ94bQFFWjUK3drY-kcDu0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX8uOJiAltVnXT
 1emUEaLmHY+fdClGGTw58mbGMTxpD4P2oo+e/zS/0Z1SNp06yIJp3SL2qgNubQGMpyuMR3wsV8f
 7ex+G1zFCzPb2BJ/7QD/tQSyXPW/f7RtcX+swIPcsUA+G4cxwJIsIFMfT4PKxVy0aiBvSohmoyy
 RFobcOGpaGP7B4C9daLTUC7gsiFm571/pdcwYzRvFiMqrbYCcU8T6KWXSE0dREA0lSJSfXolrdq
 tn848QV7eYRirih83NOqnBqwTJa4oBjdCG26gEVERJRw6rIZSwhp7C4C3zAFJ7wZ/BSOSl4RTLq
 oPTN8bC66fbphEkE8x5IzwYlbnYnTf8Q9DxQeehIAONXZ+C6ofN0BjKo0kJflqzSaGzNrsSLDbI
 hhjsx0/7FmNGxCj9D11Ze+0mLIk35Q==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f61632 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=1BWIhq4ta8SIVIyFiOkA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: LhZoZWPuTdyQ94bQFFWjUK3drY-kcDu0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On Wed, Sep 24, 2025 at 03:58:56PM -0700, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the RPMH clocks present in Kaanapali SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> index 63c38cb47bc4..6b1f24ee66d5 100644
> --- a/drivers/clk/qcom/clk-rpmh.c
> +++ b/drivers/clk/qcom/clk-rpmh.c
> @@ -395,6 +395,16 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
>  
> +DEFINE_CLK_RPMH_VRM(c1a_e0, _a, "C1A_E0", 1);
> +DEFINE_CLK_RPMH_VRM(c2a_e0, _a, "C2A_E0", 1);

No. Please make sure that you follow what others have done.

Why are these clocks named differently from clkN defined above?

> +DEFINE_CLK_RPMH_VRM(c3a_e0, _a2, "C3A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(c4a_e0, _a2, "C4A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(c5a_e0, _a2, "C5A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(c6a_e0, _a2, "C6A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(c7a_e0, _a2, "C7A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(c8a_e0, _a2, "C8A_E0", 2);

And these should use the same pattern. If the old names are unsuitable
because of the clash between clock names, you can rename them. But
please, be consistent.

> +DEFINE_CLK_RPMH_VRM(c11a_e0, _a4, "C11A_E0", 4);

> +
>  DEFINE_CLK_RPMH_BCM(ce, "CE0");
>  DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
>  DEFINE_CLK_RPMH_BCM(ipa, "IP0");
> @@ -900,6 +910,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
>  	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
>  };
>  
> +static struct clk_hw *kaanapali_rpmh_clocks[] = {
> +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
> +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
> +	[RPMH_DIV_CLK1]		= &clk_rpmh_c11a_e0_a4.hw,
> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_c6a_e0_a2.hw,
> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_c6a_e0_a2_ao.hw,
> +	[RPMH_LN_BB_CLK2]	= &clk_rpmh_c7a_e0_a2.hw,
> +	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_c7a_e0_a2_ao.hw,
> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_c8a_e0_a2.hw,
    -I$(KERNEL_ROOT)                            \
> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_c8a_e0_a2_ao.hw,
> +	[RPMH_RF_CLK1]		= &clk_rpmh_c1a_e0_a.hw,
> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_c1a_e0_a_ao.hw,
> +	[RPMH_RF_CLK2]		= &clk_rpmh_c2a_e0_a.hw,
> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_c2a_e0_a_ao.hw,
> +	[RPMH_RF_CLK3]		= &clk_rpmh_c3a_e0_a2.hw,
> +	[RPMH_RF_CLK3_A]	= &clk_rpmh_c3a_e0_a2_ao.hw,
> +	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
> +	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
> +};
> +
> +static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
> +	.clks = kaanapali_rpmh_clocks,
> +	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
> +};
> +
>  static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
>  					 void *data)
>  {
> @@ -990,6 +1028,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id clk_rpmh_match_table[] = {
>  	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
> +	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
>  	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
>  	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
>  	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

