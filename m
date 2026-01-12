Return-Path: <devicetree+bounces-254166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D76D15207
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 73E9A300485B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A36C8324B2A;
	Mon, 12 Jan 2026 19:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZA9Je4oq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PhfY1G6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3656A32255D
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247482; cv=none; b=FGHU35JfccA7cabk4J/54gIWOZdymo/VQ8SVntfqkdtVlz4++WVRQVdYX5P3wlGeg2jAM6u9a6/aU/3A1fp6kZjAgq3sE69uZLUMhLP8JDzhg8/79sy2YjxqKrm4gFzAdpI2HswlSiy3R42UiLExsWsnMMV7UK27S76jjDxeZwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247482; c=relaxed/simple;
	bh=4Lu6pbEjxU9vVEUJ6IJCISofVK1ATmvsPJSfgIoGW8Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CCwuIcae36k4r4AEFVjspRTn4uwZVgTHD/bFg03xnanQDrFV5PR/KRPevAFZG8yqeJW3y8D6QX2qq/67I1ttyuVSLnDKevYqYY5s42rCA+cvvcc/tSyqQQke+xhJ+nPzKmTP+KrkBIz4lpYNymO+S9xonHy3oWTU516kqBBwEZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZA9Je4oq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PhfY1G6Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CHfB2P1376550
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AyrQeNRGMKiWJm9jy2A0UK3uV8Lg7oA7wv2Q1YlslQE=; b=ZA9Je4oqZW40L1hB
	+78wHZw/b74HNB62MD4k0vJK0pyTwjMEDTuW2gjj3VM48Zjl6lRGWTwD6ngd9ksl
	PilZmg5s+d0GXyNkFfZ3t+5tFkmxki5jQRyZnvm01lcc3cg5RvrUUGQQvxs6XPuX
	tJDbn1ieTXQbgQvuzBifG2/KsURVdkjJ3z3EsDrLtIGjBijY+6d4wZ8Hcjn/axTP
	VyEovzbyIQkIeln0IYtKshzMmIIfjq/YJHivJ/dN8iavUc4+e/uZ15iHmrFXwltT
	Vsx41pi7wHh8gZw9ZkZJu08iGBmGT5G8zE6zsDldc6svK8L+TfS9uTLm4gVLdkPm
	lIOUMw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmxdvsvme-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:51:20 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ae6ef97ac5so24497555eec.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768247479; x=1768852279; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AyrQeNRGMKiWJm9jy2A0UK3uV8Lg7oA7wv2Q1YlslQE=;
        b=PhfY1G6YcarV7W0WhwiRC8uArKlp6AjgnPrn3iDkiNNvx6+WD6fzdRS4FlrjWvMvQ4
         MWe+P28fl2VyrJmX75n61crJziQdZ8QMOYxjU5+PPpM7GblRFFUZg+x0f9KGl0HNlXST
         LEYryw1UMPeAtRnpwsRzCxF3kpNkux+FEa2mFMtYtR4wr39S80/qWGQLoy/pKpHGaakN
         eSALM175jmqeD0EnynE99V55i9Z8i/mjj4+ou9gn8OMlqsVNthaw0HOXuKmOpfxCUPrQ
         R4IHYA+LlWBOZBBkmyh3SMc7F1YE160isCFuXuJo/QZv7Q6i9XbtxRe5Qs0RhIBU2CHw
         FWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768247479; x=1768852279;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AyrQeNRGMKiWJm9jy2A0UK3uV8Lg7oA7wv2Q1YlslQE=;
        b=OkXDmME2o33LDCWCWZJ0SHEQcEihMcYV1CeGU5TTcQFEGU2p1e9hj8XI+RrnPXUll1
         7R8FcZyAPhgzl8tpVXlIlMiJ/wT04loKABoxKCM8OAFFYpVeYN7TcVkoQAzzzrDH4Hfk
         GewIUqx8B8rkem5aIJi+1Sjz/IolA5+QGKRxSASb4IcmYTUEweWBBJgSU9unQBZOdcFU
         HlK5/YDIOW4atWNnZLu7U6Pjj4VEl8sqY5fnZlKUZk99OWKWY9WK3VkpdE5tPxuhB41B
         N2vXjn9tn2sIgrQfGzAA6D/rkcyl0gPRT32cSyMPtgk6xDi43no8F6qx6CojIy2cctYu
         YQgA==
X-Forwarded-Encrypted: i=1; AJvYcCXSPKjLulUhHTwwLfZGUTsLZTc+5hu4s6KDaSzgMkEemzW9PMAFiDfu3ODFV9GwX3bfCFpVM0LVA6wC@vger.kernel.org
X-Gm-Message-State: AOJu0YyEQhsN58m4SPpZi3MF7dKZlT5G63XX//lR7kWiBovBKr49cJYh
	TiJcp35uGI6Oj7vNG5/lrI31n5kMkqfh48xf5YCrtOkCZs4jobjferQDxGxHgqA/1alYtNJegSX
	IemLOU14aBNWwOqa89wR8YuqtYdB85O4liwmdlXbi4VHV290jZSrqodqeZ00NkLsl
X-Gm-Gg: AY/fxX6WwjptzTykGSBHXEmgblnHn2yPWMTH6TBlnPyROe5pSAWTYyMUSa9J1YTxw3/
	sgq8fKcj4Ad6agcgQ88yeo0zSjdxWPR0ryg4KfLC5i/5zhGScM8Io1vh45Bd1/6L+BzZdd/isIx
	b3OGuM+TYLJIF3N6V/vXMSVO8pIT1F4IOSDa+IO92nWkPZS1Hju0pafGljcPR4l56po7qSAOUNn
	L3t9SCaj9Pezq/8DC0IfHpUKBaMqVqLtxdqGwkWk/AakhGLi69iPRr59GeiYGYMpg4jcaldoQA+
	g+bByICz7AsB1nPQ2HGMerdOwZlkQ+FSmeBz3uTp5Wjw7LFdTRqsMUmnWN8jWNkFbHomgrhTC2m
	buu6v481mq8ke+8UfcyRCpVP8Kg+WHQx0SOOeHbW7XBdBCnLsI9so4ARvrCQ33kZTKEB2D15RWy
	j6
X-Received: by 2002:a05:7301:490b:b0:2ab:9f55:d15a with SMTP id 5a478bee46e88-2b17d318ccemr12574115eec.29.1768247479047;
        Mon, 12 Jan 2026 11:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHk6xYB4ZRN+cIwyeLW8/iG9JuwoV/B2OUgags4UdIMA807zGQKH2Qblcn9/Gn+mcQnl8ucdA==
X-Received: by 2002:a05:7301:490b:b0:2ab:9f55:d15a with SMTP id 5a478bee46e88-2b17d318ccemr12574098eec.29.1768247478533;
        Mon, 12 Jan 2026 11:51:18 -0800 (PST)
Received: from [192.168.1.3] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d76aasm15520905eec.33.2026.01.12.11.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 11:51:18 -0800 (PST)
Message-ID: <0ad4722d-1557-4d8d-ae45-c0fdf893067f@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:51:16 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-current 2/2] dt-bindings: net: wireless: ath11k-pci:
 deprecate 'firmware-name' property
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
 <20251204071100.970518-3-miaoqing.pan@oss.qualcomm.com>
 <f60bc80d-a947-4083-9e14-000a937de412@oss.qualcomm.com>
 <76d1c3ad-d648-4719-b016-1f16b195e64c@kernel.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <76d1c3ad-d648-4719-b016-1f16b195e64c@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _tSnBeFlgoyPmmF8mIfKGIeeDmgRk5ea
X-Proofpoint-GUID: _tSnBeFlgoyPmmF8mIfKGIeeDmgRk5ea
X-Authority-Analysis: v=2.4 cv=HoZ72kTS c=1 sm=1 tr=0 ts=696550b8 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8
 a=V5SxF7jbE5cyk4fQ5xYA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE2NSBTYWx0ZWRfX6pERoFc1GMty
 Yl2wG7fHPEClpdbFdnCdxv0GSrLtNvHPz+BM0QTS7vVFeIh97VBr2IWhU3s4nGoEsJCn/diYin3
 jmgTfKkJuUfYfwAVj12K6dvmkQmWq5fi5uOO4mDFyxby/jXTPAnxy+BLZcvtgKxLIFC++BoTwQo
 7GW6SQAievoB7UxOjKb4NMiNTo9ssGEPAvxcA37y7D+fj0NP1b4JLSPU5h+Jxi1neEDGqkRQAhC
 s23hs/eXxRe0oK9h+0sdL8UsoJVsyOSNI8s75evb61L675ChPMckdnK3vLUryCANU4f+3EeClyv
 hVpTRgh5yf3+cW9RqFkFA+WM1HnvG3J1x4gBESf7jFZkUxPiqDBAuWJLmhPWkMoutQfBZVgnZOh
 PyJ0Qz023dfVvL/Fn+NhTX1BmAjJG3VUIp2osXAhd+TSNliYIRDMIhgbv7u0JQ0264AOp2dQZOj
 Mo6RcfRGVRcfOcOVOrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120165

On 12/11/2025 7:23 PM, Krzysztof Kozlowski wrote:
> On 11/12/2025 17:44, Jeff Johnson wrote:
>> On 12/3/2025 11:11 PM, Miaoqing Pan wrote:
>>> The firmware-name property was introduced to allow end-users and
>>> integrators to select usecase specific firmware for the WCN6855.
>>> However, specifying firmware for an M.2 WLAN module in the Device
>>> Tree is not appropriate. Instead, this functionality will be handled
>>> within the ath11k driver.
>>>
>>> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
>>> ---
>>>  .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>>> index e34d42a30192..0162e365798b 100644
>>> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>>> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>>> @@ -37,6 +37,7 @@ properties:
>>>  
>>>    firmware-name:
>>>      maxItems: 1
>>> +    deprecated: true
>>>      description:
>>>        If present, a board or platform specific string used to lookup
>>>        usecase-specific firmware files for the device.
>>
>> The driver patch completely removes support for this, so is this really
>> considered deprecated? Or should this actually be considered obsolete and
> 
> That's silent ABI break. I will formally NAK the patch.
> 
> 
>> completely removed?
>>
>> Do any DTS files actually reference this?
>>
>> /jeff
> 
> 
> Best regards,
> Krzysztof

Krzysztof,
Can you check the v2 to see if you still want to NAK?

https://msgid.link/20251214025230.716387-3-miaoqing.pan@oss.qualcomm.com

Thanks,
/jeff

