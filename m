Return-Path: <devicetree+bounces-248961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E521ACD7B71
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 02:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BAAB5301F00A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 01:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF732248A8;
	Tue, 23 Dec 2025 01:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bMnzTWv+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NKYNvFsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02C557C9F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766454546; cv=none; b=TGDIIMsp9/2cLEJno3QtDhnF4SYrq5MbpfbnWqTH7VCxNTMUp3jIIYd2iXLQj+tHjDUdyTsvDqyudukMQoXvAjQimZjXmQi+jxZMFYcTnvgVmdYIZoxfW4gr4+Uxjgy882OhpyTdL1KrXHd+GCf6hroW6GUQZqYUq3VLd59sdjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766454546; c=relaxed/simple;
	bh=w11abjTlgWADZv9k48T/N1jHnNoqdhfpuMdvMe6vgLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FheguwfEKqWVgfLy6ikkAE1nAs8mZRXKP4o6CjfIWWOv9caRfd6lbOkk/glz2WLsT6G4gj8MXyoX/cN1/PA0pnI442Q8fk4gio07wcKNciytOQYpkShPvg5vCobH+0ZtTmlXyweQ1S58FXglRs32VCvRUnrFEYhJ4pwEXocF5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bMnzTWv+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NKYNvFsZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMKDkWJ2115198
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:49:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BW8rbvpMfVR+f032rL3RykV3WSD2/R1qKsif/x4gutA=; b=bMnzTWv+RkuRjmEw
	eZSKKUvK1g/dZLNuJ5WvRAWa5yr31dHOAXcvtNVw8UddfczPmBZKzivKcVLp2rwf
	xLSEwcJFh/33GzCrqnCnlHSf8BDyq8Wz7dKDxcIjJ7ICRoHtCflxIoOPjTwHkua3
	C6K+C9Fizyzx5E5NT2dGu0lJ54OLOlH3Pzq28/54rXoSHQr+gxHvwtD9Om9nSaPn
	2S0YXf72sVFQy9V/htaWw6rP8Jv3cJ8opkug2QpoPvG8g5sHW24Gs8le9zz0mYA8
	UoxLHHmw/415jMijRLr2XVYm9tLFxaoTvlkRHHa6+t63ZdIMB8N56/4OCGMgwlno
	zwmMkw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cudgpt4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:49:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f4822f77so121336945ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766454543; x=1767059343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BW8rbvpMfVR+f032rL3RykV3WSD2/R1qKsif/x4gutA=;
        b=NKYNvFsZTMq5wWKCFf2iAovFR8mPEf/dr0dxE0VPEmOBxGr8GulWb4BzgoWnuwSkAH
         aJRiH1oLq0ccgllnv/kLDwBb9H2nPRDs82N9bI3H8iqp5nwlsYqwnZ5DVW/QIpYWBuES
         zhVuNvj7B2zCjTFE1oaSN0aB38tVkxkCA2lBkiHHFF8sRQk/8Lx/MaHqwhvUjCqbaNFs
         Htgo0m7N9Hq49BnL1S0sXEIMXmcwQ2R7J9pkqTYd2VJaJHjpbGkzb66APuw/TB+S0woH
         DkNY0tkUpO4KgdVq21BLofqRDHml9l9Dy2RK1sAIdkITmpOWsEdM1sxuiPCHNJWYLNOZ
         s/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766454543; x=1767059343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BW8rbvpMfVR+f032rL3RykV3WSD2/R1qKsif/x4gutA=;
        b=RFDp7l+9rPWexSHMHv0ZHSDu1C7XiY5n7LXcfw+gvYdmMU3m7i/kwKcw8sXnVu9oOq
         pmiV8OQyAphuYg+kmo1IbvtYTu2qmABUcav1MIrmajgNTnRq5mKiFBEdgOYITn97/I5G
         vjWHYI/39Ml0G2kZ4fJTP8iemjudS2bzu/C7/amtLf9py+Ys4SDdP9hUXH6DRFOr0elD
         Gf7TE5tp+bspqJPyFDaCI3yNzIyb6HPgWhOvxr0lcr8hiO6S83Wrk+L5ygdunPOIgS9u
         tNgHb/FJfLlKXBr6zJwQiZGDR8TX1pHuP23AkN52UsGOUuc1XUeH1BMWbU6qEkTTZ5lY
         oubQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAK+oEE4Y6clC0rN+KczOAk+V3qbGpz/wAZk1BWYVXj+JU9oB2pPoKbz9Gj2YwqsgsW1bPwypKVQMs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5hcKcB6fdOWrTavApLzC+BYSjHf+JgLctfnHKLcrFIjV1RJqC
	yD4Ocrnw1CagRlDpgJQloEZmd3/lt4xzTArxntc03XqtaRgYcDWS3PZSsmtF07z/wXXbYftbyUJ
	uGF5KQqanIlE/XfX/mgUovDde2NTywmc5+rppWnh1M/K+xyRPUVJp56N0FEiO/Zcr
X-Gm-Gg: AY/fxX76dBZUnMR+OUwSamNS59npmaITWNBUCWdmTcET5yIoFNcxmrNtk9NHfofYpBq
	UlCpvnHcODqk8yQ6HqIIuUN8oKTukqpdTyTH2crQji0Du8WiTwzptaEQQ2/j0V2QQGrmk/JUnTy
	tQnEi5ofN1i4HSW77lzNl+Yg9vX86KQ4uJbeT+RFGoxLhJ/vz5C7TM5rHYKrJAhTnAw2ASQJD9i
	gWZYw1lUOMOnxY9ZAumBEuWZVHWOtigpLCWjc1TcKlwgpcr65YItNW20NIFnSKm/xUsNP32gYcc
	lgmMTHeSAgk+NgJc0Q8ZhNQtJEnEnnUTg80bCW16It9AmTYo7EUgXj66xdcizp4uPw8JP+AhSRk
	cDF/NU8Ba3YlnDcwZXVxF2T7g8VYwYMxHFEgMr5Mz55LVH+qTQg1AtIgcEPCIWRl5SXzz6ZiPBd
	VF
X-Received: by 2002:a05:6a20:e210:b0:320:3da8:34d7 with SMTP id adf61e73a8af0-376a88beb87mr11460611637.22.1766454543282;
        Mon, 22 Dec 2025 17:49:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZp1iCqub4YEnfsj6zxntO/vfz/lLcVOrz1xhaJ4egypRQr4EQUxgsIUZ2JQA7cLmJgrK2DQ==
X-Received: by 2002:a05:6a20:e210:b0:320:3da8:34d7 with SMTP id adf61e73a8af0-376a88beb87mr11460598637.22.1766454542828;
        Mon, 22 Dec 2025 17:49:02 -0800 (PST)
Received: from [10.133.33.8] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9224d9e5sm11174842a91.17.2025.12.22.17.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 17:49:02 -0800 (PST)
Message-ID: <fb576893-aa2a-4e7c-9c3a-1bda7e849412@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 09:48:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-1-yijie.yang@oss.qualcomm.com>
 <20251222-daffy-hummingbird-of-glamour-fb02d4@quoll>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <20251222-daffy-hummingbird-of-glamour-fb02d4@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ebkwvrEH c=1 sm=1 tr=0 ts=6949f50f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sgiu5Z4A-zyB4-zQnDgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: g7N5eTWkbC2RyDGxrfjUdYMthFjN-SxZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAxMyBTYWx0ZWRfX7qPBJhFWgkRk
 /omnU62UqVhiBzD+Ytjg9sbSyBqekdBC7f10zWbIGDt3P1YB65SQCU9T2yK1mVsVN0AqESrdwXe
 y2i6wl5Vrr6pXmQtCBfr4g6QhUjFGpZqALse3FAVrmfx+YGTdSYdmaBMzMXLj1YW2A0nosZkRpn
 EF7dRE0U1VJQy7GyBkNwDHxF7BrmazbEgkT/Dot9nT/4AdVBuWij4HVFEHJ8CzIgGAmx5XIUkDT
 vU9hxu+/+RMERmpOl39eZgbwN0hxnjwIIV8L0e+qVG0tRedqPnblosov6dOeOaPpqLJXnXdmjyJ
 vp3RkwxlxLzI9hzh+Ue43BED5GKwWNfD+3fYbtJXa1RpYO1z0+TQb7bUirSuVsJdENgYWxQSXEZ
 aOHp6I257bhyrmNqbFXS5UTp/J9781VDQKVTekRKNTM5mH8CzlG1eA+NHorAKjgYLtMY6nq8BX2
 /rR0HnyEAKB8PEBTjWA==
X-Proofpoint-ORIG-GUID: g7N5eTWkbC2RyDGxrfjUdYMthFjN-SxZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230013



On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
> On Mon, Dec 22, 2025 at 02:03:26PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.
>>
>> Guarantee that subsystems relying on SCM services can access secure-world
>> features. This change improves reliability and prevents missing functionality
>> or boot-time issues by making service availability explicit.
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   drivers/firmware/qcom/qcom_scm.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
>> index 1a6f85e463e0..1fed7a81bd29 100644
>> --- a/drivers/firmware/qcom/qcom_scm.c
>> +++ b/drivers/firmware/qcom/qcom_scm.c
>> @@ -2010,6 +2010,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
>>   	{ .compatible = "microsoft,romulus13", },
>>   	{ .compatible = "microsoft,romulus15", },
>>   	{ .compatible = "qcom,hamoa-iot-evk" },
>> +	{ .compatible = "qcom,purwa-iot-evk" },
> 
> Why are you using ABI before documenting the ABI?

I’ll reorder the patch sequence.

> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Yijie


