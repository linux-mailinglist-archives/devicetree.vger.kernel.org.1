Return-Path: <devicetree+bounces-214254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D513FB488FA
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 11:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B2A816230B
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7AEE1DDC2A;
	Mon,  8 Sep 2025 09:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZBnME6tb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FE82ECE95
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 09:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757324802; cv=none; b=FJxcecABD2o1s7JyxE1Tca5MWkvpzT1aFjogCDa74mQ0HpkYu69BkzrMEHxP0xJqPKqb9QjUV3qv+im9CR80ulrIfr7xmfHZ7mcfrWY+BW8pf4ZWVgA7+xHgL+Hw4yOFilj+yiLve60VwsX1UuS7gkWBIuRbZHxn6sRNjcWN2Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757324802; c=relaxed/simple;
	bh=pGHg4VNgHfwbIUZJAbdaa24YYr9Y8eheo6uGBDgLzXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CuyUUlr3TiNc/olLdhaYi7dffMOzco+ts7iPISoAqxwTrvnekFQLDD3mPMtU9HK6kUz7TEd6MRNQmnL/Rh7xcmqi90r/mfKNyulfrZFQ6PgID4vvkyK1s/voaGovZMFH9Y0FlFn8yVOgewx2a/xUwgAVsym47M6dwXr1cSAm3Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZBnME6tb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5889PcL4022793
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 09:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IvPrAA/ICa4QmrY/uCAxXkwkNA9kjX32rCYICA7/VoQ=; b=ZBnME6tbpmgqJS24
	yts36ezMywJZSiJ05Bij+jRhb96QIhswlyExTt8qlTXs2mtCIXWZYn1M2YzjT7K1
	YW/9GqPXV6KD+VScR0SFdsF+FIvMvoMCquE2M70rIECWkOB8AyiESgLBRTqcy2V1
	826qZaLVyqJagMATL4e/0WV4S5AiqIj4QnrGZzIOFhnHvyxu8+YB4wk7NiTy8+g2
	E7MmU7QpC3+3vrqR0jcnc0M3oIdlHdAe66EevQy/qMuYba2hdvK0oxYySS0/PwUQ
	7Mej5KTrg0OqfyagH7+U5cuMGSGxW8tVThOPS2PnWyAW6jIPALGjDkA1Tq3RGjPF
	q2gTZQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8v6f7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:46:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329e1e3b25bso3884277a91.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757324798; x=1757929598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvPrAA/ICa4QmrY/uCAxXkwkNA9kjX32rCYICA7/VoQ=;
        b=Ud2xR9iGurYH+2Yojd9mpfj1Wf4R2PlFSEKXs0gSblILVQQzUFKmQWTgQksPC21lA7
         Grl3eL+pruHzG9bRXHJzDh8HpJJqpU2p1JdYyK3sXJGUAarKQwoh6ugSxB5TZaHn+4+i
         iJmNM2C82sN1Gr5z0if6tfYXdk7B5jby+ht78cEp3zMnG6aa5lI+cl3Os/42dbzhOS+t
         mpF+P85fnQCptMkMJCiz9ekuUv4Aingmxcy/dCoHKirpvllHgtpSqZjnxdHlWGBJc+Hk
         UHGc1WKySHNfHLnrhnEMMoehVVAXCOPmerP0kJIR/YHIKETMrDIojhdgbbWsOpyzV09Z
         Xq5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUe86GxMz2FIzi594E4bw/WCsZjnlfEY1Efscfz/VwB36SMKdYitw+dH7Oievl/r2oXwNeWiZiofosD@vger.kernel.org
X-Gm-Message-State: AOJu0YxFsSfvJc2vI3+u0RmZcL9R85yPmedFLFHTIpn4JAdCX8HlwNJc
	OI0ROzceJmftrDKcSzky8RlJMUXZWDm43jSF+WYwKyt2vyU7TUV+4NzfOeXiQA6PmuSE7GUxdgF
	wRow0C5i1KVovmHMli8auNvjnCDst5bal9hCy15bvV5+yrV9LEHfinOm0TS1e1K1E
X-Gm-Gg: ASbGncsS/qzXaztb86jEfR6YqMpCI5hcY8OYXOXd4ANnmgqtvVkjnEMu+G63oz7uRSE
	hF2xLq/WXzl5gCwUN/1ghlAukej/Ro5nvj6t6xctSrL1jk0ydEPZhbr5M5IYIuRqYQCdDXfaG8z
	qQ8mpdP7Gex1rFpda+45YUWrFyYcWoZ3iZWoTrcl0vnoggyLjV2HOIgPdc3xn5iZbp+xM4yrUzJ
	2bsNRW/lTsMhhjV3/m1hbox763yAUUgk6BqNmMP43lcHvmMesxrhPWn5EzwqR4bis+aS4b8k1Uh
	YYZzyuUFR4IrckFLsDGXK974Ud1ZHRl2je0BW5OuheiHOl7PLRbL1PvbeMSEMVLYRnV3+2/68Kn
	Lbd7/BmjE2T0A0gE2zo5G4smGCJrueRw=
X-Received: by 2002:a17:90b:3e83:b0:32b:dfd4:95c9 with SMTP id 98e67ed59e1d1-32d43f65178mr10004393a91.23.1757324798509;
        Mon, 08 Sep 2025 02:46:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvfRyf4bycr5BBpSLmxS0G+wazAJl52xcP6+Epg8zF89ELjO/ko4stTzfzCABTT6v+46wN1Q==
X-Received: by 2002:a17:90b:3e83:b0:32b:dfd4:95c9 with SMTP id 98e67ed59e1d1-32d43f65178mr10004361a91.23.1757324798009;
        Mon, 08 Sep 2025 02:46:38 -0700 (PDT)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4fb7d391casm11944947a12.7.2025.09.08.02.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 02:46:37 -0700 (PDT)
Message-ID: <69219cdd-bcca-4673-9a81-084184fda6db@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 17:46:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
 <p2okyfwfl23bip65koaqezlvhyo3z47bnugojcieuspr37xc7b@s3qwgbqmts4l>
 <d8aaff46-9e3b-4b53-a690-351253753edd@oss.qualcomm.com>
 <jdbwncstextusng5boqg4v5r7krbnjts6f3zgd65cu4rrst7ay@kkod7ihbgfrp>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <jdbwncstextusng5boqg4v5r7krbnjts6f3zgd65cu4rrst7ay@kkod7ihbgfrp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bea5ff cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dWyAYXQ4UQf5hrxkvz4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 66HGsbNbe0tuWLfTUjhEcgazRoMSEvR8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX+DKunfWGX5rw
 tSnoLgQwosC4a+ODWfe4wnkKc4p24bFv4YBWIrBRACrbmoBE94oTbZf37gbbvmNPHnxG7oDlBIz
 GamI+t9ajxMZq08PIbUWNsKnV9c6WHj2HvKmhCUd+bxRDvobDbX8YtXa9s1J/8KGzjXmbAzD/6a
 zQ72hjqt9+e79AJn8CVeoKIxceiMFMVVKyTzY2FZNGOeCyBmZ1r0y5wvXPmCPBQtK82FITiESw1
 vOcoLm5s01DAm9OnaDqqj4OZT6noLdEu0vou09tXjLFpA8w4gqaxHjWJ9Gx6z2rI2TABynVqdc/
 xVdRj7yU3O9vi0tegNT9GLLSXAhyXbEjHKJhCtSnhY4LAsG9MYHw+2O28/L/OzzxSbRnbk9jplc
 1SCEzHRf
X-Proofpoint-ORIG-GUID: 66HGsbNbe0tuWLfTUjhEcgazRoMSEvR8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018



On 9/5/2025 9:48 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 05, 2025 at 10:50:33AM +0800, Yongxing Mou wrote:
>>
>>
>> On 9/4/2025 9:43 PM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 04, 2025 at 03:22:37PM +0800, Yongxing Mou wrote:
>>>> Add compatible string for the DisplayPort controller found on the
>>>> Qualcomm QCS8300 SoC.
>>>>
>>>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>>>> that supports 4 MST streams.
>>>>
>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>>>> ---
>>>>    .../bindings/display/msm/dp-controller.yaml        | 22 ++++++++++++++++++++++
>>>>    1 file changed, 22 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..ad08fd11588c45698f7e63ecc3218a749fc8ca67 100644
>>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> @@ -18,6 +18,7 @@ properties:
>>>>      compatible:
>>>>        oneOf:
>>>>          - enum:
>>>> +          - qcom,qcs8300-dp
>>>
>>> Can we use fallback to qcom,sa8775p-dp instead of declaring a completely
>>> new one?
>>>
>> I think we can not use fallback to sa8775p, since we don't have DP1
>> controller for QCS8300. SA8775P actually have 4 DP controllers (now only 2
>> really used). So in the hardware, i think it is different with SA8775P and
>> we need a new one.>>             - qcom,sa8775p-dp
> 
> The DP controller is the same as the one present on SA8775P.
> 
Yes, it is same.. I just want to confirm again—even if we only need DP0 
for QCS8300, we can also use sa8775p as fallback, right?

static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
     { .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, 
.wide_bus_supported = true },
     { .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, 
.wide_bus_supported = true },
     { .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, 
.wide_bus_supported = true },
     { .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, 
.wide_bus_supported = true },
     {}
};
.mst_streams = 4 is suitable for both QCS8300 and SA8775P DP 0 here.

Previously, my understanding here was that we might need a new 
compatible for QCS8300.

Thanks~~>>>>              - qcom,sc7180-dp
>>>>              - qcom,sc7280-dp
> 


