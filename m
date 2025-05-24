Return-Path: <devicetree+bounces-180209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2D2AC2F3C
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 13:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4BD8188E44E
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 11:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81BE1E5B94;
	Sat, 24 May 2025 11:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N/Fcyp/N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E091B1E5B78
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 11:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748084473; cv=none; b=ISa7646vv6nzBkVqPemapGigVA/A4VlIUgXxlrl9ri5Go0f2B/bbJM1Vvd72H8EIlwAqdM2Y2KeN2U/8M5pEwRXK+weTiI9rfW1a2Is/8YNPXqOtOJENDZS0ytUa1WFZWH2iYM0XHV9qJgZCpTCMFD1pH2+LOHLIHHZmX4X+128=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748084473; c=relaxed/simple;
	bh=uBT8QXnAoYnSly3TgloEh2i3dSX3runD8Ha/A6cIC/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y36jeJseYmPUZCq0bSEFbV8qbCKLROixuCiEGXmaZJiRtfBDMRccvC0SEbdDTe6B9noRn64njhvNwGtu6RP8m1Wo7utK/oaxuIgNwcuj0iZK/dkUfBJzv9p0ohurV3ag9SJkDLqlhsvNxcTjhxD0R5LscuBpDLUprqjv3SvMx7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N/Fcyp/N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O3le7Y029240
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 11:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uBT8QXnAoYnSly3TgloEh2i3dSX3runD8Ha/A6cIC/A=; b=N/Fcyp/NC9GTtEYW
	yK/AFO3BxuesYqSkqbvhSRXAQHcjASZ+zoyYOVp7tHxa34C50CgY6Hdcf2ZjWbBd
	Gfobap/24NjIDUqQx5mPuGK3LTTXaZGqr2B2XhLCJkv4K75ydgUXki92AKmmnmOd
	SZN3ddUrZMwTxQC0O3pwC1OVTQNhDkcHLMGR2N1sGPriALxZuY1mYWnMx/96ZMYr
	Z/DQHuK72Z85lcM4u7osURHktBPnckx9ysb+L8KfqqaURKWyUOy+bvJiPvzYZUN5
	1D4mkEzlJ5phJzkKdetVT1sC+J+jVTOZHpbeZM4OqZNtFODtUjfuBOjbWECP9RQn
	YRLkEA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g8rgn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 11:01:05 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8ca9286d9so355126d6.2
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 04:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748084464; x=1748689264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uBT8QXnAoYnSly3TgloEh2i3dSX3runD8Ha/A6cIC/A=;
        b=KMAvUf7XGuMdwLe+VIOr1GX2Rxje4CVS3eof861ew3vqb2d+Ab0dvIN1TNYQhOtiHD
         mtmLGiRqoePzO6imj8ye5eklXcHMkTlo1e7pblEXHjWrDxfolh+CNSONtRe0lUu78X6c
         BRbzXfqibpq/XpphdMPRtqjkBQifnEVeg0e9xna9UvBsOKn5I2wQcsNiXbmemGDU7tK2
         eGdG7/WhZ/CJycz+WoPDjBDurRb1o783UjQMfMCqCHN8zvQl1rDgTjexNqd3FWsHp86X
         2RF4nL43y2gVtuhP3BzXEZwepWatQ2VwOCU2++tT31T4mtVvQim+D6wqvflLhB1m4p1i
         93Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWIl/eNAEqKEh5JzIdPAGNHxlHPYowtyhTGEZyKsebhAPa5e151aO61/JgCerx1NxECkn3yZJ+P7rKT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Wz8vLBLn7dZ1MfS/X1vhXlxZ1WYp0nR++SV9N9ehQ2jhMQFd
	6SKflteW2lJBjVdCNjxjIp1IK/hO0B2119cHfSmBgFrnwrfmqIWgx3mqSaa2Tzogyc94BMqsTgu
	LAUMpwwq1nm3W/HdVKqL9Xte3hVHTJF2HW22/zzbrfOnF5f7CNJmYx1ytOwzP/Utz
X-Gm-Gg: ASbGncsX0sbOfbKYQBzQdZ3+q4yRSx4Z2S3WEzIjyZlvFlyY0Law/MoQlkq2SuDK6N8
	pMY3ahB5V14waBcAvh4uKnHHEFY0nl/3A1eMA5Sd0zNZbTx0vMcECc22EZZWg0vHDfc6LSaqp7c
	kQ3uzt43YXX8oLiV50rVwWXv5+jTMfPZwnud2ncQXStVUm2qsMfgRJOkb6CdOI7zbXLZdyJClB5
	tfgVdkbQwpi3SqMbJg0PhE4nBcrac6VEhs3tNguSsNkFx/lzUeJ4fQaEqdof7KY8jfqnefsgP4l
	LMJbL04MuFKS3eM6LU3vIJtl9wQAiZQUAXcRcET5RYJPbDd6WS6oojia97un7WCETQ==
X-Received: by 2002:a05:6214:2a4e:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6fa9d396e18mr13300206d6.10.1748084464319;
        Sat, 24 May 2025 04:01:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFt3zT9ObE4H3laeqssPI6a1m8vVV+uGCihBhTUhjMgPqOlKiS/ZHkjAau8uvxRtp/e5FS/WQ==
X-Received: by 2002:a05:6214:2a4e:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6fa9d396e18mr13300066d6.10.1748084463739;
        Sat, 24 May 2025 04:01:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438086sm1369934466b.89.2025.05.24.04.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 May 2025 04:01:03 -0700 (PDT)
Message-ID: <bbfc2598-6820-4d0f-ac09-406933771365@oss.qualcomm.com>
Date: Sat, 24 May 2025 13:00:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: x1p42100: Add Lenovo ThinkBook
 16 G7 QOY
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20250524-tb16-dt-v3-0-17e26d935e73@oldschoolsolutions.biz>
 <20250524-tb16-dt-v3-5-17e26d935e73@oldschoolsolutions.biz>
 <6iuro54yed6tqfej6l2l2ky7dletbs73nwjnfufbuulkw3kl46@okoj2v3wvck3>
 <342fadba-978a-4aa6-a393-22221715a5cf@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <342fadba-978a-4aa6-a393-22221715a5cf@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=6831a6f1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=Rz0-UGbwDQDUX_AfhhUA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 0KtlcVQ2MSMQVjNr3t89JO-WlFBJ-5df
X-Proofpoint-GUID: 0KtlcVQ2MSMQVjNr3t89JO-WlFBJ-5df
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA5OSBTYWx0ZWRfXytYaj/cASEvo
 Rslv+GbB/vejlcsgez7a7b+vB6+5r1qG9GZ10jx/EvUWqsyf9qLdsoSmOTO5f9TMI7kQsMvfzj1
 TfFasGnbyZ75Vcri6DvEwL0Pjt5YTI9V3LIcSjC91So87PqOpjqKz+SvcOfYTeOezFWxzQzvuDJ
 YLiF8the7x/93IjLdt8zPrqKnNP5lq92gIAW/AUyufrzCYrYzLu8k7A4rEMAqpbFFsNcPAa7Dma
 DgHPxA+UEl0TN1+jZbZN/wYTc0rqnsXhP+TqatsR/k0SD3AZvhNuFd3SRtkAC9MSXoc7ciU38Eo
 Ef8NK2Pl7wWvDKbaC/xed3OcQ+x9JeN+D2JMPYWNbDDyhRyfc9D7JSovGPTE8aXDdiysI4wwURs
 U3XziKIesc9dPZIeLA8QfT6nMAajI6tL/LzQpsoxEipiIoqyAH+LpurOcY2iul913hX9A7lY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=790
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505240099

On 5/24/25 12:36 PM, Jens Glathe wrote:
> Am 24.05.25 um 12:11 schrieb Dmitry Baryshkov:
>> This will break without the next patch. They need to be squashet into a
>> single patch.
>>
> Changing the order wouldn't suffice?

It would, but that would then mean you're introducing dead (i.e. not
compiled) code in one of the patches

Konrad

