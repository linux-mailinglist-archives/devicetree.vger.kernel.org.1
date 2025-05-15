Return-Path: <devicetree+bounces-177713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBE4AB8B2D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D0613BC165
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D866217664;
	Thu, 15 May 2025 15:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NmCZHdeX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C27E20B7FE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323457; cv=none; b=BgFzFOV8NgLy6Y4ntyg+Kxogj2AyiyHf63mnmr4Efohqz9A0LXeLWSktpNZHyFVOSwDhmIzQHxhj6JnjYPfi+NNPOwLPAoGbGjLXhxK8ZEv+F8rg0CdXDc61yGBoy5bAd4YYJCZn/6brEo9e4lvqJR2aV3GB0QaBhYjer0w7Ds4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323457; c=relaxed/simple;
	bh=atIQpaQtopMpwJYgji9E+C/yVnZRqcR9Uu8nkCMzx9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lhGVjmqU/iMwavW17Eu8+wfnJH/jFn8V/91yVCH0DW7H9QBen7J2QJ4ESgUUx/uAvJboFIbfb7S6VXCqkxc6QIDj/G6eR8sOhctgKlzqQ73o+Yls3JLhHOO1MQOmT067HKYPIqYf1F7TwPfnHnwYN7miTPmSiT0kvrvF93MPiRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NmCZHdeX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFDs1009069
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rLPxO64FqhcmIW9NSqbt9hKhOmOMomaefB8JAbvRe84=; b=NmCZHdeX7ZLIWbNm
	LlW+7vHn6PNHkGcoVrtku47I7KnVvh8D26U142nVo0jqfPEs6azNam5k/4J0TXcA
	wTTSqrBN+0garmh9IPRQ3/aw0QrggRo78yj16Ucx7PW1IwkPXjfoerbrDIcZ07cn
	P9XgZCzYpMIYrUq0oTVhlxbyXerDvqJHn08RQXJ+ko7z3TjxJiUCzBnbQUN33DIV
	WTJIsi7YVUx0e2VHAUHlVcjOT95Mebm+F1nSijQw0jBpU2LQJ2XUyvFhKWsSkCvs
	ZrHnxZMU3+KT6lGlpNTfMsKXe9o9nSltRr/KN7g5iXu/zLRM7T9XeEM691zWp64M
	+xRFiA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbex6p2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:37:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f539358795so770576d6.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323454; x=1747928254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rLPxO64FqhcmIW9NSqbt9hKhOmOMomaefB8JAbvRe84=;
        b=eyJEeSdoJq8THysTsM633sbGZmUs6cNNJ87laYgIK1revpvwbBvrfS38KGDh04cctX
         TfoCZmM3Niq3TONBqPTiLiPEbhMxSczk/kVmlwc/wMnbpCFNDYXqwe5iDkx6P4+18XiG
         J1Mz4DhqXkUYcEkom/wMnV+cUI5tN/5kPebZ50Q6N1B9pQlsUrvi5fQtHww2VySBFneb
         oKNc9OTgvKyuLQi4DbLwcHzuFfMHstfg+ksVdbCChoSnDm6nBzIjaVrJuQM00C+0gVwQ
         JHU24L/Zk4tXD9vRQne51n00LO5ha+EelB30WlihzKWOFoGGRm9kdzjyc3N83VdRkv6F
         +nUA==
X-Forwarded-Encrypted: i=1; AJvYcCXHHyeMxRDGJG28zawLDkj1JiaWVs1SBdOBljjx6OARnec2R7hXMWVDXcgk8RT8b737veypuq/E627e@vger.kernel.org
X-Gm-Message-State: AOJu0YwtF9a5yj1tpdkZRLqjYn7I5aV7NdE7X0+Wy6ZROxP+3LkrrSzo
	hn8kjqLPGNbE6xwKRgG2Gf8/QQy621AZJVQTevOV2725o0MmkPHdhKmbsmSrl9UPC8QX5uRB0Gc
	6ovmiVN5W6duXyd4brrbMXAq2L9coAwSkiejPxvcSk1A8UJJGOVUDzMiNuPZvhKxV
X-Gm-Gg: ASbGncs0Dx0Fr+vhwHQMgz4DY6cu53UHIqjHwXfPsTw357xgsFPce5VNB0WM0TBQBIZ
	+fFQlWTlewllnI9rQZC2cMdeAsXwSnqwRVwk7NH0ThF9dNnXHrQBsUKJOUgq8XmiSY1n/YAL4Vk
	dEh+XjrNWaEO2tozDNTCWWroejXiY3qzn+PWSpxVTCn9NAl13b7zDk2Me5tmLPF/S+mFz2H2O6W
	ocFoe4nx95L8ca/RfQCAZ3l4EMmuFe2d3mJOql3NDBuamc0tuDJ0KzAcF9IbuYvPYVjQHe8gPJb
	bu3m+IZhQryJ9muCFDOyiPlX6C0OQPFe8u3VwnhbxTX1PCi225ZGbz7mYygFsFPmzA==
X-Received: by 2002:a05:6214:2309:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6f8b08400ccmr964076d6.5.1747323453866;
        Thu, 15 May 2025 08:37:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5SKIS8bxAwsl16PrLjGcS3ujMsxqEj4y1zULjib1Z01idF3D6tCNQakAyR+kLSeki/BaSnw==
X-Received: by 2002:a05:6214:2309:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6f8b08400ccmr963926d6.5.1747323453394;
        Thu, 15 May 2025 08:37:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d047be1sm6506966b.26.2025.05.15.08.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:37:32 -0700 (PDT)
Message-ID: <ea2f5477-e75f-4e07-ba0f-7926ec490639@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:37:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/18] clk: qcom: videocc-sm8450: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-7-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-7-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NSBTYWx0ZWRfX54Fes9Qd++bS
 Sx+UIHtbgfSVD93Pg57p5Q04fZWtBZER95FMlUgQcph3yt3d8BBzNMpFTzf87Zv+J46k0wU5YFe
 24XzOiiSpbIeg6bfFrOhZ88IH3w1TlRQzcemZzdJXhs/K33H5aJ8y69uZSqWqppDVYuWXHes+Og
 gNT0MYsa8qaiJ/OZOhFCQ7WBCPGz0PNrZIJazxbuQImGmQ2150FC9UCrRiGxqoHuFQRZ7PIZBRM
 t/8+jE8TtaioUxuPO4wRyE3YdE2GR4gxKapnTaG9u/CfYzqCSTsK2PhdhDkgcEKxLRWRhE7opp8
 MRmA3RFm9fJkbnwj00Vo+kuj2mD02MbdHicTOim+zn0XOyh7cASc1xF23DYZE46ltX4tfUbGAAB
 qN1X8Bq0WzpmMl0ttBmWWg6lzUEOdEJy2HO6abZxDt/FaikkajXk258RJiKxRfEZHukzi7LY
X-Proofpoint-ORIG-GUID: 7j6B2U7Ka5FQ9LglgcAh4Q-05PbiX4D4
X-Proofpoint-GUID: 7j6B2U7Ka5FQ9LglgcAh4Q-05PbiX4D4
X-Authority-Analysis: v=2.4 cv=IcuHWXqa c=1 sm=1 tr=0 ts=68260a3f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=CXQnK64LRHhqnx0rWp8A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 clxscore=1015 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505150155

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Video PLLs on SM8450/SM8475 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management, PLL
> configuration and enable critical clocks to qcom_cc_really_probe() which
> ensures all required power domains are in enabled state before configuring
> the PLLs or enabling the clocks.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

