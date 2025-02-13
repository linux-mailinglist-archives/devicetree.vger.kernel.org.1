Return-Path: <devicetree+bounces-146291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB660A340D3
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7918B168540
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 13:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7D324BC1F;
	Thu, 13 Feb 2025 13:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pKAsxd8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B81D24BC1B
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739454826; cv=none; b=p19cnZJaoFREllUBFOlMwnSeI2Iz0G8PjmbJXoyHMYjWxmcgbkIpB4kRe8D24RFGNi3vyFGdGsuAYPRNtrChxfS4QOGkwrb6zGJjwmtUwlPjpx5MsQaYD5K8NCwHsxc+DfD6qWZvdRWx4Nq5RbzepwlvsaJb2BXFOnS1gsXhiLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739454826; c=relaxed/simple;
	bh=Eng2iBq6FvHc1yUhKMcUzLBmdUfoaMTs+ae3WTkaieQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O7nYOqS81B0WQlzzv61f0+/En8TBGWe6YnO+V1EWE88zN0HWHLhS4c/rDSzbqNgK2+0/LGsE/s9HGXAFbWkez75CPdle+SgBlB8KlBttOzE59Aa8n2UzUoC7p4stA12Gj9NFoeEo3pBt3bKEJbZfZIg7/mzvg9TdQvlbHgX1N8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pKAsxd8P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51D8eOMm016912
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:53:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G0T3NNL6yPWHi23ATwtvU4h45jKTgjlGN7+OXPZamIA=; b=pKAsxd8P6eu1LG+h
	Ee1B1nOcWiiCOrTWOoEC6MvIYUU6UQrjwwf/07tKOjsk3c5aznQHbzs5dL9Duay8
	p//qzUEJ5NZ4VEisarBD7W2XdavU+aI1hywDGOohTFI6EjWAoMygQKy8b/IFENEV
	hpQgRC3INzKlYKf6Z0ocWLKk8ALxIr9gAbjD7VYnKC9cnI979ujYpv3vPufv4fTI
	CX8BQlp6B2qd05lFl3f3KkOJHpGWgoiarHYf+VimNP0L5SRqqCUninZlDeL56lUB
	xqz2bIBwYv/z4rAm/KbvhfQ5LvbsFxp133TPuQNz21evan8qcJEBFnM8MsQW3LuP
	Hgk1vQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44sde88tfn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:53:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0797974bfso8373385a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 05:53:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739454823; x=1740059623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G0T3NNL6yPWHi23ATwtvU4h45jKTgjlGN7+OXPZamIA=;
        b=hWQhpOq7FtiDajrGXB6cl8lyqu6DsI6ciBz9mXthNwM58kFwBE9hS+NvogbshpETJD
         OM7UcT3NMlu4+IjEb+pb01mUkZypg2vjEYGxzt8+f2tQNBPC2giWv+fsOGp2HE31qCMp
         fAvY+Su/HpBChZ8s7l8NtHezYWJASsDLJD+eqEXZuw2BJx+sSk4HLpyo6pHrpetF6aky
         6lVyUUo53gwcJ8met9AWDd2VPsd9KJkrWzyWtVg/7uzPjxWkQtBGugTN7WWI+LpRTqZY
         SDqnIQa3T5qjwaFhZ4OM5JpNVAXTg9xbQoCHiEseiYcm8u3Gryis03JQegUwvuYR7Wkr
         UWAg==
X-Forwarded-Encrypted: i=1; AJvYcCXsUDlEcZ5ib35W2sbAkBUXsppkOvopJtiQXqBFd0nh7Lti4Y2bAXi1L32psRKVoOvZacXur0wSW/Sk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/+SuRQSeAhI7zbacQLzezs22Z8MVHTy5B/wxPB2RvQWPV73jY
	5emUNkqIfQaV6MJY1rYO4wNMWPrtqemXywlCPGz5D64v4KQKZVvtTPFWZktpJSELOBc3rYmqAAM
	pxefvZuJsKGxA2k1KUmtrySrj7H8tMgILyq0DF09E5blfEK2zGu0+2FVPPhjC
X-Gm-Gg: ASbGnctDOUOIeCs3B4s8IEumczaBX6ISGvVpa1JMYo5eo4cFkHZ4zbq06BlJMlz7jc9
	yc+T1A1ioAJExvmu9zX6GvXY4+6cgMINTuJPbvPWFin62YHdHo4s43VSfm00CCsRxJPy5BauGre
	dWJma/xCb25G2nbiVFK605KqUYDuJgyIT53JOje6kRLO8/b+Zaz+ErmiecgDUNPIUrjNfYiAcsf
	g9L+DttP6Vdnb4jMRrWPEbMt9DDZSOVb2UCFrlWoHpITZKlqWCdTuws0O/vMBPo69Wk/uWaaWTI
	6f/6wEM+DYL3TTCfrG9frIkFkjKWclZ4N4tgom5gnHId/duOZ1Po+Y23ut0=
X-Received: by 2002:a05:620a:4793:b0:7c0:7753:9807 with SMTP id af79cd13be357-7c07753984fmr245804985a.2.1739454823004;
        Thu, 13 Feb 2025 05:53:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGfRJnsuo/7alsc6cmW1TUv/j5i4/UelSoGDYSvEXPaZTGIzpCzI0MBm2/J7M+CkFWsBrPiFg==
X-Received: by 2002:a05:620a:4793:b0:7c0:7753:9807 with SMTP id af79cd13be357-7c07753984fmr245803185a.2.1739454822571;
        Thu, 13 Feb 2025 05:53:42 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1c4692sm1219859a12.31.2025.02.13.05.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 05:53:42 -0800 (PST)
Message-ID: <936dc0e7-bd24-4b20-892e-831b4e5ddfaf@oss.qualcomm.com>
Date: Thu, 13 Feb 2025 14:53:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add crypto engine
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org>
 <Z63xEdcvCRHchHWu@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z63xEdcvCRHchHWu@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zTXVO96Nm8oWC4K3B6UEdHzzbEyJYzzc
X-Proofpoint-ORIG-GUID: zTXVO96Nm8oWC4K3B6UEdHzzbEyJYzzc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_06,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 mlxlogscore=889 spamscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502130106

On 13.02.2025 2:18 PM, Stephan Gerhold wrote:
> On Thu, Feb 13, 2025 at 02:44:02PM +0200, Abel Vesa wrote:
>> On X Elite, there is a crypto engine IP block similar to ones found on
>> SM8x50 platforms.
>>
>> Describe the crypto engine and its BAM.
>>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> ---
>> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
>> ---
>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 30 ++++++++++++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index 9d38436763432892ceef95daf0335d4cf446357c..5a2c5dd1dc2950b918af23c0939a112cbe47398b 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -3708,6 +3708,36 @@ pcie4_phy: phy@1c0e000 {
>>  			status = "disabled";
>>  		};
>>  
>> +		cryptobam: dma-controller@1dc4000 {
>> +			compatible = "qcom,bam-v1.7.0";
> 
> Hm, I would expect this is at least "qcom,bam-v1.7.4", "qcom,bam-v1.7.0"
> given that this is a pretty recent SoC. I don't think this makes any
> functional difference though, and we don't seem to have it on other
> recent SoCs...

It is v1.7.4 fwiw

Konrad

