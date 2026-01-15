Return-Path: <devicetree+bounces-255512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96747D23AC9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A31130321F7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1930735EDD9;
	Thu, 15 Jan 2026 09:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="APsWpn5K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cUmhjpWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC7335EDA0
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768470341; cv=none; b=p9zqI7K6TmCGEsKzZhC5kHwfB0d+bcvF3kRi/iKc84I6HpJHN4zqEjqy3RB/X9YrFpDJQQUvmeyUxwCL0MtfOqTKdAnTE+G7d67KoM2krsPG3pRm/rakXXVsaeuTG/B6VZqrB474P+JDmk82uleByeuKg3bSMvQw2NzFQyLH5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768470341; c=relaxed/simple;
	bh=NNwg+xVgWFibLqX1CMqOAEh3V1cjfXBawsIFa7JY0gw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RO16wQySuOhVze04kBEAmH/BbMdPrJLz14DZh7mTSVDeiXLkS0UWiexbZ5syt8OiBXfAnNg8ejjFaxRaBJfDPvPx3Z9GMrWv2z0WLNdFe7zYMtnBP3gq8QMnMOhLqE5ivsFHD6t48NA4UeJffOBgJYCst0rPwRTdsQmGqLAYCnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=APsWpn5K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cUmhjpWY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6flA33419286
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:45:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2h/2kt/WX4WfJjNW2oUQf4AhU9i6t5OwxqtRmcL1h1c=; b=APsWpn5K5w2c+AwP
	53BIRNqiyWcv5uVfY1RRy1ZkoLH75+Pdtf5CpqzsUysbMgDtffYjjQKB83W5159+
	2oBrO10mcNCArMvKQITaBaoFXwkVAOQ8BK5kyB3qEDaUCPXEEl0XPE+PlTODvJqo
	/Myhe/sOSYKCwkVmRE9UZowka85qXdZPk40gmoma6Wy9UYlwkIK0gLTyeLc3shJt
	TWIhzot+1+XkLT/XjkfArLBnIA0li+H+2HyqGaqkp0AG/fq1501h8ToTP/yvLW4p
	m/i1RYTsvxIWISfpHBtw4FTWj+kgHCtWmQOgkUy/fOTcPO5FSBkMhoGh3Z2OBNDC
	Vj4UzQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj8a0d4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:45:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a291e7faso62567585a.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768470337; x=1769075137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2h/2kt/WX4WfJjNW2oUQf4AhU9i6t5OwxqtRmcL1h1c=;
        b=cUmhjpWYcqG5Ir48rDd2mS9MosR7FAZcbFbTdSuh6JBIBneVCY2mEDlScfR7LVPW8o
         VEsR+59pPVMZxhMLKgxaZE5Cld7SEqDtX7WEocoQB3rucdm3oZ1nmKKe4t2JRvcsotQ/
         AFUpY7w4VRjcOoj6piK8qbcx5dJjfzsyeWdmgWOpr4m5i9V+/vWcx9+4kQ1ZnjQ9NRS3
         GuNHvaxsuB5u9E9I0e7Ym9hsfWPMIvsRF1j+yoptySWtdks33/zH40as2cZqvR1PAr5w
         dBoZnj/Vk3MinSta5EvBk0Z3sGNF2XWOmd7yi3RrLpB1RL55f8zM9LzaWIsYUXkYKN8/
         mxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768470337; x=1769075137;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2h/2kt/WX4WfJjNW2oUQf4AhU9i6t5OwxqtRmcL1h1c=;
        b=tXW/EmriwOjuXclYBnYoXioWwgDXKk4PIFWmMUjZSH+y+8xbCV5kjbfEbCKA9z8Igy
         oXmyoTbn7TApPhhkxLlVVCCucaYTjYEWIfmOnYS0kxzFm/g8WO4YIptkfASR4c0GtIqO
         z68FYhTQbFiZLaLOWSgbT8Je4PayCL+iYLlBRYlu9Y8PnCeVLGTgc9KNU5azeGxfj+le
         xzJ6dwzgYV8SRlzhhJ61KyFO2XwXzyHelb4y87fvmDdmEGrgpkRw1TVcaNyAZBFy0Ntg
         mc2iRXgLiwP0Gtaui5xr3UIwOCtNhjbP9xEtNKZuzApreDWvYSEDR1ju4vZhoxjH/q1t
         MDaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbKPMc8lBG0FzuozlGTfKTydeBxDL8P/z2fuJIozfZkWngsg1LIoa6HL5mFOelRFoGh5oyTIVRxKQs@vger.kernel.org
X-Gm-Message-State: AOJu0YzHMszcU37i7TWyy1R6H9YBOW4inV961ZFB7I2Zwu0wamE2bsJP
	CxMxV9m1n+PeAnHDSBDjj8jFnswHLVYnUCzxVbLtfardw/IuKTDSdBZIr7F7TbyKjl/C8khKu4l
	qrt3QaQetaRZ8xCmFBoI1unoGxiH71WMxsb0w+acQ66uKciPPrlcfhLEjGmoe90vZo9rgQo0u
X-Gm-Gg: AY/fxX7eNvnP/4uQRLCvJoDWRPCUGzSWe1SzS5IZScpwpIN5a2HzK4NuUo6z2mqByc4
	JkHfG09FZ+QKNLF8HLFuMb3zrrqZhFn5lf8tHWRQUuJ0vHl+Pzr8iE05EDnYihSormiPujomah0
	yggCbTlYbTS5i9iXSRYX9Oe974XCZWQuSB3VL3tP7htwdIe1YgQgOTvrn2BxbVKtTjzOaf1ge4/
	8ViGWHmdX19vGMco2wcLOXlROF9S+33lk7SAlslteq5D1s2mLwk9TujZbRsGWoXVLeVBE/K+vYb
	7iZyTsadl9lVvZDasEYC3bos/HquAVQFLvq0LGftqWDb3E44B1NtrtyWuqeVq1dgOjvGb+rxhrk
	xhPTkKiRKmbexN7Ni7nN9qem4jPx7ucna2XJSgw==
X-Received: by 2002:a05:620a:3993:b0:8c5:3495:87df with SMTP id af79cd13be357-8c534958a61mr364527985a.38.1768470336884;
        Thu, 15 Jan 2026 01:45:36 -0800 (PST)
X-Received: by 2002:a05:620a:3993:b0:8c5:3495:87df with SMTP id af79cd13be357-8c534958a61mr364525885a.38.1768470336483;
        Thu, 15 Jan 2026 01:45:36 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af653596sm4965767f8f.14.2026.01.15.01.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 01:45:35 -0800 (PST)
Message-ID: <7d297b3c-555e-40aa-b7a3-921a16c11a7f@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 10:45:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: cpus: Deprecate Qualcomm generic
 compatibles
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org
References: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
 <7kifzh3xkwkfa4ij3xtcowttaquw6ua2wkecpnhtyczbbhy2tb@agrqsbs6cjku>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <7kifzh3xkwkfa4ij3xtcowttaquw6ua2wkecpnhtyczbbhy2tb@agrqsbs6cjku>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y--ujJahvNc0v_0bLC4LissQ_H1hdCId
X-Proofpoint-ORIG-GUID: y--ujJahvNc0v_0bLC4LissQ_H1hdCId
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=6968b742 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Oc3PitZC72w1CAQaH7wA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2OCBTYWx0ZWRfXx7zqf+E0+2zV
 sZ4bpDZRNxlz9Rj5iBLC1hUcth+Rx9++Khm0jB5nfQ/oRlKeSqHCQ2W7Vs1DvY2Inl6xoQOX2Fs
 bo8eTgftjp57zis/wiNY4BQx5Kn0CLr34mPdM+eICPDlCcXwFR3q3LGY36Z076WOX7lfg7eu+kJ
 2XtyBf8TcUKdxypFdBzkZ+kH2WLjZ2Jo7Np4mNhe30piYlhobp1kdPNYiwryLCfKBOfQ+CCCIrk
 nqFc5b9v2xag5e4w8IyL9gRMA2QE+STbBqUysiEHkzua3AEVMmsV6MA1XAhayZECJdnbftblKPV
 VRB54WslLctkieSddsypUHsGlNKrKgGeLs7I06fesBz4yEWrflxyBQVX4OTx+P//oqEFa0M/c3B
 S1IWz/Br09DwiRaTLeq7zYmAfcM+JNT1Cn75r0Nb1SKXOgGmOAhD28kpUFCfGZp1dwNKVEUPk0z
 1oUPfJk89vvmiPt3++A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150068

On 15/01/2026 10:36, Dmitry Baryshkov wrote:
> On Thu, Jan 15, 2026 at 09:35:04AM +0100, Krzysztof Kozlowski wrote:
>> Move four compatibles for Qualcomm Krait, Kryo, Oryon and Scorpion
>> custom CPU cores out of the enum into separate one with deprecated: true
>> annotation, because these are too generic names.
>>
>> These are names of the families and there are significant differences
>> within individual processors, e.g. Kryo6xx can based on architectures
>> from Cortex-X2, A710, A510 to A78 and probably more.
>>
>> Just like other vendor processors are differentiated, also Qualcomm CPUs
>> should come with specific compatibles.
>>
>> Cc: Bjorn Andersson <andersson@kernel.org>
>> Cc: Konrad Dybcio <konradybcio@kernel.org>
>> Cc: linux-arm-msm@vger.kernel.org
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/arm/cpus.yaml         | 290 +++++++++---------
>>  1 file changed, 147 insertions(+), 143 deletions(-)
>>
>> +      - enum:
>> +          - qcom,krait
>> +          - qcom,kryo
>> +          - qcom,oryon
>> +          - qcom,scorpion
>> +        # Too generic, do not use in new code
>> +        deprecated: true
> 
> I wouldn't even question Kryo and Oryon, it's obvious (or at least I
> have an idea) what should be used for those cores. Except that "Kryo"
> was an external name for MSM8996 cores. But for Krait and Scorpion I
> really have doubts and questions.

Look for "Snapdragon CPU ID" doc in internal Confluence. There are also
few more docs listing all these. Quickly looking I could not find the
actual differences in capabilities (it might need comparing each CPU),
but processes, internal codenames, tech differ between Kraits.

Whether these differences are big enough (e.g. different instruction
set?)... I am open for suggestions.

> 
> For Scorpio I'd have a vague idea of having qcom,scorpion and
> qcom,scorpion-mp (or -uni and -mp if you dislike the bare scorpion).
> 
> For Krait...  I really don't know. Your proposals?
> 

krait-codename :) (not sure if it is public)
or krait-modelname
or krait-midr-value (the one for dual/quad part, so MIDR[9:8]).

But honestly I could defer naming to future contributions. I propose
only to have argument in stopping using these names all over.


Best regards,
Krzysztof

