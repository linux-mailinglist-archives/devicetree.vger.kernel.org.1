Return-Path: <devicetree+bounces-243752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3114CC9BFC7
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 16:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 757E13A3C17
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 15:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1937126D4D4;
	Tue,  2 Dec 2025 15:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNymD01f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HvLkqij1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49F9266568
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 15:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764689837; cv=none; b=c07nyw26Hn5R6FDFuu/nne3Wpsgnd8snS24ibH5r6c6Pz8qHXBX/Rdy8easY1elDfDUDZ/j7ExbPYJH0Lft6ejfQkJFD13dsmdYFQv8XuVxtWRtR0a4eF/t50PNTE30teAoLhWyzslJf5cBfJVZrB9UB2DxuH7wPdHpR9XeIHpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764689837; c=relaxed/simple;
	bh=j7IN6GMzwOkUHFNWSKKlQeV8ehCPMjJxrWIutIewhVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kkz++Gb2nwDBDeKVBUm6qzTQNt1y9MWTeRTn1G2DOWaHpHt9wl6fhzEJ8HIV+jcbiUyKAQji3ldCh5rxOBEhnOh61QYGYGlF59USjHAbSKZE9xtsy7WS1RyavLHqyQCQP2eUlY4S91J3zK1q8HnOcFh63WOXMxXNtXUxW4hjBrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNymD01f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HvLkqij1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2DtVuu1145651
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 15:37:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7dvI4jnmIBSLqBzEmGJJZVq3e4u/zHX94LqpdnMLiDQ=; b=MNymD01fnkARBFE8
	f30Xj0Twb7f0JXMlzRlh1AWQmjzx6HXA4kbWVbK+kojTuHMCdOgSwJC7x3FlFDhe
	p1ESF91lcGvnoxNH0/gj4x7PtME5E7FoImmhRbx5eW/g0vIOxoTCLH9055hEy/fh
	0AiWHa+CYoT3drJcb7auPKuIH7TSlsk13BkfeZIC+MrPgsThZ1UDNEwxPEvSVc0p
	34TPvYZFldyEZiLjuYPBJ6yxT5ZfovBKNWWImGCGPXG0srgNI5VlMaZo6F05W3/m
	5BPOlySCNw8R4I3UFXUQzibHm7/xDr6VU/tKzbnSdqEFXbP/wyn+lxIquSuqBPHe
	pAjkiQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asj5eb6ku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 15:37:13 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-937271bb17dso182229241.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 07:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764689833; x=1765294633; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dvI4jnmIBSLqBzEmGJJZVq3e4u/zHX94LqpdnMLiDQ=;
        b=HvLkqij1FNp6evzAnLDbwDETR2GC4G30fLfHxp/Gx75BwfwIIOyxHif6+FLK8NEkJM
         1DJkqdEcfTIHFE7fsX0YIPyvo2i8pveqOVZInCFjJedMJGIH9y32EIgMhCmIVDTRit7g
         zniZgncZyeUYLySdadjyAEWf3CQgDR0q7+7lev5ln0S1KOZ5/VESVT+OWots+WTW9Rfk
         YgHry7oAzdVbfRIyEAw5rQUbugwt3S/yohJWPa9qNvHLUnkWWul9BiucKtalwOqr4Heo
         sw7MHvsjY3oF4rxWjHJLrL8jrRxa/tuqxI3g/n/O2gaz7QqXaKRk0+WMyDMh3wLHevnv
         5tgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764689833; x=1765294633;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dvI4jnmIBSLqBzEmGJJZVq3e4u/zHX94LqpdnMLiDQ=;
        b=tWZzyJIxlbyVBd8uwIJM65rF4p195FEzlKXWZDmkqw9PqcmyAJptUtU7gHZXqPFTvD
         AYlZxC7jflAZupnobfdN77LMZP4/EK7/uO5VWKwJcAn1dcrco07py3wgYiTfq3xafMLc
         Xl/qD0IigA76r+fpekwCnS5nj8ASGiuT/D6fzqMjldKSntgvnX2f7t+M76XsIcRfZshx
         8hSJMyX4czfW0I+MTJd+OOCGxa4OIGX9jENKZXEfst6vtReNI/FXV4B7xnA6QGCu/lO3
         xc+8sXa3nTzbvcouVZBCEBb7oDIABp2Abhx9iBlPsT5/32m/G81v0S8siuH+F65JZWKI
         3VVA==
X-Forwarded-Encrypted: i=1; AJvYcCWlJGXF41XR2rei5vI6bgYO7Tmdx2bVkYF9Y4OvTW44iQMMmAJH2jbWSx23Ez9j4uCBjZyxQ/KQCObP@vger.kernel.org
X-Gm-Message-State: AOJu0YyidOMOiI5/Vao6oPPwDQQHhN7hGs9QMWFQ9b1VVEpw4hEcSinE
	kYeC/o7fZYM8qrhOyYUFr1xW3q1Y4roSUZWIKaIz8ANohwSiOcYXG3QzsQZ2pcAdlMCvdAcINOp
	CBtnmgd4pGAAapvKzt/kL3/QJKPtGAXrteqhKC0YyQWH5vwL4sivZ+ikvfqPo9YS+
X-Gm-Gg: ASbGncvSKs3aXGUmShD9dl7z8XcXAVpBFV8u/wz9niJVYJiT5loHgqJnWp8E2XiM5ZX
	5N9/gb3cUCNDiEo8ZBwR+j9QCCzVxA6PuQaB8W2nXOy1sqjw4SDJ4Ir3dFVU6Wv7JSfZlK1JDNw
	ErJKwbDxuBGcVa47tlxeMNrErJIDDip+okhXG5pD9H4LL7F9dyY2SaVm7tC/9h9PW6eBtZGEDH1
	Aw8GPnwCsg7SGoTbAgQ8elzf1/Em2o9C3mr/tHuoaUtN7YTbmpRsgLEkiXeTeW1gq9xGcYFqMQy
	gWdmsUkZHL19LqEmbyhM+ACxkzeXTK1Rm2/TtUWGryKk28VQnsii8HdebpixCN3lnSm7d+rkyxa
	XewEkBz723pYkRPcNf5es1K1maCt92U0rPV0qKg57nnNn48V+EbBELijsbpgkF1yDjg==
X-Received: by 2002:a05:6102:5ccc:b0:5db:d7a5:ba2e with SMTP id ada2fe7eead31-5e1de57c9c5mr9556580137.8.1764689832769;
        Tue, 02 Dec 2025 07:37:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvD45845hdbmhM+YS7Wjjhg3RBweI2ZE3krzHTkcYizMtoYHA/7UWe6Faae0ZvkArgVzbYoA==
X-Received: by 2002:a05:6102:5ccc:b0:5db:d7a5:ba2e with SMTP id ada2fe7eead31-5e1de57c9c5mr9556563137.8.1764689832343;
        Tue, 02 Dec 2025 07:37:12 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a4b926sm1544786066b.68.2025.12.02.07.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 07:37:11 -0800 (PST)
Message-ID: <f7609d19-5254-4419-a600-d0904d92d525@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 16:37:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] clk: qcom: clk-alpha-pll: Add support for Rivian ELU
 PLL
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251202-sm8750_camcc-v1-0-b3f7ef6723f1@oss.qualcomm.com>
 <20251202-sm8750_camcc-v1-1-b3f7ef6723f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251202-sm8750_camcc-v1-1-b3f7ef6723f1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0npVPuG74b3rWeMk3hZM3NwjmkVKMLO2
X-Authority-Analysis: v=2.4 cv=GMsF0+NK c=1 sm=1 tr=0 ts=692f07a9 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5mhmk1EvtyQYLrneLBIA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDEyNSBTYWx0ZWRfX/8lXyEFYtCaA
 99/OaAv0D6GMu9pJJlaYtwgT3U/SRe+TKker0SwMe+Cx7Z+FcrdreyIaX6GPXuN9PuR/9dNk6ED
 U5ryDy5D8YcLcW4AN/FJ74xZZnihlmCeu1QoIW8U5YKu9n86LzN/ooWYt3A5q8n9uElBOG2hQAj
 lSvaoeHr4oXxaGPDgOspVNmN3/kRAGIg9mbp3YxRZURnBq3l1noZA9uHN6KjQbnhFDsN9/aG1qh
 2E7aXTek8fCJ3P5S5yOgqImKYgAsY4lAsoSTZsTzTgJiW+bgbLi0402AtfTb5l1pO7HYVdavqbc
 minoG4kojYhMDKwMfBgiwwz/1aw+wZOy4HvHkt0Syz6G8aKlIX7cw80AAPV4YLLydE53GI40Sym
 U7ysualwEG+CouhdNqxYMocnYxw5Tg==
X-Proofpoint-ORIG-GUID: 0npVPuG74b3rWeMk3hZM3NwjmkVKMLO2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020125

On 12/2/25 11:26 AM, Taniya Das wrote:
> Add clock ops for Rivian ELU PLL, add the register offsets for supporting
> the PLL.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Matches downstream

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

