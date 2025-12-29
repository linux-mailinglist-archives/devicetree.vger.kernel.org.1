Return-Path: <devicetree+bounces-250208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C84F5CE6D69
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB72D302413E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5E531353A;
	Mon, 29 Dec 2025 13:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I3AMa3ME";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cZ8V+0N4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4DD313526
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013745; cv=none; b=KxFocBawLnS42vdGXYJuMWgxhWBOzFSg57RkZX0hqPVDlRDSdcAR5cCXHkNs094Q1CU3GHUGI02iewu1QK/Rkl4CLaUamSr0D41X8wW8WiE5wukh/WVswTE/ZOAqhQXPw4Eqb+HaAkaP8VR6iYLbB2cpLE67S3Mx8Q+50kQVft0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013745; c=relaxed/simple;
	bh=K7I+N2TK+9B+M6+N0ivh8q1VdxBpkJ2/joNyzWaDGHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z6E8un2QJP7MW7VbZHMNF9h8qC9100sWR6lTRQr4sS1iE5kzb3ebhe9weY2AN5l/hQgcSPO4veYUX4orh3s6MYIcX6V1KciiCtlqwHgwQAkoyxG8Kz6d3xZUxue3F8lh8QEUMmNGZR0cJJ5YqNg4i/K/bVMVt9zxUdtcJBdwfdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I3AMa3ME; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cZ8V+0N4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAALnk3090289
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:09:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l5sE/6YnXXOX4TjbbwwHDQ7NqsTtfkOGM5Ry/XEfJTk=; b=I3AMa3MEFMnWkzef
	iJEjzK71uwbTtPSFQ9GsR2z7F+VuS0FvNwOEkDzerk8lle+gMykt9hr1fOpdRHbm
	CO4VzK6AZYlLhp8MdseF9EkSLaJ0tW7S+H1VQ8q1bZVBaudBiPp91oJYAor2sMe2
	1McbHWmIK+WzlU+VULxLDZasSmPXFELuskuyFIFdX6BrzYIm8Lc1oGjmkrVdEwbf
	rhvvfmH4xxBeIpDh6Hryej6hFzeWC2GBwiDztRZTOsLr1yKgkP1mUACesQ/Cv6ru
	wh1fgHyxtCEiYea85YKoV0W/GoKugFm66PebJaVEqzjJ1YtnwkVNgk4aaAdjqaDq
	6tIsYA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba4tnvkb1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:09:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaa289e0dso30228711cf.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767013742; x=1767618542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l5sE/6YnXXOX4TjbbwwHDQ7NqsTtfkOGM5Ry/XEfJTk=;
        b=cZ8V+0N4L9wHSA8YP5mOrG9I1maZIFZ8jlibOzzGiTVUf+3oXVj0SyAdvdhP5ZjhQQ
         QQvXC184B2zPrRekt/x6vpKjRO7G16M8TP5vUqGQLi77FQ+CTi079ZRMvurAHWybp/z9
         qwrAe5ByOcagua6dYYAfvxGmBvAwSvKBLm2+TWp9Reu/m2t9mLkmxbAXhmzYu4m25BBa
         OnOEAOxgK2kbc8SUlDMhkfoPCIxWqy8547s79pIH6hj47hke1I/kxANwJOgEMKLq5GLO
         JzWbzzyyQ8LV0/0xN3pqUV5q3Fb0vP6cGCF//zl2a1WAmpAfTYL5xcDqu03EleCuu+eh
         Z08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767013742; x=1767618542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l5sE/6YnXXOX4TjbbwwHDQ7NqsTtfkOGM5Ry/XEfJTk=;
        b=SDnx7xDGaUx8NNtWevxQJK7JMaa6D+3bRykFnHggUuyb3ZXRQId9FyukL/TH6hT6xs
         o2ytR4sbKMo/SlUTETlV3VSvq32NzXfbjZT5lIyynsv2eTeomBMpTBJg6N3y07zEi77S
         mtDXZgdq88i0bxJ78dkN1j1teEtSbQtxQya33QEwKvZa2pGYmxIhGmaVOTm0Xss+D2b+
         J4fzyeZWC5oAHW/EuRcVyuvdizfq3Wi4AjzbGeod90gO92xb43VLarHyFl0m0UISNugu
         f4O0QS+Tf8dGeRFF7/hygrcpiufqk8XfOb9LBIOKCKUjHGEs3bZJ00m69sLpB9ugOXRS
         Wjrw==
X-Forwarded-Encrypted: i=1; AJvYcCXMPzg05Nf/dq1LQ8hIpQdEvBnniGn25kYxfhG0iQLitoRmIsHec9z5R1x8U2Lj+NSk/9rAVzxKjr++@vger.kernel.org
X-Gm-Message-State: AOJu0YwX5ZpMcG5g2Eg9fUuBca4boG0ozJsgxTEyRNj8RIMi3belQXD3
	e25VfaTD/Q50xzjPsMeYvjrNpV92WB2QayVf78dKFs/F4fFbh8Xnze3RFUc07BFmlGR7kofq60A
	xupYjk78XAjRAFjAU6eAgFe7QZpxQoQhazaSWn6N6uJiyZ67G1FivPxAn2esXJ0Vn
X-Gm-Gg: AY/fxX42Ji9A22hHfq54AdtPEovJvHUKuBnsgbVX7rAn+D+353r8T+uqqAyKH1yRFQy
	WCAwa+24qBldxcVA1p5Zow3bopW2dyoGjs9xl05d5ZsOBj5PFSp5tjCI4mo6pklc/Tlqu3oo7I5
	4TU2imlGpLixMJatuLhCUoDZn5HYBfx8WS2Lgx6y/PuvZd61Y3wE7D7IJi9TepqglHKoadv6OOl
	jHeQPiUfTS2VOkQ6P3D/SiGt4UJsA7lJUJk/ViamoD66GU3V9YLWeUGsww2yTMrChvK08/SWBhD
	qFMXGfIKi+8sTDmXbKQyIn/azClhkIXnZIgHgEQCFTYmcQDkiuXm30PLNvwcOS7CDxGKFK90ScO
	KRrq497PoLIcqncAvl42wVuz7EMeEVq1kdyo9jN728btO0caT3qs6zjBOHDUicl9eJA==
X-Received: by 2002:ac8:7c52:0:b0:4f3:616f:150 with SMTP id d75a77b69052e-4f4abbdff03mr340138131cf.0.1767013741942;
        Mon, 29 Dec 2025 05:09:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6L/f/X8HVXb6ahrdPkvVM4U5pGT51rnVv1JCHH6UPEfksBWNYJ+SfZO813k9yOXzLtWo3aw==
X-Received: by 2002:ac8:7c52:0:b0:4f3:616f:150 with SMTP id d75a77b69052e-4f4abbdff03mr340137751cf.0.1767013741499;
        Mon, 29 Dec 2025 05:09:01 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de0de1sm3337997466b.40.2025.12.29.05.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:09:00 -0800 (PST)
Message-ID: <949abe91-612c-4934-86bc-3c6519e7e49e@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:08:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8994-octagon: Fix Analog Devices
 vendor prefix of AD7147
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gustave Monce
 <gustave.monce@outlook.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251226003923.3341904-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251226003923.3341904-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G+YR0tk5 c=1 sm=1 tr=0 ts=69527d6e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=NrDynsNFLfmcCilmcC4A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: e1-ysRC9q6IK-3gqc4TqJ7KL4GqaJKa-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyMiBTYWx0ZWRfXzhRM+6bN+22v
 NXVTU0eJPj+Pu18nhWYBmTYWGxFoc3W56/Ctqe1Old13hEWfIjiahHF/VwJJkoGwBsPsYrlXQi1
 l/Ns86SxIYF52/FfMcDKufISHtn0zDnggGAVfWxBm8RzFvDidNokWmD+pW/asD5j6ZTslXYwos7
 RHwQmE2XYBUsJcYQP+N1CkNSPXs30h6C6s4BV/p0CbB92csxgN21Hs30uCYXiMWtOKTlmFy9GjK
 15VEyKnRBx209yUSqkZQZKa84GXbVVpsRWvb+HM+Frb+WE2ny3doG3L3Vm8Md91eKWaCuSIr/MN
 Um6xhiFqs/PCpVXX7YsjkPxK3bisrzLZB0reMfXgkYG7ksGjJbcP+tbgvxZTCecUi30LteZUHeY
 KaceTzsXlLMtFYYfVJUX3EUUt7+4Gz+Kg43Rg7ho0dgjRc9KxIdIs1WYpvPJDremRpOZILUWTrd
 gpzA16VR9J1kDIiPVCA==
X-Proofpoint-ORIG-GUID: e1-ysRC9q6IK-3gqc4TqJ7KL4GqaJKa-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290122

On 12/26/25 1:39 AM, Vladimir Zapolskiy wrote:
> Trivial change, Analog Devices vendor prefix is "adi", but there is
> a valid "ad" vendor prefix of another company, this may explain why
> the issue hasn't been discovered by the automatic tests.
> 
> A problem of not described compatible value is out of this change scope.
> 
> Fixes: c636eeb751f6 ("arm64: dts: qcom: msm8994-octagon: Add AD7147 and APDS9930 sensors")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

