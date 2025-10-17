Return-Path: <devicetree+bounces-228304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B15BEB65C
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E54D3AD423
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218E6330B31;
	Fri, 17 Oct 2025 19:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ab+lJnO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB6C241691
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760730048; cv=none; b=uiIP9Nk6ZitQWVGAszp9JOtXE8Fe2bXvfRpo+TWoNph9joCa5B9OtU1EQQt+vkUwIqKwQ54AUF9mhAz+2lFFAa9yggaxPa7bFVMyh2KeD1JiOtYl9njMnVa0hDwGS4lwjIkPRQK8/zVdeOKPTgdgfeqHA1mxEZB+puN4bF2DFAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760730048; c=relaxed/simple;
	bh=RwXvQjbt7JK3pEL6l7LHRphjooUlJVKHIFoBkWQhKQ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XxtGd8wFvpPyRj/PtbZwx5/HxWQ4dXc8mhd27ZbdVuxsaUZwBGZd2+QhnAT1N3L9dOKwqI+XzGgHZJAJT8DDR7cCuaFUmcBBZPpeIJxcRu+u0V73Q1gLZgVs5XiBxZqWKlOrZM4432zTDAKlPTfmQQXs9z9S+uq9T4m9WD6nCJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ab+lJnO2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGGWo015781
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:40:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NDFamMd0o9Y7qLZOjscAOp4r8I+m3aYXZeFPwTjn+lI=; b=ab+lJnO2WjDFcY+u
	4mf4EfvpQGaWjRovEEcZWSSzRphu0skduP7aB5wQRV36e/nVbH1tjK/Zl8duA0tY
	pGqWIoLNeFXEjanyyJ6fVjmg75ID42a12X8EF01ZSeWIlbiem49Bn4vthoh+Pb6o
	AVSSTuQT7AscEh8JZlyZYj2YtzB6Ck23A3mr+JT8AuqYcNja4pmRG+Lw/w0OrDzU
	JytgiPWKz+Iwq5LNNV59sdD60F4tNzFA+OODdp5hmCBipRhVa+79zCXeAq07KcFM
	pvOFAArsBAwm4GimPMSpRb6dsfJhFIht6ew7jsTZqKsqWM1rGFbkI2aQ86m/yTIM
	8pvjyA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8v8cm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:40:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33bb4d11f5eso2131711a91.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760730043; x=1761334843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NDFamMd0o9Y7qLZOjscAOp4r8I+m3aYXZeFPwTjn+lI=;
        b=EvGlWgPeoZuubncG7GeXpgZGhp4jaf1rkgqwStewpBWcRsF0zXm/6csZI9A2mCBgA7
         icL5tPAHAUSNKdbthXwJA1/6m8jjisyZALpM+jDlQtqkuNqzT9dUyFi2JKSipAt6Bxr/
         Vz7+vwwBk8JGFmik7khoOsEwSiIlNbjAu4X0xDGHgo4cvOmyhjdXTnDtscXF0xXW5MnU
         w4E75GXVjhxR/iC4kMjB0YFGwk/6eiKIznHMcGJUGBaJ4Je0l2/B2pnWBTg9LXGEL/UR
         2BbSUf0azqtXvQK2dL1bjLgo53XHA9R7yHJaJ/dJmc/j7sf0YQebRYSmLu24eFw2ldb8
         dvOA==
X-Forwarded-Encrypted: i=1; AJvYcCWzOR0PMY7sVh4OAPbOixJd2RvCbwzbNd3ymes94s3XDmMfnf59nQL9d/pOaksTLCZbbxQ2V2VOhAfa@vger.kernel.org
X-Gm-Message-State: AOJu0YzVluIl/Qz1nqvwRI0pKW0s44/MasDeji3xlWwJMGAjVdwF5b6e
	+H3xD38WEuSix1DLd2mD/gOCptG+cDzKxOalfKvyYmqvdiDvz28DfqXVYShRIJHaOkXOaX6fba8
	ErSbIsJAvxzuEylGHvy9PfoDspki/TJrR9C/29Jnxal4DpMhyEBmne9tR6afA27Gr
X-Gm-Gg: ASbGncvZnilCAZ4FPH7OmZdTB5ajZM1VD2uHzOKhdC/NE+djpdfwH544q2s+/8+/Wmq
	5ejcAw6fgLuz9nuSkfNAyGQ2rQOcI/SxsiWuh8CkUcGVyiAiYnRXnz6cnSIC9JXc7/I+iEtRVPM
	lgfQOIj9emyyyMzXowePPcpmf7gY890R5saC+97lLsUV+fiAB+RuV3yPxRze91NAdVIr7kAH7oc
	ZC+bVA2oJGUF4P2+A88AXLIlULfQXmhwM0aXbMZFU9NriU2aZcyu2FYRjo0vO/VswNqemAzeVni
	rErYzp39t7j7V9DKNc4QCy42BfZoALvvUdoeVJeKPq8FjmeLIQ7e9JsHdfi6uHJpqIqqm+85cPp
	ZXmsG3PNeIc8SaE41WgPGJvHJyq7mbf5Hfg==
X-Received: by 2002:a17:90b:3f8c:b0:32b:a2b9:b200 with SMTP id 98e67ed59e1d1-33bcf87ab38mr6176219a91.13.1760730043206;
        Fri, 17 Oct 2025 12:40:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhslTnLw1d44+gxYWnp+m2GVuVioyNzi8Rgxtwtm1YnY0CsEHaMExcmSUWrki5gmUY0K4AhQ==
X-Received: by 2002:a17:90b:3f8c:b0:32b:a2b9:b200 with SMTP id 98e67ed59e1d1-33bcf87ab38mr6176158a91.13.1760730042699;
        Fri, 17 Oct 2025 12:40:42 -0700 (PDT)
Received: from [10.216.52.245] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5de11392sm200332a91.7.2025.10.17.12.40.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 12:40:42 -0700 (PDT)
Message-ID: <8fb6e8e0-cdca-0bd5-d0fe-56b5f6d27a5c@oss.qualcomm.com>
Date: Sat, 18 Oct 2025 01:10:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v16 05/14] power: reset: reboot-mode: Expose sysfs for
 registered reboot_modes
Content-Language: en-US
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
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-5-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSetWthCcJo8v7EuUK-aDKhf5KTNG5WQQ9aTQu62B+E=DMA@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSetWthCcJo8v7EuUK-aDKhf5KTNG5WQQ9aTQu62B+E=DMA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MZUjwqneQ5PcIfufeBJ7ue09-N1Xvh8a
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f29bbc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=C5lFK0Xs5ZTp69CiT58A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfXyGh61FCPqvJp
 Joe1K8PGvqirTC94QKugzgEM10+GWdevod1hXmG0G/p/nrdC67n8MlQM9TB4fz3fSGbqhQ9xnUj
 zFDdPb542TIAGATVR6Q//0SSUdzDPmm84S2HS6Ms3fh3Woveq1gB70euFLk0hx5sV5zgeljxl/a
 Kn1hRU5ZstTHm6CcKfGd76fWIQwS7iGSeT9y/XjI6WZ1iFbpfYUCmwtzjXJwihcPQn9Qrchw1ya
 HNvYIW026ig0TYBBKqDgWEuz2dbLClbVrySmkC6AwAIb/nCU4Fzxrz61YqfEoelh5eWCqbZX9Ml
 ThXXkCPj8m94Jd1P1eS0v6eymsP99TiUrNqr7pPQ7gbZuBzwa5oTjf09XD+kZg3Cs8Ilhp53IOb
 sjVVQ7EU/SOWKsj9BfsjPeMfK87Cow==
X-Proofpoint-ORIG-GUID: MZUjwqneQ5PcIfufeBJ7ue09-N1Xvh8a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134



On 10/15/2025 8:17 PM, Bartosz Golaszewski wrote:
> On Wed, 15 Oct 2025 at 06:39, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>> Currently, there is no standardized mechanism for userspace to
>> discover which reboot-modes are supported on a given platform.
>> This limitation forces tools and scripts to rely on hardcoded
>> assumptions about the supported reboot-modes.
>>
>> Create a class 'reboot-mode' and a device under it to expose a
>> sysfs interface to show the available reboot mode arguments to
>> userspace. Use the driver_name field of the struct
>> reboot_mode_driver to create the device. For device-based
>> drivers, configure the device driver name as driver_name.
>>
>> This results in the creation of:
>>   /sys/class/reboot-mode/<driver>/reboot_modes
>>
>> This read-only sysfs file will exposes the list of supported
>> reboot modes arguments provided by the driver, enabling userspace
>> to query the list of arguments.
>>
>> Align the clean up path to maintain backward compatibility for
>> existing reboot-mode based drivers.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> 
> [snip]
> 
>> +
>> +static int create_reboot_mode_device(struct reboot_mode_driver *reboot)
>> +{
>> +       struct reboot_mode_driver **dr;
>> +       int ret = 0;
>> +
>> +       if (!rb_class) {
>> +               rb_class = class_create("reboot-mode");
>> +               if (IS_ERR(rb_class))
>> +                       return PTR_ERR(rb_class);
>> +       }
>> +
>> +       reboot->reboot_dev = device_create(rb_class, NULL, 0, NULL, reboot->driver_name);
>> +       if (IS_ERR(reboot->reboot_dev))
>> +               return PTR_ERR(reboot->reboot_dev);
>> +
>> +       ret = device_create_file(reboot->reboot_dev, &dev_attr_reboot_modes);
>> +       if (ret)
>> +               goto create_file_err;
>> +
>> +       dr = devres_alloc(release_reboot_mode_device, sizeof(*dr), GFP_KERNEL);
>> +       if (!dr) {
>> +               ret = -ENOMEM;
>> +               goto devres_alloc_error;
>> +       }
>> +
>> +       *dr = reboot;
>> +       devres_add(reboot->reboot_dev, dr);
> 
> If you're using devres here - at least make it obvious by adding the
> devm_ prefix to the function name and make it take an explicit struct
> device * parameter so that it's clear who owns the managed resource.
> 

sure. we can add devm_ prefix to the function name.
reboot->reboot_dev is an internal member of struct reboot_mode_driver *reboot.
The struct reboot_mode_driver *reboot is owned by the calling driver.
If we want to PASS reboot->reboot_dev to the devm_ prefixed function call, we
will need to kind of split create_reboot_mode_device into two calls - device_create
in a separate function and then call the devm_ prefix function where we add the devres_alloc.
Can you suggest a bit more on this?

thanks,
Shivendra

