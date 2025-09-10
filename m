Return-Path: <devicetree+bounces-215387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C1AB5154F
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:18:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D0DC1C82F38
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33DB827B346;
	Wed, 10 Sep 2025 11:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T3ElNoRy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775E4279908
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503087; cv=none; b=uI9Twf2NkLv9wOPUUvTgGSvgMsPVIGFNi+HAJeSuzgkNZK+kcFuKTfnsJBAChhTsEC0kyOJZZ59iQMJ41iMmhW0ASEf0N80C7rmb7RQ6kw1zSAbFAc0vhJdjUhQhpzVJWHIzKgHHs9XjKIWyHIc9hHo6Nc9TyBvL0KkLVu+YL0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503087; c=relaxed/simple;
	bh=h/Ik0PrqPScBGKfMiCGA3HiX8sIJjeasUwHmqyW7Lu4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vk9+SrCE8UCRZi0paH0yV0iNENt4fBMoIiFsMKLUFLzbrxzc9q4GAPfDpCBDxgDAq2NaLwbmC7dCvEnhGpZHREDeqldc9GAIzdDNJGj31Y5hhtZLAXnRhPqafZFrQIHxZHlhVrV3M1C2s/lLOfmKZOa6E88jfLX+eu9o3QobXo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T3ElNoRy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFDoD005609
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:18:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NhKm/oaBZ3mEsPk0XzY2622FMSlrhf1J2meKRh2UOq4=; b=T3ElNoRyp/c3OWa3
	V+9woT5I44SESHpt8MV6jpu7nXEX7nDsB16by7giD/zGNLCQFDTC6qi5EfZUhlLg
	E3kL3DyNe2syMFveByGEyH5nOBbmiRE/54I+QoheeWh0YHJ+VE5xEaUGWx2YcAYt
	kvBnPJC5zBN/THcc1JtIIi4HIR2Zt302wCv+XSmto3CCfpGS+h1/W+NUbwG6TuOs
	7Jels76qhhUm9PTELZ9cPvMdTSu69n87Dg87Wp4Jg+5Nlx03FT+xBYj05ldacjPE
	uJQcErmvKuuk9RfmqbLj3CBpuFOlKZsjj2nddD388vvEGN3iVPyoxigAExc25LPr
	xQKWhA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapkx35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:18:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77241858ec1so6485889b3a.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503081; x=1758107881;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NhKm/oaBZ3mEsPk0XzY2622FMSlrhf1J2meKRh2UOq4=;
        b=LeryO88idyDZjnJEW5pLEecDvzlEGSYmqckeuhTnDj6GNoDoRiSZl5GmgJhrX0g6H9
         hLl9xgALbin2OT2skQGH//ZnK1uypKXsRYedUui61O3L4ADzvGSnXUqfMLzmYR97+Qj+
         o74LQfylaq99U8sVVPmWzmijEgWlrkuTPRGGU3Qy4ihRyY81jboRH/hLJN9Kmaezjrqz
         DFjcbroh+rqyht6r6f9IiU6YjtnPoJxyF9qFe5APfYsmRM1Y9ylxR1aLGj8aRlVQbmBa
         gNN4fePIhLxdnvHBmyzUYQbdwLu5qaBU5MWBNTR11Ep762D0aBP7X7awVKNdavfo427V
         Tj3g==
X-Forwarded-Encrypted: i=1; AJvYcCWHzaXXWbIPf9FupCdFXtu1b2FsUD4WPVtGBO7gFWcXERv7C0mC2QJMoHB0vOa1yKlG/xgGEbooiYKD@vger.kernel.org
X-Gm-Message-State: AOJu0YwMry/Cx+/RWUWY0c8KfMMXhozx6kXz8JPHjg+THpI1KL6IwSSv
	RLRDfsB/9IWREnvbIMaxNKKQ6J1+Efa5kdC2zunsvEXdZd9v3yQR+DOj10XxiBfaCM/eOf+nA2L
	ONMgpKrs148p9D2ZFfGn7qcs5YIPXg1zCUww3N6Hw3KhtX45pg1CgUZmhSn+0ogMj
X-Gm-Gg: ASbGncuCwDstgP+HxgvX9jWStwlShnsExBT0vmxaJchR4VXAb420czQ6u4E7ttW4H9U
	rdJu2bd+lFlyXI5nRAlN0CMc2w7sNnnmT8HHkje/cm8bRU0L06OFiyCYOXGFvX4xLRvaCMfpPs6
	PmMas29nuzdOQwSdZafCN5C/3jrRG3mKKlzJDuvEMOlgnxbTFo3zPjopFeuKYk91E5QZ8LAYHuh
	Jg2+43fsn6ZP7cNfAx0/geNA9QUE7WPVDiedbIYYU74+e5JN9vOHYZBxMwHKVE0Nix+x+y9bqdg
	ST/PxWL6i3oY6he6grWjgfh2cTNssMc7eAwHwiYAKXRuszaRYAdlH8dICKT+DUP3PyZeCFb2sb2
	86g==
X-Received: by 2002:a05:6a20:728f:b0:249:824c:c60d with SMTP id adf61e73a8af0-2533e8532a2mr22929843637.20.1757503081329;
        Wed, 10 Sep 2025 04:18:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnc6VtP/lNIoPuxQr0V1E0W1udZTbdHFQEsB8FXlg0iy1ie0KmwDB44W1EzlUeQ+BUVyKU6g==
X-Received: by 2002:a05:6a20:728f:b0:249:824c:c60d with SMTP id adf61e73a8af0-2533e8532a2mr22929798637.20.1757503080852;
        Wed, 10 Sep 2025 04:18:00 -0700 (PDT)
Received: from [10.92.178.42] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662f2fd4sm4875868b3a.93.2025.09.10.04.17.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 04:18:00 -0700 (PDT)
Message-ID: <4c6e7e6b-2ef4-4ea8-8bf2-26c7aa8c94b8@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:47:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS8300 sound
 card
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
References: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250905142647.2566951-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <43090acb-ea36-4015-b14f-78d44d789d42@kernel.org>
 <a9507045-b900-49ee-8841-0f8fd30816ba@kernel.org>
 <abc66798-dc91-4860-b0b4-de39a58b5745@oss.qualcomm.com>
 <a8dcffa4-c578-46d7-8fdf-cd4f5a29a2a6@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <a8dcffa4-c578-46d7-8fdf-cd4f5a29a2a6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c15e6c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=gMGxrbJpmBSKcSsSh8cA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: WqnKuCQiGua6uHLXZqy2AgSzI1vKPII3
X-Proofpoint-ORIG-GUID: WqnKuCQiGua6uHLXZqy2AgSzI1vKPII3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXwjJJ2NHnMbj8
 JW78bEuWWaZG2osL42Wq4JiZ9Uh7PugvUcApzvjj505ecoCgu+yd7rzoCiBAZGu6OxlpU9S3qJc
 DFHORMM53jH31TVC5Q+LmwJjUSYqRlxvJGN9irV9lPO0gbQkzE2juVvy6xo+A4GiyOKGhI/WVJ1
 1XDVH6jFFwiaOs/GfIn8ehaIc8hIQPzRgHqHsHdx7q5vUyauD8U67CkFGSH/QhZ0+jvLcvIbeRx
 7ZmczfWTg+FBx+OhRe6dTwLjNKtRwFe9OEDgyMDDeGeOk52z0rhjnq2f59E/zZUFWVoX8jHcqT7
 IyMz0UdRPz3hoj8fXAUi9lH6YCyj9d8Egp/hpiwq/RCTzwsNLDA5oAMAlv821XDxqGDFRWlZUcS
 ufE0wthk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000



On 9/10/2025 3:13 PM, Krzysztof Kozlowski wrote:
> On 10/09/2025 10:05, Mohammad Rafi Shaik wrote:
>>
>>
>> On 9/10/2025 1:09 PM, Krzysztof Kozlowski wrote:
>>> On 10/09/2025 09:26, Krzysztof Kozlowski wrote:
>>>>> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> index 8ac91625dce5..eebf80c1d79a 100644
>>>>> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>>> @@ -35,6 +35,7 @@ properties:
>>>>>              - qcom,qcm6490-idp-sndcard
>>>>>              - qcom,qcs6490-rb3gen2-sndcard
>>>>>              - qcom,qcs8275-sndcard
>>>>
>>>> So what is the point of this compatible? There is no user of it and I
>>>> think you added QCS8275 for this case exactly...
>>>>
>>>> Shall I start reverting commits from Qualcomm because you post patches
>>>> "just in case" and turns out they are completely not needed? No single
>>>> user of such code?
>>>
>>>
>>> @Mark,
>>>
>>> In case it wasn't obvious, please do not merge the patch till we get
>>> some clarification. For sure it is wrong one way or another: either
>>> incomplete or just duplicated.
>>>
>>
>> The device tree currently uses qcs8275 as the sound compatible, and
>> the corresponding Device tree changes have already been applied and merged.
>>
>> Reverting this now would break the ABI.
> 
> If reverting would break ABI then:
> 
>>
>> A new device tree patch with qcs8300 is currently under review:
>>
>> https://lore.kernel.org/linux-arm-msm/20250910044512.1369640-1-mohammad.rafi.shaik@oss.qualcomm.com/
> 
> This is ABI break thus NAK.
> 
>>
>> Once the machine driver and device tree patch with qcs8300 are accepted
>> and merged,
>>
>> I will promptly submit a cleanup patch to remove of discontinued
>> compatibles from the machine driver.
> 
> So this is the same hardware? Then no, we do not rename compatibles.
> 

Agree, the existing compatible is discontinued naming convention,
will remove existing qcs8275 and go with qcs8300.

Thanks.

> Best regards,
> Krzysztof


