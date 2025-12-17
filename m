Return-Path: <devicetree+bounces-247413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAACCC7A3A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A82A2304A8E8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 622BF340279;
	Wed, 17 Dec 2025 12:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H1A/aMKO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RSVgiqoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E405C2BEC30
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974690; cv=none; b=BzkKVV6TNeEPe9wOMvyRXfZm9TEZbuennuUJ+gJacRw3fSiw3QLt6ndjoQsZBeAsI/wTsp5hajfbqFS7mgSxInAHRx3T1XrSuUB0eSq7snw47Ezxw3HnygQfNE1C2vptcR4AO33DG8X7p1NNzLepwF5pbzNSv04FC+0VVXkMTck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974690; c=relaxed/simple;
	bh=Og1vTzxo1VEPryszPDx7NB7ozDjtL+rd6kkeIknOlzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s3q9Tiw8cRf58XQoQSFk2evb56VobhhmXq+jswJGDVPkWD4QmneZh4eb8qpRbihwwY+7ROX7UAiWuIaEc+TDfMI0ePeefeiGeO3UVqN9cKTDgX6CxIeDx8WR6a8Ezf0GlnsML2wNowzG0RkadMKNdxWD7LhaRBz4dK08mSOF5QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H1A/aMKO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RSVgiqoR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKwsD2684181
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:31:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nxVppHwCu+8rzGZFO+lxpcmtmdfr8y4QCMH3zpU7R4s=; b=H1A/aMKOhk/+gM5V
	mdApKa3vGivdomtYsqENHApdIbqjY7Tuy/zC6Vl9TqwQNDkpmrdRW/HgVnaMNqRJ
	5vB5KXP2X3D/HtzMTavuPd9BWDda9qAfH4VbJzv3zqKomr0XwOqReMQK43TSJvdp
	gMtHjyv/LmFlN8ua1ASvfTXDgsACSV04uCauTgSV+nPLkXPnBmABMkVh97mzCaL+
	bCHi65VwY2PYWBzUsa0oGwR5KYP5SFW9fREAZqEkddqspy9f7hu+9npIV+stBNed
	AuiQUadRg1SfGv+6E1jlFobUacL4uUOkOBumYa7GkuYR91e6L1AtkK4SUywddCzO
	f7HgFg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3kkessmv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:31:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee07f794fcso16907511cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765974687; x=1766579487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nxVppHwCu+8rzGZFO+lxpcmtmdfr8y4QCMH3zpU7R4s=;
        b=RSVgiqoRa3Mz7ZBHjBVzeG2Zsnzjg6R+VCNx0qpwNcCX3FlNySarUl9xicFlwjUhZt
         XVkSybDqxmv9Z9L1NGlVMoNjsIM4Z6oxD0U4ZjkFOFc2N+/aQcJVdyf/mVNY3uNx/ENw
         cp2xDqSf6MuWiRBGwfXtp19SxhmllbZ7eIDO2V1C7xnURqdaJ6IndLO5i/XzKB+V5CkM
         yqL5qwRn4L1kBnW7nIYxac7py2jMBsc2YSbZSFldlh00ZrkUHAp/Lg38O9Hb/AF3vxGq
         a0tHaCj7NU1hExXyi3Ljh4sy7g1JLpdLkfFo5wE1hHiptVbLN0ntbFL+2OPRlpXX7pJF
         9/jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765974687; x=1766579487;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nxVppHwCu+8rzGZFO+lxpcmtmdfr8y4QCMH3zpU7R4s=;
        b=HuZtp1UIY2oACB+OdLHGwXNLiyRM8EqQUoszhxm12+4paq9dAYnV8XUqjdVn8dZlF/
         /9R9iJfmCDQTAAE3gOqY1o4EkzsSFHLczRnOlW6tJjZzmZVsNUDDFyjtjD7Wvq/DBr/u
         9nrwioshzE6zITYBRC1k4jK6hTv88smo7x9CW3TeVhIUr7061ujNL2q4CMqJRuKAge7h
         5/O/h6WN0HUFNB4CKp1CWRbKimPuPKb2akZ1LAMxl+ZkqYlqplQjYn5zpvBKdAtH4/TG
         9LfBQNFMsSdozb4RpTHZW2i+x66PNxOb6u43jUGDMsZlcmuzLCZsAh/wvBP9dCe0mJPE
         zXGg==
X-Forwarded-Encrypted: i=1; AJvYcCU6SBT6Px/3vMuLbdIZxXFRS11DuwKs7eAiDk8mtZsSPGAU9ibWJA7M6Zx+ZEoo9TsATMLFhMSTSGZ7@vger.kernel.org
X-Gm-Message-State: AOJu0YyfcSihVYbIq82FvY09N/YavQHT85p4Z2gNHihci0LfFIxoTzdb
	qodR7OYRpT846MhTjDoeZO0M8WJXPzCTxc/zbn/4Yh38IVHk6GO293wSonlDkvzqNy1WXKLsCQG
	95aGIOyQy+x13Ypb3dg4z4nCPeniUzIZnFSnG/ScCAFkZsRWg0H64SM3Rcr+lM+fi
X-Gm-Gg: AY/fxX67Wk9xhkrTSKatBlhDCgycU/i64hZU4V7oHwUhXViIV2R+fAa72z5uSkTMpon
	2WDfbJi17nO9+bdYxaw9vdMfaVbYcLjOv9sc7p/q8o1rUgPmljri6T4vMW/ElnnQZ//o4ARl6wU
	DykFAJ2VHJq8oSvxzuqkrrdcQEicN+Vg9ZbDjt/gjqT468BcrhtTm+zKKMzt4e5XMMz/lHJiSlF
	ZspSTTbYS/rDFEF5rxLbv5IQ6aEiANbDd5beZfJK6JL9Pvg4N1gyidkXauo4SRhpvyWFsijqRjK
	QfgE8N7zNLkpJrNy94mZ3NM6PxG1/WU9x8przeOMiGczc1gRdceZMKnSgHfZAxnC3Gw3DO/rM5H
	UoCJxQTwpt/nCM9UEC6Oe8/Opk6UASC4vcuPXVxMLtpvsrK4FxFohQMhtcB4YqKLviQ==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr187452791cf.7.1765974686664;
        Wed, 17 Dec 2025 04:31:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnU9DbqrhK2XEvuuPlNpfpmPEgKFxchCz9pi8QCpDey3PqjG8IsmXy18lP1a+VjNcjkHkDyw==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr187452261cf.7.1765974686190;
        Wed, 17 Dec 2025 04:31:26 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80013c7ea0sm321246666b.65.2025.12.17.04.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:31:25 -0800 (PST)
Message-ID: <7e1b7b46-f4d6-4028-8518-80e954dbb7cf@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:31:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <9141e67d-2837-4e73-bd3a-9a9c5b8f72f9@oss.qualcomm.com>
 <d087dfbc-fcd9-4f01-8cc4-b206c2e87f28@oss.qualcomm.com>
 <6dc39f3e-0a2f-42ca-a088-4b62a8153001@oss.qualcomm.com>
 <ed4b1e3c-bb30-42fd-a171-12121db2dbec@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ed4b1e3c-bb30-42fd-a171-12121db2dbec@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NyBTYWx0ZWRfX8JFV4tVgjIA2
 gr7q4P3LWxRZK1T++NYSQLUOj0arU/5VkG0FhKKPusaynlv1fBoRDxnKeb4MKxTLHAcPGrgQAC9
 Af2RslFLnnCpPS6Gp0Mm4m5MLcc6PuL7RUOQUEv7yprG5A8EcGq96FLI6zmASZxZJGgyOqEZ1+H
 2zU8BGHaUoyrgbMlSPKKg5Z8BT56ylh/Ssa6xmMPVAAEhhpisTQVFiRwBmqbQrtIw7N0iCWdJTa
 LpDp+KPh2xRLK4jUUZ25GNkW5iI3jKVE5Zj8gBUz6OLAoqWlh4mOaIUchr14T7HDQOGXP2mF35n
 nNY7yOKO16Qkre60ICZ3HkghyD6lmZr8OmxTnerj/FGO9RCfcte1Ya3duyAzVV7Yg32kY1cC68r
 ckazzyLhbRZktocXHzdb4gaXPwlCBw==
X-Proofpoint-GUID: 0_TGTc1t6NuH-E7NkqwbTgOLCPx77kS3
X-Authority-Analysis: v=2.4 cv=Fcw6BZ+6 c=1 sm=1 tr=0 ts=6942a2a0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=trE_h3K6eqWXygPE4hIA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 0_TGTc1t6NuH-E7NkqwbTgOLCPx77kS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170097

On 12/5/25 3:05 PM, Akhil P Oommen wrote:
> On 12/5/2025 7:22 PM, Konrad Dybcio wrote:
>> On 12/5/25 2:41 PM, Akhil P Oommen wrote:
>>> On 12/4/2025 7:01 PM, Konrad Dybcio wrote:
>>>> On 12/4/25 11:13 AM, Akhil P Oommen wrote:
>>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>>>
>>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>>>>>
>>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> +			gpu_opp_table: opp-table {
>>>>>>>> +				compatible = "operating-points-v2";
>>>>>>>> +
>>>>>>>> +				opp-845000000 {
>>>>>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>>>>>> +					opp-peak-kBps = <7050000>;
>>>>>>>> +				};
>>>>>>>
>>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>>>>>> or mobile parts specifically?
>>>>>>
>>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>>>>>> here.
>>>>>
>>>>> The IoT/Auto variants have a different frequency plan compared to the
>>>>> mobile variant. I reviewed the downstream code and this aligns with that
>>>>> except the 290Mhz corner. We can remove that one.
>>>>>
>>>>> Here we are describing the IoT variant of Talos. So we can ignore the
>>>>> speedbins from the mobile variant until that is supported.
>>>>
>>>> Writing this reply took probably only slightly less time than fixing
>>>> the issue.. I really see no point in kicking the can down the road
>>>
>>> We don't know the speedbin fuse register and the values applicable for
>>> this IoT chipset. Currently, there is only a single variant and no SKUs
>>> for this chipset. We can add them when those decisions are taken by the
>>> relevant folks from Product team.
>>
>> If there's only a single variant right now, could you simply read back
>> the value and report it where necessary to make sure the internal teams
>> are aware?
>>
>> There's surely *some* value fused into the cell..
> 
> We don't know which register to read at the moment. It could be the hard
> fuse register or some soft fuse register at an arbitrary location.
> 
> It is better to leave it as it is for now. Who knows, maybe there won't
> any SKUs at all.

Please don't take it the wrong way, but who else would know that? :/

Konrad

