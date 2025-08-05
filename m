Return-Path: <devicetree+bounces-201882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4854B1B1E8
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B28E160518
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 10:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D012126CE0E;
	Tue,  5 Aug 2025 10:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HH5EKlCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A39C210F65
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 10:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754389567; cv=none; b=H+9CqV+2ERnr0oII4Az2qvXfgNDnEZr5pGoYIzwWl0JoJWfMpMcXEi/hhmnJznfDjxTmDPFDkP93EfPumV5G+lWv4oSUSKWRFw3LIU69AU5bpE1iEk/De6T0e8QnC83k3+JgbA8m0RXWTvOvsvnW5Qitjs3Cy1eddvpS3QMqIVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754389567; c=relaxed/simple;
	bh=hqtLDqqETlGoO03aKynYn/0eKNUxW23Fq0iyoxd0QkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YZYveV1BYUwJGAzfBTITSf+kvOxjJv/3OKODSWWY2AnxG8PItvpALmNiEYnlju4mfi4r7c8Fnv/ZFSmYpbK0VUjc34yMX6Ezq656adgyWpmu+DBKVvNzPJqba/ykgNT9dNXy4g7SAStufUqNJ7ZNpM8z3D2x3Q+MOSFLy+P1Wg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HH5EKlCu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5757NqhZ003252
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 10:26:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+iReZqZKlVGY8y7fQQol3sCZdRqJvzzuk3L/8zG3n1M=; b=HH5EKlCuPgatJRIU
	5Zibas1QYow0eYSJ0f7wOnVI2bp9iHdaVM3aSCbzqDFhbFsbupdo+0ow3yPvMCEL
	tIu4FqxhSMbgP3A1KbUMJIXf2R4zHpN9YAif0QsM2sxMKYUDIETPSyiiazoVRrMG
	o7ZzbL6o6Z6B7PZg7l7TklKCZza8iCjlCYDtO5bhnPSBQsXMUzYsHzS7DpnzUfM6
	iNEx2MQ2SspfYn3lcph5Aw7T6Qko90TfocMgo+geoLRThyHm8Y5vrmCKG6tR1W7q
	ymeMHVRAeF1xTEgcP9OBNl/lSdeJHAKYbBDv+16YmuqYmtwcsZUFIjevYN5qMra+
	/E0pHw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48b3j3t1c4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 10:26:04 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-75ab147e0a3so8400662b3a.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 03:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754389563; x=1754994363;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+iReZqZKlVGY8y7fQQol3sCZdRqJvzzuk3L/8zG3n1M=;
        b=BSqE+kyH+nywsbKrFwF1bZAiyOkcM0o6bixBxpjgGcaZAmgCaf7UIoMP++W5uOo/1C
         8Yc5Q5qhCn10R3FC9SQyU75/y/YUwlPVHBHkhRDtkkUMqCH+I95TIk100rpdG1P2aWjB
         9riBa8kqYRUIQCAfg0/GV0AFd0nedWCAPi0+FdWjYKfwQgNYbIDmZwB3aUh4Ky6HTXzQ
         BfjQy1xBGuw0oPhtjdLBihYtC4lDzMb4LVZtPrmP+TJFAhBeNJBiz1+VmCOEjp7fkNJQ
         QearJGMYTfTaWsYBdgkRIGsbbGxfdr8tnAgIcTsUrLCbCmtbHN13lbj/I2MchT4Zy4sm
         /zTg==
X-Forwarded-Encrypted: i=1; AJvYcCUC2XrW2eG47+1GGUcqcr1YCFLOaifdoaRCZEOKmS0yEdtPTB+eL2U64n4cJe/g/oKAjizbky6bQwiU@vger.kernel.org
X-Gm-Message-State: AOJu0YwZtfiFfmsteo7nuC9lGlnJt/C8G53nR84uBGFEq65M/V4Vx7MN
	bUKGHlzetee4V6iUdOJ9rG/x4G7CG8Ml/3TvwaQw1SWq6bMF2aq8Puovi46aoS24xOEzr8HQHoz
	/PEIVY3fLkrttvo/hZ4o0lHWkR9B3Pd9G6DETr5gh/ko0a8TcM8xdd6A7KkNswAAH
X-Gm-Gg: ASbGnct9VJyNCXg+yV1JNGyXh3xp8lFfW7iTpJNLBczitk19UJQD3Dju8JpJEE2o8X5
	2Dorshg57W0eUCMADU4Tpxq1Vp2XRwoRMYUkElzPK0CiJAaKiMZ6mzVEqRu3U0E1kADhCTgeKTt
	UyRGbNnopIonlCF41Jy3JNjfZSkzwO5rRacbkaUj4NwDt+OOM9EGc9JvFKcpRVqL6oj4I2ZM1aC
	kwZo/a5s2PE11GFddt0P/id62BKBvXOPJxZaAGy2LDmDpQvvGAOtv9w21aqQSt04UlN0SEfBLb1
	G2l+EwWVSl3GOvU+FE0A9WfQTkKgsZDSgZvQfrnUYs4rp4FDmaS6XZFqZv21uk9OC376EyvADU2
	DjMcDKU9yQZBuSqNyqbjc3Jc4
X-Received: by 2002:a05:6a00:2388:b0:749:bb6:3a8e with SMTP id d2e1a72fcca58-76bec303a23mr13892095b3a.1.1754389563419;
        Tue, 05 Aug 2025 03:26:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESg1QFvv8hqMydjVjeIPEnGudPbS1WSJiVGghbXmiPTDC16eHCWIdklQfsaZxXv+e/uQi36Q==
X-Received: by 2002:a05:6a00:2388:b0:749:bb6:3a8e with SMTP id d2e1a72fcca58-76bec303a23mr13892069b3a.1.1754389562974;
        Tue, 05 Aug 2025 03:26:02 -0700 (PDT)
Received: from [10.133.33.195] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbcfa0sm12547422b3a.75.2025.08.05.03.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 03:26:02 -0700 (PDT)
Message-ID: <bbbec517-cc2b-444b-b76b-a4930902d667@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 18:25:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Mike Leach <mike.leach@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
 <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com>
 <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
 <b5f8fce0-afe8-409b-b43d-fa9f413cd442@oss.qualcomm.com>
 <CAJ9a7VgZ61oL4LLxKSon3LXsYDtaHaPcGNxW=cwzhSOs3ea1PQ@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VgZ61oL4LLxKSon3LXsYDtaHaPcGNxW=cwzhSOs3ea1PQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RIXHbwfkwvtntGZioUbkoUIrUGUxMq9A
X-Authority-Analysis: v=2.4 cv=TZ+WtQQh c=1 sm=1 tr=0 ts=6891dc3c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=f8PP91cPUXlTVnoGj10A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA3NCBTYWx0ZWRfX30Jr3JMJINwO
 k9hr1TI2mjJI0Dp/XXmx3DfKau6JHEXQmikHT2sVi6Rl9e6pJOdOzg7yCp4/6aosfKdd3Dlewvd
 u7u4rb7b+r3FCCyElWL6cDMHa8lcE+aNbuQNidQ6Yir7V03hgpFCHqu8f591jVXRgvgeLCLp8oi
 mOEh862azzLW517CrPT4tuFW/1Tr1h3Hxk8uKLmFCKQfOHBl/2X4+ndZj1W8IKXFxWeKlczbMfh
 KU6hS+74PaZtNKltroT8IuKC5eMWL75HbkSe7m3tJodfyzqJZxxX3W+9q+ruioOxfUzetiyKAPt
 Mw0n2DhLlhBGAMy1fiOAQ5z/XaYA8JVbCYFu+dfWT/oDSQp6xp97bddQiZwNZbyfb1nwGMs2mSV
 YZDKFABGGzBH0BwNYCnKUUaRXRgen3WGhjw3aD1xGVuLQiP7G2VMhPfRR/4P6P9w55ojn82l
X-Proofpoint-ORIG-GUID: RIXHbwfkwvtntGZioUbkoUIrUGUxMq9A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050074



On 8/5/2025 5:53 PM, Mike Leach wrote:
> Hi Jie,
> 
> On Tue, 5 Aug 2025 at 05:11, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 7/28/2025 9:08 AM, Jie Gan wrote:
>>>
>>>
>>> On 7/15/2025 8:41 AM, Jie Gan wrote:
>>>>
>>>>
>>>> On 6/24/2025 5:59 PM, Jie Gan wrote:
>>>>> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in
>>>>> binding to utilize
>>>>> the compitable of the SA8775p platform becuase the CTCU for QCS8300
>>>>> shares same
>>>>> configurations as SA8775p platform.
>>>>
>>>> Gentle ping.
>>>
>>> Gentle ping.
>>
>> Gentle ping.
>> Hi Coresight maintainers,
>>
>> Can you please help to review the patch?
>>
>> Thanks,
>> Jie
>>
>>>
>>> Thanks,
>>> Jie
>>>
>>>>
>>>> Hi Suzuki, Mike, James, Rob
>>>>
>>>> Can you plz help to review the patch from Coresight view?
>>>>
>>>> Thanks,
>>>> Jie
>>>>
>>>>>
>>>>> Changes in V2:
>>>>> 1. Add Krzysztof's R-B tag for dt-binding patch.
>>>>> 2. Add Konrad's Acked-by tag for dt patch.
>>>>> 3. Rebased on tag next-20250623.
>>>>> 4. Missed email addresses for coresight's maintainers in V1, loop them.
>>>>> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-
>>>>> jie.gan@oss.qualcomm.com/
>>>>>
>>>>> Jie Gan (2):
>>>>>     dt-bindings: arm: add CTCU device for QCS8300
>>>>>     arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
>>>>>
>>>>>    .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
>>>>>    arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
>>>>>    2 files changed, 160 insertions(+), 2 deletions(-)
>>>>>
>>>>
>>>>
>>>
>>
> 
> You need to send a new patch addressing the comments made by Krzysztof..

Hi Mike,

I just proposed an idea to add a common compatible for CTCU device, its 
not about the patch series itself. We dropped the idea and prefer to add 
the board specific compatible for each platform.

Thanks,
Jie

> 
> Regards
> 
> Mike


