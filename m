Return-Path: <devicetree+bounces-229822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEEBBFC86F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFA91622FC9
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B8C34BA5F;
	Wed, 22 Oct 2025 14:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kaij6nZO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C4930170C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142886; cv=none; b=OEN2Jdu0wDtWvThNAgghG0+vNBnHKOwfjdKEgboBdZaAPIQLGmWPu7fFfrL2qgydjUZCt1hhDbO2Wcemh+PP8hRGJETazxqltPjUcZ6qWsgMfClpz+gnQ9Xhe/jsg2xbXH31AD0mfkLSlKeJtZpqNu5C/IVVHDrx0QSjJCTz8gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142886; c=relaxed/simple;
	bh=b3uPlBhFSJi9ZQ1fziRdHC+I8eyaclv1pA5efxRoemk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U3CCVbFYWMuuvTzVCV5pZyqaarm5CJleHjHxXY6CWplFm+WNxM7TovzF42mwi63TXBifAnlQFJ/WAjqbO/1lnr6r9tBtFKH0UHF58Rq96jl9NA8OOxKM4By/eC1aOiwGAWTfNa3a6B7vgTvhjqD7waNTB06bPIdtn+vkuefxPcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kaij6nZO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MBwV9r030208
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q8F+X3+wN0oxbBadx3SHyMbf6X2kDJDWo7WkuZHB6Sg=; b=kaij6nZOfzi6M45l
	rhgTu4EBHYKUVMi+XsvzTeks8HDKCdaTj41W6LNOQgBKjPLBXSSeudVDtXbNK++v
	4vjI9RGnvS/ufFE5xkXZA6rvXob2k59mWy6xV9eGNdmBhtqmA5zRVtbEmz03nkZq
	Gg/dkP8QiiSlM9M4iRpdAmuw99sc4uVW8EFZTRzarudY4ZxFcvZXluNF2fnNFuMs
	jWQcsOJjD83U+RIWkYFLLS5IgDgKj0SdxcFZztcqJAKLiPgAu9fCQQok4btnteOb
	s7Z2X5cVu5TpPbq7EZsXLZlnt1edTKwPBdjw3Ed3aa34GWa3UsKA5kYG/UcgQT19
	GW8EZg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge4vsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:23 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso6048948b3a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142882; x=1761747682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8F+X3+wN0oxbBadx3SHyMbf6X2kDJDWo7WkuZHB6Sg=;
        b=ZuXlDNO8EjBs4fFtqAH8sZCZOMkaq+Ib7a/yAqs1faC3jrh+x8xbA5qLIpYhVnSCBs
         FX28Pglpcfyhnq+0/GQRAGduusavDaTBs7dPJNuFK/P/vDVNyieUkIv+W0t9CM3iCThE
         6CZRricTMAUHv0yOhnzurdD/kk6j3yoss+JyCOW8C/ZYdenWgznB+MOSF5phRxZrC/FS
         OWFC1ASYPx25RF83KOzKRpra6tEjzj11Kz3b3Cj6KgEb5T2FACuueOVQq+dgEwPznzK7
         uLko1rVa+bdNuoxVBFZShggcBnxG3D8+GBzBvpLIHN0NupVS1+ve9m4VpTuL7IS5cF8P
         f/cA==
X-Forwarded-Encrypted: i=1; AJvYcCVmVUxpFnkM0mBxdJvWhRUdSPRRiBdUCCuZUIKJ9b72L/v1oecLzXN6baiBHSComQEKpkmLVkNP4s3R@vger.kernel.org
X-Gm-Message-State: AOJu0YzbuYbYH8m/q5lWexSVYXeXYseJn+hjqkpkbwlxyfcNHZUFKUb0
	2UjtGkQOiZbxrJjEiUqBiiz0x7McUKabRY+czx8+lLXEKajvbT7yXx9GjN0tB3ptRRn58fEnOp7
	fB7xm1e+NB+muRCs6RLMGGG8dUnCGp5mtI4oGO1nnmX+/edac39tVBGjzsdqRe1YT
X-Gm-Gg: ASbGncvuVdxW1glP7O8G4TQ7aOvoKUMBtOh4lytIIeUswMGUdwDPveh2cjatRMyR2vV
	8Gelr91JvW0gLKo4JpAJMoqncGadUqEInH6axNfueMrTh2iUzqLKJCfQ2XAuHfk0dTTER/GoRcl
	rBIYqcBwfSF2W18FH8hFR+1tsTXpZnsWoX8HY/4dDw6tfi3bfj+0OJT5tm472w1nlk0uSebLRx0
	Lt+qr7nnX1XViH2Vnc7MiHfwiPaAvIKeAZmCByy20qwJHOeJQBB22aS9hnRvupu4uV3DWjZsaD+
	KuOLaURdKE2eM/9CNmf/yQf1hqIo2acmhD1QrUiprj3kGheDpTUxW8Wk+W22LTmWdSJiEBlkLYx
	3lgVgXPobc2gAu70RCawijPreBv6JjsHC+g==
X-Received: by 2002:a05:6a00:1c8b:b0:7a2:6a86:c79e with SMTP id d2e1a72fcca58-7a26a86c860mr2191959b3a.24.1761142881555;
        Wed, 22 Oct 2025 07:21:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFD1if09QbpZ0dFtUilgWx94rYjTY53E2gZyd9bH58StesMW+afVzo8P4m1jCTS9rTSPWBDWg==
X-Received: by 2002:a05:6a00:1c8b:b0:7a2:6a86:c79e with SMTP id d2e1a72fcca58-7a26a86c860mr2191912b3a.24.1761142880900;
        Wed, 22 Oct 2025 07:21:20 -0700 (PDT)
Received: from [10.218.16.150] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff39654sm14567575b3a.31.2025.10.22.07.21.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 07:21:20 -0700 (PDT)
Message-ID: <efc84b92-43f9-ba25-1259-ae3907273af4@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:51:08 +0530
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
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSetTrze028iXmH3i=JguJy=aNOMcnkLhO1ewYNiusvVmgA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX+Ee/ON5DXzV1
 wjGbs49GZXH9GUw25lX8k7cZ7to0XrAsksW0Ei4JOW0k3I0tRzNdhyw3bZc5szKFBiJ5hzxx5oJ
 SW/K1eCVIeo6amI3I4m2Qy0Iw/DQXOj27I7LGt4Sghn+Lv6wDSo2CrER+YhNbkgcN2QMI2nLFWb
 svJrr7h3J59st4jCJ1hOoi+5QcufyIruQyb30ahS7N2CW0yqrufnMmn+TJ05zpByzSk9TRTeupy
 R+84KbHwjfJUaHX8et0bepdRUAHmWWhTaB7vvrUHMVEN3F/snvbM72Jte0x+NxEHhocKlYmjKoi
 aR3P8M4fNgA/+O688Bb528WkrVXnBfcceZ2PUeyn3wYp2foz51WTjQf88DLg229mNXM7pcas/US
 /V1aLWYSWO18SqumBEzRPTmv6h8BXA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f8e863 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vdIc-WJG1MBaYulAjwQA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 1JnEdwrNAqbQzdGklCx_Af8k9FTT7j19
X-Proofpoint-ORIG-GUID: 1JnEdwrNAqbQzdGklCx_Af8k9FTT7j19
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020



On 10/20/2025 1:10 PM, Bartosz Golaszewski wrote:
> On Fri, 17 Oct 2025 at 21:40, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>>>
>>> If you're using devres here - at least make it obvious by adding the
>>> devm_ prefix to the function name and make it take an explicit struct
>>> device * parameter so that it's clear who owns the managed resource.
>>>
>>
>> sure. we can add devm_ prefix to the function name.
>> reboot->reboot_dev is an internal member of struct reboot_mode_driver *reboot.
>> The struct reboot_mode_driver *reboot is owned by the calling driver.
>> If we want to PASS reboot->reboot_dev to the devm_ prefixed function call, we
>> will need to kind of split create_reboot_mode_device into two calls - device_create
>> in a separate function and then call the devm_ prefix function where we add the devres_alloc.
>> Can you suggest a bit more on this?
>>
> 
> Ah, ok I missed the broken logic here. Devres should only be used in
> devices already *attached* to a driver as all managed resources will
> get released on driver *detach*. What you have here may "work" by
> accident but that's not correct and is very fragile as soon as you
> have some non-standard behavior or error paths. Devres won't fly here,
> please just use regular allocation and free whatever you need in the
> corresponding release/free/whatever routine.

Thanks, got the problem here. Was using devres to associate the reboot_mode struct
with the driver, so that it could be retrieved later when reboot_modes_show is called.

When reboot_modes_show is invoked, there's no direct way to identify which reboot_mode
instance is tied to the current driver, as multiple drivers can register with the reboot-mode
framework at the same time. Without devres, will need to maintain a global list of mapping for
all device driver structs and their corresponding reboot_mode struct. Then reboot_modes_show
would have to look up the correct reboot_mode struct using the device driver's pointer.

Hope its ok to maintain that separate logic here?

thanks,
Shivendra

