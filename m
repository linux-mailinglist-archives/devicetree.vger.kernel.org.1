Return-Path: <devicetree+bounces-241667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3B0C80C66
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:32:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEF533A6655
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6AEE3054F2;
	Mon, 24 Nov 2025 13:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="joJjGqsF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fYBx/42F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C9D1E47A5
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763991098; cv=none; b=hhh3aB2XxeGO5cYnKDxm7aQ4bcQHfIm/XtuM/SqmsMx2kUgL//M4DyKWxfOgLMmuqJCDz9gnRt32LuR7UHuKChL5qxqVAAjnMPYLGEKFeOp78qQMVyAc+uU5aapFjdCwabqqTFzqokojUQ1hq0UkOg2GbvoBbzsHvmY2dt73+C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763991098; c=relaxed/simple;
	bh=EnAuoEJFyD1JRhQnaIvfmqHGAt2c9T6xflej1AjNLt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nFgbi5T/c/lHsHkhDNknkQCxhsimH5yvAiUPCv8ecockmbT+toO4PnewYcjUapHJQ9ay7FiFthf/Ui5toB6N4tlHdvP3ghFjpvajpOmKf7sBeHFujyfc8w+3O3vZzzIu//V/bmvbZWe7pluVnmqLJFjPv5iiOBuUzqUA8R5mKeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=joJjGqsF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fYBx/42F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7THmi3112197
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:31:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=; b=joJjGqsFPYeVWiF+
	87W417dL718epTf66q5v38JyBqUef6qdx54JCkc3Fnaod9cv+UyHPg551rWz+hPX
	l8kRV55KQf7W/aOjBNLcP/AD2PQx1SBxCRcael4Ez94bUPCY+46RNZsOQMg6yPsF
	uD2wjwExSCUU7mxA1bu9HapVQdN40Vxp5gyLwsbuQXczrwtH+q0fV13MmDf3qQFz
	/ArLVBw7AAi6TUx8uehU2R4cj5jkFRvcgxXzGJOK9cOJaLFnB1Xh21XX9QzwTzwC
	ZRxBGDDlKCQM6cipLGhCNUkxTZvWK2LFLZArExYq9SfLeMAGQ3i6p/6GHFBkoIrU
	q0MOkQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10h143-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:31:36 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-559ab9b8b24so428441e0c.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763991095; x=1764595895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=;
        b=fYBx/42Fo524n9rLkzMNhZDwwZp9EwcUN+QZgEFFV9Gl+NgN4y8PyMgAQu+f8L6DUY
         8/T7M5kWrz/0dmO+P1pl9zEU8x12EgZ0h6Ju8Lh6PnpxdlWwr4ZrZxN+weFapZfOa46I
         gTxlXQsG1TXcTMb9sT7YQg8MNfJmj/WvzEiMKxet8J5YGjZAjvtkFJl0JPeY8ihd4xmF
         axGUF/KaUxGE48Go+N+22eLXfudITznkaQau96/kxeZjhuHibnl9ycZjedO7ZY3L3uaZ
         NW0mixBl+0PqRgPV0uP/l+y4X9MJDF6S7Y641fOAOxYo7Zs7Xc5uPFQq+ie5QYhShGDI
         q83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991095; x=1764595895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=;
        b=u5WvuYWoVCStKI8v7ZDctFdukD2rjjrUtEYGNEIIu+WLBi7A0kHSWFoAiX27fMc2fd
         /TivUcsFhGM65YeGVPs+uarVVYf8vjhQq/GGIrPdQCm5kYGdjzr453IZst1waLEiLN0v
         ExXS5ZaOMk/9BTHuEmuql20q8AWzmRfR64TFBP8nvN1M+Bzy0qgR+/jazjwj0QVXW2LC
         L4T1atxHM5TUihVmmJbJ7bGfRUPISC8P9+Qzz0OuJjeGxyjC+W9I5eQ3M253Ut3Xm3N/
         /e/OZzylux54I7W9M1dHUjxgYluP269eZMmRJq/hdQB9uFsxoKbV7FYHvVuzPIFFBrIU
         xlpw==
X-Forwarded-Encrypted: i=1; AJvYcCXRavGUnKz0Wdw/0T8WY4DLtiYdIGPKJAil+9E1tHnQUCJAIJaOD86MOt4taOZF+EM5k9zR6ZmNsFkd@vger.kernel.org
X-Gm-Message-State: AOJu0YxjEFRlmhkcWibK6hvgDtx6GjwdFeO8I/FCmMAtz1s+bEb0WUm/
	ceDyae7W6L1j0ZEIlrjjBXYrbQ2ClAg6NX2MueyM+Q4nBv3FiP4oYWjPtduQ4zY/POioJVTvnn1
	talCX0xD4OqK6hJXD+cnA13ckmsJRztPmP2jkvSf90yN4fNC2yYLWEWwcy+NjWfvk
X-Gm-Gg: ASbGncsQFeEBhRHCHvERJjlfDoQivbfydYFALtfDduoGMmnNSl5RZ47Oz38ckZRbUMm
	Zkonwie0oD+BlLM/uaeMKrMTLXwHBBqf+vIPBUOH26IbQj320psqGIYQ/16VffbvVYPGpRGIKJj
	jejnCII353oXVJFuAjopyJr0tBu4oLw32DBBuEYlXQTDM/XT2Wsu3/tvsfkZBOPGTiLyZAz7ayc
	Cj6XmxTSyrRsSHc3dT1hr0RdZBeGvhHRhrnWabPs2ya+jmjSsfeQ1cC0NznvgNddw24DKgZWHZ0
	Cm/gzx3K3hCJMqfWP81bP03KKn1wLjTMX0aQOUGvCt5hm+NDJHAhtWYMF6pSp/sihAFVmtCJnNv
	USqaR/mcn9/SoIE8XvsZ4n2vMGILyoV8edgvSV3XTrFjqtUybcDYTyJOZKFzyw/X63xE=
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr1657632137.7.1763991095330;
        Mon, 24 Nov 2025 05:31:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR8WQYIIBYx0OJ8QrzSt0LVy9fMGvVvqn4AlMJ3sEgBjmm7njyHSM3dhUyzVZcq3PAN5QePA==
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr1657570137.7.1763991094783;
        Mon, 24 Nov 2025 05:31:34 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3c6asm1279950266b.52.2025.11.24.05.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:31:33 -0800 (PST)
Message-ID: <1c50fd96-74af-4096-b53e-4feb3ab59f06@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:31:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] phy: qcom: sgmii-eth: add second regulator support
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-6-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-6-73ae8f9cbe2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: T2WRjPRYcuvmOcgk-4ORKcSscY2z4y8L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDExOCBTYWx0ZWRfXxDx9uVxPra2h
 01aGipA6vVxiD6KHJOFNXIP/MlnBlZ2FP5PnCyMuECsZsebC4aEUt+fK4TZl0QXE4MFKo8KJhND
 qISbmsfBLDK2X84OuBGIML64Vj+3V4+2S1l3BlvWStY96ocaLY1lfpxNFx8ZD8wGwVqdtJzhiMN
 Mce6BkVWwakjx1HNmgSqgN7x+O1Rqk9lPloGkZVP7Lvdo7Muz88INURzxrl2KdqaaAh0PPspTTM
 JfzfyQmQCIF1kE5EfCCQcAXtbLoCiJsL/hdjL9uTz5aR/UmMxcGUjRyFps/lZVOfBRSN9Mo7pPl
 zY1b27+/RTBHH9379y6Xh7bxS4Y5npG8NS/IIlGUKo8xJtZNKIxXTHIiqCHBrH3v8Wrh9pyOtTW
 3dbhe5NbPsmrS/dS9IiwXIkBQ/BSQg==
X-Proofpoint-ORIG-GUID: T2WRjPRYcuvmOcgk-4ORKcSscY2z4y8L
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=69245e38 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=figFMop1lUmvoXQ8gv0A:9
 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_05,2025-11-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240118

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> The Qualcomm SGMII SerDes PHY requires two regulators to function
> properly. If both of these are not enabled, the following error is
> observed:
> [   77.105651] qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
> [   77.113447] qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed
> 
> Therefore, add support for handling the additional regulator in the
> driver.
> 
> Fixes: 601d06277007 ("phy: qcom: add the SGMII SerDes PHY driver")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

[...]

> -	return clk_prepare_enable(data->refclk);
> +	ret = regulator_enable(data->vdda_0p9);
> +	if (ret)
> +		goto out_ret;

'goto return' can just become 'return'

[...]

> +	data->vdda_0p9 = devm_regulator_get(dev, "vdda-0p9");
> +	if (IS_ERR(data->vdda_0p9))
> +		return PTR_ERR(data->vdda_0p9);

Do we have any conclusions on the load discussion?

Konrad

