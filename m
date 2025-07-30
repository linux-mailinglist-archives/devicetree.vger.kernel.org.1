Return-Path: <devicetree+bounces-200807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1089B1610C
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 15:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3FEB5A7135
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCE1298CBC;
	Wed, 30 Jul 2025 13:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hZFLgRwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D33295D90
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753880948; cv=none; b=N9APd/XpEWsz9qhD6+fRCErsHp1dsszaInUa636rnkUZQfXAO1f1R1AqILVlw6lR+08Jyf5Bm7o+JsB0rfIpdYXP0fvQjgho7fTDri18ZALkhTT/XO8EZbYOYkcV+rEyUYvBdiwWJZKDwkqkLQSsLB3DfDfIerPqmErtvinhs1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753880948; c=relaxed/simple;
	bh=iuuKGIizxFYPlT/bt0zoSMj0nd3jCkg/TFY2jENqJBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qYI8XnqqKITVGUH+epSWQe8Nc8Rken5i98FaQejMuQP1bmSt+kaLswikCDUiKzyMqqM/mMlq14vMhsaJpxp/NRa1yVA+m+urc/EWqqtd1dDUNcIXqG//aBaB5kotlM2wOFb38JOwwimrwRCTuO+DjgqqeA5OnlsxNvgHcPNA51Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hZFLgRwk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbMYN012940
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:09:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wNDjzyGP/l854i6KT01aZoOncfqe5cUyUJTb5qnC1kY=; b=hZFLgRwkVOm0twVG
	7m3CXCrAyBdRSRzunSCBpu6djgXBoZcpeLkDHNYd2NpE5xF6cyxTZA2siSVH7HIa
	Tv/nAKLx4Q4QsS6Cc3XKH8hWf4UrPm2OVZZgwaXFt7Sbucn4Kj0bBVs6BIZ32v4P
	cLGuDWHyOqn969q4Tn8BC18yfsUAZCFSsSn1CfaLgmy9caCLf93LjRZwUcpCxUrY
	35EgB+ICiKCym9XzOZ+Q/l2l34T8Ufn2hfLyhLL1NGZ1874NdY24SBQPPouQU8To
	6f8oQGEQhft2GVVqTYgUNV7QNnnUEImy3SXRfmTlU+7Gfkry2a+7Xbd1tMQfxMcA
	5JbZGw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbm3qtg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:09:05 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748fd21468cso998848b3a.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 06:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753880944; x=1754485744;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wNDjzyGP/l854i6KT01aZoOncfqe5cUyUJTb5qnC1kY=;
        b=dr0ewHZk4RNUq9sNTEErlKUgV99/YgVsGRdJxD3CckGt7hrgpKMaNOWechMn6uLXyY
         OnEdSf6a47DKYtQWrL2w/Cu2texbeR8AuEykUmo2BB58wAv2kCage02LmYPZlAd8MpgO
         7qkUxdmRgy0N+02fkqE27k3gWJHdEUDggf0JibQE9dimY3LKTYEg65mBdiP/+Yq4ciP1
         HWGHVu/J3KcHnmd11kJ4TAbY6PMymdNlNQ0/O1q0ReNcVdkybnP9fR24aPwo8LTSX/ls
         GZermkv7wzr8nc+08S/NgTd/wEMhllC9wsb55+s3vbSFHfyvCDFwDWVCYCy2XqZKxcnb
         Hbog==
X-Forwarded-Encrypted: i=1; AJvYcCU1sdvMTGYdUkgU3Z8+hfeFkeK71wEwXQ51fpyTPK7CIB2WlNjFkFg9YLtEF7JLOrWsE9XzuTnUxCYe@vger.kernel.org
X-Gm-Message-State: AOJu0YwhLnm98mNX7mttKTqfDowPGDX5nDBISuzv+ee/UL6QqZfYK3jo
	dYD0W9Wi21udxdLc1zeOhZNUcswD5MdQey7g86QD9aR76iS+2v2MtsvLtm2Zc/erilq9DpE16tY
	kY9TGQ3sUvnFhKVJjbB3HUldmSsCFKTuTcaQdteX80cyVNWYlTd6OSa+yFEXhFsws
X-Gm-Gg: ASbGncsafH9PlT+A+ni9kWthQOUJr/9eJMqFvIOtpaar52xcjxQJM1oMCKXHPTu+PiL
	dIv6zXTsSJmcgxkUkMvYKFxc7lZ7jbkNuFN9eTIX2hbMV7Ew425ve64oua6M1XT+3phznCJElWP
	nt/XJFtz/09kDRPfPVieG/SrwtCvcxQ31B/VrzgRmRcAu4ZfN3/4sbf2GD88Bwe45ke3GeBHtgG
	jGxRQ/oRR2WXUqHeTJ78TKpEiz9TFQhTb9TRS1srmWLpKM7h87iMN2akR+kDrMYZARl7YxCQ/6C
	wJGRXN/KGvbN+SO4yyWPucONLav+6D+E0LDZY9PK2Kb9DV8jOyDOozcjojuFfGVl66Bu+pU7qg=
	=
X-Received: by 2002:a05:6a20:548d:b0:239:c7c:8de8 with SMTP id adf61e73a8af0-23dc0d3e328mr4807728637.12.1753880943832;
        Wed, 30 Jul 2025 06:09:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs6wjsf0Q2uV+QjNX2+BJebA7gZlSlrORRFmXImrXs/DTnl6FWhcQ6Ay1Cko/oB0Ikr9ynZQ==
X-Received: by 2002:a05:6a20:548d:b0:239:c7c:8de8 with SMTP id adf61e73a8af0-23dc0d3e328mr4807652637.12.1753880943335;
        Wed, 30 Jul 2025 06:09:03 -0700 (PDT)
Received: from [10.219.57.35] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f7f67c8fcsm7588223a12.37.2025.07.30.06.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 06:09:02 -0700 (PDT)
Message-ID: <2b8a2ea6-f13c-ea09-c089-f2296b887859@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 18:38:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v13 04/10] Documentation: ABI: Add
 sysfs-class-reboot-mode-reboot_modes
Content-Language: en-US
To: =?UTF-8?Q?Andr=c3=a9_Draszik?= <andre.draszik@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
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
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
 <20250727-arm-psci-system_reset2-vendor-reboots-v13-4-6b8d23315898@oss.qualcomm.com>
 <b1b34e31904f711e7cf82394843a9966238f2896.camel@linaro.org>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <b1b34e31904f711e7cf82394843a9966238f2896.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688a1971 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=OQUscKAIWfOqcitIQgEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5NCBTYWx0ZWRfXzRmFg5y00WPj
 Izgj1sQHqqYhmwlSOBDeuImwbb+Rf14hwSDwPH5gRkx/4DaY0G8Kd71T5PamY+jm435kJ0ejcoR
 V5IIAgbpkGMb2JJjvFRpolQb6bz9mvV5coz5n3u5MSFNv8gIdnq6ewTeBHa4ww/wxN+o9tcqP11
 6WVeI81KHAZxFGNB8hWgmOJdNKSJFgJG9MCCqgQxePR9mFkKQyAIj8XIaFeoGlUGtIK15arMxnL
 0IhWnChGJ1nbWhbrAkRD2SUxHODDXlILeS6BDBHscjD8NfRDsN7g77s9g4qpththXuLJjjQGt56
 La6pRueH4+XBiXB8wB+p0yB1K780C63LDUJ1m8lAwwqJIY5DE9G+4nbUz5omtbvsUKbUDzRGGhF
 BxaiGIKJEI5PpGPaF/VasQtaoInmae1wnd8scDjh6h6XWVLxtGm8hlMA/y6vsBnaHtqZf3OI
X-Proofpoint-ORIG-GUID: 70YrUBP2AtGEm6U14TLOZrHqf1vrmxhE
X-Proofpoint-GUID: 70YrUBP2AtGEm6U14TLOZrHqf1vrmxhE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300094



On 7/30/2025 2:36 PM, André Draszik wrote:
> On Sun, 2025-07-27 at 21:54 +0530, Shivendra Pratap wrote:
>> Add ABI documentation for /sys/class/reboot-mode/*/reboot_modes,
>> a read-only sysfs attribute exposing the list of supported
>> reboot-mode arguments. This file is created by reboot-mode
>> framework and provides a user-readable interface to query
>> available reboot-mode arguments.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  .../testing/sysfs-class-reboot-mode-reboot_modes   | 39 ++++++++++++++++++++++
>>  1 file changed, 39 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes b/Documentation/ABI/testing/sysfs-class-reboot-mode-
>> reboot_modes
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..7147a781e5d4d11977c3a156bf4308aa13310e39
>> --- /dev/null
>> +++ b/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes
>> @@ -0,0 +1,39 @@
>> +What:		/sys/class/reboot-mode/<driver>/reboot_modes
>> +Date:		July 2025
>> +KernelVersion:	6.16
> 
> The version should probably be updated.

sure. will update this.

> 
>> +Contact:	linux-pm@vger.kernel.org
>> +		Description:
>> +		This interface exposes the reboot-mode arguments
>> +		registered with the reboot-mode framework. It is
>> +		a read-only interface and provides a comma
>> +		separated list of reboot-mode arguments supported
>> +		on the current platform.
>> +		Example:
>> +		 recovery,fastboot,bootloader
> 
> I'd personally find space separated like e.g. in files below /sys/power
> and many other similar files below /sys easier to read.

sure. Will make it space.

thanks.

> 
> Cheers,
> Andre'
> 
> 
>> +
>> +		The exact sysfs path may vary depending on the
>> +		name of the driver that registers the arguments.
>> +		Example:
>> +		 /sys/class/reboot-mode/nvmem-reboot-mode/reboot_modes
>> +		 /sys/class/reboot-mode/syscon-reboot-mode/reboot_modes
>> +		 /sys/class/reboot-mode/qcom-pon/reboot_modes
>> +
>> +		The supported arguments can be used by userspace
>> +		to invoke device reset using the reboot() system
>> +		call, with the "argument" as string to "*arg"
>> +		parameter along with LINUX_REBOOT_CMD_RESTART2.
>> +		Example:
>> +		 reboot(LINUX_REBOOT_MAGIC1, LINUX_REBOOT_MAGIC2,
>> +		        LINUX_REBOOT_CMD_RESTART2, "bootloader");
>> +
>> +		A driver can expose the supported arguments by
>> +		registering them with the reboot-mode framework
>> +		using the property names that follow the
>> +		mode-<argument> format.
>> +		Example:
>> +		 mode-bootloader, mode-recovery.
>> +
>> +		This attribute is useful for scripts or initramfs
>> +		logic that need to programmatically determine
>> +		which reboot-mode arguments are valid before
>> +		triggering a reboot.

