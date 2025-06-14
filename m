Return-Path: <devicetree+bounces-185963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AFCAD9F67
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED92B1763FE
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1B52E6D14;
	Sat, 14 Jun 2025 19:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K2LbgRw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9A2E6D09
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749928749; cv=none; b=mjk/K2/qFadIpXPuxPxgNwqZg2Fu5hpnluCnknyrdS5bmO3jj+Yli9YzJ00Mr1hWPPJSvFA/w4HWP4ImICxQWJoUBoBHDDH7P3IkESTigwpqBsHOMjLvhwESFs36jCPCTNGxdSFsa+2RVlVG2UztKvsmMDwfR2xnAD53rysY3+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749928749; c=relaxed/simple;
	bh=HCmu8zBCwT1sCU+JWJo7GxThaeF443wRPngh2djh5qM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=juJPhDdVk/qPClY78MNvjq2wcfgnham3cN1+YHmcwVf3DOHgBOdqDYAt+FL1Zx9s45oYgwy7MJHa/Ybsy0Aq7LkT3EFvEelHkBRSv6wwnJ+pBF6GqXNHz8yxJhs5zBJCfc3UWS0e3Dnw4eN9lmgCdf7ESEf4LtNfbilDlc87xT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K2LbgRw6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EHlUkr010621
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CO7GBylWWl+fwo+IkF7T+4QyCFqae8eZKA5W8pecqIU=; b=K2LbgRw6FWdqBxoS
	EU8VuP6MiSmFQocI6knnZ74nWWFa/gCoLzB0tIJmGSqXlP5Sod6IM59gMXg0TN9R
	3TQG95I5QNlb6lljfLQXw8ha+7//Az2nRsZCoiR0YhXqVf4PLE9Dn0WGZ9bJ7jUV
	ktgCGSQYfAZWBOtpPaTF1oROrX9E7uifXbFo9GkEevObfXvxR3/1RCwvM3DX1qFY
	ul5IhLGdh26cC+PaoD+bUCc5kPjYWTK0SDmclhUlxYwkmIeTbHgFnt5rM2OhqWT7
	eAMpyU9j28JLnNp+HhZ6FeoZ1ZutYMHwNAoTMeNuByaJRnWXiqWvyqhukobqqZ4z
	KXsrHg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47928m8vmy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:19:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d097083cc3so82809285a.3
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:19:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749928746; x=1750533546;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CO7GBylWWl+fwo+IkF7T+4QyCFqae8eZKA5W8pecqIU=;
        b=kJmAyR1t1CjeKX2igix8XIyvCND0WaR3jqAajJUGIDjQSrXbM81yeFP4OAfhFNc5HI
         JWtgNkmCgC4E0QnHdEa36osBYFmpn6u7VrDaD1xD4LfZbYa7k2PO81zS0HS78PG2F/lq
         2WlRAvXAdm7Je6eM4x6t+mS7ObtYCURLuFA+7TF6Laj2k8ba4N0a9O2mDaDfQd0vDnHw
         fAmjhGQAU4JkPMZWpugA904Kzh4hhb1Jsekm6qFCHghf5U1OHyxejBDpbgljx93O94MA
         3sxNwYSoYRpMQAPDk8zLhhOaOAE3a2SJYmwdjtsejnQONkXl2CCmlFnMFzeR4ZxDth4T
         tt1g==
X-Forwarded-Encrypted: i=1; AJvYcCW75WrnFq7nk0F5zS2tzDsHMGHcK8YSMW/EkN+Ka7N1MRPMTIZ2oWfF77+X2JVAhQWmHrXHbCkkjIw1@vger.kernel.org
X-Gm-Message-State: AOJu0YykLGPJyx19zS28+zRm88IBE/7iltNC8Sn0YYqcUg4N/6jFhu1E
	ZBxGEKS6DzkEoTSPikqjyiURaIf4PR5R4oiIpQiRg1+gS6ls1foVhTNwLOoADI2u7JxYQhhaimg
	qkpMGSziy0W4axI1iatKWHmE2R4jjUukx6KLOhnGKY7bGyEpnMpYpk+wyZejR1B+n
X-Gm-Gg: ASbGncv1DDNAnsjH8cCEKNyLG2UXJ9L+jaE7Nrmi+PVnP7f20MqVFCk4AQoGbqkDQt5
	Awtu4VJ7KXYjF9mPk3bW6nP4dOfh76YBfm9RkwTF1S3wWuS2iJe2IytVaXzH+GqBWzjpnXKmQRa
	rO8kZ6WwbilwXHT1ER9cy60FaT5csjKf2xUgLTF/yqgByCZ2RCajhWKMcSU+XLdiQ+wKHxXZF3e
	qweTboPBd/BoMvj9WR3+aXF6dD73zIQ3pECoHUnynPet2cAHGTmF45aPTxu+9knuYqSWPMLdAmi
	G+ZiNTiilKsotsdB87UogAapl3H08CLPnQKZzMDt5Ced2RznikbxPAWWnwff4sawqEH51K87nft
	e0Ek=
X-Received: by 2002:ac8:5a07:0:b0:494:b722:141a with SMTP id d75a77b69052e-4a73c610d1fmr21771461cf.13.1749928745796;
        Sat, 14 Jun 2025 12:19:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtvCIElzY5rB8ZQ1ay4v583nOREgAN3HqTp4Uk9iaSzJMhURaskdck+1YjGvG2ZGck1/8UTg==
X-Received: by 2002:ac8:5a07:0:b0:494:b722:141a with SMTP id d75a77b69052e-4a73c610d1fmr21771181cf.13.1749928745313;
        Sat, 14 Jun 2025 12:19:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec897acfasm345456766b.161.2025.06.14.12.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:19:04 -0700 (PDT)
Message-ID: <75fea0f5-88ca-4099-ba48-997e46bf4de5@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:19:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 07/10] clk: qcom: gpucc-qcs615: Add QCS615 graphics
 clock controller driver
To: Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250612-qcs615-mm-v9-clock-controllers-v9-0-b34dc78d6e1b@quicinc.com>
 <20250612-qcs615-mm-v9-clock-controllers-v9-7-b34dc78d6e1b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612-qcs615-mm-v9-clock-controllers-v9-7-b34dc78d6e1b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2MSBTYWx0ZWRfX0eIL42oAizm8
 nKBbtqQan4oiJWIKGSKoG1rYpSooKxSW9WjPiwvt2BRopNv2vuhmNLJ9/YhToShNXYwZ+2RyFJ3
 Tqd/DSH9WNQ7iul0cn0vGwHE0ovqnZExOTwkpRym2wZOJl1qy9pUKkx1IOA/1+3JI6bbeYezng0
 4TOEiLgZAcjFXHMMNzSkiPnwIXGGTx/4T1gaTxosh8usRSMQqisSYcex0FNVgjRohPilSY9/WPo
 n7OZq20jq/Sa3xvVz71tVtIHUQP+ygjFPjmzml5c4CRtnSRM10B7TebQ6zZdQof5uDdUeMTnTyQ
 s7QSybsL4+SeEQhhqgNAd0m38DCVzgBpiAy67W3S2WYEZE1ps5qGXEcWmS8YS7yPG7qYiPK/s9u
 lPtxgZSl9OZJLDNzEXWzCvIPmKXPVp4NaZ9xRTRR5E8QDSH2kI0QYD+WP6B2jAOTLMF4VeAy
X-Authority-Analysis: v=2.4 cv=fvbcZE4f c=1 sm=1 tr=0 ts=684dcb2b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=3ze65spd1aMdTggYaI4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 2IXqNgBcV2Pqi8HROdKhEXsVLamtiWdf
X-Proofpoint-ORIG-GUID: 2IXqNgBcV2Pqi8HROdKhEXsVLamtiWdf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140161

On 6/12/25 11:55 AM, Taniya Das wrote:
> Add support for the graphics clock controller for graphics clients to
> be able to request for the clocks on QCS615 platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

[...]

> +struct clk_hw *gpu_cc_sm6150_hws[] = {

"wink"

[...]

> +static void configure_crc(struct regmap *regmap)
> +{
> +	/* Recommended WAKEUP/SLEEP settings for the gpu_cc_cx_gmu_clk */
> +	regmap_update_bits(regmap, gpu_cc_cx_gmu_clk.clkr.enable_reg, 0xff0, 0xff0);
> +
> +	/*
> +	 * After POR, Clock Ramp Controller(CRC) will be in bypass mode.
> +	 * Software needs to do the following operation to enable the CRC
> +	 * for GFX3D clock and divide the input clock by div by 2.
> +	 */
> +	regmap_update_bits(regmap, 0x1028, 0x00015011, 0x00015011);
> +	regmap_update_bits(regmap, 0x1024, 0x00800000, 0x00800000);

I'm going to assume this is not the same ramp controller as:

drivers/soc/qcom/ramp_controller.c

..or maybe it is one, but we need to set things up on the CC
side

> +}
> +
> +static int gpu_cc_qcs615_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +
> +	regmap = qcom_cc_map(pdev, &gpu_cc_qcs615_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	clk_alpha_pll_configure(&gpu_cc_pll0, regmap, &gpu_cc_pll0_config);
> +	clk_alpha_pll_configure(&gpu_cc_pll1, regmap, &gpu_cc_pll1_config);
> +
> +	/* Keep some clocks always enabled */
> +	qcom_branch_set_clk_en(regmap, 0x1078); /* GPU_CC_AHB_CLK */
> +
> +	configure_crc(regmap);

Likewise, please rebase on Jagadeesh's series, which is now in
linux-next. With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

