Return-Path: <devicetree+bounces-197764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B179B0A895
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B2371C47472
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD28F2E6D0C;
	Fri, 18 Jul 2025 16:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jh5w+yIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F49B2E6D06
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752856657; cv=none; b=sEscwEBKkksZDTwxdhqDSfdxnSiijNl8DiU6pjiZ8PAf05zAANTiSlTQUyXqjhp4/Z92WcPOMxnvXbFQCPsbcij3EdRDFS7RknVT3iLKL0cRZFiHusZ9SU76/nJt01RVF1v/Gxcjmt/h3aSd9kpEhLGeDc4In0DmB9VcVQG4GAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752856657; c=relaxed/simple;
	bh=twxh0YDbsy5bG2ICpRMFh+TxK2HYQr21LmR3HLWkcg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iwFqAy2Xb1z1Wwsa8iJZFPMX1Hhu9QmYzX+KcX5hnNFB65DeSctaI8EXfIwmjZtjI73ukRLnb+0gPGscy/mFvgtdOTof0RidWPnjeg9HuL/wbRN25QfA6HiuvPYvvcdQ+Nk6FmMDAmcY/yWx/kElw53zHLWTY653KN0x7dbdams=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jh5w+yIQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IGRKQj032376
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ZegwlQ32iOxl1i+QMZet/CdzL3ki4WTCIaMhmI6DoA=; b=jh5w+yIQ/PZJavnM
	t8UNy6oanuFBNUU67lLQmR94C2gMSxvSRl8qjlSntcQePRVL8Hl2Aul5vY4n2Lhr
	34gr6hK7wj6sDUGOMm/6IlvczcwH/D5fqq+1ozSDyLXYJjqLIR17UmI6lMucjB8t
	SZi8A0yWW/oZVDhXmEvIqAmmAQoFjrQoqnyc0lghq1DSm9iOZhO2NIsN5M2iWp8A
	3MN6zqA1rRGqrWnxvhWFpx/1MnXYfzAc33p9Bn8Jc5rpvVscDsC3jYELWwVcKnE0
	2o1h7ZGy6NoqlT5UYwx2079BxL3pY3bdk0EbOVG3NJQY+xYw9Nf9vKsHkVfK8PDj
	AEsX0w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38cexc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:37:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3141f9ce4e2so3367930a91.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:37:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752856654; x=1753461454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6ZegwlQ32iOxl1i+QMZet/CdzL3ki4WTCIaMhmI6DoA=;
        b=khI7Oie9V6SCZtV3Fpf/A6BgkG9zJptGPhfprv1jh67UJ/WQLXXDA5WbN3LXJHXqS8
         8qQ9IT+oy6V1Z1VsYQ9XfKb3QN1CVRoA6dq/NbzJqNstlueY060sdFh0TUh5Fb7mNSzy
         cIIn3R5odMt/fHGd5FmLAtIEIAaNQTSB5/V9V5xunTjtqa50StW9c1B5+QiyalNRtH9i
         f14Px4sCNMKOfRDjtBUfNXI7annIyTfNjZWOu4+NvJfVSE94shgYouhl5IsG+hEGZ4QV
         KEfvdmuzN/MRKMLT7WrNZI+6P66G/KuEnjMOmb1iH6NvV8Uw3HY/Wu9oOyP9OBBugrh9
         nBEg==
X-Forwarded-Encrypted: i=1; AJvYcCUgsjN8zxkMy3yXOt7B6lu//ZdRIAIPlUGYddZyqH0ocZT9y3lPGjFmDUaJEwsAzY+YweYe2gANMI9R@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+470DONv69Pfg3y+nTLsjTft9+wD12i/wTy5HbJ3eeErin0ge
	fd49+F1Slxi3Te2ShwRcI4QgZdg0naPH15wEV8pY/q2vBtV0HhcYqFqDtE/73xxpkqouszG7URN
	H2Xq7r2aDx1DL/UfMSalrYcpSvfbioIpAZZonytE10+W1WZtnUouOdU2ytwr3jPtb
X-Gm-Gg: ASbGncs3norR8/z5wvopHH+z6JVqPy71dio82iiAZatCOsKGltW2HdSBgxuoG/yLrly
	1Jyv4cauAuVPK9+gJFWGdjPFv4drhreTudblIYkadaAu/Yr9mMOFsMtpCdufWEIFR/zX5DWOANM
	MwWLWU1NVZcEBM849fo01Gdv01Fjt0J9zhyzg8ZLZedDc6ni/RaZRzt11v+ui8TlA4mEYVQoCSD
	xP4GcTd7oPQny68jzfwgNeoxI06TyHbE6dkM0GSvi/xXTpj0200R5VCqB5BoZN4Rc6LuJkfqePj
	1UkT49pT4+08v8dQGLFXVDNDOThvKVhWTKi5H3quHw89hez8YFXubSO3t3qUcS7fMyU5CQaDUJL
	5gQnnIY2TcmZB4LYrniiBeA==
X-Received: by 2002:a17:90b:2d81:b0:313:bf67:b354 with SMTP id 98e67ed59e1d1-31c9f2a0103mr18430768a91.0.1752856653709;
        Fri, 18 Jul 2025 09:37:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJSpYJWt9gcJBSv5M7yM4Tjn3hnjTMDiyr0xa8abdyvUZWBHlraaApCwJghcG7Ye9/EcQihg==
X-Received: by 2002:a17:90b:2d81:b0:313:bf67:b354 with SMTP id 98e67ed59e1d1-31c9f2a0103mr18430722a91.0.1752856653333;
        Fri, 18 Jul 2025 09:37:33 -0700 (PDT)
Received: from [10.134.71.99] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cb5c5da0csm3170530a91.25.2025.07.18.09.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 09:37:32 -0700 (PDT)
Message-ID: <0261da76-a1fa-42ff-9941-4ce235a449d0@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 09:37:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add MST pixel streams for
 displayport
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov
 <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250717-dp_mst_bindings-v3-5-72ce08285703@oss.qualcomm.com>
 <17ea4f08-daf0-406c-8760-23a23417ec1f@oss.qualcomm.com>
Content-Language: en-US
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
In-Reply-To: <17ea4f08-daf0-406c-8760-23a23417ec1f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzMCBTYWx0ZWRfX9EbEX5sXRPn/
 +8nHj+0J3OlYQonW6vQ1svQ9xZtFTZlF6jKTcrM77hX98YxUu8jEJ0QyafZeG0HiIZLXg+5gVJj
 WJCL8aKgT6JW+xJd/32Z7aKYUCyMtWw4YHXI6CX03Dm6qnj2uFLQAQY1XKI2Omqv88jDMukm1wT
 mQHafIBhK6N4pqUCiAOg9mQGUBLWkPfh2b7MVhSZFsMvH1N3Zz1m5m7VDl+zMpY6mtNa76vDYuN
 qoLuBIMwWCqAmFl2XB5yXfw9uF7d5+zb+UUrE195oK6mH6gkhepBdvBiIYthcyJefIL3JCDhNNs
 GOKz7zyO6b+ag44U/9rtSJasP/cxwv5fCnkAUTocm616LaMp3vQOz48oW0WB/p6sGnA4IIPcxEw
 stZLggSZhuiZQ7ha2tVbWrdC1PTPPW6fzIgtggvFGugMkZ9mYmZjX4GBUHcOCXhHcQoHTIcq
X-Proofpoint-GUID: _XyJZjjkaRmIQsJFyb0Zr5UrtLOdELmb
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687a784f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Q06rUcgQto-sQqt8d9IA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: _XyJZjjkaRmIQsJFyb0Zr5UrtLOdELmb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=661 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180130



On 7/18/2025 2:23 AM, Konrad Dybcio wrote:
> On 7/18/25 1:28 AM, Jessica Zhang wrote:
>> The following chipsets support 2 total pixel streams:
>>    - sa8775p (on mdss_dp1)
>>    - sc8180x
>>    - sc8280xp (mdss_dp0-2 only)
>>    - sm8150
>>    - sm8350
> 
> I think 8250 can do 2 streams too, no?

Hi Konrad,

Yes, 8250 supports 2x MST. I will include it in the commit message.

Thanks,

Jessica Zhang

> 
> sdm845/sm7150 also have the clocks for it FWIW, but that doesn't
> necessarily mean they're consumed
> 
> Konrad


