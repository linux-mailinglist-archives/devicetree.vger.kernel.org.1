Return-Path: <devicetree+bounces-185755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C5AD8EFB
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:14:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84FEC3B38CB
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 14:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A12D2E336F;
	Fri, 13 Jun 2025 14:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DihtPqmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC13B2E62AE
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749823517; cv=none; b=QJHNEPlBoYLd/wo3jWaf2QUw9IIA9qLBcAWLxNmTK/wNgm8SxnsQNZX+wwuDIPVvT9QbO2n1hj1VZutXQo2Z7SedFfh7lMDwPtINKZqgSpYcCTsmtPESjyrbb1BL+s/2SNc9TaH5YZrmLvbStT0SqIKb2AciO9HtF6D07IHqKeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749823517; c=relaxed/simple;
	bh=WiPNgNnihh2S+/7TTHFaJMjiKhGGv6OSW5UWdjeBRiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UoBv7AEUbbIuOcKydEfMF8MLikSL48fRi52QwWMwjw9Kq1tyMyGLTVTBnOBUaT9I5Q0pWJS1rSgpBVHM1tvejK/ahHaNG19aD8yNT76RH7JyHiv2jD4phZhtjTCwZMr2aF1zoavoJlxGOxB5bhkk9R0BW7l1Ku9/gN5zXUX6e7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DihtPqmI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D9MfrO032314
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:05:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXbFVS3HagPAIGb4Q6j9L8gN9T65FtuJmw8eE95m7Hc=; b=DihtPqmIpiFvuGhA
	StkWJqw1wzFY7E9AxU9jY/rNqYKAa/Q710ybRmEMn0gOAE2A0DfLnM480/j6KwYs
	kR4prcYBOTBKM7Py2RvPZFszqlcxpnHUS55o4pvSsW3zJttlPB1OseSN/e8tGLCd
	7Q85dAKVtqzsWgDsW3dzjKTH6pK0ZijRB5/75VcKnu8tunbXXK+HDg3tY/NJbwcH
	lVuzpMUm+4zo6/vljkgAgWKlaPk0N1g/Og+AO3xsohl9DWNjg34loiE0jjl5VtI1
	623rG3pHXJXqsxYFkWUPhP6lQwT92Szg6SW1lY9iV6bSvwntZrbOuMSUdUbZ1mKG
	LQjtsg==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 477jbpn5e7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:05:13 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-40905d1b3cbso1787732b6e.1
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749823513; x=1750428313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SXbFVS3HagPAIGb4Q6j9L8gN9T65FtuJmw8eE95m7Hc=;
        b=sy/slpoDSOpl/S1AFuxtmO8X6h3NbZ5LZqEYuqD5EI+qyxkRYYiCXZIoKPdJ8N7TwL
         DeZIEOXznFCIPPBgnrOFjKlOMCMrPlG3nVEH2BGLNeYpZRA0vB3b2DpuVIxd400dftoq
         HLOY9lRxH5y/W1S3MfnoSSM8pR2GtECXbzaFPIMs/CIIgbrtHpyvnhEtgp5DDCNm8K8F
         rAlwhnYBzAJ6twp/Du5i0QjcuTvX+d6s6Lb0T3VSMYsDS4LW3aMkpiYNZPfyLHQryAtr
         a2m4pPeKZKaLb/5Wi4qXWXoLM8kDyqB6tJ6NoNXR4xp8E/qJnS0/guUMEjuX0cgRIDe9
         r59g==
X-Forwarded-Encrypted: i=1; AJvYcCW6o1wwzMNHRxHPreyya6+6vnz3n1Fl4N1CI60DX1matR7b9t61lHt3jM9T7wzp0R8EH8ADZR5CrT4j@vger.kernel.org
X-Gm-Message-State: AOJu0YxfGOeJzNV0qlgR/ttTYTpTZDKlaoJE6EJ7sqvJeRVXn5yWVYU3
	x9dWS2gYLjcd1PvN826MB09HGqo4an+WJr+TMLr5faWhktTPslwNSsUCNFr54XerMb1sor8RLMS
	4BhGiqqoImaEVgnrnXgr5WuRkfNhYzAP5kUw4GFbo+qK4IqnAJ8b/pHP7OokNYD0kmNhy9dcG
X-Gm-Gg: ASbGnctKZZW7fq3vzHST/YxRGB8S0e6Nh2d8A3Pr4/lzEOAbkmD0oKSzBZ0pMu7JIsO
	5CGOu/Yg/g/aR3YSPVIOJA/lWBD1B4GKjawWHgbtGhlixbb1vWb+kAyMB00R5FUbUO40Rm1qxHa
	M7MCqXhzuKH5bnzmcsTKLTWSNTRS+jiIPXh8F2wU0Wm1advgjZzeNGgjBrJww3mHEqOIGsptEHt
	KlHy6+JNJpJs00Isb/Czf4JrEBCTBQkbjflQ+CBxEubHV95u7cc3YUNpemmODbSAmabkXF8hpBd
	2RFCjTbX/JaXYWYru/6wdk8FY5Tc29rLDsY0RUPbEvXJhyR/WzII4PDFFrvV+wPmbdaRExE=
X-Received: by 2002:a05:6102:3ed4:b0:4e7:b8ca:e3bc with SMTP id ada2fe7eead31-4e7e39d8cbamr2087013137.17.1749823502350;
        Fri, 13 Jun 2025 07:05:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAabxiuRoQe/YqtbK2biWXOJsRJMOrPMmyOlfhlU9BuJsNPdIIiFtgHaougk+e0AABz+4dYg==
X-Received: by 2002:a05:6102:3ed4:b0:4e7:b8ca:e3bc with SMTP id ada2fe7eead31-4e7e39d8cbamr2083763137.17.1749823491378;
        Fri, 13 Jun 2025 07:04:51 -0700 (PDT)
Received: from [10.161.140.61] (87-95-85-22.bb.dnainternet.fi. [87.95.85.22])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac120167sm456434e87.20.2025.06.13.07.04.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 07:04:50 -0700 (PDT)
Message-ID: <738a889d-9bd5-40c3-a8f5-f76fcde512f4@oss.qualcomm.com>
Date: Fri, 13 Jun 2025 17:04:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/17] drm/msm/dsi/phy: Fix reading zero as PLL rates
 when unprepared
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
 <20250610-b4-sm8750-display-v6-8-ee633e3ddbff@linaro.org>
 <n5djafe2bm4cofoa3z4urfogchhfacybzou763nelttgfspo25@bywfd5febe6g>
 <dbcfcb3c-0cba-45f6-aaed-b79494d96cde@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <dbcfcb3c-0cba-45f6-aaed-b79494d96cde@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TmcVaszPlXGjvr6xhYSn5G7tawE-awH6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEwMyBTYWx0ZWRfX6ojbS3agEpcA
 KlTH8gD9YR+8s+GelpkUBO7LDT2kR+on6gyG000b0OHVPY/dPlCw3y7DDi37SXDgajajkBJ8ExC
 LgBmnFwDOA0wpTrEZ2Z5kXaO83oSyDcuDPEeVfXNMtpMXUsyLBE+JuoIDlNVSebdOitS/Prm2Cl
 HKexbDOOhzgR1G3X6nAdJ5gsm7NtPxkEzKHBeM5dq1qkBX6LIzLaLzgvd9YYU+wrYcu67C6oi9i
 qhIeG7z5KC4CpG09vMAx8fToQEPyTH7SkoutKjTONZutSvYCvZhxh69Qr8qAslc936vgIQDHBlO
 ZJXHwrsDedMUJKWgARMLZE/dncKJudFl40m99OIlNJFXTqZDNQnPzww+yJdHhMOYMCBAHsCH+iO
 aizwWTV14piO6sOjaPzBANMSDLfqqCLlIWBYWpqgydY1lsryIuRVabPMTy4kt6Ya7alvBJgV
X-Proofpoint-ORIG-GUID: TmcVaszPlXGjvr6xhYSn5G7tawE-awH6
X-Authority-Analysis: v=2.4 cv=OLgn3TaB c=1 sm=1 tr=0 ts=684c301a cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=E+pfOR1jn8a0x6QusqFK4Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=0NLLj492lcDJW-k-HvMA:9
 a=QEXdDO2ut3YA:10 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_01,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 mlxlogscore=646 suspectscore=0 adultscore=0
 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506130103

On 13/06/2025 17:02, Krzysztof Kozlowski wrote:
> On 13/06/2025 15:55, Dmitry Baryshkov wrote:
>>>   
>>> @@ -361,24 +373,47 @@ static int dsi_pll_7nm_lock_status(struct dsi_pll_7nm *pll)
>>>   
>>>   static void dsi_pll_disable_pll_bias(struct dsi_pll_7nm *pll)
>>>   {
>>> +	unsigned long flags;
>>>   	u32 data;
>>>   
>>> +	spin_lock_irqsave(&pll->pll_enable_lock, flags);
>>> +	--pll->pll_enable_cnt;
>>> +	if (pll->pll_enable_cnt < 0) {
>>> +		spin_unlock_irqrestore(&pll->pll_enable_lock, flags);
>>> +		DRM_DEV_ERROR_RATELIMITED(&pll->phy->pdev->dev,
>>> +					  "bug: imbalance in disabling PLL bias\n");
>>> +		return;
>>> +	} else if (pll->pll_enable_cnt > 0) {
>>> +		spin_unlock_irqrestore(&pll->pll_enable_lock, flags);
>>> +		return;
>>> +	} /* else: == 0 */
>>> +
>>>   	data = readl(pll->phy->base + REG_DSI_7nm_PHY_CMN_CTRL_0);
>>>   	data &= ~DSI_7nm_PHY_CMN_CTRL_0_PLL_SHUTDOWNB;
>>>   	writel(0, pll->phy->pll_base + REG_DSI_7nm_PHY_PLL_SYSTEM_MUXES);
>>>   	writel(data, pll->phy->base + REG_DSI_7nm_PHY_CMN_CTRL_0);
>>> +	spin_unlock_irqrestore(&pll->pll_enable_lock, flags);
>>>   	ndelay(250);
>>
>> What is this ndelay protecting? Is is to let the hardware to wind down
>> correctly? I'm worried about dsi_pll_disable_pll_bias() beng followed up
>> by dsi_pll_enable_pll_bias() in another thread, which would mean that
>> corresponding writes to the REG_DSI_7nm_PHY_CMN_CTRL_0 can come up
>> without any delay between them.
>>
> 
> Great question, but why do you ask me? The code was there already and
> MSM DRM drivers are not something I know and could provide context about.

Because it's you who are changing the code as you've faced the issue 
with recalc_rate.

> 
> 
> Best regards,
> Krzysztof


-- 
With best wishes
Dmitry

