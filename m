Return-Path: <devicetree+bounces-215457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F18B51782
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6685D545821
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CEEE18EFD1;
	Wed, 10 Sep 2025 13:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LgC4HxJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC9933F6
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757509264; cv=none; b=KrL5xBM4ztkA/9DC5UZCPcCH2fL/4wC+Ry1utHZsNrOlWqplTnTqJbKuiZDXNwYkvP/fIYek/fClWzW7sae2lsqfMHG903an5EB/ke2r3+H+xWsbZpUwSlVZ68dPcGMhooMKPDOWSPYngDh7tX3BBqIuSaYTbOYIbGfvIDin5HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757509264; c=relaxed/simple;
	bh=2T/8Ztsxi4AWL1kpHNyrAMiLhaqvXC5D9zLHqmODIVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eBboYfh0m6QXjB9kXTtQA4uHCr8ilVFKkWkso5q4NTnZICJBsIReqNFE4q3ES/f0AR3XLc7XppsUVV6uv+vgeS+pLIhFCHEPjDOfqIcADS15imjGMwfDZJwuab77Nxo6ibQDTJGhu4ot9xErWsJ2eMdHeYVBaiZgbxZv31iEP9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LgC4HxJd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACgFcP028801
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:01:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OJorFgWZxPg65RyVPLB0lRHsqzbMwIYmxp3OdkMcOE4=; b=LgC4HxJdACiZFbyG
	MBQAE+rnW0NKD3ZlQlnjLhAtpjtWzKyCQKgB16OaR3RarZ+ncbEHTVFvnRLLVKJJ
	R8AbzTAt/vAdmrElde1j/5a//MibhbGMe4jArQtKJhuAUAJ7M+IkQjqTdPGIfyCP
	Gi80tlSOMTtiKgUhmtcu7SyU19FMZQA8Xa9rMkhiX6l0kTkDXU1fv+iWI5O5IPVP
	99L1KLgmulpc6UszGIetpXr2N7UA7bwC5UIyf8Ibdaq1ULK54GB6YGKiyppeGQOr
	MOxCDBaxkf6vUBtQObYlZVhDPWQIffz6RDZJ8KJaDvKiSRwysIqiYIjhHaKkTcSW
	lnWaDQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9jbyev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:01:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70dca587837so9999266d6.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 06:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757509261; x=1758114061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OJorFgWZxPg65RyVPLB0lRHsqzbMwIYmxp3OdkMcOE4=;
        b=l8bYq0TRLNbECHCyHCK9CkGWDn6/ZVRE4HS9UMj20h2eyAFmUaRB9gqk9F8obqyw3e
         sthVBuwwA0y5UKxX+ikjnFZ+WK25yEJ1oKZVkYUCUqkInYvh0KmNYs2oDChGo0UHV93U
         vTpXGH7tlk8xrfr/gwje6bDbd3C2iJA6dn4TeZuDaUG0UdPufDw8yiJWhYrkWnxnkbcP
         aiU/YQDRnFOEZU1PgILktoVFeFA8HGQh7fizqQgMZDUn0wihSnymOopXY4gbvdu5/SZf
         gLteI4pwSPsJrgRSEIBz5K0wDqaHZGgxLAAevNf/UktXflo74+r0pFuYm+WyFX6CSrR6
         NKfA==
X-Forwarded-Encrypted: i=1; AJvYcCUZSBKwY73QbSqGHjazVTK5K+/k49Cc5Nve1iCo3MDovngk9ey7aeUqpcgrOx76mZD8SzMvY3virp0X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/VEz5WfpQzCxosKg/p/ATarkCYAjdxGVG8PA0fk5UW9PaFvJr
	v5mUOEzIQceGPYNgoStFqmCfVQynZIfr+1PYMSA8MekFgeJU6udh/BfD9OrPVbBxtZJxjrPCalz
	KVmYpWQWE0DFOAkkYKKzaxQpNI/4hh+4SmaWt6sHOvVKJ7TpQel3W1p7kWSR3L6BT
X-Gm-Gg: ASbGncvufoGj5NOVqog63JUeceZhSlyJlEqogMYmEdcCkobw4/DMw/MmsT5HyXR4EK/
	B+TeqzCA/l30TLNE5rHPD9gEsObNfsIYHwmzXZxfjctrgVsdWYWWFnFYWmPXXvtdA8uSufLfYD5
	lCjmaPbXZkB61jUzwGF9fYS8d2BzzwSQof04KEbmwpzyVZQOifOST+zT/c0kuyrwOoYPTLx3NL4
	VEr4FkDjwOBxCEuIPwGit88w2gVgC8pZnC+r1xP4HsxIu//M7pFrQTuCvpVUgv//1nUujKTaDST
	fciXLz5bSnfgZjUU/YDg0CTkDJltXbibmf7k8sNcYYlYaWY+Q4CkdHiajp+uBMb28Ollud5oTHv
	orh+aPjXdg8SN+fESp5LLRQ==
X-Received: by 2002:a05:6214:411a:b0:75a:9c0b:6b7d with SMTP id 6a1803df08f44-75a9c0b6dc2mr32858166d6.2.1757509259851;
        Wed, 10 Sep 2025 06:00:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGyPmSFM50615M6RHwW4JfpvtlFW1/WulsS/UQRD9mfp3W+5WGHHqGDBmhseR7J3icQ11+sA==
X-Received: by 2002:a05:6214:411a:b0:75a:9c0b:6b7d with SMTP id 6a1803df08f44-75a9c0b6dc2mr32856966d6.2.1757509258861;
        Wed, 10 Sep 2025 06:00:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f6a7esm3289951a12.42.2025.09.10.06.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 06:00:58 -0700 (PDT)
Message-ID: <634ae260-3a7b-475d-b40f-47401a70a53b@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 15:00:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] leds: led-class: Add devicetree support to
 led_get()
To: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Hans de Goede <hansg@kernel.org>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Jean-Jacques Hiblot <jjhiblot@traphandler.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus
 <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Daniel Thompson
 <danielt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, threeway@gmail.com,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20250910-leds-v5-0-bb90a0f897d5@vinarskis.com>
 <20250910-leds-v5-3-bb90a0f897d5@vinarskis.com>
 <b9017909-1643-4cef-bfff-5b672dd73960@oss.qualcomm.com>
 <jsLJqyPfjA2iFNHMvAxgz-zO1WecVgleSahWgW_B5BshbYat4X1UqUuKpexfxlRxnD3oWlAnHqeLGpne8JebFV-ICVxvr5g-5nI8P2Q6dY8=@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <jsLJqyPfjA2iFNHMvAxgz-zO1WecVgleSahWgW_B5BshbYat4X1UqUuKpexfxlRxnD3oWlAnHqeLGpne8JebFV-ICVxvr5g-5nI8P2Q6dY8=@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXwsshvV3HZjsc
 KlLXTapXm0XvfnIVcrLY/AJw0t11PN4VggKXwqitpkTqzLQw+ujAP7KrvI0ljIJ9kLwV+0Hn8sF
 a+mQIEwykom7MIZLG4tzKMOby/sVWPlr2NJJGQsDjO/qLfoTuV3yKNnV24s0p1kijr0/Ox/HhTl
 NjeR1HY79UGeYeltDkuqdIE2lFQZV9Ma9leMnJm+EpotabmuGvpNxNnFb24LlY/FGCdg0buxXp6
 iZtppBXRBgZonmvRMQ0IYBf12AgpaL1+y76FdeyNfBXyzfG6P2Qm5wD+OPASTSq9EZcZWTLaPVL
 lR9AIDCAvtEXofwEEr18bAH6gzHvE6z64z6wbPq09HpvkjIVZ6YYGxnAYyLsZOkIEWer6bjyvLe
 cju7QbtL
X-Proofpoint-ORIG-GUID: 4NykNiZNbtlYvl2JekueIRl_oqF5R-3l
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68c1768d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=I76Qk8w-AAAA:8 a=vFEzn3JI1hsOnF_rj58A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-GUID: 4NykNiZNbtlYvl2JekueIRl_oqF5R-3l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

On 9/10/25 2:54 PM, Aleksandrs Vinarskis wrote:
> 
> 
> 
> 
> 
> On Wednesday, September 10th, 2025 at 14:22, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
>>
>>
>> On 9/10/25 2:01 PM, Aleksandrs Vinarskis wrote:
>>
>>> From: Hans de Goede hansg@kernel.org
>>>
>>> Add 'name' argument to of_led_get() such that it can lookup LEDs in
>>> devicetree by either name or index.
>>>
>>> And use this modified function to add devicetree support to the generic
>>> (non devicetree specific) [devm_]led_get() function.
>>>
>>> This uses the standard devicetree pattern of adding a -names string array
>>> to map names to the indexes for an array of resources.
>>>
>>> Reviewed-by: Andy Shevchenko andy.shevchenko@gmail.com
>>> Reviewed-by: Lee Jones lee@kernel.org
>>> Reviewed-by: Linus Walleij linus.walleij@linaro.org
>>> Signed-off-by: Hans de Goede hansg@kernel.org
>>> Signed-off-by: Aleksandrs Vinarskis alex@vinarskis.com
>>> ---
>>
>>
>> I was thinking, perhaps we should introduce some sort of an exclusive
>> access mechanism, so that the e.g. user (or malware) can't listen to
>> uevents and immediately shut down the LED over sysfs
> 
> It is already done by the original series from Hans (linked in cover),
> which was merged few years back. It is also the reason why this
> approach is used instead of typically used trigger-source - that
> would've indeed allowed anyone with access to sysfs to disable the
> indicator.
> 
> As per Hans [1], v4l2-core would disable sysfs of privacy indicator:
> 
>     sd->privacy_led = led_get(sd->dev, "privacy-led")
>     led_sysfs_disable(sd->privacy_led);
> 
> 
> Of course, this security only holds if one has secure boot enforced,
> kernel, modules, _and_ device-tree blobs are signed.

Great, thank you for this context

Konrad

