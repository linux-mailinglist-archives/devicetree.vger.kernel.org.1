Return-Path: <devicetree+bounces-104943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6106C98494E
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 18:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20F0A282EDC
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 16:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C9B1ABEB0;
	Tue, 24 Sep 2024 16:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="bL3MJ5VW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136591AB6FC;
	Tue, 24 Sep 2024 16:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727194330; cv=none; b=EjtgYN0Ztb90vL80YEUc9NTWBdikLboIp9ecdLSp64sP95zH8ht9YBCkiKRb4B3eIwiprxbhPNMYkidNUxiZImf5SENWUfcsBg63ZPsFqDQUuxl+2NwxrkUpBGBWcGvA3c6OcjMickpZvgfkKpkb7C+mry2/Wr/BObJCXH/SKVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727194330; c=relaxed/simple;
	bh=MDKZ5F4QlTbFzY4LvcukYP9ukQyZSU87k3x7JqV9Y3c=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=e88tnVskZXggssnHs4Eez08mAkohh8ed2l6gj8hkm2V8CSGUd3s6RjmecNjLiBid0IIGRPH/0I3d3j7QKw+EbmIB5VfIJj+qyatD3oGU7VbjaJWocH7KqJL9gOwDYPNQPq32M0M4UsGI1XqZ2fBcHmMXfylns7l/MzM9L5+vawE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=bL3MJ5VW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48O9iJQ9009964;
	Tue, 24 Sep 2024 16:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D8AwI5MZI4AYyLv+Gd8AN7IdOtZ48DTrQ7yEYYQrd/0=; b=bL3MJ5VWMUBxnAJn
	X3rC3AQ5Q0okb3+evJaGSX0FsK1wjWoivLFxGfx/JPXBXz55b++jTo429KEUMEuC
	SN4MON5fVJysrtBhWnuVsige4DSBiNNTqH4nV7I8G15vQJB/LJJNn1w+uqZPz7Al
	lCeLEDAhtr/xqn+uzMk6XAH88Q21z8CsNFUMg+6BpC5coErqmd4JO0z52uU2DH97
	J+3PLXMrFcxnk2kuOOpsT0mc+YLhEnrKRvGSgg7Bd18fCisqR8W25zCShh/Vc9gt
	x5flL+Gf/rIRk8BXxzxU8cBG1VmZ23AcKFPpE4qRwINtYwE/FmT8mSuOHAj137Tm
	GnFS0A==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snqyh9kv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 16:11:49 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48OGBSJ6008045
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 16:11:28 GMT
Received: from [10.134.70.212] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 09:11:28 -0700
Message-ID: <c5f575d9-ea47-4f08-883d-36f01f304d75@quicinc.com>
Date: Tue, 24 Sep 2024 09:11:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/panel: jd9365da: Modify Kingdisplay and Melfas
 panel timing
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
CC: <neil.armstrong@linaro.org>, <sam@ravnborg.org>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
        <dianders@chromium.org>, <hsinyi@google.com>,
        <awarnecke002@hotmail.com>, <dmitry.baryshkov@linaro.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240923134227.11383-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <42f0b4b1-87c7-4ebe-94a1-e2ad1a759dd7@quicinc.com>
 <CA+6=WdTTwXSyqGFGM6mqG3djDBH28mAzBUxUEUdr6z7W2g-A7A@mail.gmail.com>
Content-Language: en-US
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <CA+6=WdTTwXSyqGFGM6mqG3djDBH28mAzBUxUEUdr6z7W2g-A7A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hEnsDmT1Z1kYu6hjRfrpE6obNy8cT9So
X-Proofpoint-ORIG-GUID: hEnsDmT1Z1kYu6hjRfrpE6obNy8cT9So
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 lowpriorityscore=0 clxscore=1015 mlxscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409240116



On 9/23/2024 7:13 PM, zhaoxiong lv wrote:
> On Tue, Sep 24, 2024 at 5:14 AM Jessica Zhang <quic_jesszhan@quicinc.com> wrote:
>>
>>
>>
>> On 9/23/2024 6:42 AM, Zhaoxiong Lv wrote:
>>> In MTK chips, if the system starts suspending before the DRM runtime
>>> resume has not completed, there is a possibility of a black screen
>>> after waking the machine. Reduce the disable delay resolves this issue,
>>
>> Hi Zhaoxiong,
>>
>> Do you mean "if the system starts suspending before the DRM runtime
>> resume *has* completed" here?
> 
> Hi Jessica
> 
> Sorry, my description may not be clear enough. It should be when the
> DRM runtime resume has not yet completed and the system enters sleep
> mode at the same time.

Got it, yes I think the reworded explanation in your reply is much clearer.

> 
> 
>>
>>>
>>> The "backlight_off_to_display_off_delay_ms" was added between
>>> "backlight off" and "display off"  to prevent "display off" from being
>>> executed when the backlight is not fully powered off, which may cause
>>> a white screen. However, we removed this
>>> "backlight_off_to_display_off_delay_ms" and found that this situation
>>> did not occur. Therefore, in order to solve the problem mentioned
>>> above, we We reduced it from 100ms to 3ms (tCMD_OFF >= 1ms).
>>
>> So from my understanding of this paragraph,
>> `backlight_off_to_display_off_delay_ms` was added to prevent the display
>> powering off before backlight is fully powered off. You recently tested
>> dropping this completely and saw no issue with this.
>>
>> If that's the case, why not drop this delay completely?
>>
>> Thanks,
>>
>> Jessica Zhang
> 
> Yes, there are currently no other issue after removing this delay.
> The reason why I didn't completely remove this delay is because the
> panel spec states that a delay of more than 1ms  (tCMD_OFF >= 1ms) is
> required when entering diaplay_off (0x28H), so I reserved 3ms.

Thanks for the clarification -- I see why you included the "(tCMD_OFF >= 
1ms)" part now. Can you please specify in the commit message that the 
tCMD_OFF delay requirement is from the spec?

Also can you remove the extra "We" in "we We reduced it from 100ms to 3ms"?

Thanks,

Jessica Zhang

> 
>>
>>>
>>> This is the timing specification for the two panels:
>>> 1. Kingdisplay panel timing spec:
>>> https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
>>> 2. LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB
>>>
>>>
>>> Fixes: 2b976ad760dc ("drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel")
>>> Fixes: c4ce398cf18a ("drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel")
>>>
>>> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
>>> ---
>>> Changes between V2 and V1:
>>> -  1. Modify the commit message
>>> -  2. Modify the value of backlight_off_to_display_off_delay_ms.
>>> v1: https://lore.kernel.org/all/20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com/
>>> ---
>>>    drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 4 ++--
>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> index 44897e5218a6..486aa20e5518 100644
>>> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> @@ -858,7 +858,7 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
>>>        .reset_before_power_off_vcioo = true,
>>>        .vcioo_to_lp11_delay_ms = 5,
>>>        .lp11_to_reset_delay_ms = 10,
>>> -     .backlight_off_to_display_off_delay_ms = 100,
>>> +     .backlight_off_to_display_off_delay_ms = 3,
>>>        .display_off_to_enter_sleep_delay_ms = 50,
>>>        .enter_sleep_to_reset_down_delay_ms = 100,
>>>    };
>>> @@ -1109,7 +1109,7 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
>>>        .reset_before_power_off_vcioo = true,
>>>        .vcioo_to_lp11_delay_ms = 5,
>>>        .lp11_to_reset_delay_ms = 10,
>>> -     .backlight_off_to_display_off_delay_ms = 100,
>>> +     .backlight_off_to_display_off_delay_ms = 3,
>>>        .display_off_to_enter_sleep_delay_ms = 50,
>>>        .enter_sleep_to_reset_down_delay_ms = 100,
>>>    };
>>> --
>>> 2.17.1
>>>
>>


