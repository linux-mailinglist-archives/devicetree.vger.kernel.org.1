Return-Path: <devicetree+bounces-180843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3085AC4FC2
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2411BA0CB8
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1707E272E41;
	Tue, 27 May 2025 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FA+VwvNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9B21DF254
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748352580; cv=none; b=mH9QX9rvbNCS143DCjorpZv2PyS9w1USheWckYV/2bX/0O2J74d+BwLzAnZo7ZCtWi++pSpgNmlFnINQtoACwbULKsI77+P3HkSs+4yW2J7wnXkkvZQppxzkRVk1LllIV8/AFcs4Qm29ZorHRvGdYmEdZQa+hXR/GKdXFoseYNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748352580; c=relaxed/simple;
	bh=Z4hG6dLy58M3ypBKoscoxiNRoVM83F379RAX/Icdfzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rocvwQaX4iCL8g0TUZRWiU5ajeJklST/GBI5BonUqjv7JyrXpcpZn2vjPFC+X7YLDgvIFsMWKkD2LLpaF8LQqlU+EypAqBnJN4OZiIc+hRWJQh0dOKh3/6kjfx7lZjNqr7B9fFwSuUwl04rzHUAlJLWu3nUq9QKnrfcubDOelqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FA+VwvNt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RBYl1x021578
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+nLYu+wMg03x4qWGhsYKPUqyKHolFLi+FxeCgip0yTg=; b=FA+VwvNtKWcELfNa
	T8ru1yPNfEy7lPyZb7rD50ofwf6qXuUxdPbIL1dM1cuUQphqvXdCwmKyMJQS0QzZ
	11SeEXYZZCeRSpAjWv1EMd+YSzWel6C/UVb9usBrkQRZu3e78EewPS6SvoZzTmlD
	bWYOUXCiFDp+yJR5psrR1Ax8pcsGou46BJHREj7h+b3ej/WE0V9hbnD/3Jji45kl
	HYuiqTU+rawOICeYNb88FjoyH/C9UWKLSEHE9CAzWLNcp6eM2XDydv8Nenx+wrBX
	snPCSnBAdG7yxAQOVhVy3X/QPV9Ni7uzho1v/0+MuB9a2Sxkh2mFCrgPjhSpO/t2
	7jtVZA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g8y0nv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:29:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5af539464so107970985a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748352576; x=1748957376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+nLYu+wMg03x4qWGhsYKPUqyKHolFLi+FxeCgip0yTg=;
        b=ZnsEEL58AqVv23DY6t1xp/Lhd2k9PIeLOUO6EgKBO423uFi4zWZ4ArXvEba+5k2Lgo
         C25A8O5gY/9Ef9NJ5rRgy/W12HjwD4DM6kZhSD/NJJD+JXDfyScse0U6ecgGeh/q0epL
         P460h4seI9U47Yom34p7u8pTVniswWSYbI62G1Y0k+mO4c+q9Xmv3osyhtXkB62WCcIn
         NSlAn3ciHSTA0Rm6bx5p+snPbcLSCkFbZkiso48JOugelXa42CJJudBdxPJCqSiN1xsD
         2xibnPZBtzaxh6gGZ3KPfBxUqkX1QEL7ptW+IiCtXMxUiP4wJzzYuvJ0/uCiT1A/2OXM
         0QhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnr6Rnx/Kzk8ZZCuzdy96+c67EAzNWMUMXB24tDYZ3dAs3934+JCoaEqGJ7Sx/Kky4+pf55Rju97NR@vger.kernel.org
X-Gm-Message-State: AOJu0YzGyreVuFJ+Y/9P3YBmRGmfI94h/kHuSnVJVIq1kt+BukJXE5vn
	98KVUe0iNi9p9VjY6SOn8TN9Qs0c8k2zpSYeJ1dVyHkoLlY3/3NnfsjkG1qLjdw/FASEK82MLph
	OG1rsO1ueVM5AUKAo3AWvZ4S/XUQGnpWgMKYvOfz6BtVVJJ/HgYRCnhcR4mbDWYJP
X-Gm-Gg: ASbGncvL1U8c2aKfKYkvvkT7m8xuQJEeml+JSCsKsdXF/iFeH4pRK1SPqDX6758EODQ
	zsKFwC0Ss2Hd7h4aOfJidgmBjJDJC6fM5o75m+eXQPi/u/vkxJqE4ZmNrjwiElAkJMCtNyHLf38
	YOj2ZJJZl9+K88Q2yNhiTwf5TIfY8flgZy4+/2B4bfjFh/OvZQhVvYyhEUFL7ORI/oS/1qtf0bq
	WNrCMaRB3JeExGFlLIv15Pn260PaYr0xUCNw2rTyRtnyqwRBvJZbuBxwg4lkmWKgFD/rLaTUtnQ
	qX2Ng+1hoemHmSsH+ttcAgG8pZXWwgFyRsmJHpl/NWhuOuxtmuDKl3+0O26KT9aapQ==
X-Received: by 2002:a05:620a:454e:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7ceecb6a425mr768665985a.2.1748352576446;
        Tue, 27 May 2025 06:29:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvL3/h4CKWjsYo4zYcK3qlniWEG8qm5kJBzAEvqrF3kl0uS6pRHQdcd6tNdnQWOdi5guAA8Q==
X-Received: by 2002:a05:620a:454e:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7ceecb6a425mr768663085a.2.1748352575802;
        Tue, 27 May 2025 06:29:35 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d278247sm1830992966b.76.2025.05.27.06.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:29:35 -0700 (PDT)
Message-ID: <056b38e0-851c-466b-b2d8-ac6c1dc504b5@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:29:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=6835be41 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=U3GCaaVbaVzPGH1JVgIA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: WXkPMWlifPYj7dld9FobZYMaa6ti9KwP
X-Proofpoint-GUID: WXkPMWlifPYj7dld9FobZYMaa6ti9KwP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDEwOSBTYWx0ZWRfXy60uHPrhdpxo
 dnyT4cnM0OdgdJbLxNdvoT41u1nbf+uIN9soKtnmquFklys567zMSh6QUqNfdh7sGkVF2coQcUL
 lh+TosCBVvPXczJP3OuS9MGngXZmhkFLY0/NP6SUTOqByim9/mef285L2xuAR6eDC17rpGPPEtI
 g05A4w6uJ3w5Vwrf3zwQw4BerogzddiNclCoGb6ldSsjpnjBcgXmIvG85xqgB3KmkR1TkF5G+VR
 K+KuGzSireBuYuwjN/Bjg2DqcSWG5k+FwDNXIjXH/Grh9fSiW7nsQcxwsiVhH2NjpePc0LudMMZ
 CZrfHB9j1zDlKOae+QW/+2Lz8mg2fp8u4Y5f+8RJjkDbmIMcN/u+83OrWEXXgbPW6iseVcX2EQ0
 qzN84JaF/Qv3Y7K6c9HJiAdpOPXz+NRT5OF4wUs1E9MyW+TJmrNghcnFhUtMmED0iSIJnkqN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=874
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270109

On 5/25/25 5:53 PM, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> i2s speakers and i2s mic.
> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker is connected via HS0 and I2S
> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>  2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> index 0e44e0e6dbd4..1ebf42b0b10e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> @@ -6,6 +6,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  
>  #include "qcs9075-som.dtsi"
>  
> @@ -20,6 +21,57 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	max98357a: audio-codec-0 {

no need for the -0 unless there's more than one

Konrad

