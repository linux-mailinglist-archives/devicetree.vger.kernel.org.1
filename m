Return-Path: <devicetree+bounces-224905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F86BC8B34
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 13:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8CD173530DC
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 11:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC522E090C;
	Thu,  9 Oct 2025 11:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fe6sUAEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70D02E0417
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 11:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760008030; cv=none; b=gBJ14ToVibWqRCXuFKg7uXrX8ZqNDqFvuu7zGZfIlMwP6BxmP5E7aOZpNS2ucuP8Y1J8sv3A5/yDmqGJQ+QlWEZR9HoZUyt8MOVISNz0uewko3610ptngKJXKo/RUQL91V533GhG8fpmZQp5vVo0sJDlzN1V/vqVLyt5N+zcfh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760008030; c=relaxed/simple;
	bh=WWubvD43PWZ6o8KecQDz3YIFtK4U6xbWp0w73kFN5Ms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SBmXuzGB4BQLd0knp7AP3KZlVOWt/xMNn1k/n4lE8vw+6UqF+RBgZLfXz4B/AoW/qedzBLle+ri85FhrbTujA2wVcqcsE7xhCek1bkOCMxk6xV/MWWrH2NRgDWC1kI7zRO1szi+pTDnSXSm67sW1Oo6MDVGnhBhmkxNzUIXqJmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fe6sUAEk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EVZE029641
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 11:07:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uSHlKW8ET00Z5qZQeB9H2UAxItDmMS/qKwjutI9tfOw=; b=Fe6sUAEkSIW6p0Z0
	dUwm1AoCXaxT8c/6x1kFuxPe1q5tm/CcrmoUY9XmQX/R4GWxwesmSs5c8TLYyQwu
	bSkyU7FKXgi2rYgJIsH0HJgIWSYNHwu7j4psQRujpRQLGsWzv4FCDJtxLRH+KBND
	FvWpsrQpChnShIzoaN7VKU8hzFKNFClaEekyzt2/iMPWgA175JuyUIySIakVrks9
	gH5lWnPoA1kQa/ex858mxYMJWFaOkDPeE+RidB5pX6+5ryGJCmmIOl6Php6O1jGE
	6bFNwHnPDcZ28jd/Tg53RvasY2eKxXg3hRLXZJGCc4IIjUyADeZmhGGwidIFruc2
	Zr+a1w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ktgy3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 11:07:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ddf2a2d95fso2983241cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 04:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760008027; x=1760612827;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uSHlKW8ET00Z5qZQeB9H2UAxItDmMS/qKwjutI9tfOw=;
        b=ezrqiGaLjeX0ikZDKF+/EJQdgVjyGz4f+v0u0TertVIkaf+c2C/KVlFr4B9bu15N5G
         bN0UmVbKns9gQ8bXLfR3gJ/M1cSDw6L6fFTVcwe5vK1CnSEUBhmOK5op0E0ouApypsun
         1bdSNzNdxuaFvesZ9BVSIaCcd8snVdDwp/H8nX5Z6N/YwkmxYYg8xaGm/oRZtgfG+svK
         pmQ0XPjc23veP2d6vrttWwv01eRiHabLwGNT0ZZJN5ftpmLZVJtEh7gIKOIyd4XVYHKh
         cbm2Dl5qaHl8VqjqSxhNtxhte+g8np1+ZWgxHnMzKfNycYIKXyyFvTeTs72q+KV/kXQK
         J+kA==
X-Forwarded-Encrypted: i=1; AJvYcCUkCQjoJfCSdKOEg/nt7nkxKjJ/UbmLiRcI+4v8GhUzb2kncFmepzkTFI7Dw3lVD9uLpdx+5faq1Aub@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcpx2uU9opwumzYpdIlvcL46TbRnRFGHZgEqSWycws/GXX2I16
	Ab9FITCHTgnSI5lH5FtzJHmJaJ4sklMqjwf3JnYFLz5haktCHkmLHXpjQHvVyLx7Cza1doOQfNz
	gWEdQoGtmMNiD/Xr67npgblnsV8sXdnalSOhq+aAgfzyDfNRtc3CtK490MwGZzgo+
X-Gm-Gg: ASbGnctWAqdhzugIUNaVla5pLDK/aim4ANWhtKTZszrFGrtCJFQ6DrDOpjuEn9wdjwp
	59CHvmr1sIzvXLIX4/8nI3co4Os6Aph+WtYYRPjPZphXcKHJJskIws+nh8nBzche21z6FtHkPh7
	qqTKUnsKB4fnWQQK9LNEK7wp3AqoST/31GTS8chDnW+2CS37KMwtye87PXfV63s2UGOyiKgnzQT
	6vWxhlGyvXYyWIOz6kPZvpXTfoFSqMwcsI2lPwqqgzur45Tl+4DyeXQO9Ofxlg3yjW0BC5VIRKw
	CXMidERg4IB9ml3xJ5g9v3O6UNZaZc6jju3/L6aO4h3NdfqZ1O4meCqcTtfCvIgsvZXkHKom1No
	6fMayGJGiB2n/Y/OSzy2wsuLmLy0=
X-Received: by 2002:ac8:5847:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e6ead5a000mr60501071cf.10.1760008026518;
        Thu, 09 Oct 2025 04:07:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwDbcEzxCyfYTlY0t2P75Vfr1QE3YCjucibBy5M84RFYeL4LsFGeLGBCi7RCwpIHWn/mh2XA==
X-Received: by 2002:ac8:5847:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e6ead5a000mr60500651cf.10.1760008026058;
        Thu, 09 Oct 2025 04:07:06 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83482sm1889554066b.26.2025.10.09.04.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 04:07:05 -0700 (PDT)
Message-ID: <6d898a68-631c-4442-9a1c-237f672e296f@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 13:07:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 3/6] ASoC: soc: qcom: sc8280xp: add support for I2S
 clocks
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251008-topic-sm8x50-next-hdk-i2s-v2-0-6b7d38d4ad5e@linaro.org>
 <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>
 <630bb2b0-0ab4-4083-96a2-9aa485041797@oss.qualcomm.com>
 <d702a630-eee8-4889-98fc-62f4907791b0@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d702a630-eee8-4889-98fc-62f4907791b0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX0bxcqkNA/Gp1
 hE/ZelgwEivA4hftFWt5gSCsaKmSirdBtYCmwnEcp06b6D9pKw4VJ0Ghbe0lsrPqVtPEWUvh/YN
 WwIppTMsG6rKhquDO+zKivWOWd4gqac5QiNlWp793BiuSaNSeKnU8v/I1YTftwiVULDpzY0JfjX
 ZoCzsGPBQ3KpjSqAthpa5vxjEf2TWbLWy7du02CSbKljgNkv+EBj995tBzNk5rWx+BWmTltoYqH
 z7PuqyWzog5X7QFRH+eaQIb9KFHGSUhfU2pqLYnZGFxixGC1cAjegb4r4WaEHgPTv30aem6VG1y
 lk2/KeHmjdeTTExwt/pxwxp4XgyYVZkg/mGeGEKBQ6TrRfAnLQXBzhnzw5LjlEaSJaNIrR8OaFr
 z9VS2CdYpJrogQ/iaIVkI3xtRJiBTw==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e7975c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=GCCr0xkA3K9mKd9kojEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: I85vQ7gXKfB3fvkEFUh3wUdEWNTpTCVt
X-Proofpoint-ORIG-GUID: I85vQ7gXKfB3fvkEFUh3wUdEWNTpTCVt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 11:45 AM, Neil Armstrong wrote:
> On 10/9/25 11:41, Konrad Dybcio wrote:
>> On 10/8/25 8:56 PM, Neil Armstrong wrote:
>>> Add support for getting the I2S clocks used for the MI2S
>>> interfaces, and enable/disable the clocks on the PCM
>>> startup and shutdown card callbacks.
>>>
>>> The rate can be easily calculated since the card forces 48Hz,
>>> 2 channels at 16bit slot size.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +static int sc8280xp_snd_i2s_index(struct snd_soc_dai *dai)
>>> +{
>>> +    switch (dai->id) {
>>> +    case PRIMARY_MI2S_RX...PRIMARY_MI2S_TX:
>>
>> I have mixed feelings about the range syntax here.. it's only 2 entries
>> per and it's quite error-prone (no errors in this case, but it
>> encourages the thinking that things are always contiguous)..
>>
>> [...]
>>
>>>       switch (cpu_dai->id) {
>>>       case PRIMARY_MI2S_RX...QUATERNARY_MI2S_TX:
>>>       case QUINARY_MI2S_RX...QUINARY_MI2S_TX:
>>
>> whereas e.g. here we see that it's not really the case, but it's
>> tempting for someone trying to 'clean up' the code to change it to:
>>
>> case PRIMARY_MI2S_RX...QUINARY_MI2S_TX
>>
>> and the reviewers may not catch it
> 
> I understand your point, but I just took what was already in the file...
> 
> Is my change correct, yes, is the style of the code improvable, yes.
> 
> I'll do my best to fix the style issue later on.

That works, thanks

Konrad

