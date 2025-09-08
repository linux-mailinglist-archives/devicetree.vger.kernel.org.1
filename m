Return-Path: <devicetree+bounces-214260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B98B4894C
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF8343B3B57
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C7B2F60A7;
	Mon,  8 Sep 2025 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eG4sBqPT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122752EB5BF
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 10:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757325622; cv=none; b=bLOGzICbbo39W1BWf1bGPyMTC6ddzZGLQr2wF0UW+V0XqZSojTfsAJ3FA9K1KtfXUvcQdY2XXC+63fe20p8R/6hM2gPc7nqR8xr1sx2dJ+faExC7z21h9dHu4/ZXbFyFgErJCo5a2LkZLDJdBDadcv3I8QWEIHXGiL44XbASDTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757325622; c=relaxed/simple;
	bh=r/waWgH8iFc4NM8oyhtNDxdNdtdlFuFW9vf2HRoSosM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BB+gRMfhguFHp7zEZ23uyTiYpYkSAQUIMf1z6IBZR29B6Esxdxv0l4r6VQE5VtYwvINzH0TYoxt+LgV62Og1/fMe4hUq9y8iYTFJNUEJzuDPAgfBM9xFc8jUxaDZEKdt4yf9CP6q8EVf7BWIA8MEGLg92fSS40+5772ubMbKLz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eG4sBqPT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5889J8Yq003713
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 10:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RtUukMnNWAAQi+BBVchgSoNXaZOrt4o1HkYE4SHkE2I=; b=eG4sBqPTWzYBRCbA
	dDNrzwa9pRYTxloO5rahsbNAwP660TgzsnSZaZLET4gW7JQPwMUEqtVV+4w38AEq
	EN4TgJdoh7QL7cBvX/mp15qeQUbhO8QT2FxCbe9CArGaKEJqQbvZ9W+zvSBlPZjW
	XpJyzgGJn2fQ+CB1HLkiI1lNKZ0cCp6EFdSD+rLN2owA00pc7LEQIm5UH1akDbEP
	fTxnrw6ikvhZD8YSUrx1FbgmJg/J0Ji7gbXYqZ+HjbzILgaCcKGaU0rLVacH+l/q
	sobvTLDsEvii8hf8z4jnf5q80o8gJGssdB/4CURXlUkOrlfhA0OIAcI/3svA8BX3
	NSlXLA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfv2sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 10:00:19 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-715c9cad6f8so6015786d6.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 03:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757325617; x=1757930417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtUukMnNWAAQi+BBVchgSoNXaZOrt4o1HkYE4SHkE2I=;
        b=bzzr4I0KZwx91S9IJDxW9sF+Hc7a4n7EV3cev6Pc5f8e66jDwZqZsKkdLYezaTeKFx
         kL5pZFaMGTfx2gH0z6a08tngodnhYjJ1SSKf9Ed4zMWqEzSHZ1p+R9FoqbcZUA1pgMIK
         2CpnBsG6AG3RVPJnsSUB729Cov59M6l7Ia3tWpO66ojDq0r+IP1jmD/z3aTUmAmmDXpm
         N0LmChFrp33sQcNGlJ+QQwrJ6msqtw6cxB2D57up25QYmGqS5VAzFpdsfvuNCiw80hEX
         K0+rOn5cw2hEm68BnvNNyE/XO9ci0l5mdtFwHjejkr9LlQt3bu+J8bK6s+KUG00eI4gZ
         JTsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0rgptPTFJu5BmOpzRV7Oq/0Ux7Z1QNe+P6ihVmJaAcyz18PIlQdEhO8Zj/7QUntPIql3RmPNp1hE1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9tywknqd19Io8DRTqI9vWy+xHQNGc6HtM5PUzlpE+V9SWR2WX
	DZLKauAjXUPiMTgYXjLvk5HQBrT8Y+y4TsWNIMv3F2jxqFp2lYE8NfHOncVMTQg3W2amBA/mdhu
	Dk0zBglIHRh+B3DI9aueM7iU8zBfWXk/2Bo9Sk2+SIdmnVUJEoBQGWayV2f2qFEjN
X-Gm-Gg: ASbGncvtVmGSItJV9vFlFcsVoqYVk+v3VBgQusE5rCdUyYm+hgH7Drtfa/xxzCvEyew
	JtifSs6Nn8E8Ov2tM1IGkqxY1x30IKVo66CmuvTtayzQyucQ+qxGqMADM5SD5OoyOh7YdAHCN1g
	YUy4offjuCgQYuaEHOSSnGa7nfCqjfdOLoCbF5Qa1ZFBw3zGiKxtYxIKZ1Rs2Gbs1gD5covrBez
	N8F/RmbFAvqjw1OdIW2go13xlPvPloT+XnAT88wwgj4tlSPHzLYF/r68dLFIqFr5M6OHWsMOBq9
	FOQ8W2r6+HxIjJOCiGeGj/iht+FnJpB4r1Nt7Xud4/GRaFYjkP1+AszUhcN07yircGC3AzHgnyk
	Hesj0eMjbSg5U3FObRKa8Yw==
X-Received: by 2002:a05:6214:2627:b0:70d:bcbe:4e79 with SMTP id 6a1803df08f44-739464ee140mr51773666d6.6.1757325616682;
        Mon, 08 Sep 2025 03:00:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE47Hk/U9dhX2DbPG1Fqipq+98Vftq1E+WXGEt5z7yn0rJYJRaa3YNN05gx4rx6HhQF6gkiSQ==
X-Received: by 2002:a05:6214:2627:b0:70d:bcbe:4e79 with SMTP id 6a1803df08f44-739464ee140mr51773366d6.6.1757325616007;
        Mon, 08 Sep 2025 03:00:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b01af44a01fsm2168466866b.23.2025.09.08.03.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 03:00:15 -0700 (PDT)
Message-ID: <1899862b-530b-4a75-93fa-c70c90d98016@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 12:00:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
 <aL6Vp-3er71AJPJd@linaro.org>
 <f508bf92-a513-467a-a946-17c41e1d72d1@oss.qualcomm.com>
 <aL6X-RiCyPVbHlYN@linaro.org>
 <5178a6b1-1b5a-40d9-af40-68ee13975509@oss.qualcomm.com>
 <aL6nZdJCKmnWcswB@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aL6nZdJCKmnWcswB@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mk2lEiJLhyP3v04_v_pj_lpttVBMfW1j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX1YXc6xjS3T3D
 6UJRF92q60iwtDbpDSYpE2Y40AghK8puPIxzHd2bZQI3Nk6dh+wB3Vl4GrYGqiSIa+blcwy2j2w
 byusXggT8M1CQeUfPYw6q6ghDPsdEPQrWOSJ7HZ6G2CCAiBfwNB3+Nof3aUQ3Xs28CBxGf/Tv4g
 1SmjZ41W4g7awjLUtiffi/LXILgdBsn6ATknVtKEwKr8zXqCe0BxvE0SS3snFQ8MS3Oyz3QQL7F
 F3Lw3TIC/Lw+iml83FQK1In3TcE4Z8kHjqt70uYJW3jFQQsycm4yIKZS07xQOcE338kQKQtEz21
 Eva8AJl4vhdrdP+iHn3gCXV8JG/GTtYFk8YtGWHeKPFkpZKlIoFbIwq3OIw+tuZN+vAjuDoMTrS
 heo0VTo5
X-Proofpoint-GUID: mk2lEiJLhyP3v04_v_pj_lpttVBMfW1j
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bea933 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dID3koFHavZth2WqiVAA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/8/25 11:57 AM, Stephan Gerhold wrote:
> On Mon, Sep 08, 2025 at 11:49:52AM +0200, Konrad Dybcio wrote:
>> On 9/8/25 10:46 AM, Stephan Gerhold wrote:
>>> On Mon, Sep 08, 2025 at 10:43:50AM +0200, Konrad Dybcio wrote:
>>>> On 9/8/25 10:36 AM, Stephan Gerhold wrote:
>>>>> On Thu, Sep 04, 2025 at 04:31:23PM +0200, Konrad Dybcio wrote:
>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>
>>>>>> The CCI clock has voltage requirements, which need to be described
>>>>>> through an OPP table.
>>>>>>
>>>>>> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
>>>>>> (which is a value common across all SoCs), since it's not possible to
>>>>>> reach the required timings with the default 19.2 MHz rate.
>>>>>>
>>>>>> Address both issues by introducing an OPP table and using it to vote
>>>>>> for the faster rate.
>>>>>>
>>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>
>>>>> Using an OPP table for a single static rate that remains the same over
>>>>> the whole lifetime of the driver feels like overkill to me. Couldn't you
>>>>> just put the "required-opps" directly into the device node so that it is
>>>>> automatically applied when the device goes in/out of runtime suspend?
>>>>>
>>>>> And since you need to make DT additions anyway, couldn't you just use
>>>>> "assigned-clock-rates" to avoid the need for a driver patch entirely? We
>>>>> use that for e.g. USB clocks as well.
>>>>
>>>> This is futureproofing, in case someone invents FastMode++ with a higher
>>>> dvfs requirement or for when the driver adds presets for a 19.2 MHz CCI
>>>> clock which would (marginally) decrease power consumption
>>>>
>>>
>>> If 19.2 MHz CCI clock is feasible and has lower voltage requirements,
>>> then I would expect a separate entry for 19.2 MHz in the OPP table of
>>> PATCH 5/5? The DT is unrelated to what functionality you implement in
>>> the driver, and that would make the OPP table look less useless. :-)
>>
>> The frequency plan for 8280 does not recommend any rate != 37.5 MHz
>>
>> For x1e80100 however, the lovsvs_d1 corner is recommended to be 30
>> (yes, thirty) MHz, sourced from CAM_PLL8 for $reasons
>>
> 
> The 37.5 MHz rate still exists on X1E I presume, or are you saying we
> need more changes to support those odd 30 MHz?

Yes, any corner over lowsvs_d1 is 37.5, sourced from cam_pll0

> Personally, I'm not fully convinced there is ever going to be a use case
> of someone using a "non-standard" frequency. Even if "FastMode++" is
> invented most devices will probably want to use it.

Not really, there's no reason to make your i2c bus go fastfastfast if
the devices on the other end can't cope with it

> And the voltage
> requirements we're currently talking about here like "low svs" during
> camera use cases are kind of negligible compared to others too.

Again, this is an I2C controller that seems to be associated with
cameras.. No image data has to actually be processed for the
communications to take place and you can attach any odd device

Konrad

> 
> But I'm fine with either solution, just wanted to mention it. :D
> 
> Thanks,
> Stephan

