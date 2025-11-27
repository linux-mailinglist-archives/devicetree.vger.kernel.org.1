Return-Path: <devicetree+bounces-242852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDDCC8FEDD
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 19:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BC763AB341
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A522ED15F;
	Thu, 27 Nov 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rk3/1W3o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VDi5BGuX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F65D26F28A
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764268733; cv=none; b=hircjNjhE71ZKv2/wWFm/7wjvSByPnMwWiwAQzBOnVub4cS8VWHLtAtLxYXIH07J8DR3N4m8CRdGD04Mi8jY2I94JF+utg8q8CwnXgh6RHGZoNpFuLvL5F6XCXJFgfu6Hh+lG0XnvQ1Pw1YKzRFvXLIbJamB3ZiiaW0BajJ0Pck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764268733; c=relaxed/simple;
	bh=7EmGp5xuFOxZmnuoVrPri/jYzf6wmTAyHqk2MoUkLX8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fy8rZiKh+dgQd6U+63D+FdsBAlcOqlEs4Rmx2xZieTRFakFiek11UoBTFlSySTb/4aNaC6/HXK9K/AzTe2UnAWsx/AoQ9Ck1WUSIwzhwMphSs2FmdND+0WkTKu13zjP2d8xtHBGTH/2uAz78/ufj8Duyg5F/K6U8dLTKopNUk1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rk3/1W3o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VDi5BGuX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARH2fWS1592113
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	POsVzQb4aG2qHpC/XN/o/lHwVRg8HSmGyoofXeaIgoE=; b=Rk3/1W3oFZheUG9S
	WjfTLI9vjFils251eCJlJhlpdUx/NNNNyg05C2sYmKvp2RjwrtFSTlhodelaWQu9
	JAN5DFvuALGPyooApESGLaJvyovMUcojBxIhETjmFJqjnopNUsI5lbFlfotIdHcU
	iWB3/LTsyWtxnZi4dKKTIcz4tgzopDowcQ8qcEcvDREvVqUy51um/Qen1UCzD+x2
	tDG+jWFgbz/4KsrKKQDIfop5zOn10x+ALMr0nXJjyqltWgLzU5FEkN0WvQEXKuKZ
	3DcqOQp74EHGsBplrmQnF1iY7VSmvl1rLufugPEeMrpdA8o5+9War9UoKWIoW7QQ
	RKBJUQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aptpu85y2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:38:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso2353161cf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764268729; x=1764873529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=POsVzQb4aG2qHpC/XN/o/lHwVRg8HSmGyoofXeaIgoE=;
        b=VDi5BGuXLGiYytERhH0Q9Lxsc6csf6Fsw8XtOGHb66aUq8iAym2pXTG0CXbDWzOJJl
         JyguW8kvcicBEWuRYuwZJrJqNX/aZSGf1VAPhlMYvlwdSf1O5rrN3nCpVgo0jiBZ35I8
         DMeLCfAEOgMpXA8T89yJ8aPo9Et8YLzJoYuv53aGkvv17JdP0egzv8kOZgFYT8evGQFb
         OBG5pQr0MNf6o6/pDOSwnVDTA41j6YUdN0RjcB12kYM/wY09mDSMlSS6alJbpISc/8eg
         MF3RBXjF+MWEtQLmy8ZNEKBLynz6u+Twb7YChImmBGiC0Kv9Hze5RXKDgv2ttSRfhzSd
         3B9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764268729; x=1764873529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POsVzQb4aG2qHpC/XN/o/lHwVRg8HSmGyoofXeaIgoE=;
        b=jO+nOO4n6S+h/MDdT0JJ68fLC6TrfQipqMe8HPv+PI/7cuPOuHQ+4Z70XlyFqQ6Q95
         9lPNIEqgP8MsS9WIkveMzxGbGjL0U7deh1mgIkjKwjfGoN9WOYLZOnaCWKp6fLLvodpG
         rgj4Py2vBVBqKUVPk3PQ4toNBU06zFGIJfDiiCJZF65bl25e+yij3t/NBsTtUkK4Yic0
         KW5L9OQ+KJ9dL7RMu8IgrrLJDgBvKKBSu3tc+OQ+otfwFdBOjtp+E6LRidMAkEK1izZz
         lBGudQQRlV/U9JxcxPmiVb3bdJFaO/4ggM0kEFsObjBtETE3xkaF3+0I8io5Uq39RnOA
         iwVw==
X-Forwarded-Encrypted: i=1; AJvYcCXtAuy8gUT1wyPj66IiCWXkUDtgxzbAq2uPl+bVyj/suuaXzsFOUaPMeqhFFxa3NI5XVbftuoLrACjW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi82d8mAYwBwDOzJaicVlnzUgg1quWbsappOZpczjX4tXL+cOd
	UX9X+mh1zocKV1bK1y36QxQveCUdQT2KR88XcJPi0rxqnKAf19CXMNHp6S5ht5s3ELsdKr/lkbz
	jaSmuMdb/nuhbfDGY/RpHBp8BEYRqB3UV9m3TLNyW9raj0EHaKFtO/oXUfHb519Dw
X-Gm-Gg: ASbGncvAT5UDC3jvQ386ewW7TP/9XGZ/4WyXAOUCeZA5QPSnqZKGyfKUJ3gSq6dX+Ol
	04Eh6JsV7TqiaPHaRWjC5nx7bQzeU/yvx4uT1iyoSBVWATxaMq7rS7tnlaNG7mvx8EoMOn0dq49
	zEy5jEoTAThhRORK8CquLCaHL0vr4gwaQ5ZEVcg0yKf5Ccts+Y0uXV8A2pOTpQRmLil5wRuR0yj
	gAKK9RWHaceB/Pham1whJJoezkPW67zIRkcgeJ5SpBzUz5U5xdjnmP1JDYEfA+TkG7nV8rIL8xv
	Kh9SC7Pq07Nz4QbD2QNui6l1domOKAgSJRqNrz1L7CX5BMSn5Wrues3EndsMzNj+ocSH7i1mH5A
	V5+Z1hkQdCrprztA0HkrXBZZVwRcjL1E5cIJ+bHaGASbeKtj1O2gRx3vUI621oeeGi3M=
X-Received: by 2002:a05:622a:511:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee5886636dmr251071671cf.5.1764268729469;
        Thu, 27 Nov 2025 10:38:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGvBBMNvoaJ0BxGYH3uHB+fqa5EASbvxtHrZuKupeWiooJoc8dPm+7pNnJzajl26gn0WLkiQ==
X-Received: by 2002:a05:622a:511:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee5886636dmr251071261cf.5.1764268728981;
        Thu, 27 Nov 2025 10:38:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5162d31sm235196766b.9.2025.11.27.10.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 10:38:48 -0800 (PST)
Message-ID: <c627fc05-6980-44bd-bdde-4750b3bafe2d@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 19:38:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] iio: accel: Prevent NULL pointer dereference in
 interrupt setup
To: Rudraksha Gupta <guptarud@gmail.com>,
        Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org
References: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
 <20251124-expressatt_nfc_accel_magn_light-v4-5-9c5686ad67e2@gmail.com>
 <d3318386-2646-4f1c-ab4b-6ae3bc71e9bb@oss.qualcomm.com>
 <aSWPnRBRdPS8vnir@smile.fi.intel.com>
 <61e860e7-fc3b-49ad-bf6a-9745f205d52b@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <61e860e7-fc3b-49ad-bf6a-9745f205d52b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: b4zJr4pt2LCqq_jVcPZjqak1UH4N41F-
X-Proofpoint-ORIG-GUID: b4zJr4pt2LCqq_jVcPZjqak1UH4N41F-
X-Authority-Analysis: v=2.4 cv=WIZyn3sR c=1 sm=1 tr=0 ts=69289aba cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=9AdMxfjQAAAA:20 a=P8M0t_FSf_X-oylKYQYA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDE0MCBTYWx0ZWRfXycRod9fhpCaF
 qmDULuBXNkrisghb02l+yqbjEfbH1+EaEXxbQ1N1B6BUWSyYXSJnCMQnf1cX/LTkMuhxuZD8Vsw
 sZsoKLC6v6AhS96BC3KkCQvswO1RGcETrNgfxtqyLEA0VQX23kbMOtwXGcQpC15l7j+Q/EyIgVy
 5ZFa5vWu1U8gJZEaF9wprzsEgD6wU9kTeDJqBe+kj33AfXiwBmaC99g9rdEYudaCR/RtbFuFUP7
 aSpscXRla47yoRoYAxKVyVUnUicQO8JPRUh2yRN2WTsfTs76XcwX8HkCFdxqauK5EdNlNGL95uw
 pETPcSF19/ckshGxl9aCH3NoKLq+daG7Sqr9O8HX6TnmuRXj8OkFxbwXHuxACQ4YhC2zXSUTdAK
 OgIjtXx1zaSj9QU9dMwv9F1GTBrivA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270140

On 11/25/25 10:23 PM, Rudraksha Gupta wrote:
> 
> On 11/25/25 03:14, Andy Shevchenko wrote:
>> On Tue, Nov 25, 2025 at 11:45:22AM +0100, Konrad Dybcio wrote:
>>> On 11/25/25 12:35 AM, Rudraksha Gupta via B4 Relay wrote:
>>>> The bmc150_accel_set_interrupt() function assumes that the interrupt
>>>> info is provided. However, when no IRQ is provided, the info pointer
>>>> remains NULL, leading to a kernel oops:
>>> Hm, are you sure your device really doesn't have a pin connected to
>>> the IC's interrupt line?
>> I don't know the actual case here, but in general such a design occurred
>> in real life. So, shouldn't be a surprise to see another polling only mode
>> connection like this.

[...]

> This seems to be confirmed upstream too, where one has an irq:
> 
> https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-skomer.dts#L420
> 
> 
> and others don't:
> 
> https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-kyle.dts#L439
> 
> https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/st/ste-ux500-samsung-codina-tmo.dts#L506

Thanks for this investigation, it really seems like it's NC
> Happy to split this patch series into two, just let me know! :)

We won't be taking any non-urgent patches until rc1 drops (~3 weeks)
so if the IIO folks decide to pick it up in meantime, just send it as
one

Konrad

