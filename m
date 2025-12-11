Return-Path: <devicetree+bounces-245761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F3530CB4FD4
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 08:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 92C683001E01
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66752D3EDE;
	Thu, 11 Dec 2025 07:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljBaAdt8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NO/9XQpQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57096207A0B
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 07:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765438545; cv=none; b=mkKRrkWmxu/YVJUVAUIlE9LcseQRpJx6vEEyht9tH3BpLa6mF/4d9FkQGaCy5Wa27ts6CIdgG8gfEJGR+E0Q0xQZQ+jzmiH3zNcRdhQEZQ8rNwI7DJhkmNJ7sAGiyyTb3ol2AqNrSgYtw68sWyGQYFMr4WD4ob3PiVAZ+QJK+S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765438545; c=relaxed/simple;
	bh=3H8VJcJBIq6KQHz/fGQdhhu6SPxZH6ixBn0JrpqS+oc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fh8Nh6+nwvTngFpi7ILoCf45vHWYToIyaOOU9qBSwfZ4G9JLQKtnfBjGgMe2wSpb8QOuShFd8uCHiaUWFXvZgZUAU4i/LQcgWHrWtiD7KolQX/5AYesAkBV8XptkMTOtF9BjyltNHgGCUDTgZMl/xmNXndLLFfzw4afi3W6qv7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljBaAdt8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NO/9XQpQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB6Pn11466763
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 07:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DIY8edF0E4U3FuA9JYM+rHVY1TkCGGQQltlBEhuFt9k=; b=ljBaAdt8ofjlpln2
	NRTKr1GoLJ77MONpQ9sYJ/yoR9+4gNC8bgAh0PqsGnio+RoNsT1T++/rQS5QdPnV
	J2crG5Zfo/KdVSZ3rOKm2/FlkUFQhDO7zXk+FcN3/QHJN2AN2k3tStwhzXIS5nkJ
	0IgcMtvMh0BXQbyuJ0ri6nHStMhpJqWrbCjngsfB3PYM8CdZGG8WlzJMT3pgV/Jw
	ZuSlbyTuAnB5/uJFy5YmcRR1upxw6B1W5ohiPUzADmG+LIMrVdZYsWEfNEvunA99
	YI9mdAgBVbFYYMQ2HXDsMA7Q5Y61E9r+Xf1CsbtxYOcxXJHzzuTsCmebfsY5rRJB
	DKk4JQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayrpag65m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 07:35:43 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34374bfbcccso801178a91.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 23:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765438543; x=1766043343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DIY8edF0E4U3FuA9JYM+rHVY1TkCGGQQltlBEhuFt9k=;
        b=NO/9XQpQzQJm7nfB1Nqbcf6otM9xqibye5fEiQFZ5yvdN/btu5NAvr1RpUsQwPoTuO
         YiIOJvfVTdH1HRDmrChtgKLsUaMqxnQKafyst6MitQg9R93dzPeD8TmejHzOeJli7tMG
         feOwRNY2+bVlCPLj+YQsseVdX5SZWEB5JKQKKiPf/TB1p3qxkr7PjSQJbhXG3uO8yyWl
         95mPpL1HO0kQnJVhutnuiGV2XBXD7mc4k0Kf5gW+tjZI8cBXqc1uts68NSYaJsft0X1W
         ZjfDimeAe9g1U9jQxGyhZJHANEJZgbx7saMjfDUXOykU5JQhnNpyF9TO3KaafF+/wMLu
         7kLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765438543; x=1766043343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIY8edF0E4U3FuA9JYM+rHVY1TkCGGQQltlBEhuFt9k=;
        b=bAEawknoIzjCYagYwfrCAOAkZrgbnNyLhA6LTsMg2wD/+tGZ1bszYfvRsmDP6tJpuo
         FO0i86gJsmPZlhOtyuocv1kskdA0PVflJu4EbGo9CuhvCh7fybHRo9vLTh/ITF5NI4oU
         AlHdbfMa3QHns7AcRTvSd4QtM7398JEd8RkOwENaA19v4VvwtxllGDtJIZYH10wkG17z
         TfLzuJkpL1eb89XWbhKbpz0yU0ex+AsEgS1r7NYEqgDMoAeVmJBqSPDt342goDVbC2jn
         NNP+rD9Nx/0FA8h8DzxVitvL8DSyGV5pKsX6/7pOHxYmRk7nZ+3LaMB3e1kC1n60Wlmy
         vHQw==
X-Forwarded-Encrypted: i=1; AJvYcCX6h/whiPsf31qoX9+rD7Ya0UBAcVTVi07pBB+wJd2ZRFNru1b6gN1kjJ8Fc6f3ig9O1WAcbhrBr3gI@vger.kernel.org
X-Gm-Message-State: AOJu0YyNvr8rTjcf+fAxyqPpe/FR2k69xRKMU7d4VFzjjdYrN8vfPpNF
	mAvH3nD5iZDHbFShDJWXcbyh+SJ7bjR7fOuIS8gFYrreWzvxj76bUsbmHt4AiDcAWIZxW4sbHf+
	NakdZpT2dyJZ8SaJOJthiYgWQjqZ0Gjq2WIbRT684UO8+g2noY0TyrretsyXHUbEj
X-Gm-Gg: AY/fxX4AeM9ac4noeiN2B8gesBcNZLb/FaoQxrvd/89sTrXh2i44J76Ph84uitS2fwi
	VrkF9apVhnKrvQkHuOBRTLVOoiGGoBOa4QJpGlWF4yfL4SpsGkEYx/faWDtpS4qgW3Sx5P0oKMf
	rEAhd3SAhw+72dGyGIR2OQF+og5n6QUO1xT23J200WdJdGKc9R0cV/hABdkRG0AG2NxcCA3HEZ7
	ee+jwYJlNktzilOgFk8KxUxzdvSYlzPTcosn6ceaaMKXe1OiY5cVbyrKT/Ry0bI1oG+QhamTP46
	mswb2LWA+6dvIdy8GkZpSkulmk3L6WNE7t5NHAKdTPO368UiFNVfM1389APwGCVTxJYz0eeYLTC
	WYGpMThRUuNJfkdbJMAcrKFaGsoMFBUWrzSoyMEfg30UjaYX8MkVh1DaxIHdr6FDNpTvfywNXSx
	w=
X-Received: by 2002:a17:90b:2e42:b0:340:bb64:c5e with SMTP id 98e67ed59e1d1-34a7281d762mr5366733a91.14.1765438542523;
        Wed, 10 Dec 2025 23:35:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvIG9rHKDb3pmerPApO4qZcY3ni6sXBrpH4zkU8qilpPmVJXBVULIIuqu0qMtN5qRAsrbSqQ==
X-Received: by 2002:a17:90b:2e42:b0:340:bb64:c5e with SMTP id 98e67ed59e1d1-34a7281d762mr5366694a91.14.1765438541736;
        Wed, 10 Dec 2025 23:35:41 -0800 (PST)
Received: from [10.133.33.250] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a928381c1sm1033740a91.3.2025.12.10.23.35.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 23:35:41 -0800 (PST)
Message-ID: <44b8df0e-2786-420b-9402-ee19f4cda0d2@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 15:35:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        James Clark <james.clark@linaro.org>,
        Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
        coresight@lists.linaro.org,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Suzuki K Poulose <suzuki.poulose@arm.com>
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
 <20251211-enable-byte-cntr-for-ctcu-v8-5-3e12ff313191@oss.qualcomm.com>
 <176543802198.60924.10267408914731981420.robh@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <176543802198.60924.10267408914731981420.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xUpJs0pwXmO-R-lw6i_UOGZqsehZljWl
X-Proofpoint-GUID: xUpJs0pwXmO-R-lw6i_UOGZqsehZljWl
X-Authority-Analysis: v=2.4 cv=G9sR0tk5 c=1 sm=1 tr=0 ts=693a744f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=0awkmHLjsCMGZ7zvgVIA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA1NCBTYWx0ZWRfX0htHyYuOxzIw
 JrOBYGmTU99iOGA0VJUwLzlH47wBU4xLCrAgjaWKHVhfQXlxwmJzTMYE5bHgtS/dYjDz8D1zt20
 CBI3J0YcmTZ3MzfAwyp7V3wuC9zMUAP9TFFrpbQaW90V+wSlmqHvBvHddF+OcG3cBeyv2GByQJv
 S6sEkTxjeLmdE09SHIMhrHHNdnEquN1hhnmoo0TEPYemXt0CssBDLcFPthDRLXw5sSPGs6qQV1d
 UAbojLJwpksV2B3m11xraMojO1uHfCKJrPXb/O9Tmtr6uhEI6whvOAtgrw72VdizCMmpb9zsZ5j
 nPP8mIn153mRgiZdhk/cNzFP+/gRZmvPfwN3/PWoN2UVoBAAFQ6subqYPBw8X/RcLlvs0effj92
 x07jdma56qEULyTnXhxgzTi5UQcyQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110054



On 12/11/2025 3:27 PM, Rob Herring (Arm) wrote:
> 
> On Thu, 11 Dec 2025 14:10:44 +0800, Jie Gan wrote:
>> Add an interrupt property to CTCU device. The interrupt will be triggered
>> when the data size in the ETR buffer exceeds the threshold of the
>> BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
>> of CTCU device will enable the interrupt.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/arm/qcom,coresight-ctcu.yaml    | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.example.dts:36.31-32 syntax error
> FATAL ERROR: Unable to parse input tree

Will fix it in next version.

Thanks,
Jie

> make[2]: *** [scripts/Makefile.dtbs:141: Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1559: dt_binding_check] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.kernel.org/project/devicetree/patch/20251211-enable-byte-cntr-for-ctcu-v8-5-3e12ff313191@oss.qualcomm.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


