Return-Path: <devicetree+bounces-243422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31883C97891
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 945724E1A90
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2E53128BF;
	Mon,  1 Dec 2025 13:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZcyfNaYE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvS5ZkIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1F1312816
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594951; cv=none; b=WgqadB3dnHmeJMHHMXrY77Jj/Fuuho2mgwK2cRaUEwZCRnB5Ju0MJZER9p4qD+6aME0RPXLT1r5eO842n911pEC7okkMj1rLWDr2WaP2vEhf5M68aa1XFZXcwd8lljU1X+CrPCUhdqszpDvFzuryXmok2yAMuACFo8HZaMoUs2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594951; c=relaxed/simple;
	bh=nbo9Gy1z9me7RbbbLnOg4ADpNmVnEU8hm0G2ysDXIWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lt7mA0nI4a7xtW1u7Ckirz9BtD+nmHBVobji4SBS5F5IB4DDf9NA11tP/78jQevkh5OYLX5HawhlMjBWObDLhJcPrKF3hSHKAu8O1qvIS1PIubnnIP3C1AxZSXs3AZI542D8JnBwWaGHeVFdMGlIkFkTZumiqRGi6kUsqQgIKbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZcyfNaYE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvS5ZkIG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B18gf913433330
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:15:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KO6UX3gdfdkT2yMHnnC93Nu+wZWbIHdz6+QscTqB5gE=; b=ZcyfNaYE3hsYKWhy
	MjTAZJIxEM2TybhgAE05GpjxkfRiBf77qzbGyC88uK4tY6zjfTtxTjW5+PJALtbl
	6PZ9Wk/G19i0HJclMgzxFvyOTugwfHKOAoU/cAvjaKRkNYtVzjHen95AmaURrcUn
	0iFL9GuGtAhCGMxZX9POJuzGZ9yKAnRwWqxhpbcqm/sgarTjvECBsh9pNb44kjQO
	37mPAS3/nGeaOZwyBdGB5zYP4KLuqWS96nTZKLrzdNE+/+U6C07GE4/9eaw9Ihpq
	lA8P6RMKG1tMXHyT0Cw+S3qgeFets7YwkTIPh0UfJ2FNd8VZcrHdM+dq7WMdaaOg
	eSkABA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as7re0rcq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:15:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso9803261cf.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764594948; x=1765199748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KO6UX3gdfdkT2yMHnnC93Nu+wZWbIHdz6+QscTqB5gE=;
        b=MvS5ZkIGCxhz802jj6+PT9Jo26BpXyOcom97k/i+NUG5jV98UlCjdIgkbXrgmE6JVy
         XDZBWkEKixNWwdg66FNhRyjAPsSCg2i24q5T5qe7TkbT0Axk/MeUDxdPatTA7TalapPx
         I4eB+/M4yCh4KKJNcCbC2XJ6DsrFb2jy2mLILzPkLnmnOKvMN4tJVTeWHNut9YuH5L2f
         VRr5gnJCokQNYZCdRCuu7v5lZod096E8sbhzaWlTZFBPUhMa0xyAoKXvXbg0WPPkkuA9
         4sCYgOIe7Kq/WStWMfp4c1iji+JIdOVviRxSl+f73G3fOgjLAxVCikLYTmi2HTEKlJ0w
         2v9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764594948; x=1765199748;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KO6UX3gdfdkT2yMHnnC93Nu+wZWbIHdz6+QscTqB5gE=;
        b=woyW9aZM5kN7Gu9TncwJv64ItmXl7CM6o712geq6Hv7yMUkCxlQtft7wChP7Stptzz
         Dnk1LR5PybaAcLQRwf9aR5eMTt9aA4I/N7Y2Yr17U9LUtw0QFB1uzEEMAzaNLflQjXJ5
         tqS/yPh+AwbDp31+6xTzZKDN+jGc29lZ7XXt5mYH9nPMxSe4qrBbfPf0CYI9d4TYbN0u
         fOMQF5LknO5vbdsRjzUCo4B2Vx0ZW7DKWQB1cXBElsV6v9uZEDYsJbFxa4D8Ymu/FMut
         6utfidFcXEeROoGvvsKMVCEyJDJ8XuoeKqCxtwBfvOCEuKMBVlWeomG6nloVDjmAFV9I
         Khiw==
X-Forwarded-Encrypted: i=1; AJvYcCV2seCu6BcCAC/xXukuoIqV09k7zhOKWoRIE+prV5JwQ13qqdgWt1QS8pRzz5GFWlwqHVF2wf40S2ru@vger.kernel.org
X-Gm-Message-State: AOJu0YyhUgHRp/mRHRYkVK43hjbdImOx8xr/k8Wa/GUrjHX7jaYG7F03
	3eLBIDvNVI1QpooFBWYVtbfT6qav3O3SyFiXGqlnVF8OqpWlWqGNZ1kc4flleupLSblVcEEBTs9
	2wG8Z4D8wwbdkekQvSCQkwSIT7cuMGJV2dv3LnekAf2WQof1F74IIbE3ll/7L8zE6
X-Gm-Gg: ASbGnctbPzDrdq1XFBOalGLXygDFw9sTojjOeqG5yIKTYollL0lSwLGjoZ1g5alV1Bh
	ZvS9LuyMIIYWb3o/oCFr+/o82EYaatELob1Ki9klDvzKxT2h+WvgRHl8ZccpBGsP0ZcgRHj/20u
	K1Dm9iQaxsNRcLZXXoWMBk2PW2mdsV5BBIhod2m0nfgfu7CMA/M1PIY6b2x9/SuihGqt+PepKvV
	n5w47CSJ6+iOFSLtNsMxQyHmr5mcVuFUHL8lvOAmADM02h8AzOVGVWFsceDdFM8Y7aobkJhwUcW
	La6Em0sJOmXmMTqy0Fut0Ky+r4SkFGmKO4pthqu/1NaQQlKpJl5QzJEQRXXdRuhHclr42Q3dCMc
	Jg0aAkth60U8V2NyqYA3aNp+aKpid8noGK7OLAZP3yzbSJ7w14/OQF/+k79OJkfRgvhM=
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr390589471cf.4.1764594947319;
        Mon, 01 Dec 2025 05:15:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsc43YZ5vfth/ieBcfBTnzwxswN44JaEXdbd0f7CPZ1tdQd9HPE6e1lDuQM4FJ+9etruHieg==
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr390587631cf.4.1764594945691;
        Mon, 01 Dec 2025 05:15:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035b75sm13559964a12.20.2025.12.01.05.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:15:44 -0800 (PST)
Message-ID: <850c172d-66e0-4d28-903d-fbcef7ad7444@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:15:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] clk: qcom: Add support for VideoCC driver for
 Kaanapali
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-10-fb44e78f300b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-kaanapali-mmcc-v2-v2-10-fb44e78f300b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: j5P_27sQdChs6aLZTI7EMyc04HEsZ13L
X-Proofpoint-ORIG-GUID: j5P_27sQdChs6aLZTI7EMyc04HEsZ13L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwOCBTYWx0ZWRfX1c8448kwOcgR
 BJ9dmA3iR+Iw7t0WDqjoeupVNAbVO8hO9RCjOqHLMKXII4GvWAq6UoAdfu3/wN2/Qvoj6diR8zp
 n9+y/tfBMihdRcSsaEUNz/9fvwEB6pLM9Zvw1rPo+YIKR+rPCUS+/m+QFE+5/vfxulJ1Th+JeJD
 kHIqj08KgurXxCIeMeciiRyXddQ/gzi1OHRGEALCIeYYBmvXIPlPuCAZO761xyN3SRfeHkRiUWE
 33TWgmRbeG6edgkLGZDFfpyqpz7EW5Mvo1iYqSgamYAxVySCdU0mlrpTSFaA64Yl6Ggsh+9X7cO
 pnF7xKPsXGcgsKbppYMskMwgDLFLsJkAcXk/Ehu+gA+dsjdOTn1k/BcVq26ZGfOdGUQkiSVAnq9
 0IJJBAtMhCRRm3xTbd55qeP9mb/H7Q==
X-Authority-Analysis: v=2.4 cv=BOa+bVQG c=1 sm=1 tr=0 ts=692d9504 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1utaWbyG55iW8k7krG4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010108

On 11/25/25 6:45 PM, Taniya Das wrote:
> Enable Kaanapali video clock driver for video SW to be able to control
> the clocks from the Video SW driver.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> +static struct clk_mem_branch video_cc_mvs0_freerun_clk = {
> +	.mem_enable_reg = 0x80E4,
> +	.mem_ack_reg =  0x80E4,

hex must be lowercase

> +	.mem_enable_mask = BIT(3),
> +	.mem_enable_ack_mask = 0xc00,

GENMASK(11, 10)

> +	.mem_enable_invert = true,
> +	.branch = {
> +		.halt_reg = 0x80e0,
> +		.halt_check = BRANCH_HALT,
> +		.clkr = {
> +			.enable_reg = 0x80e0,
> +			.enable_mask = BIT(0),
> +			.hw.init = &(const struct clk_init_data) {
> +				.name = "video_cc_mvs0_freerun_clk",
> +				.parent_hws = (const struct clk_hw*[]) {
> +					&video_cc_mvs0_clk_src.clkr.hw,
> +				},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +			},

The indentation is a little malformed 


> +static void clk_kaanapali_regs_configure(struct device *dev, struct regmap *regmap)
> +{
> +	/*
> +	 * Enable clk_on sync for MVS0 and VPP clocks via VIDEO_CC_SPARE1
> +	 * during core reset by default.
> +	 */
> +	regmap_update_bits(regmap, 0x9f24, BIT(0), BIT(0));

regmap_set_bits()

lgtm otherwise

Konrad

