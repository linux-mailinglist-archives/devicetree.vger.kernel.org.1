Return-Path: <devicetree+bounces-230402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0101C02420
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBACB3A5B4B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4094F24BBFD;
	Thu, 23 Oct 2025 15:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W7/7ZX0k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92948242D97
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761234859; cv=none; b=fZgElcF8lnne47TzwdDX2IK+wjpLXrmAPKYeggsKvdLjQO1cWw5sIRJ1wZwWAAmW1o0xMXv6X011Dap5zahQiX7f/HhGo8V2iGewxtchbLXHhDIPS66UzlTmffRzKSDozcDxGJcurI90wdFj+X4zWVgmBQBacM9+wIX6UpaOsbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761234859; c=relaxed/simple;
	bh=L6ZUAf2g56f0pbLijFNIC533CJWAt9IDFeMaFeWyyhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iISyudVbAtnrjqrQs9DkunwWTIGN8h4skzfdue2FYnXGvEhuaZmSE57yzC4hV/LqsE/SaNRkXD0J2TrDfGITJp12jtXMs6SlNvZeSlbCMnDpGKTxr+CZQpSHnGecAy3iziGWB10oKPuWuRAadjc83OQcepFSrYSoX8VkkwE8czs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W7/7ZX0k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NESRxq014657
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OIzxKAenz0uP2vnqlUCHL0UbaGItN6WBFXym1N/6m4k=; b=W7/7ZX0k6LVGb9pB
	LqR4H1OtSyiHJV3mKcQQBzX26/ZWmosBILOrtFI4XViImHT0v4bPwI7DePKHlM7a
	Iywgt3+/tnQzmvheeGLE0ygsjSemUxtPM8o1wh/Avk8TzLzM9YJ/l0oWJy2fL8nc
	C8hamxjPe4QUlaq/SVbFPmX7oLuVsDz6gTcLSKqle1pRA6PCnG/C9kRcDqabUaZ/
	Aibr/eWJaEw0Fpe0A1gGfka4zxmo76a++DgnUs/MT2DlvBVyrimbl5k01VQ8WZJY
	y+3k3ZCkBukTY7TI5vLT27pp3pT2hM0ljjw34JF2025ydv4hBl2DJMBQee7Oo+QW
	JgBpLQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0pxma-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:54:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-783c3400b5dso649620b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:54:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761234855; x=1761839655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OIzxKAenz0uP2vnqlUCHL0UbaGItN6WBFXym1N/6m4k=;
        b=bHnKCVaf59ATw7zb2PHruwkhmn8D8yT7aA9c8uE6/+2vzYuVMbgwwwvJIT0QJi98QD
         l5XZM1Fzi62JorZNJ2ISpDQQnvQ4eCtSyIpkPWz6DOYJRf/dTsKboVY4wwCmsrcOMsnQ
         hp5+nq0YwGkbGs4sFrAkotQ7T6sEzR4W/an0MAV9Az1FvlMu7LKtQGO4EWRwJyXr5N4Q
         1hRq0aQ5ozLc50X83ZYblWbcPKb89bLVSMcbaX/pSv4ifJyqYQcfjeG8wM1RcJoAxjoj
         PcdFzAjFtLaUWDyGtPQjVfDYuQy63hNdLEcpbq5FkndVZx67sO/7wooTcZqqnBGcnNDI
         WxtA==
X-Forwarded-Encrypted: i=1; AJvYcCUyp5xPhQvZZ2DxMviCWCZalhQdxkr3shn/GEfacqsR1ntUTM8FrMu7mKK/CG1nOQ4qO89N3MUIQmHJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwrFMEokD6rZfgrw9C10r9C3qad2FDGAqMbBoieI/kGvmATrbfT
	04XM8uoWQCz7gsPlah9ibQ7UNvaVNeM+GNuVHaxcUlftxjTLoj6GlQWShcj7gd/Jc6mQj+4D0rq
	7Lc/LP4l40YV4k9VP3Nx3YFL+ijvDHbRTJ23fVq7X/TllyE1u9lHIMevGyJvQSSEZ
X-Gm-Gg: ASbGncsRJ/cpVRQofxrFkeCmnHk4Dwiv8ANj8slwGeMTcNniBq5QVATkaWVNdWp6iki
	m2w6KSDQny4iGsnfK82UnIhiBI3rlioFFO/SRo7q5lwKRCtZ7+1M8i8trv/Hou69p7hDPvkttp1
	E9d9CU+y97Ch9Joord08OUA/1rirnqDP2pyrdBLYmy2dGayF4kq9AtOridD5KdkyrMsK8zi9N4p
	I8TCsoglpIwCjdcJrgGLgEPAbXGiiZJkeLYa8V3Qx3yum3NxGaV9eYaMGxfcA6H8gNbhXLtHh9l
	liRQ5J0taqL/r2K7AP3ANnO42hOAaiPGB31E3fbeL+LuaZ4VDDw/4Ulp5gEVz6dm1Kxi1EzrfPF
	wQOpuMopYsDrJsvE4z+CEY4UGOm9NGx+r
X-Received: by 2002:a05:6a00:22d4:b0:774:1f59:89de with SMTP id d2e1a72fcca58-7a274ba902amr3397234b3a.11.1761234855028;
        Thu, 23 Oct 2025 08:54:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+RNZjlAZ/HGhfeZvjXwH2L38Bx85+VCX5eW1fEPyVsXUTievo9QBpW0YYKx7Ywmq/s0eAjw==
X-Received: by 2002:a05:6a00:22d4:b0:774:1f59:89de with SMTP id d2e1a72fcca58-7a274ba902amr3397174b3a.11.1761234854497;
        Thu, 23 Oct 2025 08:54:14 -0700 (PDT)
Received: from [10.216.6.161] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274dc33desm2913319b3a.71.2025.10.23.08.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 08:54:14 -0700 (PDT)
Message-ID: <0e49a6b0-276c-85b4-3ffa-39e5412db522@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 21:24:01 +0530
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
 <8fb6e8e0-cdca-0bd5-d0fe-56b5f6d27a5c@oss.qualcomm.com>
 <CACMJSetTrze028iXmH3i=JguJy=aNOMcnkLhO1ewYNiusvVmgA@mail.gmail.com>
 <efc84b92-43f9-ba25-1259-ae3907273af4@oss.qualcomm.com>
 <CACMJSetctEH4K58R9JvSYNzzYgE0NGMsAr5JxiZ4RH_3T08x-A@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSetctEH4K58R9JvSYNzzYgE0NGMsAr5JxiZ4RH_3T08x-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfXxyQovU7s7IIu
 N2pt6WrkyHPA+J30s1lypQS4IIaNUM97+hsilRMqSJq3QXQOMoeMH2DtXblinQd84iEaEyiNEwh
 9ikW6BLfWf9b7nDSod0b1kYaZHrxMC9oJbYkCFu1+HQ25J8uIIEbmkq14zJTrzQT03T/oQGXvK3
 Kbvt59QkJBb90fKFoC2Do497sjdQ1PhX53mANBr8bUh/Huxqavb0kfGW+ARvfJasEF5ieIgtMV5
 ThgLuZrWKodjBnhLr/0mRmeZ5zF6eQ2X7NH/gvsIj0Tg/x1HBahgiIXNUbyMxMvpaedZ9bdhjTZ
 GG3ZwgkoGiMVgfWwXfyxqQFH8FCG3nnTtK6iV1GbChufpw5SembRKZjv4lXi9oef4RAvyUrdpWF
 0rk3DRaoG9JgNmSiHQCEvT7lvUdZLg==
X-Proofpoint-ORIG-GUID: D84K1iHHPXN2Bi-lT2nVVW-obpX5q2Ib
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fa4fa8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rypWqsooHcgQ8WysroIA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: D84K1iHHPXN2Bi-lT2nVVW-obpX5q2Ib
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167



On 10/23/2025 8:32 PM, Bartosz Golaszewski wrote:
> On Wed, 22 Oct 2025 at 16:21, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 10/20/2025 1:10 PM, Bartosz Golaszewski wrote:
>>> On Fri, 17 Oct 2025 at 21:40, Shivendra Pratap
>>> <shivendra.pratap@oss.qualcomm.com> wrote:
>>>>
>>>>>
>>>>> If you're using devres here - at least make it obvious by adding the
>>>>> devm_ prefix to the function name and make it take an explicit struct
>>>>> device * parameter so that it's clear who owns the managed resource.
>>>>>
>>>>
>>>> sure. we can add devm_ prefix to the function name.
>>>> reboot->reboot_dev is an internal member of struct reboot_mode_driver *reboot.
>>>> The struct reboot_mode_driver *reboot is owned by the calling driver.
>>>> If we want to PASS reboot->reboot_dev to the devm_ prefixed function call, we
>>>> will need to kind of split create_reboot_mode_device into two calls - device_create
>>>> in a separate function and then call the devm_ prefix function where we add the devres_alloc.
>>>> Can you suggest a bit more on this?
>>>>
>>>
>>> Ah, ok I missed the broken logic here. Devres should only be used in
>>> devices already *attached* to a driver as all managed resources will
>>> get released on driver *detach*. What you have here may "work" by
>>> accident but that's not correct and is very fragile as soon as you
>>> have some non-standard behavior or error paths. Devres won't fly here,
>>> please just use regular allocation and free whatever you need in the
>>> corresponding release/free/whatever routine.
>>
>> Thanks, got the problem here. Was using devres to associate the reboot_mode struct
>> with the driver, so that it could be retrieved later when reboot_modes_show is called.
>>
>> When reboot_modes_show is invoked, there's no direct way to identify which reboot_mode
>> instance is tied to the current driver, as multiple drivers can register with the reboot-mode
>> framework at the same time. Without devres, will need to maintain a global list of mapping for
>> all device driver structs and their corresponding reboot_mode struct. Then reboot_modes_show
>> would have to look up the correct reboot_mode struct using the device driver's pointer.
>>
>> Hope its ok to maintain that separate logic here?
>>
> 
> Why can't you just do:
> 
> device_create(rb_class, NULL, 0, data reboot->driver_name);
> 
> Where data is whatever driver data you want to associate with the new
> class device? You can then retrieve it with dev_get_drvdata() in
> callbacks.

sure. thanks for the suggestion. That will make it much simpler.

thanks,
Shivendra

