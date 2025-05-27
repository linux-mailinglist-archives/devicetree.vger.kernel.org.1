Return-Path: <devicetree+bounces-180944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09903AC5B9D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 721297A774B
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 20:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220F720C00D;
	Tue, 27 May 2025 20:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UsuwHtTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617BC1FBCAD
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748378987; cv=none; b=Vhqw3RfjXTuuWskBbkCrWv7vbk0WPvGxrNp7tipQsD0yIXDAP2X8w8f4P+9Mcw+eug90Ye3ZqbIdW/p1GQBWXAoV5VGMisql7THTkBa+L5OZjcghwEd+1A6HpAMct+DmYYs4EK3J3pI40XLrHVPjICaKuXO7rxsP+sKz8krcCTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748378987; c=relaxed/simple;
	bh=r3whjUIUpRdHK1V4b5tOyVHJGvxYVniojff5RrS+ur4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hD4cOCoDamkPP+xYX8rrAt6nZkqhUda3ivnfezIwShvYOr7YrO16ZqFJyCIo9sBaljBj2CGLXepX1rgpCizoamBbjZN5RqtyT/SQ3EKIt1Di4kRf8ZD2CrQHG/1njPZGRKXaAtdPtFcNygrIWr19RxZBPa3X4xXfloMI9hvOtmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UsuwHtTT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RJSQM6013673
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:49:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l/O2p+x2xSIF9G83bk2qKzG3F5MRhPuwnk3uawbQiMA=; b=UsuwHtTT+19r7X8+
	9xmaaZgI+E0BIU70xalEcDbNCLUWA3zODGfnv3/ro6F7QXVxsRWDTWwby1mIIJfB
	W8z2bntkGEeR9PFuJqqDMH8dlrAKdVUw3qxjFFb7O3+F98T+bWjAh4Lo/WqA8gj5
	Ymffg0F32lHihXoT7GeEg3BRyPZu3RX70+mdjrzLjgji3SKwywfI7V6RDMuUWHpP
	mWhc8g6vUvxkgPjIMvMfEXVvLpnVcuQI2qNMFUHlKJAEHQgo+yn6w/111Xgrpv8S
	ARkHdfBTbl8Y2ByIpLAcep8iN4/qLAK91a8pqvU4NgKeovig8qb5MvcwvKY7fvSV
	N//IMg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fq8d15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:49:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso102842785a.2
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:49:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748378983; x=1748983783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/O2p+x2xSIF9G83bk2qKzG3F5MRhPuwnk3uawbQiMA=;
        b=R+AIb2OjnLYypHa0ss9aO7ZJ65I51Qbja7mRS7SvBhKJQtXZPWC1sNDjXUpPydJtah
         FK9jroYbY8SckUTEHQmu59EdCf6ehFHhNWt6jJ544PrlFFcFbWkf/0acGp9E6R2ne/NN
         vAQwyLr5Ir37AbEPJkmIHWCQEmJpEoA0nwq38432ZbrU6JyVkJ2WiNQl4yyPcft7syTp
         zhrFVY5VjOdJJVdLR36aacNXmOmh6/hf6FDpZVAqfjMwxOEaRUEAMGhL58z8lDOoj444
         XZRrjWfafZ7ezZwhn626aze+sTvGlDljuHWAmCj2xgCrmNBnT4qMg0t+i5Zb7wuTBe4S
         XHjA==
X-Forwarded-Encrypted: i=1; AJvYcCW60WqAd95nJTl+lPwCmTEB/yxZtQ6bAA02FSdDBYg8QLVQrLVOnua+fWA4a9pQux+ATsNqC7m3d7+o@vger.kernel.org
X-Gm-Message-State: AOJu0YwP+yWDsDj4gZT9ec1vrmfLXWNhX+TEyhf/P7rdrz/9Opu2ULWz
	Gg+j08ppC0KfTH+C6HDm3UBZhc7j2V/B6KovvBrxDhWuhBFtXjRKRuU88RhNbKLwb/EeqPEi8wf
	/H6Ltb2JXQa9pJGTEMuuSXvdHW8U1Y166lfhSs/HxkhshpjOaaHjHhzY5UvsXDs6D
X-Gm-Gg: ASbGncs2RkUHxqqgyBAKuBGyNdNNQi45y22m+SFwWWj97YBmn084qgc5LJMX0uaoJmr
	fXTweJwFxQ80P4cRpV4Yzmh5fEKbk/yc1dBjcfwqWp3XAncNdxs6zUQ4MyuW+r7w9Vv4bh5AZ3s
	tHEvx6oAx8snSJVWH50jgZPfmAfQI1RMi/uT8ORFfunYocviESrCLfnnqiTh5pW0xjfLYEGdaBY
	cpbcwE7gHrurJ5oGri6Ix6U5Jj7Z9MBmaw4rUsQ0H/gOmEPpNnWezzmgLh/n7vXpcDRGVvLRzCW
	2YItuWw01SkJ5w4zYir7HO05xbZaszXJkLgDO6GJKRk5WsWbKY2tYhveTU8ptbz1pg==
X-Received: by 2002:a05:620a:28c9:b0:7c5:ba85:357e with SMTP id af79cd13be357-7ceecb95729mr796618185a.3.1748378982911;
        Tue, 27 May 2025 13:49:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+Ja5XuujBwuUP9ccKnyssxrFJe/lbLz9Lqf/caKcpdJ8XAsoYbJmo6SDfbvW/t6c1zMYunQ==
X-Received: by 2002:a05:620a:28c9:b0:7c5:ba85:357e with SMTP id af79cd13be357-7ceecb95729mr796615885a.3.1748378982465;
        Tue, 27 May 2025 13:49:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f2508b7sm8518366b.132.2025.05.27.13.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 13:49:41 -0700 (PDT)
Message-ID: <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
Date: Tue, 27 May 2025 22:49:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
 <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: hXU7PWKhWtkuSETKAsVEKvxoGAG1He2N
X-Proofpoint-ORIG-GUID: hXU7PWKhWtkuSETKAsVEKvxoGAG1He2N
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=68362567 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=OAqA0DyV7igbTOjjZJsA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NSBTYWx0ZWRfX272UcxUsvyFT
 WfLYin+XxpK3fCMTZHze22nluyS7Ccb7ktxKRp2Fxn86A88u9vP/N0TMg26WnNmur1IGTkQI5+5
 sO3ZnZcxoSYtUb4vQy45A3Y/NXqH+99Gf2zXmxrB5MsR6SrkEqoIZx67RYRfabCkDJwOBAVSEL/
 juFlq19NIc25fRaEosh8OQJd6i5DYnG16h+z8JSxaXy+N56yyHxcL9PjDdwvH1HU+p1U+wS3umq
 tFn7hw5pLmIAvaTDNRUKb9kcU5alCdE7fh8UmjEqsXzEUd2cbV4rT2SF03BTzVstDuNUbAImddQ
 ithngmNoAbrsmOI/YqWtF7gUnnVheZDVTZjc+Vx9vSZkdYjI3DBzne6t6g5By55xJv98cOWZYfh
 JknuujPEVK4YVw5eLnVHa3xkvhB/hl9G4Eb83eiUo8Gux+QB6ppJzbj7/SJIqrek7jDw8YGE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270175

On 12/3/24 3:07 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 03, 2024 at 04:13:22PM +0800, Xiangxu Yin wrote:
>>
>>
>> On 11/29/2024 9:53 PM, Dmitry Baryshkov wrote:
>>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>>>>
>>>> Add a mechanism to retry Link Training 2 by lowering the pattern level
>>>> when the link training #2 first attempt fails. This approach enhances
>>>> compatibility, particularly addressing issues caused by certain hub
>>>> configurations.
>>>
>>> Please reference corresponding part of the standard, describing this lowering.
>>>
>> Per DisplayPort 1.4a specification Section 3.5.1.2 and Table 3-10, while the standard doesn't explicitly define a TPS downgrade mechanism, it does specify:
> 
> Anything in DP 2.1?
> 
>> - All devices shall support TPS1 and TPS2
>> - HDR2-capable devices shall support TPS3
>> - HDR3-capable devices shall support TPS4
>> While these capabilities are explicitly defined DPCD for sink devices, source device capabilities are less strictly defined, with the minimum requirement being support for TPS1 and TPS2.
>> In QCS615 DP phy is only supporting to HBR2, we observed a critical interoperability scenario with a DP->HDMI bridge. When link training at TPS4 consistently failed, downgrading to the next lower training pattern successfully established the link and display output successfully.
> 
> Any other driver doing such TPS lowering? Or maybe we should be
> selecting TPS3 for HBR2-only devices?

Bump, this patch looks interesting and I'd like to see it revisited if
it's correct

Konrad

