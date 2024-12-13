Return-Path: <devicetree+bounces-130724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D622B9F0B76
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 240651888113
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1396B1DEFDD;
	Fri, 13 Dec 2024 11:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W0eh0JwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9341DE4FF
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734090150; cv=none; b=nd+vEhJzxbSMfuvbSD+F+447YhMek7HiAAHLzKDbzwZUkKzn9YTEc1G7gRpHREv7JkQSQTyq0g/4zpKUZsTzwTV27LB0RNnC8B5FXKFAqeYwNdOpVZKOVif1c5A3Ro/fAWp4cMdGPazPXKBiLoQqqQu2+Gyg5TCWJ4nJfy0DeHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734090150; c=relaxed/simple;
	bh=KfwElkoamyBr6dHaJmCP1yGZQtya9h6Gl4i7XC83T+w=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SAUzQyt4xKhScRaMntTHGooiVyBvskqQw8V/umPf/rP2walurIqiLl+FfuUaHG6oZGvE403YUe85w2mOAwOhak8XIC+QydyUa7y64AtJpJ2f19M48F3ZzPl9UHl4VN+C45T+1D0Mx7xL/PGgHhK7QJE3tWQYaPFd+Olty3GX9E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W0eh0JwL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9p3v0018631
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:42:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FQv7IVxjVACkrTRCvKOM4p4nwCL4rvLfPutFmzt3IYg=; b=W0eh0JwLthlif8WA
	GZMXwZCPyXXIEQy5MzDgB5Jj4JLgbzOsuspzrzjqEJjoRFNQl0TyFGKprGaPhOUm
	GQ4On/lC6NXH7e4esA5Ruiuk/d3Qqqonqu4Xw58aGQeuzxE1lqbXZTWqyYnYrJjR
	HgIh87cb56Rv2e/sdKrame3xSOgkJYn9+PW9JCGOqyvP1LB7pk/v+TYfv/Cm+hAj
	Ny2ERFc8F2wcYGR6sa/hDV6NYmEHglIbIQajve7dPBOrGVIHCmQrcoviUHVUOX6F
	97lSmg1OaRJUvAZ6ZRe3aqw26ngBPj5g6XZdXY10MzweCmoI6Da9MJ4f/+xzw8ca
	tVjn0A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjnb0au3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:42:25 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-7fd481e3c0bso1180364a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:42:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734090145; x=1734694945;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FQv7IVxjVACkrTRCvKOM4p4nwCL4rvLfPutFmzt3IYg=;
        b=LDLFJIviXonuhaJOSRANgJk7X5hISI0OuIP8/p4XfyJiQYZJx5VmT/puAjIw75POh6
         DXXcy6Z+erNZ8IARQ8O/w0zKZiu4tUhQ89WQf67wCRxVlY18/a0Sbs3DIRlG5AxQDXpD
         woxFCL4Ztrt0MFEhS7Q+wWJP8Umpwcy2Unlu3cGFfyMHLRDROnwfFiopiQideUwBwArX
         QgRZhXLlFd0qtR7JydMyjARclZdJ5JAHTgkVJ11/5KgqR4O1ZlU93e6fwOZm6JWyGKwJ
         5X3sC/tlyiPpw4uiLq/jW/mf6q2mDbimJSt1KRHKOp3dcBsiqMJH3cXnpEuCXfonolbe
         /9dA==
X-Forwarded-Encrypted: i=1; AJvYcCVmOf7/VNjbp0U4QH/CJopAtcZ/nJMT0s6XPG2WHqyUdd4lHPUiGvCuz4ApHzmvLpEd8ZabtF5u/LQB@vger.kernel.org
X-Gm-Message-State: AOJu0YxqYXPcIBiLSi78NnwK3g9mB80Pp+Tz5z7aOfmMRfUB173wmtrc
	2+UCE1XTn6WwZJm1lPCdBOLmJl5Mwkl1o5a0Q8YoX2E1S9eEVn9fc4wLPkAEguaL6+qZQw5wI7v
	/l07H5o4Ak2yYU9+OqB1/V+/JxqZJR4focVgRY9/ZMGfzlxesg0FslzaeWR+F
X-Gm-Gg: ASbGnctIHELYM6udMLtV0rqbKTdNE/sVsNXiqPS1eWRpe7stjd/g/M4WtOu/SUItnnr
	t2WLRFvp6cUInyj52/T7BSyxLYKNLkYeQ6wJ4JGHT6S37EoptafyEo+aA6gSEFkfWkC1GYcy/vu
	5y1Ud5ym2rWflz/ZJAX2lMPAMpOK1uG81/M3tJ/jY1Wj4s3T1oizYRoP7UX2t9qwQXipeycRVkG
	pncS3npOWOQGBYhILjuT0ZETJiNQecxpM2RkRGQEsYY7LLkEyXbGep+443ixDSv1XWdJBjBDpff
	e5AcP1Gs4NWd
X-Received: by 2002:a05:6a21:33a2:b0:1e0:c378:6f5b with SMTP id adf61e73a8af0-1e1dfe00a4cmr3432565637.38.1734090144779;
        Fri, 13 Dec 2024 03:42:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbRGjC5kQy8J8gqH9ctFRDR5zOT73qras+Ov4x8ubPpgzJl0ESePQz9BB2CprPbojLAnteEw==
X-Received: by 2002:a05:6a21:33a2:b0:1e0:c378:6f5b with SMTP id adf61e73a8af0-1e1dfe00a4cmr3432531637.38.1734090144436;
        Fri, 13 Dec 2024 03:42:24 -0800 (PST)
Received: from [10.92.163.196] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725f1fa8ad1sm8583351b3a.103.2024.12.13.03.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:42:24 -0800 (PST)
Message-ID: <6800730a-d164-40a5-a3ae-dca3b1909c27@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 17:12:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Enable secondary USB controller
 on QCS615 Ride
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Song Xue <quic_songxue@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com
References: <20241211-add_usb_host_mode_for_qcs615-v2-0-2c4abdf67635@quicinc.com>
 <20241211-add_usb_host_mode_for_qcs615-v2-2-2c4abdf67635@quicinc.com>
 <cc3edfc6-f53c-401b-b766-f8e560eb24b9@oss.qualcomm.com>
 <lqscul6yal5mmztup23rcgmyqhfj3vt45rxxsw6ocrnumwfpfe@g3at5zqvtd5u>
Content-Language: en-US
In-Reply-To: <lqscul6yal5mmztup23rcgmyqhfj3vt45rxxsw6ocrnumwfpfe@g3at5zqvtd5u>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eLKgJPtfCaLSAQIT0LlnkKalKvPReAS6
X-Proofpoint-GUID: eLKgJPtfCaLSAQIT0LlnkKalKvPReAS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412130081



On 12/13/2024 10:50 AM, Dmitry Baryshkov wrote:
> On Thu, Dec 12, 2024 at 07:14:22PM +0100, Konrad Dybcio wrote:
>> On 11.12.2024 9:26 AM, Song Xue wrote:
>>> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>
>>> Enable secondary USB controller on QCS615 Ride platform. The secondary
>>> USB controller is made "host", as it is a Type-A port.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> Co-developed-by: Song Xue <quic_songxue@quicinc.com>
>>> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 28 ++++++++++++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> index f41319ff47b983d771da52775fa78b4385c4e532..26ce0496d13ccbfea392c6d50d9edcab85fbc653 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> @@ -203,6 +203,15 @@ &gcc {
>>>   		 <&sleep_clk>;
>>>   };
>>>   
>>> +&pm8150_gpios {
>>> +	usb2_en_state: usb2-en-state {
>>> +		pins = "gpio10";
>>> +		function = "normal";
>>> +		output-high;
>>> +		power-source = <0>;
>>> +	};
>>
>> Does this go to an enable pin of a vreg / switch?
>>
>> I think we settled on describing such cases as fixed regulators
>> (that are always-on for now) - would you remember, +Dmitry?
> 
> You are right. Usually it's a fixed regulator. At least there should be
> an explanation for that pin.
> 

Hi Dmitry, Konrad,

  Thanks for the review. You are right. I missed it. There is a switch 
TPS2549IRTERQ1 that is being controlled by GPIO10 (just like in [2]) and 
provides vbus to external peripherals. I am trying to get some 
additional info from internal teams before sending v2.

  I followed [1] instead of [2] by mistake. Will fix this up in v2:

  [1]: 
https://lore.kernel.org/all/20240206114745.1388491-3-quic_kriskura@quicinc.com/
  [2]: 
https://lore.kernel.org/all/20240429162048.2133512-3-quic_kriskura@quicinc.com/

Regards,
Krishna,

