Return-Path: <devicetree+bounces-242685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04178C8DE43
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 12:06:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B11B03AE39C
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5414D32A3F9;
	Thu, 27 Nov 2025 11:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VVlBR9/l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hUoL3Uqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D01B3218A6
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 11:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764241568; cv=none; b=JiZRD3AqRKYvwHPlxbtTAPacZDLsTUaVLW2aZN8We4TyitcmesB2XZcoLwRFkovq8OCmNVhcH8XO5FsjU3/IJoYNtBuRn6u+Duwbmcaf1JvYUjvHuSBnVAyZq6CeRKcDt7V2Kl3wa+4kwCfgWkgtfaWQqLPClzLK6Dl8ECTAUo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764241568; c=relaxed/simple;
	bh=gErO8r2/jH1JEM6Wb/SziNZeqekYoVk2qJj9NHu1Dbc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iK8H2i3mthrlGKQmp0SZXiy6jn8OQIpFT3hb9CrxO1YX17oWEO+0FX3+XeCwiTJRckCYjRS/klZ9S6n2plU6F7P5516ZNGAzJHSuTC1CZ5Mbmuvr9GCrS9H6LV1c58DyzHZY1BKRdkbryYGFO7uaJ88deKTDQuH691FyuGdGJj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VVlBR9/l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hUoL3Uqg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARAVxOo913883
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 11:06:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dsM5B0ACxhRDHWXvfakmXYc8i5gMH4SHAT6VoxxH/Fc=; b=VVlBR9/l5YNDs+N6
	1CGh2ohRqvDYEB537Y58T3oCOGA3g6gMddpeZw0a4Pm1rNld/NSblhMJkFaG/PLs
	vQ9xjlVdtooR0qI9gV+E4/1lksGm9fNAiDd7DZF9uUoHSZX7urm847rZVzRKqg/t
	BVc7iUJ2piZs1dw3w8DzsIWs5GR/TctO2X+oXyZPEYvC9dWiQ2MAeG9UUo65jVhU
	EzePBW/q7/pgFvh9whrRNTpGkbunVeWWHTrO+SYqyRCV7zQU8KMmKWaSneLqmPPg
	GAk6ZVqmep3HrVglgBFmh77qvee0mC9jO2UV7eS7y7hxw+FdfTjz0DyTVddoFVlE
	v8rX2Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmynr2ud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 11:06:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso1608991cf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 03:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764241564; x=1764846364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dsM5B0ACxhRDHWXvfakmXYc8i5gMH4SHAT6VoxxH/Fc=;
        b=hUoL3UqgfBckrGzjgMuYHRalahYGD0h9d2plK5h8UTiltdY1QJpcVpD7TwjbMMv5R0
         zZaGC5tmmLLpMNDjzJPGsHB0XN6wKu+YFhgxnu4uQPNceUAiC3wK7wTQPGrgxq9halgp
         mbZVzB0mm4U/hSyp0YFWU/hitqNuw6roV945IL/i7DFheDPGzA1st40NnqsAYzQi/SoR
         dntKxhe8f4ZuaCCkyx7Xg3ebEWnZAb0YVvUGfoX3B5FJ+Gjxk8CkhlltjUe8LETj0z0I
         bRLJj1Iog8aDPW7bbt11XwccBy68N7+Zd+QCMHalrISzqybAQQhfOnSznjOjK6wbjV4H
         7/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764241564; x=1764846364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dsM5B0ACxhRDHWXvfakmXYc8i5gMH4SHAT6VoxxH/Fc=;
        b=jNnP2YFSIU4AbjF6jINzgm/FfmgQV8LsApFCtntliAMBXvtRtPTDJai1MOGbXa4l72
         nYYFf91ZbsfphjDE3ePCtYcnTzAIxAyMhk/I2ervb/UjhayIzY9g+XNiift89KEWus72
         W8rgitJUh1sjQVNhGnSWetVR+seE+/yo29RDr1ygH4m06Td8WhWd/jPXJhFs7Sr9QDzJ
         5ca2KHkmsr5oLNXU1cvR/a9NU91Z7o0j6IP/QaMJK10nu+OhZuuf9vO7Du9Ht3XfRn+p
         gUODHgSGDQAp6pJ89gVTI3Lb7XaXbRRdyArz4Gp3Ml3TkNUEzes5fDZr3sdgtaS3uNgV
         Bf2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXt8LpwyVfGsdO3beI39c31Spa1OREgxFg+2yDqbE5+mZTnjERRkitrYP2UFpROZfQxc2tvvvGFlqQx@vger.kernel.org
X-Gm-Message-State: AOJu0YyeWJBC7pi0y4eMzkFEgWxXiO0k23NhHrinORP1ix95dGneHxWj
	FSvaSjuJyZAA3VXH022SQXJ489q9K3MKXLQGYAJOr18fmcJsigtiJfZRVE3cV4IXJCfI97tcBIX
	eehOdW0ZNyLoX6tJhKpNcWJqFxOWbG4dZrnzryphwvp5thoayvaijgXT2oW9iHTsj
X-Gm-Gg: ASbGnctHvLapb9Jg2dJIfgs6J9RIJD6boGdU6JaRflZhBcnNxLc0n5viCCIYmkF5HXd
	QN8cSWhi6ebpgj2JofZq4T8tflj6WzjTzv1NECX8xRG11d00C9jz9cG0oPEKDTbqe5sI1q+1oAV
	Arj+2KR+kflX0NaTWsCmutAy7xCtrS8tupZ+Jaq+j2by1jUCFBG3PBYkkzOmrGCSGje6EsNgW5n
	Jqn64jlih31C+OZlYfs4MImNRoauPanJjdV7Yx1b1M1nhSzOYMO7hh4wriTWmIIM+OdXFeeNbnO
	wbDu0Z7YIrGJh2d95LqfEnjhhwUyf6HioL5CkH7/NU/j7iq37yi/ykub+iJjnCW6PXP6hcdkOXH
	34kxfSBCr4rfPQHxJiL0SjO0+H96ly/jsOWUxLBMw18K2l7P9CvHV8rvoxdG20KG54UQ=
X-Received: by 2002:ac8:7c48:0:b0:4ee:1e95:af63 with SMTP id d75a77b69052e-4ee5894e4camr234809571cf.10.1764241564448;
        Thu, 27 Nov 2025 03:06:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQ2C4T/zkTEcfcKbF3Z1M8/NcZ0UR/ptn/bgi8R2SS+xmUzOkuSJbfZlY91sr/2UxXeGziwg==
X-Received: by 2002:ac8:7c48:0:b0:4ee:1e95:af63 with SMTP id d75a77b69052e-4ee5894e4camr234809031cf.10.1764241563904;
        Thu, 27 Nov 2025 03:06:03 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90d14sm1277518a12.10.2025.11.27.03.06.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 03:06:02 -0800 (PST)
Message-ID: <78307922-3922-40b7-be89-5c2bacbdffdf@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 12:06:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P
 LPASS pinctrl
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, ajay.nandam@oss.qualcomm.com,
        ravi.hothi@oss.qualcomm.com
References: <20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20251116171656.3105461-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <3c0e994c-7484-432f-b3b1-bc7523d27242@oss.qualcomm.com>
 <0b7dccfe-ac31-4d75-840e-96d8ddd66fdc@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0b7dccfe-ac31-4d75-840e-96d8ddd66fdc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: dNK5rw2c8ReYO4jkkApAkR9S2Q2E-vgz
X-Authority-Analysis: v=2.4 cv=QOplhwLL c=1 sm=1 tr=0 ts=6928309d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PbRpZkKeZxfV5sauP3EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA4MSBTYWx0ZWRfX4CC729LuJ8+F
 Pd76VOgOOLZdhLaqhCvXGEgdpol/7UN7846g7V8bJuKQsJCQM5i1uyKwGrAQDfw9LpmOwmwCK/u
 25/7E83GbYmmPY5++RjrHjxbtcvLWB9+X4eFq8CXgzPXQ/T0sEUez5hc1JvTt3KuHtl3SdUQHBY
 oTg+hVyopCFzGh2MNC+RlQsf9R5qQc5uM4l0lG5LksEBq2pkKchwdRq/C9zrm9hOHHZ3QtUKvpo
 h8M9F4VOBSEhoijXqfMNAXvu+V6y/3J4Flxs1RWZtpJ8dnreI3uNuz6Jy6vcVXB8FlErWjoztgq
 JRB6R0WbEhXnLxiRwsXx3h6may+JL6otkEDuft8QoPU9lpJTek9c73vQZ/2sQW7tU48jDjnNPgK
 +1n/nsRdrl/ZKtZATcIYwI8Kbajrlw==
X-Proofpoint-GUID: dNK5rw2c8ReYO4jkkApAkR9S2Q2E-vgz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270081

On 11/26/25 6:31 AM, Mohammad Rafi Shaik wrote:
> 
> 
> On 11/17/2025 6:47 PM, Konrad Dybcio wrote:
>> On 11/16/25 6:16 PM, Mohammad Rafi Shaik wrote:
>>> Add pin control support for Low Power Audio SubSystem (LPASS)
>>> of Qualcomm SA8775P SoC.
>>>
>>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>
>>> +static const struct lpi_pingroup sa8775p_groups[] = {
>>> +    LPI_PINGROUP(0, 0, swr_tx_clk, qua_mi2s_sclk, _, _),
>>> +    LPI_PINGROUP(1, 2, swr_tx_data, qua_mi2s_ws, _, _),
>>> +    LPI_PINGROUP(2, 4, swr_tx_data, qua_mi2s_data, _, _),
>>> +    LPI_PINGROUP(3, 8, swr_rx_clk, qua_mi2s_data, _, _),
>>> +    LPI_PINGROUP(4, 10, swr_rx_data, qua_mi2s_data, _, _),
>>> +    LPI_PINGROUP(5, 12, swr_rx_data, ext_mclk1_c, qua_mi2s_data, _),
>>> +    LPI_PINGROUP(6, LPI_NO_SLEW, dmic1_clk, i2s1_clk, _, _),
>>> +    LPI_PINGROUP(7, LPI_NO_SLEW, dmic1_data, i2s1_ws, _, _),
>>> +    LPI_PINGROUP(8, LPI_NO_SLEW, dmic2_clk, i2s1_data, _, _),
>>> +    LPI_PINGROUP(9, LPI_NO_SLEW, dmic2_data, i2s1_data, ext_mclk1_b, _),
>>> +    LPI_PINGROUP(10, 16, i2s2_clk, wsa_swr_clk, _, _),
>>> +    LPI_PINGROUP(11, 18, i2s2_ws, wsa_swr_data, _, _),
>>> +    LPI_PINGROUP(12, LPI_NO_SLEW, dmic3_clk, i2s4_clk, _, _),
>>> +    LPI_PINGROUP(13, LPI_NO_SLEW, dmic3_data, i2s4_ws, ext_mclk1_a, _),
>>> +    LPI_PINGROUP(14, 6, swr_tx_data, ext_mclk1_d, _, _),
>>> +    LPI_PINGROUP(15, 20, i2s2_data, wsa2_swr_clk, _, _),
>>> +    LPI_PINGROUP(16, 21, i2s2_data, wsa2_swr_data, _, _),
>>
>> The max slew rate value (shift) here defined in the register map is 18 for
>> this platform
>>
> 
> ACK, will update proper rates.

It (although generally very unlikely) may be that the register map is missing
something. You probably know the hardware better, or know who to ask. Please
check that.

Konrad

