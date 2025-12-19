Return-Path: <devicetree+bounces-248216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BE0CCFF0D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBE06300A9E8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4254631B832;
	Fri, 19 Dec 2025 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XGnJGFFI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QQIdgql0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E9A31A56B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149199; cv=none; b=AtX8wP0OOkQQhCTjZGC0G4kB7qvED912O5ffqN30xnzr16klM1zsrbz/g0u0A6fVYC1iAjrhgQEuOVerRW9EAQM4q8xPTvM9RBFwMidEGRzT1/whYRLqup9ABi62e2+Lu2L2NiiZjpdQ8zRiz15sQfaFDko+UnqxeFewri9LzNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149199; c=relaxed/simple;
	bh=EOL6PQ/u2G2IGnbiEjczbalUkxet7R3Cs0ByyQPY9VI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZcE5rVmh99g8oUqvMw4fUlUJ6ffAlEEoL5wMDqF8OFMLfvdAP9/Ibf+dQ1cy6sfkuHdcfX+fG0rDLuZYcMwFksCsmS+i7BYM2863HW4c06mPhiPIFJE5riBYXDmXLRmKAI//TUDyK8DEkGHSFVfOZzoQCCKXQ2d0GXX2geNKWiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XGnJGFFI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QQIdgql0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBIYoM3559594
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uDatXU9sVuQNjMrgEpskfEj2cmOKOLi/Cc2zxJakF40=; b=XGnJGFFI6I3dFl9d
	/9drXzoH9V3S1c6bE63XRIYZ5N+V0VFjmEmEtNw4RvBGT2/PCPRiFr7e+xPpqjyj
	3nVobtuOcct9JEuyWu9ljw6Y76fvB3yECtocRJfd0jQPdiMDzZPO3HkjpRji6iuA
	Ms9qza35JYlfxpnXo90yErUUtpq7ari+Az8H/WsTIy8eLZFMfyJ535kvIfM/Yv3A
	f8Vw/RrC7Z7pBqE56UXvVj2XBiPlWQ4HPAAhDLPamTCOPwYhpakBAfdvPzMXq4Jn
	G8odNBlIRKMKfsVdwttWJTubR504OL5Z97cAxGMFUOAaHI5aq8WDbxKnOp54cKJr
	Wh70Ow==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2caqk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so3208061cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766149194; x=1766753994; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uDatXU9sVuQNjMrgEpskfEj2cmOKOLi/Cc2zxJakF40=;
        b=QQIdgql0EwiRjopReM5G/GFp/2IZFtHx62ki0QVcBOnOA9eJborzIuFze2I2YqfHkr
         37/WVuYYYTIMxB0+tpjeUJ+PQ1iSqXgz2D6lb1OnF9hClG2WKh7ZGt5DmD8PIrfkOlPk
         VvPRD6KxIM72FjA2JtVXl1/P0mNQVHlK9KrQMG6EDwEce6np/vTYjGo8KcaET5HcqlS9
         4lUfnZ4i5IBkTQCOTGorJaW7QcltMX/W9ab87EnoQeyUGlamnee3DxrahMEmJvdwBQLi
         Ar513PaOKr6PIL8KpI1PROZ6rwqdgiMOnN4+rXWrSC253Ft0zOo7sJU34UIfkUuxf94a
         XAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149194; x=1766753994;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDatXU9sVuQNjMrgEpskfEj2cmOKOLi/Cc2zxJakF40=;
        b=CiQreRYO8T0rRD5P1iMSdlebD3JV4aF96IL+lA0JT9Qwwj0t4DYSXIQH16XYRw1ZT1
         wJnG9Mac3qdZL8mf+bMPg7Gqvf3pGy/z+0V/KClMGlTka2Z7VmAx0Z4RlKejFHFg/0kx
         YgJj2n/HGktjx+D0JeFixBsPeO0GfwttvnPkZCGdkFjZ/nTMGWht+Suu1f+2Sxl5ySsf
         6wdMMHLEPWX+xBeoD9opGuaczssuEH2hYw9InaClLcndUI+hFMzBm6OSQN6gZe+5nHbw
         YoCqNme++CFbduAE6krRWL8ASoI1HXO2IozCc3cvKIZDcq7MDQeS/46DzrRZ8q3b+PAl
         UJEw==
X-Forwarded-Encrypted: i=1; AJvYcCUWUR8ysH7eW2expAbNXBdJ8NZ7gwXQCae1rawWwltG2Q7rytJhBv6s6xk5kfKjJFBg3J7sWGudabeV@vger.kernel.org
X-Gm-Message-State: AOJu0YxUuNs4KK4V7DYoBwndb6P6CmrPSwXH7wD0ObOsMFsPhodGKcUb
	zIfLkObl54IfbZ8ty6s8r2vteYQZu9NOxspmAxJ+B+2ftm+H6l3kKKXlTsEQtRzJgd4gsnqJ5Rw
	OlqyUE2q/lI1URIFWw2goF6ZQWApT3XApF044p0vZhTPpUR0EqD4mYLy2XO9oZr81
X-Gm-Gg: AY/fxX54iMnNG7GBLwVhMdyrg3rKgxG4FDJtwxIavZrwzdysKPLyo3VxRTl+5QdAmJj
	UEiKQOCTMGeMjGTRo4qB9r0G25IkIgIGKmDWVG94a3+i/wYIgmi5r4lobBHQcqewelVb1zpjods
	fTF5BBpMRhroZwMlZY935pT/ZsSwOzkGOhlsA520IxFQj0hvoQNJIBrM5qzCeK72cy8VL76bUVh
	rMXxrOP9slDNLonWXWDkt1bRa/S1E3l3SNxr8kn/tvYNN12cQMcOkX50HjDFeWN8lAaU7TqDy32
	ADOdiwJ5Ysaw2g6L+hq9BYWr8fJq0ASVpkhXi9fcjg5VvGvUWiaNNZmRaIElqa+DVmUIwJlEESK
	PQLzGP/i+cJ/6fIr/nahXpyzhHsNKHY2veBhfXrGTj/JXAJ4NinORmvn90YUDSNn+nw==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr25245751cf.11.1766149193654;
        Fri, 19 Dec 2025 04:59:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjcthfl3sxtdcKpBgFJkGHhbCyHkIuhfXhbLOo69LJeriInHWrUVeKj3LisrSYtdhhwb9hUw==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr25245511cf.11.1766149193156;
        Fri, 19 Dec 2025 04:59:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ae9556sm232741466b.28.2025.12.19.04.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 04:59:52 -0800 (PST)
Message-ID: <e6b2daf9-4bb6-423c-ba4c-593f2ca04ab0@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 13:59:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio
 playback over DisplayPort
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Abel Vesa <abel.vesa@linaro.org>
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251217120051.98198-4-krzysztof.kozlowski@oss.qualcomm.com>
 <2d4953c6-184d-423b-80e9-871c6e00da35@oss.qualcomm.com>
 <564732e7-2c86-417d-8568-69f40ea7d4da@kernel.org>
 <47758ce9-5ec6-4ed6-9f84-13cbdd444d75@oss.qualcomm.com>
 <487ff592-e67c-41c8-a398-f79aa6e5f69c@kernel.org>
 <455edd55-132d-423d-b0c0-afc7fa40aa30@oss.qualcomm.com>
 <267dad52-0f22-4e5b-a929-a77cdc062490@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <267dad52-0f22-4e5b-a929-a77cdc062490@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cpSWUl4i c=1 sm=1 tr=0 ts=69454c4a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=dyGxTdY6081K_zEpinIA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwNiBTYWx0ZWRfX4XCrMyTazd/Y
 VVL24gNiFrtN4tOqBxp0s/u2DVPhOwYnzno8/8JcSnLo+T7P5lvGV5qdtDaiWkeYNIJ2cuyTF0Z
 xclj/9IncotATS044TnE72/V6nE3oZhkZPBFO5qKTWLoIDx/+PfjbUYk/yZ/bY0jlsWbOtR3YC8
 Wg2xKfb5Bh3YEZyf3HHjh7lKCKc51dqC94H0lPIFDlLFTgRD1HG+T12h55yRO+JdndqppxlAoBt
 ZiyLg/r1m3LcYV1RX9VLYgZ/h0AUw6CgAr58KmR1NqIRHv0jsl1NQR6ciOrZILTRIJnR+6FEkPG
 W47Za2a1A6JZBDGSMnyYa8PSbdmMdWGpYJgJ5qFJYvsp6vpfXJSZSasc2IMsxiem0XmLbrbQb9e
 ScY3oyhGZySLC/3Wxn77Df1p3oK2LctWSXiEE11n/dcgPUb7O6rKh+lfJffQs5ME5bXYAX0ODDm
 LPILz3v/4sLLYcRIM2w==
X-Proofpoint-GUID: mkg9G4RVPWV8v2ATLzOHGTNKRJucn8bd
X-Proofpoint-ORIG-GUID: mkg9G4RVPWV8v2ATLzOHGTNKRJucn8bd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190106

On 12/19/25 1:57 PM, Krzysztof Kozlowski wrote:
> On 19/12/2025 13:53, Konrad Dybcio wrote:
>> On 12/17/25 2:00 PM, Krzysztof Kozlowski wrote:
>>> On 17/12/2025 13:51, Konrad Dybcio wrote:
>>>> On 12/17/25 1:38 PM, Krzysztof Kozlowski wrote:
>>>>> On 17/12/2025 13:33, Konrad Dybcio wrote:
>>>>>> On 12/17/25 1:00 PM, Krzysztof Kozlowski wrote:
>>>>>>> Add necessary DAI links and DAI name prefixes to enable audio playback
>>>>>>> over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
>>>>>>> should carry respective DAI name prefix regardless.
>>>>>>>
>>>>>>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>>>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>>>
>>>>>>> ---
>>>>>>
>>>>>> (something's inserting a \n before --- in your latest patches but I
>>>>>
>>>>> No, it is not. It was always like that and only recently git started
>>>>> dropping it, but it is irrelevant.
>>>>>
>>>>>> don't know if this is a problem)
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +		displayport-2-dai-link {
>>>>>>> +			link-name = "DisplayPort2 Playback";
>>>>>>> +
>>>>>>> +			codec {
>>>>>>> +				sound-dai = <&mdss_dp2>;
>>>>>>
>>>>>> How does this work out with fw_devlink?
>>>>>
>>>>> How is this related to this patchset? Please stop nit-picking irrelevant
>>>>> things.
>>>>
>>>> I'm asking whether this is going to break sync_state because you're not
>>>> enabling mdss_dp2 - I believe that's a fair question..
>>>
>>> DTS description is independent of driver, thus this is correct code
>>> regardless whether there is interconnect involved anywhere or not. I
>>> don't have the answer how this affects interconnect, but I see no reason
>>> anyone would create such ICC path - between hardware and fake SW construct.
>>
>> sync_state isn't exclusive to the interconnect framework
>>
>> In any case, could you please confirm/deny that sound still works as
>> expected with linux-next/master + this patch alone and we move on?
> 
> It was working all the time - I was using it on my machine for 3 months
> already. Other people are also using it, because it is part of our
> laptop tree and no regressions or issues were reported.

Thanks, all of my previous comments stemmed from the worries of
side-effects of referencing a status=disabled node

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

