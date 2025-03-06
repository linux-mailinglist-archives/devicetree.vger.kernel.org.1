Return-Path: <devicetree+bounces-154845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E46A54B1F
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:46:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FCC23A5442
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE7D199B9;
	Thu,  6 Mar 2025 12:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AO/VPoA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF666DF71
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 12:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741265159; cv=none; b=i8s51kevrDaDcaNdEwVP2/gc/Rbh0iOnNwHYbGVNmT0Ex3nN7v+vOKb5RAv2RKXhmj8wqmvy16wyiHi9r+Ny0uI8Q+baXeFTPKArLYT5LBFRTKA4ZVVzaN5xUiDqUE4wa8gCqNfiyo9svsB1xks4KXR52bfNHD7rOAQx8Cp1nAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741265159; c=relaxed/simple;
	bh=BsuZfBy0o27rEroxO2CuiDchs3Er752NKZpUyYkv714=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BSDnJ6nW9MVcgvBDZjssIuuhbNbw/N0bZIZIaU+Whakj0DLuiSOp6gy+I8DHPg4d9NbH3itzwU1aNEaywIUDijGR5VIDatMw587mtTaCFbeXk+qIoBf1Qtk+pJXyIaetLm0bMQF/5BOGXdOHcW352yHelRqIDPomknkoigbp2Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AO/VPoA/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5268sMuu023663
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 12:45:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FK/RHL8Gonc2grMn8KNItFyJCXiEsAQ2Rp7C6pvjJfo=; b=AO/VPoA/n4MpLdaF
	2W90/k/egkeQpg6kVjPmfdjnnvJ9rgyF+P/Br+kZ5/MBpWxjjt9EYbR5fbTj8aYN
	gspxQxFntaXVOaj2a300Lt1JYBQwUa3hRBfBdRHwb7uDiLCM3nfVah46j7aVuTgk
	WadBUa44+Wq0jtN/SGhuqsoD2ceKDb+g0WkkXcR2aHDW9lp/GOjPE0ME8ZAOTevI
	yWsoQkGxfXVHujT0sZnWQb8sRd+2Kw/YvMGSzYpmHsbLcX2vkFq101KvCMDxkD1u
	w6BoL+PR2wYUJNGk75TsZF/2XLjYVZIHABy+tcS0eZXxPu58FG4MvwZYdflXhoVt
	X2EuXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6t95ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 12:45:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c3c9f7f9f3so16975785a.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 04:45:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741265156; x=1741869956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FK/RHL8Gonc2grMn8KNItFyJCXiEsAQ2Rp7C6pvjJfo=;
        b=FWT7FD+CnZzHkTtDW0jkae8elLZRMHIiEda7sdZypTSA5Xux03ZyK0H6C5z20vWxMJ
         xO0eVzeHLl73NOhZPeOHD5xI2+kfiujFMLT7vvvXkUVR+IHM6ScABC9z1/d14lHgmKIM
         qJiJVp+QsnTR2S3ZiFnVq6T9VtgI+f8vACt0MwBXAd2q7akGAvZbE24aRsqqWkxRW/BZ
         qrewgbGdEpEsRB6p6qEVTo7QQbjYzpr81WWARQlpBb0HzyyOmZSiWgVWqt75mu6t9+Wv
         a1J4Dct5nZWuAPauZkHbMx8FDq6QKhW8foHXCpjbxG+uxzozAcWi+ww4OJw6q61mKBiG
         vU/w==
X-Forwarded-Encrypted: i=1; AJvYcCVXefP+PW6NNKk9m2RquIC61B9dW5CLgtLKFW8izKNfN3wc9HQthw0hY4WwnY3nKy28byX7/qm1hyHO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0DU3UIvVLoVqQWK2FmPMnyO+6/lBPEotSbFel5vVVokkp33Hm
	iJ+K+NLwfXbpNf6KSXgXrUUmqAFIDT/0K9ICqjEI/YUYC5O8RMfG+6Mzr+6o7JlA7+xmRTr+o/9
	lCkpgy6iSoEmbbMvOxoyQuIiBkBKcQCUg/oK8vo8bYrFPg2uJ7sIuVBx68GKl
X-Gm-Gg: ASbGnct/ju4AYe6M4kx+F6t+1RVw1SeIo0e8YnX3GjRnyWAaKOC5RLifqNxJPuQAIH+
	gqllfXLkfjTh27cwT+ePXLFBxYwczwocg78AYoCHR2YDagUHK8PqdlK6DJXdQCW2qLKWwShkgPe
	atYC5hYDTyMUkKTOvuDkiQLc2FLiwatxevPfrYDnyrpmcSd9CqhcuCJDr+cmt+bETsXgl5o8qcd
	XIndFNgV5ONA7IWOVPo8zTHrASIH7rHMRax3yejTEWw8+q+S8azo35z8XxFwwR0RRcPorthPjEt
	tD3gX/lmZtZQQ1VVULfL1kPLAgbuPUIlZIugO6Re7tQS/9Wl0GcDAkD0q6Xque8/Wybu0Q==
X-Received: by 2002:a05:620a:400a:b0:7c0:a898:92fd with SMTP id af79cd13be357-7c3d8ed6b93mr383225185a.13.1741265155833;
        Thu, 06 Mar 2025 04:45:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwnifr+rtFdEJ8n5ks+Pxlxph16AhZEdlNsHmeChu9nXmI4OJIKeebQYhCU0Lvokc2XaQP+A==
X-Received: by 2002:a05:620a:400a:b0:7c0:a898:92fd with SMTP id af79cd13be357-7c3d8ed6b93mr383221885a.13.1741265155393;
        Thu, 06 Mar 2025 04:45:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ae57a84sm169205e87.62.2025.03.06.04.45.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 04:45:54 -0800 (PST)
Message-ID: <1aa77e2e-6bb0-425c-9b5a-64092f8df9a5@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 13:45:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] clk: qcom: common: Manage rpm, configure PLLs &
 AON clks in really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <20250306-videocc-pll-multi-pd-voting-v2-3-0cd00612bc0e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250306-videocc-pll-multi-pd-voting-v2-3-0cd00612bc0e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I/ufRMgg c=1 sm=1 tr=0 ts=67c99904 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=yHIa6xKSslqa2ziMgBoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8jGGIGmDKbmiVmoX7J9F_BD-rU1s-o6u
X-Proofpoint-ORIG-GUID: 8jGGIGmDKbmiVmoX7J9F_BD-rU1s-o6u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_05,2025-03-06_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 phishscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060097

On 6.03.2025 9:55 AM, Jagadeesh Kona wrote:
> Add support for runtime power management, PLL configuration and enabling
> critical clocks in qcom_cc_really_probe() to commonize the clock
> controller probe.
> 
> The runtime power management is not required for all clock controllers,
> hence handle the rpm based on use_rpm flag in clock controller descriptor.
> Also the power domains need to be kept enabled during pll configuration,
> hence attach all required power domains prior to calling get_sync() on the
> device.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

[...]

> + * struct qcom_clk_cfg - To maintain list of clocks that needs to be
> + *                       kept ON or misc clock register settings

I have some reservations about this name, particularly since 'clk_cfg'
has already been used in the msmbus/interconnect space..

Perhaps qcom_clk_reg_settings?

> + * @offset: address offset for clock register
> + * @mask: bit mask to indicate the bits to update
> + */
> +struct qcom_clk_cfg {
> +	unsigned int offset;
> +	unsigned int mask;

"u32"

also, to expand it, we probably want "field" and "val" to replace the
calls to regmap_update_bits in some drivers

I think we may keep this /\ struct for things like:

/* Enable clock gating for MDP clocks */
regmap_update_bits(regmap, DISP_CC_MISC_CMD, 0x10, 0x10);

while keeping a separate u32 array of branch clocks to call
qcom_branch_set_clk_en() on - we would then use 3x less memory


> +};

> +
>  struct qcom_cc_desc {
>  	const struct regmap_config *config;
>  	struct clk_regmap **clks;
> @@ -39,6 +50,11 @@ struct qcom_cc_desc {
>  	const struct qcom_icc_hws_data *icc_hws;
>  	size_t num_icc_hws;
>  	unsigned int icc_first_node_id;
> +	struct qcom_clk_cfg *clks_cfg;
> +	size_t num_clks_cfg;
> +	struct clk_alpha_pll **plls;

Some ancient or "non-standard" SoCs have non-alpha PLLs, please rename
this to something like alpha_plls


Konrad

