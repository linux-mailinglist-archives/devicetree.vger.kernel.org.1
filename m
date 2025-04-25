Return-Path: <devicetree+bounces-170781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A5FA9C47C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751664C128E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C80238C2A;
	Fri, 25 Apr 2025 09:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bo60nUk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD58A238176
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575084; cv=none; b=m4mHH6NttN4NW1/Zf1XFWts6AIElEepvCCG0pLDKxdsOqgyvxmumYi0bvY7HDEMk3nMVduuGbquPXI3c3Dvi3aMRrCeE2IJ5up+mnr5rN4qoVmCD0Y3UCj81Qjf/iE5xm+lOlcXl4ouYjVPIWXfmZ5xNQVCwf4WpUnLWGvyUvhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575084; c=relaxed/simple;
	bh=Vf/rLd4GFcJ3rfHcTZhJzseE/NW/DuE267IkH38ND9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cKVC4ukAbpw616ABB1Q4fWU9Wt9xvkDCf5KENhChVV7zAqbMjqMGz/DSH7xq7L69zzhssOsphIIHU5JDRlPkC1RAg8K7FPdsrkBa4s/Wn5g3S9y2LciojM6rnAmnikBaxLqV51kWuKO+e+Nqr/GdIq5qVVXzc3pc47/NlxD3Ao0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bo60nUk9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T8J9023824
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:58:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vf/rLd4GFcJ3rfHcTZhJzseE/NW/DuE267IkH38ND9w=; b=bo60nUk9AriZpXIr
	8ljFtmcUnt1uRxZYBxGkQQlsIai1k8jsLguG+AwgraCpok0IcazIBJZjpNR0oJnG
	KvgS0pzEuAGog/4KSHfuQpdLZcO10pZC9b/uUF/Al2RV0NjruLsFzxsnbmG7Pxeu
	3PcJWrNtdoY+T5Oxq+sgEku3XYUqyme3hcVfzq+y469VFQI52PgGyM61PPtWmBkn
	WbIslN6eW1R5FoyNVOSuB1C5h3wS6fo1bXCfzeIlEE12BfWDz+t4D3cRvFV4mLTg
	1ijoB2emkUJJsQ+MaXJjDtnawqSHOjCg55JBOV420CiR2xDzhZitC5GczT/tgQcm
	5ga5zw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1rk23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:58:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeeb7cbd40so3126606d6.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:58:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745575080; x=1746179880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vf/rLd4GFcJ3rfHcTZhJzseE/NW/DuE267IkH38ND9w=;
        b=HJAoG9aabr+OyEf5rvhXNF6C+l4hRHguUTgr4tUUSqDxzNh9btGqHfqUG57AL1qCRX
         i05v8kywfDYPf4EEynrY1fIp2ZG++t/uxCvq1J5xJJjoRY6gvC7p3Tb7eeA1FVw38rdT
         Xtk+nTyXelZUXNx2Anq/PuU4Z4WDaXFRBAjTChcGSqs6C0GgoP/azBQ6P6AXfJuNcHKe
         pN77nrsKU9f+aZZYS8kYQj6zqPDHuKNn2zNNT1KBidSe0K7+MfghbupZIHXXAnzg60z/
         7Fb9DOeeCscUua03znmukBUWkEgC8VkRm400P/z91UBbYwdvFK6/KBcZU9Kxh/ujp3nt
         qx5g==
X-Forwarded-Encrypted: i=1; AJvYcCV7tiqUkebnmvyxjF9UAtNdHCyqGVphDVl1N7C6VZ5D9tTufRZEi3ARvK2YUwzbS0Z0Xj+5GwjYX8p/@vger.kernel.org
X-Gm-Message-State: AOJu0YzBFm9WlxgGkWRoXYEnISkGr+Pe+kUAs87E89kD/wUMbMHJLG65
	fBdz2rnl42nOmA2MCTl7NzIZv7NWuiVUkMfCd89JZweiSWBxvFbMIBs/lq+we82PFbaVz1eHKBQ
	2i6WIK+k2LC013e0rTwi0wsZlYXZYj7QApcEI17mAKY1AE/wWrEzVUxhPjW7U
X-Gm-Gg: ASbGnct8SncO9479RZdq66fyNWk/HkXO3g5Ycq/Wx1UKP6yHSQnvhllBsftmi4pNERC
	pNY6A2AAgZyLC8WmKd/a5fyW27WjfphLpdu+XVgC4kLIPT6uq3kD8wTezHYkqQzYKqAsNrkcePp
	U66jPJnTyOY9C7qEnRe8Zh+Xh3vKbHx0jvtBTvGbd+htG8G83Mlho83cHnxK5XC1IsuGWx6CrFr
	LZwRlB3/6np0Q8ELREYQzL1z+xZn7WuQ1sZ8/uw+vv6n8/0LxH4v6mU+yvvjWS9KvAG6vU+Q5wv
	zMf/olaHM6EqqakggcJisKyeH9fvsJT0v6UBv62PlSryFEs8kkJYXXn/JaOSP6HW
X-Received: by 2002:a05:6214:27ec:b0:6d8:ae2c:5053 with SMTP id 6a1803df08f44-6f4cba5f634mr10002226d6.9.1745575079782;
        Fri, 25 Apr 2025 02:57:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1aDrr9tIrGOVh+lPKRQPvx999AwcL22qiAWtArNF4QQ88HDa7YW9+wreCLFQKaTgC7b9wGQ==
X-Received: by 2002:a05:6214:27ec:b0:6d8:ae2c:5053 with SMTP id 6a1803df08f44-6f4cba5f634mr10001956d6.9.1745575079389;
        Fri, 25 Apr 2025 02:57:59 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5342sm1032645a12.35.2025.04.25.02.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 02:57:58 -0700 (PDT)
Message-ID: <70635d75-03f9-49ea-8098-57cb144fda94@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 11:57:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] arm64: dts: qcom: Add initial support for MSM8937
To: barnabas.czeman@mainlining.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Adam Skladowski
 <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        iommu@lists.linux.dev, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Dang Huynh <danct12@riseup.net>
References: <20250421-msm8937-v5-0-bf9879ef14d9@mainlining.org>
 <20250421-msm8937-v5-3-bf9879ef14d9@mainlining.org>
 <2e3d94a4-d9e1-429e-9f65-d004c80180e5@oss.qualcomm.com>
 <790a0b7537e0b82b70bc4b32612ecee6@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <790a0b7537e0b82b70bc4b32612ecee6@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 9KkuX_qaz0dTL3dScL8KZgKlcbPvitqE
X-Proofpoint-ORIG-GUID: 9KkuX_qaz0dTL3dScL8KZgKlcbPvitqE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA3MiBTYWx0ZWRfX/AumEHPotAKD CBRI+EB7ja/ShELEnIfFYKmlO5Wrd/TKyEvJGcQxvBtkOPteetFGf5toupn3LZtkUg2nQeO7px+ PcfafWrZBT8kEfQ7qmdS57poQz24Iqp2I/eGGyrpU7LOribqOg/ajON2fEKyOQMuhHmT0/chWC8
 GLR4OVr+NYZpaKNhiNzygx0TFttiw+caZj4K3WdVp7b43DpCxlcKarajBAXFW3tCqbMjLfAcsfu E9YSQVxz+0gTfnivVE1ZMROjBHsA8FMimOtoBV8dxoJkBuQoBLwzDaqvqxKRXSV4gHDGCOvlF9t iyzvb5M4l3vNZye3L366HeZIMSkZqKfmFAYWuTuSkW0YYGMXB/NkkfvYBMMaQZJZo0PB0SuFLtW
 h1NqF2mJhlrRgNyIis8kGKttc5m4qX5SjMw8GhXWdO2lsZROCYlV6O9FroqwnzPXBvsV0P9R
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680b5ca9 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=OuZLqq7tAAAA:8 a=bBqXziUQAAAA:8 a=x_pH4qmy28IV03WXGqsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=BjKv_IHbNJvPKzgot4uq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=909 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250072

On 4/23/25 4:46 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-04-23 16:03, Konrad Dybcio wrote:
>> On 4/21/25 10:18 PM, Barnabás Czémán wrote:
>>> From: Dang Huynh <danct12@riseup.net>
>>>
>>> Add initial support for MSM8937 SoC.
>>>
>>> Signed-off-by: Dang Huynh <danct12@riseup.net>
>>> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---

[...]

>>> +            gpu_opp_table: opp-table {
>>> +                compatible = "operating-points-v2";
>>> +
>>> +                opp-19200000 {
>>> +                    opp-hz = /bits/ 64 <19200000>;
>>> +                    opp-supported-hw = <0xff>;
>>
>> The comment from the previous revision still stands
> If i remove opp-supported-hw i will got -22 EINVAL messages and the opp will be not fine.

Right, I have a series pending to improve this situation a bit..

In the meantime, you should be able to define the nvmem cell and
fill in meaningful values for this platform

Konrad

