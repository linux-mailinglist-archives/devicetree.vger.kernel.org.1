Return-Path: <devicetree+bounces-243464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01654C97D87
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D35464E1671
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52FB231A049;
	Mon,  1 Dec 2025 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U2qYPZ2X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gEnW5DX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB75314D2F
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 14:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764599203; cv=none; b=IvclrZZZf7GKRwBJsU5SN2Juq1+UrX8Zx6TeLuSPlcm/1xZiK5x+N3aAEdKocG0kMo5AnPwIpYPfR8ws3FFmwwgLUTuLDEAasSZdSHlmMkPMt1xW/8DZLCCsQGwvX+YgxQiQ0v4kQQM+crz7dB0iLm+5px5R/TxZKlssoPEhHpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764599203; c=relaxed/simple;
	bh=lzhyA8ZTWsWqmtqvYmqqHy3zCRf08TYUDQyViIVxf0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lIYH3VLzgBXoriansB5sWeVgge4TjpFQWfZlmmMW4P3egfHRVIk/ifRfc63nuXEmmDit83P0ryTSO5uSWEsnGEvM3aer+u7Uob1a+lvm75oCBH94/yEmvj6P4rld/j0N6FxFNDfuA/oaZGHzHIcg8YeY0QsuTMvm/UYasWdZKno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U2qYPZ2X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gEnW5DX6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19MEP53362428
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 14:26:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	21ANKmOso/2LBBZZi9uv/SVh4B8rXz6rQR1U3kyv7Xc=; b=U2qYPZ2XsCLhMWbD
	6rsg3NRaGtrDcigj9+OR69xKd1HEjyJZ8BkihGdXu4DnUrj2NetTzH6BPpLSo0JR
	HViNCNH8slB5jXfkdPXTXmbuwil8Zig6CsSC0n5j/jaWflxSIPGSVuwJkFouXkUB
	hM8u/lmcepAW8iTXSCt97FbQ4pFH1/YRoLeA0t/tCI4RwxMv7MhLdUzSzMlgUe6E
	ANgKhV8gF5ZvH7Hn4RJsUHDif+XCAxitEyOVvPteA0auowcVR1J2rvIk31s+agdA
	zOWE5Ev0Zq/1HgGszPuYhK7UQDwDSmOnAZwoE7aXxymyKvfLuqUbF3EzbItodJqQ
	hUy9TQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8b00ttb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 14:26:39 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dfb407f31bso659780137.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764599199; x=1765203999; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=21ANKmOso/2LBBZZi9uv/SVh4B8rXz6rQR1U3kyv7Xc=;
        b=gEnW5DX6dBL7nObruvIxXJOEHTEdQuCoUI1TWDXW+fL4xGbJH6jHRUBmnPhLvNIvYs
         1pvmHstzVQKSfTpiBAwzU6BZ18jZ2CyHO7n26Fx3Dx6bMcjsGP7smXDlHp3c2AeDUSzX
         XJW2yUgwhyJ7iTzSOZM75Ee7MJ82QKXjquKbCh/eQ0Op9ra4+ckb9kK3K2fRdKTkVfDM
         f63g00fdvHTddX8kcCRSlU3/i3ZeYUpRHiRxp0sVy4hmY2hQ/P//vwmziRO4ibKoEudT
         8otGmKIYdnMVhJNweTDADSQjqRDFFyVPkEL5KThh76IybrrgND9UrEs3QPybwy7DYQUk
         btYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764599199; x=1765203999;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=21ANKmOso/2LBBZZi9uv/SVh4B8rXz6rQR1U3kyv7Xc=;
        b=qOsyD8tJgC9GtoxFxMbGnBidpSKscFpNYvoApKjrxMJmJSdukyAacahmjfEKedHtam
         ATe102uVcM/LBOriR2Eha0GqNOuQSM1j/Ysraqd/iDomsXixLiRFAslar0gpJnb4CAa6
         Bdl1XyhFjQqrJqbb5qAjZI+O3Lu3TTGihdmWHFrlgp3dmOtaU+sl99aQPUjDlcW8mW07
         +ckCrQxju+IA1yAnVV4Y0vgsw3WC6wQfo8GhuYKP9+XvxNZF9BTSn8FoMn5rzqtRM9lZ
         PTd3Yxn+EoU7p4CvMeHlksYQ1QVxcs3emT3dRJzHI7Yuqa9PlvuoO0UBczZKuecwwB9m
         4zoA==
X-Forwarded-Encrypted: i=1; AJvYcCV1zeao0w0o+YM2HwhqbBP0ObeQyTw0TwGfPyDDnnA2vgQnEUbM9VnmyNw4wce0qrt9Y9AOZbFpo5Wg@vger.kernel.org
X-Gm-Message-State: AOJu0YwYGaIHCQ0QownXCQ2bq48xVqX5Vf90rmVWh7rX8fQ4d9wblv19
	TSt+RoyqHY99H5u439Y3jaaFvgyOq3l2GoobstKAUA3wqSh4OZKt/eNVPmutTVUrLACqYWbo0XA
	I1p3DOh+ezTINUoNaMGLLlguxH7Ss2oPOO8QW5JfRQHWK63DHKGeHO34kKdDhKIKm
X-Gm-Gg: ASbGncufUyMQQBJHqn8l99rkW2ozNeYrAHBd/FgIDWa1uxuvUVlIkshDG9ICeJc/3Ue
	mFr5gqbtX8l4erp592w+cxhVLP5BtSqGgIAKLIqdaQuGTOg7EGD4bRuGRK6zhxeLbGHmOvKNs1e
	m5hGjQ8pbNfVFhKjAE/DZw0kGy1iI1p/P3UjPaPJ8T/9xzVJpYqe0wZwZfJ/xZ6/sf+4WjXSCER
	wxMZsOhpei9YVZMRTf4CBkU7mMRFhjwAhgu9pdkOSlt2Mpafy2ZLPLm+hMD/YbQKniakfAkCy+N
	/SQff1RxTN6XkglXzXg371cXP1ckZ1pybT7uqDKyUT1YdlOtudu2w/jLK8vLTuRIXMXH7mz90DO
	zUpy6gZ4DjBgeTMFW/C5jFhe+nB/eoyN972Fi
X-Received: by 2002:a05:6102:cc9:b0:5e1:866c:4f8e with SMTP id ada2fe7eead31-5e1de4a8cb6mr13367656137.39.1764599198679;
        Mon, 01 Dec 2025 06:26:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGX6Glq9QPw1d3sfmgAfFVONL3B+jQBE0ou9+K9z0himr79dXYQNsE2Z4Ya3qXa02jceoSwrQ==
X-Received: by 2002:a05:6102:cc9:b0:5e1:866c:4f8e with SMTP id ada2fe7eead31-5e1de4a8cb6mr13367584137.39.1764599198051;
        Mon, 01 Dec 2025 06:26:38 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47903c7360fsm167133915e9.0.2025.12.01.06.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 06:26:36 -0800 (PST)
Message-ID: <e30dbaf4-6ead-4424-a2fd-63e80b530103@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:26:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: soundwire: qcom: Add SoundWire v2.2.0
 compatible
To: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251105-knp-audio-v2-v4-1-ae0953f02b44@oss.qualcomm.com>
 <49fbb3f6-706d-40dc-a242-c3d6a57898eb@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <49fbb3f6-706d-40dc-a242-c3d6a57898eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TcKbdBQh c=1 sm=1 tr=0 ts=692da59f cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=y786RR-8BrF0GuvF6NUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: cfuDsd49xaAOPOJxDzQM4Fikx6L7OE8L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExOCBTYWx0ZWRfXwpSD/S84hLqX
 ZtDeTd4aFZclhsHpNPqA3OIFW5PaliBcrhT58S6duUfelyNe7Bz+vz8c9Fo69zzxdAZysOv0w3c
 pdyzi3W1IraH5pxJu3m2BYuKLnHals4xL9ekQaTvhjWgzCE1H+BvBblUy7FB7H+a1ofsJlMUMty
 91+z2jt3EQvS586i7laXFGPD8XOJlwxDzdSqQ+Inaf1OjZov9qbyRXE+JcyY6aZRUuXxg2ZmoCP
 BObt4PmRTdHfOC/0sn3FC3gguVkCOtHONjm9LY7mmH6szssc+g1+ssrLfHplm7BhFSCx2qT4REu
 PO8dx8Ios2bFRH4UtgDdyEZnG7DtRPEeVT/zXwt2i8j+AmJSHz/fsZPHV2wuF0JV48UIiCuIZ3y
 gKIUJBNvd9NQvjR/MpFKUwfJ3vI5tA==
X-Proofpoint-GUID: cfuDsd49xaAOPOJxDzQM4Fikx6L7OE8L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010118



On 11/12/25 3:24 PM, Prasad Kumpatla wrote:
> ++ @Vinod,
> 
> Hi Vinod,
> 
> I missed including you in this change because,  some how your name
> didn't auto add to the list when i tried with "b4 prep --auto-to-cc".
> 
> As this is single change left over in this series and having reviewed
> tag, Could you please help to pick it in the next merge cycle?
> 
> Thanks,
> Prasad
> 
> On 11/5/2025 5:49 PM, Prasad Kumpatla via B4 Relay wrote:
>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>
>> Add qcom,soundwire-v2.2.0 to the list of supported Qualcomm
>> SoundWire controller versions. This version falls back to
>> qcom,soundwire-v2.0.0 if not explicitly handled by the driver.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>> ---
>> Add audio support for Kaanapali MTP boards. Introduces supporting
>> dependencies required to enable audio functionality on MTP platforms.
>> These changes have been validated on Kaanapali MTP hardware.
>>
>> Changes in [v4]:
>>     - Dropped merged patches.
>>     - Link to v3: https://lore.kernel.org/linux-arm-msm/20251015-knp-
>> audio-v2-v3-0-e0e3e4167d87@oss.qualcomm.com/
>>
>> Changes in [v3]:
>>     - Correct SoB chain, comments from Krzysztof.
>>     - Link to v2: https://lore.kernel.org/linux-arm-
>> msm/20251009143644.3296208-1-prasad.kumpatla@oss.qualcomm.com/
>>
>> Changes in [v2]:
>>     - Addressed compilation issue for lpass version check patch.
>>     - Sorted compatible string in machine driver.
>>     - Link to v1: https://lore.kernel.org/linux-arm-msm/20250924-knp-
>> audio-v1-0-5afa926b567c@oss.qualcomm.com/
>>
>> Konrad Dybcio (1):
>>    ASoC: codecs: va-macro: Rework version checking
>>
>> Prasad Kumpatla (4):
>>    ASoC: dt-bindings: qcom,sm8250: Add kaanapali sound card
>>    ASoC: qcom: sc8280xp: Add support for Kaanapali
>>    dt-bindings: soundwire: qcom: Add SoundWire v2.2.0 compatible
>>    ASoC: dt-bindings: qcom: Add Kaanapali LPASS macro codecs
>>
>>   .../bindings/sound/qcom,lpass-rx-macro.yaml   |  1 +
>>   .../bindings/sound/qcom,lpass-tx-macro.yaml   |  1 +
>>   .../bindings/sound/qcom,lpass-va-macro.yaml   |  1 +
>>   .../bindings/sound/qcom,lpass-wsa-macro.yaml  |  1 +
>>   .../bindings/sound/qcom,sm8250.yaml           |  1 +
>>   .../bindings/soundwire/qcom,soundwire.yaml    |  1 +
>>   sound/soc/codecs/lpass-va-macro.c             | 90 +++++++++++++------
>>   sound/soc/qcom/sc8280xp.c                     |  1 +
>>   8 files changed, 70 insertions(+), 27 deletions(-)
>>
>> -- 
>> 2.34.1
>> ---
>>   Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/soundwire/
>> qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/
>> qcom,soundwire.yaml
>> index 95d947fda6a7..1c4b0bdbb044 100644
>> --- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
>> +++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
>> @@ -26,6 +26,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - qcom,soundwire-v2.1.0
>> +              - qcom,soundwire-v2.2.0
>>             - const: qcom,soundwire-v2.0.0
>>       reg:
>>
>> ---

LGTM,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

--srini


>> base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
>> change-id: 20251014-knp-audio-v2-9a37752cdc15
>>
>> Best regards,


