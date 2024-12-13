Return-Path: <devicetree+bounces-130734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A71DD9F0C31
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B36D81694D8
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C4C1DF739;
	Fri, 13 Dec 2024 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fcrSlY4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0F41DACA9
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734092828; cv=none; b=HAM/okGZkjk13IE6Ai2keMg40t9sAH9wqzkbcsHcCYIv5LDqWUkHFkdM+tGKXdauvbpW0N9ioDy92dSZDwjhwa010tA4LvCgfLEsAIj8FNstMmS5PncUIWOnDGFZ1ligEd2oWH5dapYkzjELUq1TrFQrdkjhlv3DbSpNziXEIV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734092828; c=relaxed/simple;
	bh=awQ6yMFLqYbagPDBPx0q9W776ur7HcZkdEWlrc7lNic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pg9tq3ENwuyBH/IuwOdMG8qmAqUJRNpw5CPlRz/5KkEiKa2CUu6oJBUpYOUomO6G265C5lYU6KrqKVh3WXaPOZcp39cs9V/118kt+EhamaakTBkZ2BQGGJfoy+nDbKFbhZoOb9ZiaczVhoF/oEmPpNMBxipuaGmnuRdWAHnUAOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fcrSlY4g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD45hXP017168
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:27:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LPgAkXv7b2t7BMdGT4iGi2WvRyUCin9YR+JLoyKxeDw=; b=fcrSlY4gtj8CmAeK
	LsGGhwkVN/kYEov2zkeKP7WxVACnexyks8lYlGIg+nBc+Dz+8JHGYxFDRNxFX+wh
	r0LOqKxjNv8wZzNOvH/wQVnOnXf/2gngWyTwSoaa+kcRzvIVNeI5Mv3a6CRyhC+4
	j5qj27hoq8cpUhWgWSIpkWQsRxUe8NuD4syGtXUgQ38KYZ/PxF+O94oKzpbbJqND
	cKYkuOumnP7UCq5dbz1XLaNltIfJIEkzHZ2U22YSwdKT24FMuZ5DU+EoHJeKj72a
	jj6NLNjyYtWX6KBkb32wsepUKOUlYBPGKzZP2iSdY73g2ouTYHYXPlVHBuF7jg7R
	lyemRA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn19ah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:27:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8e7016630so4150386d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:27:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734092825; x=1734697625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LPgAkXv7b2t7BMdGT4iGi2WvRyUCin9YR+JLoyKxeDw=;
        b=tu5k8jLGKxMm7QOE6aHn2VKjC1nYtZ9ET+bQ2avnL70Y3CnsE7w4AH4Y0Au0d8UzTR
         FaRZYhxZH1MDW0TBUdUiKBzTb4Ghn2hUr5R9b4qkJJJZ16mGhDKNJA8hDYytXaFIdKc5
         fSUW+P/VZfj/8ejzf3Gg+Zb/DD407qf2JjK/0P5FYujf1JLmR75ViTPK2iZlFPlKUshU
         GUOwUgvN352mg+b+hhhBALZTrgDbv+SfDqY2BYPkTLo+z9aGs8uEXuKl3W5cPGYIHJd/
         fLXijBtSJcNIlPaRfkBMxLYyc33XNwsDYJWW+25p5SFL5mQMGPLUC5rpPkQhe5WvifLx
         akFA==
X-Forwarded-Encrypted: i=1; AJvYcCX6+9PBuYQdTPMEZbbUpJanLe+I6+haxlZOAnQzNsD9S4Kud8PAStuNyfI4e6R9NzwQpuLzEPXsbl2Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzfO0FWL8soY5I+CG8N21PrvHcxmbPSj/wJMSvcUyJhh9RyFxVq
	yy6X8N1aaZpIF5GCf7zZv61gJ9iG8bPAIOmdCuz4vniJPL4MN4jWOJ3oy7IVOzQCMGAQOAY2ftI
	NZMIZgWlJrJzcZbXRHIaNYBjvBZx/MowACEX+p5pjRZo5wTFhInug3or5r93e
X-Gm-Gg: ASbGncuzTPqps9e0B17Ae6perk+pw12wa/Nmt8KO8LcuVL5433mvIOtNCQmWlSzB8RV
	ovts1SIa0689B4MqeAJ4zTCRv8K/FZC/AHAsDk+idxvj3qGIJJz3pBCj13AtvMyXr1+d2o+lm5p
	C5RgKyALengRVW1S5ulehQZq7gAjSFfXMjjM8ZX/DOPBA/mPl0XDmI+ggw1jqWH5tObeXa1UFVW
	6vzYmLNNgR6DV5BJ4huNNRmLyP5VqghalQ0M7HoMX6IftnwdE/ovvuNqFrn1dYlJGUJ+ryzka83
	RV5Advd4K8nG8wUgTP7QYAWdnmnsdmUWjKN7
X-Received: by 2002:a05:6214:1316:b0:6d8:8cb0:b403 with SMTP id 6a1803df08f44-6dc96873dacmr13659596d6.11.1734092825409;
        Fri, 13 Dec 2024 04:27:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIE7i+AV76VWiX+gdH25rKxmzqbBtSlr728v+AI/iX/yXzQgqyvJtusFDFEGgIdGnR/ZcuoA==
X-Received: by 2002:a05:6214:1316:b0:6d8:8cb0:b403 with SMTP id 6a1803df08f44-6dc96873dacmr13659446d6.11.1734092825001;
        Fri, 13 Dec 2024 04:27:05 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3df2fc65bsm8594450a12.54.2024.12.13.04.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 04:27:04 -0800 (PST)
Message-ID: <3dfdf882-eb1d-498e-96b9-90c6cdcaa44c@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 13:27:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E Go
 (sc8280xp)
To: Pengyu Luo <mitltlatltl@gmail.com>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        gty0622@gmail.com, johan+linaro@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org
References: <5b5ad9f7-5071-4b4e-940d-aedecf179600@oss.qualcomm.com>
 <20241213122135.593760-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213122135.593760-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8xWmNpIxQCTc16QVevmQMfW2QEp6m516
X-Proofpoint-ORIG-GUID: 8xWmNpIxQCTc16QVevmQMfW2QEp6m516
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130087

On 13.12.2024 1:21 PM, Pengyu Luo wrote:
> I am not sure, huawei even provided the PMGK driver, but I think it is
> not loaded.
> 
> If you talking about adsp cdsp and sdsp/slpi (this one should be
> unrelated), in the firmware driver files, some of them are same
> as the x13s one
> 
> adspr.jsn
> adspua.jsn
> battmgr.jsn
> cdspr.jsn
> 
> as for qcadsp8280.mbn should be different from x13s, in the old days,
> Gao and Chen used firmware from x13s totally, and the firmware didn't
> work (If I remember correctly, can't be loaded).
> 
> As I know, the adsp firmware is tied with many things, even if huawei
> have moved many features to EC, the device still need it. (like normal
> usb function, audio? btw, this device can use audioreach-tplg.bin from
> x13s as well, I am not sure if it fits well.)

The jsn files are just descriptions of what "services" should be used
(including the battmgr service) for the userland utility, and nowadays
we have a kernel driver that does the same:

drivers/soc/qcom/qcom_pd_mapper.c

Start your ADSP with the firmware from your device and post the dmesg
output.

[...]

>>>>> +     chosen {
>>>>> +             #address-cells =3D <2>;
>>>>> +             #size-cells =3D <2>;
>>>>> +             ranges;
>>>>> +
>>>>> +             framebuffer0: framebuffer@c6200000 {
>>>>> +                     compatible =3D "simple-framebuffer";
>>>>> +                     reg =3D <0x0 0xC6200000 0x0 0x02400000>;
>>>>> +                     width =3D <1600>;
>>>>> +                     height =3D <2560>;
>>>>> +                     stride =3D <(1600 * 4)>;
>>>>> +                     format =3D "a8r8g8b8";
>>>>> +             };
>>>>> +     };
>>>>
>>>> This should be redundant, as you should have efifb
>>>>
>>>
>>> I think no, it won't boot up without it(stuck at EFI stub: Booting Linux
>>> Kernel)
>>
>> Do you have CONFIG_EFI and CONFIG_FB_EFI enabled?


Very very weird. Are you booting with clk_ignore_unused pd_ignore_unused
in kernel cmdline?

Konrad

