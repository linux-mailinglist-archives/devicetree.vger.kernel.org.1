Return-Path: <devicetree+bounces-185960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C90B6AD9F4C
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B551894356
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE78120D500;
	Sat, 14 Jun 2025 19:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Me6yFP57"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396031DBB3A
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749928149; cv=none; b=fQ0bXQuAleRUgEM/JiqkL+853yGhsIHMgJIo3w15LwgGyuhzaSwXp2PW+poKRD0oBKKugCQ0yt6qDC+2oyVlcLOLh2Jw+7xqzw4QBBSJYmA8FLL9nFQhpCI+TB5FGtvKbrpNzjW20wAUxorTJ2HmyTAgo2bnYEB0mohbc04Kuvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749928149; c=relaxed/simple;
	bh=DhUM7JyGK/Bc8k+PpjvgIjXKz9RYpDG+H2qdDaLKqqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ShUDg74afPu21FbzS1r0lbEfOnaLC7KIaCSqeDpT1hWtTKkTHGG2pzZ5Bmyg/F3ObGTc7jiC1dk/BdfqMABs2hzJ9sJxq+WMAQAOh1/+BGDpJtqk0dWF0XbrrmCScdPTxjXLBHfLEVTf2RNe6jc5z95zqQF6Muem/etxM5y736A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Me6yFP57; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EJ0tRU032248
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0KpeyNaWZvAaZIB4caY9JHuEJ/mF3mbWm+riygqbdpg=; b=Me6yFP57Ev5MP6T2
	I91d0P5ocy4Iz9Q//Q9uls5ENPFSRggYssj2XOtVVfgjvir76ii+yQICC+d+dpra
	QYHd1mguDana/9CR9LasQ54lu1TEnFGkSvgLeYqyK4t7ubfiGHv1GoyFRmJVMdGZ
	Mbjo8rNxsZv2UkvHo1G+xOt/4eoq17+T8uT8QquiMwcPg3gFMswSi2t+WbNF1gda
	TajBntzealFLw5xcifQZaWaX+zA32lj+IdzwVAtv3zRoHRjE8zp2NPIKNepOWIq9
	j48at3BxPEV7Zl8CqsZsKbkgS4OHX6hHfksNd+maMVxVX3MwS84yUHRvd/0jamxE
	R7jqBg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ht0wk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:09:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5832bdd8dso6764811cf.1
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:09:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749928146; x=1750532946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0KpeyNaWZvAaZIB4caY9JHuEJ/mF3mbWm+riygqbdpg=;
        b=Fsqhh6Dxjcv0z3k5w59EWZ9sraoE0zmHuqaMcKNAOrR4mrdFoPVUNAEfzUK/KZExUD
         Wd2ii/3X1ySLvGndHXbtlJMSb/Dt6uLMc7NI+rn+R+8NlImQvTANocbYEgFdqaQ8nvAi
         /Fu9wki164TLTWpHoVh31jYurNXIPnQwsFM2ynZ42MU1zXYi8z953+8n8uXMAy0wDavQ
         p7JvgFndzHunrD0ORCteaRVCAm+XJkPnWEJ3ufgwSh2COFIrSQa4ETkK0OjJHb0rGoHM
         6K5y2lWm4EojGRYuSqYh1oH5N9u9GbZZkTKyP7SztHwkllbXBDZeXUtmnfgYq2dVkunu
         EZJg==
X-Forwarded-Encrypted: i=1; AJvYcCXC7ClSxo6t5ulBlLL1jm8tCcaPnLX4Wt0hySs7L/BEqTt9TP/T0odoCyN7n8+QUByCvYongL0Nau3z@vger.kernel.org
X-Gm-Message-State: AOJu0YzQaovIFmf5n78RF+OI4YvCRDCA73uWjdBb3fKxVbGGc4OchWkb
	Zs1j8Wl7cY76Fp51Hf+2i5d9/FB/pH9/BAGZyDKvk0TY3qSxQHJRggG1QQgmXgUZYOUgkg6/+SQ
	1FThoJeQBRFpHYxA+PNILxB5NPc51J4m/ndd8euMreSHJSMDzKPTKCp1Sd1O/KtJ+
X-Gm-Gg: ASbGncszRIKhqm9uxwuafdBVadbUMzo4wvh00r7+r2xdjOwTtme9snqD7RimwZTvSEr
	DWIFPfighvQvfmVQzNfcJlne9f9aMsm9CSm5EuX5XQFkS9HPg7Ie/rx4Qoa2LEnSJSVXwqMJ+7G
	lonFZowNYzQ5ZwZzq0ZY6D1FBnsqSgU98wsldxfjX3zgqVj9PGIHZDzbdG/c2Y7gFdLMZ5NzUPc
	AO+uOpHb+AI9bLvBeAIu3P+yLAI8MehzQZ3Hnsjoa9MZYQapIHr/lkjbB66MjRCc7HhtXhiTPoY
	2cjkm5MZxxy8o/QIipnFO0wAMHUhYleUTw7oMOUUr2sD6++5IUXhHZlG/Zmzdrabj6a+zVXl10L
	hSw8=
X-Received: by 2002:a05:622a:54f:b0:474:e7de:8595 with SMTP id d75a77b69052e-4a73c619412mr21878761cf.14.1749928146256;
        Sat, 14 Jun 2025 12:09:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvOYiWSYZiYBM1VC9TXTvoNoA6MCXtBB8myxMV9hXqAPT2FHURkrMkoJr7i/FgzC08d+aLrQ==
X-Received: by 2002:a05:622a:54f:b0:474:e7de:8595 with SMTP id d75a77b69052e-4a73c619412mr21878571cf.14.1749928145897;
        Sat, 14 Jun 2025 12:09:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8982f4esm352351666b.176.2025.06.14.12.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:09:05 -0700 (PDT)
Message-ID: <09c40216-c0a2-4698-83b6-b838c28eed84@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:09:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 05/10] clk: qcom: dispcc-qcs615: Add QCS615 display
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
 <20250612-qcs615-mm-v9-clock-controllers-v9-5-b34dc78d6e1b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612-qcs615-mm-v9-clock-controllers-v9-5-b34dc78d6e1b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2MCBTYWx0ZWRfXw8HVfwtHN4oy
 wAWZi50OcP8kGqjGKKTy+Lgfk8AqmlF3iiCLiC924s3wtXjfg7Papt4ur9xx++Cj+ULI+H+Y5YD
 0el3nylDGai7Jt04PJ0ICo/JHJm5AFA+SqVrHLrrXXlOF7XOFbw9Xi8ObHMEAhaE+jH2XZMyRxh
 if1WqL7CHSG1rVFAQuOFoby4rVg0z+iaEHxRJpUsyVPawc7DliTeYKpq02JRCEOylOvY7wpX7kp
 jyk3Up2PypSrT3uHXjIQf4bUyL9EQEjHFzHKqsvG+67ewA1sx1mc3p9S3ADP8ZVG6Ke4MwcHfQ6
 2u88W+9QFj3wbBCMOeHVPPUHos0GqWXRuHWfzHDSWEncYgNKnNpgIDQf2MX62OeVEqQy6J3SHMQ
 X5trGi/JSCYHulsiO6sEK+0CnIQaXMqhKLrrONqXO3H87y65K7oXyBlWaCzFB2aLKdqR6s02
X-Proofpoint-GUID: 5UPqxWoWU5ST__p9yZg-O3kPtr2vfh0S
X-Proofpoint-ORIG-GUID: 5UPqxWoWU5ST__p9yZg-O3kPtr2vfh0S
X-Authority-Analysis: v=2.4 cv=CtK/cm4D c=1 sm=1 tr=0 ts=684dc8d3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=fbCSmPG1eNaTwHpC0zAA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140160

On 6/12/25 11:55 AM, Taniya Das wrote:
> Add support for the display clock controller for display clients to
> be able to request for the clocks on QCS615 platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

> +static int disp_cc_qcs615_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +
> +	regmap = qcom_cc_map(pdev, &disp_cc_qcs615_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	clk_alpha_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);
> +
> +	/* Keep some clocks always enabled */
> +	qcom_branch_set_clk_en(regmap, 0x6054); /* DISP_CC_XO_CLK */
> +
> +	return qcom_cc_really_probe(&pdev->dev, &disp_cc_qcs615_desc, regmap);

Similarly:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

