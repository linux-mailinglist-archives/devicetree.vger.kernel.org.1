Return-Path: <devicetree+bounces-228174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B1CBE92F0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53FB8565054
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC815339716;
	Fri, 17 Oct 2025 14:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V9pErdmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7B1339710
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760711120; cv=none; b=pX9q24J0e5Bul5EGlZWu0SwaSnMRkfUjZkKG8Rucqiz9GuQY8Mm0MjpHdkB6y1RjQfPBAOoGVgAORIXD5tip5+8hxGjJ03g9WS5DtD/GtOAMZ1CSwNT2jIcOsydM1WLnpAd67a9oBVXVYG+vrLi4YVEEWcxP0BgtWaW/Hi10K8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760711120; c=relaxed/simple;
	bh=WvPiwTls8EwkUxiAY19dvsorF4ZCWBhUHbOY89tSmC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fmHd9T8AMv4wgPrNzvLZZzdegCBb8RGMn4Brrevtj/X4E8jvmSiCbHSzQ9OKHZMsGG4v4dLOQ+sannb6n1Tw3O0RxdGMDykAAa6BvYnhdm+p1BgnucbOvyKtJWQZyqJ7OPyjmYE/QRidevqquA2Oxu3DGdNn/rQ85ejJ31g4aoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V9pErdmI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H8HYvS020376
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X6I4YOibOxnI0AMuF9jQqhBPQ7jDc9rITl8QqtHTs9g=; b=V9pErdmIvPeRmzT8
	Fo9QxijlwjOsM/Tl3rHj8cXNaN4ElNURNUB9PNqCurg1wp6PgVRfhZoMOh7ohSB9
	ciz518YlXJjgB5jyj/bWOor02A7aQZurvS4YTPzsY+r9Tu5oczy2q/3xPZctY/1C
	adSCpm9pQU5xAdbuQ8OG2AA5q5QUap0EHmo8sRIMS8e/2vDSe2I3MChYFMbnrRcj
	0pW9Hhl4u2oyBu7QkDidC/eNg5kHGvSBRe5sTWqA2uHy2tD0eazWN+vf0kullEVu
	BYihnVk2HjBjeIWuO+d8aV57ns5OsDa6Pj4EF6gDuLaxQcPyG2K634F4fFPM3N33
	iWbU0Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8u7qk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:25:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befc49so3311671a91.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760711112; x=1761315912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6I4YOibOxnI0AMuF9jQqhBPQ7jDc9rITl8QqtHTs9g=;
        b=LySTudGgl66t29RezOhT0VV/4GdgtzqL/7okT/cPHikGhKIXASMAG0stAnOguvrVD9
         psrAs1xKgy8XRSjy5l/QvMCI1Gg8N0xycrTbk2Ok2f9wYzUSSyqrnEiYH0saQ5QBUU3Q
         9XUp68CDFjZ9BtFQXgvd/6poxwZX1Hz5JysD3xSmqdxC1dCVpe0wzBQg1zvVHtL7FIz1
         D6lHcIEMrZFbAz0HN+EHWP4tFPAy4x6v+gL948PsidapARbPzFgoINkvG064KEHt8fQN
         mHpAhVk6nuwTqGOS0GPhMxLEolSlmRuGzmD0QXrou8vDxYrgChCg9q8HvOWP8l7XaVYj
         1PTg==
X-Forwarded-Encrypted: i=1; AJvYcCWkMU+y8EBC5U4yQKsyL92eKYCFozXxtCIouo93GyQ3BXroUefDW3vwehYWroNS0asPX1mYCj646/7A@vger.kernel.org
X-Gm-Message-State: AOJu0YxUXOCvzP5IHxzZJob+xoJKZLkKQa49FBAkPncugV7EihNdlcu6
	0c7lSTyP+kP+8zud3vnsyu+MHfmSfx5Gue0ajZmpbH6zk6gxKLjnp03ra+IgFjlnNmydlW4c14P
	LZf/Wyp7PNONPFQTqumi+xPAoSC/eMrIK97+0Kn/8IsjdfunxcXpxIkOQvvNEpG2f
X-Gm-Gg: ASbGnct7kr/9g+r1y/c/a/nRxc3PsiK0V1A5id7qlrlbyLo8mDCvdH3tqNmZG6U3lqx
	CE4WlHeX0Anx9LZ+Wt0Vmwnf7zHKHwBkxrKmBXpFEcj3f454EmwpXQIqAdfKIrRYVOHhz4I0Ipm
	iTmJs4B27aHq/upjWtAUU85OwlIWjlpICNzAh2caVdCoaeaGi7DluoRK+Owf/BS80Y13j4naffj
	rbh00UwHkZWcFqiA92sadyRSifBI6hD14D6xqCCurKEsLYkm9D3zXHrvcEOdQ25S9VtoNHBKVjV
	8uiy449BDzfwqogBAi6S8GamV5P38zVs/qtDSGtkFoZo49MtO5t1DVCbYl63ktXbCJ1C9XZaUze
	OF7T0if33RZxc1rj/UbREuRfoJmRoV4CPTA==
X-Received: by 2002:a17:90a:d004:b0:32b:94a2:b0c4 with SMTP id 98e67ed59e1d1-33b9e2925e2mr10031234a91.16.1760711112018;
        Fri, 17 Oct 2025 07:25:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpzi1hN1yMdY6cSIJhZZaWyqTeCWz6N72ovTz031iQmmVMeTy7gJVlncPuK2idTupafEuVXw==
X-Received: by 2002:a17:90a:d004:b0:32b:94a2:b0c4 with SMTP id 98e67ed59e1d1-33b9e2925e2mr10031171a91.16.1760711111346;
        Fri, 17 Oct 2025 07:25:11 -0700 (PDT)
Received: from [10.216.52.245] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bd79b344dsm3149510a91.3.2025.10.17.07.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 07:25:10 -0700 (PDT)
Message-ID: <0683413c-b447-8e3e-8bfd-3edce5a0e14f@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 19:54:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v16 02/14] power: reset: reboot-mode: Add device tree
 node-based registration
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-2-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSesvTLe28Jz83b=zfHD2rvmf7-i_2+2DoV=dgooVqFEYbA@mail.gmail.com>
 <fa42adf0-8f15-ad4c-3788-578b1bee1c72@oss.qualcomm.com>
 <CACMJSesxazA7Nf6sAhUT16KfwtiUNjvb5JOEWkEb1B5fJtihMQ@mail.gmail.com>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSesxazA7Nf6sAhUT16KfwtiUNjvb5JOEWkEb1B5fJtihMQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: d5TKINOqK_FXSIA9XfFxQ6rDeEjBvGLP
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f251cd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9sdP-RPgOja0Ng7vnc8A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX+z4vP1AyD7m7
 FYH9+w8zba4PwhO00zAa2pbnr18TtyX+3wJg+oxs8aywZdq10bRRLwAR6AoBKp0aTlvQ5qx/owD
 nUR46YXuia79x5AEDblULwjoJ00jDsej3vuLxFwnt8OH1QJNegKa4QGcseGQH4KZstqUBLNxSIq
 3DWK3mYLkSAWVCfTx+FnwwKm8Ne8na+oeec6jXOH8+Mrk9GvhIA43CzUvVVpLEBxOBHjf7JHaIT
 aSL+mylGdOGec57A+qmAbCG2Q0Ehgft7fQjhe6TgWXN44kKiiq55T7zBrchXaBlorRPDotaMq5t
 BmkGoAwPXDJEg81/sa+JO7e/X7Z6znPWfrpfyXrJcI1HxJbJBXl70xlLm2+jX9/OccvnBcFJdOR
 b2p2cs9swKeEdF+ptHgYulj5Rj7nsg==
X-Proofpoint-ORIG-GUID: d5TKINOqK_FXSIA9XfFxQ6rDeEjBvGLP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134



On 10/17/2025 2:36 PM, Bartosz Golaszewski wrote:
> On Thu, 16 Oct 2025 at 19:19, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>>>
>>>> -                       info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
>>>
>>> This change is good - devres should not be used in subsystem library
>>> code, only in drivers - but it doesn't seem to belong here, can you
>>> please separate it out and make it backportable?
>>
>> sure. Just to confirm we should separate out the devm_kzalloc part of the
>> change and add a fixes tag.
>>
> 
> And preferably put it first in the series to avoid conflicts.

Ack.

> 
>>>> @@ -123,8 +136,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>>>                 return 0;
>>>>
>>>>  error:
>>>> -               list_for_each_entry(info, &reboot->head, list)
>>>> +               list_for_each_entry_safe(info, next, &reboot->head, list) {
>>>> +                       list_del(&info->list);
>>>
>>> Same here, not deleting the entries currently seems like a bug? Do we
>>> depend on the driver detach to clean up the resources on failure?
>>
>> sure, so this should also go as fixes? and should we remove the other
>> dev_err(printk) also as fixes? or that can still got with the change
>> where we add fwnode based registration?
>>
> 
> It doesn't seem to be strictly required by current code as the users
> use it "correctly" but if the API becomes used in different ways - for
> instance the structure may be reused after failure - it's a good idea
> to backport it. In general we should undo everything we did in the
> same function if we fail at some point.

sure. will update it.

thanks,
Shivendra

