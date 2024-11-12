Return-Path: <devicetree+bounces-121112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63FF9C56CA
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 12:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 766F9281AF5
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 11:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12D1A2309AF;
	Tue, 12 Nov 2024 11:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VsRK3XQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B51E1A76CC
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731411628; cv=none; b=PO+KcVfSpKqix1nSJS7vFbDpxxakHkFrfJ4FUtaUca+nvkz7VUjp/vrnqRh6e9QlGMM7SqwHsaiKJ71KvsOKs6ugC8aUpSntjHd4xyK1nRjmimgRje7W/asumsPJldU2dDndGXAZzGpqF1Q1GEY/ndwnIaIWSO50/A1Yss/VJxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731411628; c=relaxed/simple;
	bh=KxaQhaDuZiAyO6Feg3AC41pZiyIORCjAtHsmV3pJyWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nojy6hR4AVEOU0mWm/clzE6DHdGPtkaw3nUVW148h4FqDlQOcyq5ZHHbvENzsr5CRbgoTW6JhjmYfz6N2AATW6vdy6Xo41zn/mUhHB0ETTeia1zZgHIvn4KU+QljzGzTqKIXXEEfEQTi+/lwFJEESX/dztN0K0hdipgn7d+1KOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VsRK3XQZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC3fr21019134
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:40:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xo17J3nDmfhZSPKvOJosq8WjCwZmWfKsAtAkpMIoxoA=; b=VsRK3XQZoV3Qaxiz
	Q9lfio8zrj/8ir8uVGeIy+9rCcl2W7l264kN3FxJf+bDfbyZatkh/DgR6iPzl/mA
	qDUoek0Vy8qgSXiEdLklqVMIM3lkYjXecWGQrr/5of+ZB070m34IHzccIUG0al4R
	br4KpqToeuNee0FG05dThIKR/xrVPkNA/HKfhSSLuvmwCPCa3qHg1IN/T+QHYU4J
	/S7emzsiISOcxwrDeLV0YPsNxtQLE2UnC1UVZ2aoHQdBTThmtpg0NNoWHMbxAHde
	nmwdLx8ureSYELUj90pEoln59UKyMZ/5yT2XllBseirFztBQdGcmWX0WrHb0AUm9
	Wt48eg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42t0gky1jh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:40:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbf3f7273cso1713296d6.3
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 03:40:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731411624; x=1732016424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xo17J3nDmfhZSPKvOJosq8WjCwZmWfKsAtAkpMIoxoA=;
        b=v0m7E5chNYRla8U+OEDNgPQzC/OwnUFDrSeEBVDaL620cbuBThfyE1AKmh6/dlMCVa
         iLY47jas3hBPF9/7pqaBsz74W7umElUzzLVItAiaZvYKD37bgT1mwi4QqnZVpp9SV9hU
         BHFYhW0x3wx7uOgkjo04npuhdpqlyGxCcj8C4IjZfqfIYytnUSQu1OlTW5Ji2LPxTffv
         VgkPBA1esfuolLI3Sgq4xijGfLv+FJrpigzHRAj2jTet1rTbb3RjjdaXybvr0mRIyVTS
         Gch1E1SNDqRbsUgEwNba4wvuFGAq0hF2xULwQGaw1vLeRzHXVMBfDKlrFuxWodpQK8by
         3DKA==
X-Forwarded-Encrypted: i=1; AJvYcCXC/8122JvZHHagnRgMNMyRmUzVu26qJctfmF25L/oHPkDQnynnU8KTyBzjr6MfRoW9iRuIx7qplK05@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ1CtyAtuCfpDSPXjxBb7Fc4cCS6r12kLVnbfXvK18IhIbEmh7
	1WzmMyr7XrpEA4o1vUr3m2nYRYSgYJThUfFPYtprMT3lNlwmwHJ1bKm+w+epA82eMS5APLAqqf3
	ilhaNq5r4+k7EFUDn64ESIh60nyrujv5PGCBSTs3gdCvuJgY90e8ioOWjxIvV
X-Received: by 2002:a05:620a:f06:b0:7a9:a6a7:dc32 with SMTP id af79cd13be357-7b331d892damr941126985a.4.1731411624419;
        Tue, 12 Nov 2024 03:40:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRxOKaLcHVl74+g0IUT+tVyhgvDU6Q9oLj6ryY0QEQY0OtrUF/lw6oAaYZepr4lAutVgAMww==
X-Received: by 2002:a05:620a:f06:b0:7a9:a6a7:dc32 with SMTP id af79cd13be357-7b331d892damr941125085a.4.1731411624095;
        Tue, 12 Nov 2024 03:40:24 -0800 (PST)
Received: from [192.168.123.190] (public-gprs527294.centertel.pl. [31.61.178.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0e2eb28sm703671666b.197.2024.11.12.03.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 03:40:23 -0800 (PST)
Message-ID: <2d5a586f-3e46-45cd-a4ef-324f5a94a331@oss.qualcomm.com>
Date: Tue, 12 Nov 2024 12:40:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
 <CACRpkdZyupZmV+e=L0KR8ospH9P=wdUrMFvBnGXyfhLhW3-=PQ@mail.gmail.com>
 <65d76651-1956-412f-911a-046f0303a16a@kernel.org>
 <28ad9f30-7465-47cc-b514-41750a4c41ca@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <28ad9f30-7465-47cc-b514-41750a4c41ca@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: TsXzncpnXv_hAZ4PdXxRCiAI7-jh45r3
X-Proofpoint-GUID: TsXzncpnXv_hAZ4PdXxRCiAI7-jh45r3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 spamscore=0 clxscore=1015 mlxscore=0 mlxlogscore=751 lowpriorityscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411120094



On 26-Jun-24 17:18, Srinivas Kandagatla wrote:
> 
> 
> On 26/06/2024 16:07, Konrad Dybcio wrote:
>>
>>
>> On 26.06.2024 12:04 PM, Linus Walleij wrote:
>>> On Sat, Jun 22, 2024 at 6:49 PM Srinivas Kandagatla
>>> <srinivas.kandagatla@linaro.org> wrote:
>>>
>>>> Add support for sm4250 lpi pinctrl.
>>>>
>>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>
>>> No major protests against v4 so patches applied!
>>
>> This was never sent to me..
>>
> seems like b4 auto-to-cc does not pick up your email ids from MAINTAINERS.
> 
>> We already have a driver for this SoC. 4250 and 6115 are the same
> No, these are not same,  here are some differences.
> - muxes for I2S mclk differ.
> - soundwire muxes are different
> - Slew rate offsets are different.
> 
> I have verified this before sending this new driver out.

I can't find anything to support what you're saying here

Konrad

