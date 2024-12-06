Return-Path: <devicetree+bounces-128154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 407029E79E6
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D97B16C806
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 20:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 182A51F3D3A;
	Fri,  6 Dec 2024 20:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="l+LlE6XI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D4B1C54B8;
	Fri,  6 Dec 2024 20:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733516028; cv=none; b=KwSTpCDvIc26FUlWq9SO/gEinIALKWIyQtpzUiq0IjsZCcPlSS8GUasN+M8T+Rv02AwvwJx5RpRZWeb9d+Yx/vOY74lCn0o164w0HdZb4D0/RO1/L9n0gqr91GzaKmUdZr6MMAfCZCV5YFx8JdeZALWywYMah2HIh6rDTnSQLvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733516028; c=relaxed/simple;
	bh=U1hzj8OoDUag2+V7FduQ5KX8Bcx9gIwqwH6aZFRwJKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=F0KyuA81kaS8lwkV8ftgoW1DZJK2r+47ZhmHG12LBzomgUjYtT+eec19s/dlEgZ4xnBU3jycmJ67KU8Hh609Ddlsz/7luAcfGk0bDXQBB0kDxumI6kyd8S1+xy3u32fZD28aN/gmJ8IvnDVg03WNJkLN+dl3qQilsci8+8te+KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=l+LlE6XI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B69SV3o016306;
	Fri, 6 Dec 2024 20:13:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sK9CAPNDZeTo2GKy/eE9+KhBdkAX/n3QL66YxJ4ZiLE=; b=l+LlE6XIvnMS4k6R
	k3rLNoqzcYI7nd1Eoy/yVTc8+jdUt/ctPOAz0JlrpT08qdd033do9RWpLBmmTYwj
	TdFhNj9X6SxANG4jHtM8A1FAf+25gLGBs3/pD0dwhy2iDHh5QZhyEhy3EVW2G/E1
	/nEaVXFcbuJzRYA4nv47Z5101CK4vJ78hhd3MIdFCDAW8vDoumlBwP3Jcat8RhIF
	z3PHSstn24PXMe/Dqkw/au5h2yRoF3awK7qJqnZeyV39VRruN7HDVxQBsvIZzket
	dJ0As5DBfO/NXObseu/fyysiqeH3I0F2jyG5m0mhthB9K1QWyYL/bkJbUyFlCgWD
	Ff+Xfw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bxny9mh8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Dec 2024 20:13:30 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B6KDTYh014430
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Dec 2024 20:13:29 GMT
Received: from [10.110.95.46] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 6 Dec 2024
 12:13:25 -0800
Message-ID: <3e7660b3-934a-4b11-82a3-48137d63ea5d@quicinc.com>
Date: Fri, 6 Dec 2024 12:13:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Xiangxu Yin
	<quic_xiangxuy@quicinc.com>
CC: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        "Marijn
 Suijten" <marijn.suijten@somainline.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Kuogee
 Hsieh" <quic_khsieh@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-6-09a4338d93ef@quicinc.com>
 <CAA8EJpprTGRTxO+9BC6GRwxE4A3CuvmySsxS2Nh4Tqj0nDRT_Q@mail.gmail.com>
 <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
 <CAA8EJpo-1o9i4JhZgdbvRxvoYQE2v18Lz_8dVg=Za7a_pk5EDA@mail.gmail.com>
 <86b9a8be-8972-4c19-af0c-da6b3667cbf4@quicinc.com>
 <fb6enh3wzusadc6r7clg7n7ik2jsucimoi7dnecnsstcz4r6e6@dtahvlm522jj>
Content-Language: en-US
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <fb6enh3wzusadc6r7clg7n7ik2jsucimoi7dnecnsstcz4r6e6@dtahvlm522jj>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _ttJL0RcNHq4tleLBzgk4VqbRrdUqimV
X-Proofpoint-ORIG-GUID: _ttJL0RcNHq4tleLBzgk4VqbRrdUqimV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1011 mlxlogscore=717 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060152



On 12/3/2024 5:58 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 03, 2024 at 03:41:53PM +0800, Xiangxu Yin wrote:
>>
>>
>> On 12/2/2024 5:32 PM, Dmitry Baryshkov wrote:
>>> On Mon, 2 Dec 2024 at 11:05, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>
>>>>
>>>>
>>>> On 11/29/2024 9:52 PM, Dmitry Baryshkov wrote:
>>>>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>>>
>>>>>> Introduce a maximum width constraint for modes during validation. This
>>>>>> ensures that the modes are filtered based on hardware capabilities,
>>>>>> specifically addressing the line buffer limitations of individual pipes.
>>>>>
>>>>> This doesn't describe, why this is necessary. What does "buffer
>>>>> limitations of individual pipes" mean?
>>>>> If the platforms have hw capabilities like being unable to support 8k
>>>>> or 10k, it should go to platform data
>>>>>
>>>> It's SSPP line buffer limitation for this platform and only support to 2160 mode width.
>>>> Then, shall I add max_width config to struct msm_dp_desc in next patch? for other platform will set defualt value to ‘DP_MAX_WIDTH 7680'
>>>
>>> SSPP line buffer limitations are to be handled in the DPU driver. The
>>> DP driver shouldn't care about those.
>>>
>> Ok, Will drop this part in next patch.
> 
> If you drop it, what will be left from the patch itself?
> 

Yes agree with Dmitry, max_width is really not a DP related terminology.

This patch should be dropped.

So there were two issues, overall in this series causing this patch:

1) In https://patchwork.freedesktop.org/patch/625822/, instead of using 
VIG_SDM845_MASK, we should be using VIG_SDM845_MASK_SDMA. Without that 
even 2k will not work, will leave a comment there.

2) 4k will still fail. I dont think we can even support 4k on QCS615 but 
the modes should be filtered out because there is no 3dmux.

I have submitted https://patchwork.freedesktop.org/patch/627694/ to 
address this.

Xiangxu, please let me know if that works for you.

Thanks

Abhinav
>>>>>>
>>>>>> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/msm/dp/dp_display.c |  3 +++
>>>>>>   drivers/gpu/drm/msm/dp/dp_display.h |  1 +
>>>>>>   drivers/gpu/drm/msm/dp/dp_panel.c   | 13 +++++++++++++
>>>>>>   drivers/gpu/drm/msm/dp/dp_panel.h   |  1 +
>>>>>>   4 files changed, 18 insertions(+)
>>>
>>>
>>
> 

