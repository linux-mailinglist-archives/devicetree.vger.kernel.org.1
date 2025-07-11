Return-Path: <devicetree+bounces-195459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F9BB01C5A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:48:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C501F643860
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5162C3268;
	Fri, 11 Jul 2025 12:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X9FUJbEq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5CA2C08D7
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752238075; cv=none; b=I75Beh63yYcsAo7k3joigLjWG6+004XkwQB5flafeDd86AnWePAOL4PEJFSwEgTVxzwRrNrSs2QwqJsYt7gL5IEa26W1a3ZHZfTTp96+UakLUt/vUUJ2Sw5ieu5Qtf5qHrPB2niVZ0QZij8Ax7FXWVgutKer1595EdhwPDzxl24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752238075; c=relaxed/simple;
	bh=UNxMOEUno3xTWwKEaRj5cEusAaX9h5nRn17UJeR0sAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G0FbTonxk71HrGuNWOFuFY7Kfn9UyoJ6sMZITNQ4Crt9asn8MWYp3cZ9XeQtyZE5PSrrBtrnPwRaxUcFSP9gL6FIDBbrbvl161BGSZ9vgMS9oMpIrG8+7EkIzxyx34UAopWDMY1YAHI6QSNLiQmI/pxZ6Q5iOeMvVw9Rw8bX+Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X9FUJbEq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BB8HYa018452
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:47:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tAAJC0j1RSdDu1oR46fr2tvvyrGBbj/Zy+RWTiBXIb8=; b=X9FUJbEqXt/GRWi1
	MpZGRnbIhTCx/5UJ9Uow0gemXj+HVxuGpHQ12qKBSWodNyS0mx9njaBuUtNbXGQj
	/+MnWLvHdUlij0hdi9+v/DC+oHAq3vdqKzHjCCqC3PtNncciru30+UXvycUi09+4
	vpUlvnf3kaXI8/EMKfg+BYAyKdv5tsGjJ98SKPqepyNkJJ7yZ4IGzRv5r6WQOIxC
	kUhwu11Kwx52f1ThxJmrKIUq584ALAiE/tvXQCwV0l1qJZshfFhmVHUTiuxx3fF1
	3VkcWa6Z0uh/M4lP6RWE44dzayw/rCKwrFIIs+04QGfKMy/gposntl34WwDvGxFS
	8ACUPg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47tkf32g0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:47:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7df5870c8b1so13901185a.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:47:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752238072; x=1752842872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tAAJC0j1RSdDu1oR46fr2tvvyrGBbj/Zy+RWTiBXIb8=;
        b=fgZoqQYc71IeUDqyzXx5RL3TKteqUzKDevbRr/ikomeEKi+mbI9NKwqKzrsOwRzW2T
         1DHzI1HcCMdyw0nHOeYRsfsge8zjJEaf7xCMBd9dirg0803tzE4lIw9j7e0rhzOVslSV
         i7u4NcakjHF4Xnqv4Ts/Ups6dbR3+ZZn+ixY/i9VEWNyVhF1E8RtaANGnPDW9qJ9BCkS
         9Usdwd+eSZOakuUoSNaB5dgxQREJlMFFFbwNmybjMzZJuhWpniY9azpXEP8UDLGClyBH
         yiAfuJgOL4eMpZRNZrdVWz7McYEK+S9I0zindhlRdk+V5y3Dy1S2AnAZeiBDOu0VcmE1
         Ylgw==
X-Forwarded-Encrypted: i=1; AJvYcCVydAfU8nYF9piLvLCyUgbKtef1Rjw3icfDb9Ecg9UTgXFo1+17l7wlJSIs8WLiFpPQRRH6RQwH08c9@vger.kernel.org
X-Gm-Message-State: AOJu0YwFcphJl9qgUyqpMAKrlX8DAOYUYUSDd0XS2fmwbsmvOhNWby+w
	IEo3l7nLzT7Jymi3MNf6fXkguowkcpj3sQXG8xQi8xS8/o1VsNVbTpNGkp8LEwZnpWUsWwAwfaG
	gi+AMjb7QBQI7bz9mjRsn1LcJaiqsyiG2h2a053StCJz+LDTVhDzDkirqPrUUTTc+
X-Gm-Gg: ASbGncvJzNAN5kF83qL+zvHzX1ylZExh+dbKnCXDAAhyb5UguBraQbUL68VFguLf/Ob
	1I9E9Y3r4ZyG4sKAOtMjZrekkGAHVU6X/h9ssEmOfHqvA7sKO4b+Gn7+vWb6ti1uGYfnlTwkn9v
	RrZFQ2xkb1q8bb5EOXUzZho+lhZ42hOijsPX3TMy4+spt+ucVOZZjtjtlKeWIRBniLg0UM1Red9
	mjwi4Q2m5O1pCION27IEZObqjqtSqcbdrJSOsC79AdloUoLidEpLgJLQ06lSKMHot/vVzWiwUIu
	PtwzsC5CvvKdtxipxY2jnO85kz/09opv+IL+Dyz2opPwLOes7+f0ESCUhG2ALFghW71swAztZc6
	atWAbx6rKwtNf7YVEQ27x
X-Received: by 2002:a05:620a:4514:b0:7c3:c814:591d with SMTP id af79cd13be357-7dde99543ccmr215845785a.1.1752238072117;
        Fri, 11 Jul 2025 05:47:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESeu2U+6k3WIMyxzzNWPESRT3vMyXcb5iFXXbJeFXaDa9YBQhYzxhAIugUY6ZcfdnzrOroHg==
X-Received: by 2002:a05:620a:4514:b0:7c3:c814:591d with SMTP id af79cd13be357-7dde99543ccmr215843785a.1.1752238071499;
        Fri, 11 Jul 2025 05:47:51 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c95256d0sm2173291a12.24.2025.07.11.05.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:47:50 -0700 (PDT)
Message-ID: <05fd9c4d-4fc0-4386-88f8-9b11516e11ca@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:47:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/72] arm64: dts: qcom:
 sdm845-db845c-navigation-mezzanine: Replace clock-frequency in camera sensor
 node
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
        Mehdi Djait <mehdi.djait@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250710174808.5361-1-laurent.pinchart@ideasonboard.com>
 <20250710174808.5361-13-laurent.pinchart@ideasonboard.com>
 <214c3d98-d0ee-4806-8c0e-81c1766dd1f0@oss.qualcomm.com>
 <20250711124553.GG27674@pendragon.ideasonboard.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711124553.GG27674@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA5MCBTYWx0ZWRfX7H1asikzT/OR
 5L92KQ8LGGkzHrOPUv0HkOg6fSyuFjL0GnxvVwerFCj2AhS/2b3woPGpb3wAybYBj7Q8RaJt/fz
 Z8X27+r24aOMm0O22YN5VqzXHS2gD+ReKVUa2VNW/mH01imXsTcW44DIwyalBV5z7U0aWxbbN1n
 AgxsfExQ8cR9jQzhObRCOvJjF3YA2/S7G4Fw0SM+LGGcFhKtcIzlnx7P8auckCD4rIV1j6HpMLj
 XSpkLrbSKvxvhsTD68Vh0nZCrgAU0sSNpLV8QgpM49QXPtZXHtO6ZSo3j+PacoiRlwF3o+H4aKT
 +3KiiPm/kzA4zORY9k6CXiA+Orxr84Xdrwxm3jhR+qRhcjREgWuH2xfSLWncIYqpxkhNKsUfeoW
 cAXNBAvNTaqW0S485aSiwFlBFR7m2OfcHvdVS40aMLqSMtaqeRHqLJGO+UNP8h1Pq6nXHPrg
X-Proofpoint-GUID: JD2Q2xRWmELiPxIRx8FJEwI5QgquFBe3
X-Authority-Analysis: v=2.4 cv=Xuf6OUF9 c=1 sm=1 tr=0 ts=687107f9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=P1BnusSwAAAA:8
 a=EUspDBNiAAAA:8 a=NubvJ2om332UdV8EFb0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-ORIG-GUID: JD2Q2xRWmELiPxIRx8FJEwI5QgquFBe3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110090

On 7/11/25 2:45 PM, Laurent Pinchart wrote:
> Hi Konrad,
> 
> On Fri, Jul 11, 2025 at 02:25:14PM +0200, Konrad Dybcio wrote:
>> On 7/10/25 7:47 PM, Laurent Pinchart wrote:
>>> The clock-frequency for camera sensors has been deprecated in favour of
>>> the assigned-clocks and assigned-clock-rates properties. Replace it in
>>> the device tree.
>>>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> ---
>>>  .../boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso      | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
>>> index 51f1a4883ab8..dbe1911d8e47 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
>>> @@ -44,7 +44,8 @@ camera@10 {
>>>  
>>>  		clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
>>>  		clock-names = "xvclk";
>>> -		clock-frequency = <19200000>;
>>> +		assigned-clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
>>> +		assigned-clock-rates = <19200000>;
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> (although your patches still seem to leave clk_set_rate in
>> ov8856.c anyway?)
> 
> The call gets removed in patch 69/72 ([1]). It gets replaced by
> devm_v4l2_sensor_clk_get_legacy(), which internally calls
> clk_set_rate(), so the behaviour is preserved to avoid breaking backward
> compatibility with old DTs.
> 
> [1] https://lore.kernel.org/linux-media/20250710174808.5361-70-laurent.pinchart@ideasonboard.com

Overlooked that, thanks

Konrad


