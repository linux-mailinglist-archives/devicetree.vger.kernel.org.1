Return-Path: <devicetree+bounces-185968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DA7AD9F83
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 172C616DE07
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D451124C692;
	Sat, 14 Jun 2025 19:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WvVdejBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304D0188000
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749929976; cv=none; b=k/tc8CfFRwlaUSOY4CrL10t9SsfykjIgIF1ok9AGyimRvRMdjmA8eODo/u9EGhdEcNHrEOAXLuYGR3Kon8udJqK/hKKrStOk0hm6KoI8f8Hngv4FbCN0S+aQLf3B55g0n3ekn6OvduYxIe4bPtNy5PH47jdpevAFyJOMrulEJ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749929976; c=relaxed/simple;
	bh=zSkcy+9QC/FsH2JbyDzo+e5oYZeRb6hCJ+NReJzsy5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i1gSBB/h6Q1MfrfShAkVDBxDyDackReUUQL0NmOWrFCayMdk3b2Bp9sfhh8dPHN9IbkQArhsPBWyuRIr9LWbya0bAzwjrf71nQ9k5tbqJ7HNyHHzgJ8MGcY4NOQPjT3e71zG228ZkKUM6MZPH87G54MXnTTku/rn01Nu3fRhcjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WvVdejBK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EJFQE6004185
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:39:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OcxiXXKnkOWfPgGikwQVTCvvEomIPuV/EyKApCfjq2c=; b=WvVdejBKlY5Z5fvW
	qQhz/3eJrRsNKCmoVpRynF2+3ysfqUiq8WbFJGC58zxaZJ1+8dA2kz8Jv5q5KKZa
	o2Y3pEVayJMHLogafs3k7DrkAY9UUlSRcm7x90+NTDy3gP+7jLv5zVMkxYESSMP1
	J6Kfp4OVdnf1KVU3gdo4cDH0I4ao74DWTuB1xl8ImytKoCQkN7TC6WPvotfDq9Da
	HbSToywQHpwF59NOg092OeU26BTNeww/wrBZ+hJJLeLd3bTK5yEO0cddwwK55r08
	BuPSsgxMS60G7EZSBPUAaNnPbHOFoF6CXpD8C1YifYzbYqUy/W0vvBZDQJuF1LwC
	U/paiQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791crgxd7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:39:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5ae436badso6666761cf.2
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:39:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749929967; x=1750534767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OcxiXXKnkOWfPgGikwQVTCvvEomIPuV/EyKApCfjq2c=;
        b=d3sCDh/WFiuazyK6KyAxt4B26XCiy4+/zITKHXXbrQB6RMqY4AbKmk2dNQ3tNoyHiA
         AZpOEFTPW8y+6Yys1LsLGrqOU0edc4UcJvZl2DNkup/VccrV6XkCXQemp+BaQZfXwPaz
         gppfV9K/gTd+9MF99YNPAbuA+cMQOTTV8r2OPBwSKT7fawi466b+n4cEHj++MdZXMm01
         I/aAfGi8bh9NryAHpxbal2ss3wL8m2qEQ3f3Xw48w+hjLMC7TWom5exGwmmAR672c8NV
         65VcHbUcp16mvS06RPDq/hnMoC1Z9CY5akSlJ6AmaWmwfaJAnlgW4lh5CC4PorfyotdZ
         vBGw==
X-Forwarded-Encrypted: i=1; AJvYcCUHL/b5g/gzPUHW4/2PZLehxhvnAxCyraG93tOXqBxx4uu26E6nZbhdS6eSt7t/sQHHeo3RIGMGEfCg@vger.kernel.org
X-Gm-Message-State: AOJu0YwISpMH/UdZI/N7O1Km0GZvCqOlVNMVv3BH4vZE5gk34zDLOd0a
	imTFkz+fbZMkrgQyM/6G9aajeChSM4MP4nrSgjp86dmVraG+TRoI2fPvpzSkdeizVMbJm6RVCBM
	6H9NgULj/Ec+PJBOv/WXJorkuzhJZhbUCp4Wtdawgj+vr7ewpRJAaTHueMUN12JmE
X-Gm-Gg: ASbGnct/oc6ACl0UUcPwbcZknuh1Cfa7OJcdWTstq2pwf8oDjrEk+8ag43Oyg4fV9nE
	TFudupFDZF+wZiT/L4Zri5Ja648Uu9wXrYc28a7eOzNU0h67aOcumJHc8kwT0g+mysiFrK/5ACR
	ZXTfEb/jmaqOpfpSNcn16k5w3AIulLXNasaYWrbWyyB5q2JQuNC/NfxAywOMhEg+8HsLRiY4dap
	6zsWlDBp3WfPKJ3oNkA9XaIZRxRSv5TCez8hd8Ek6O8KYht6OUPhzupCzaZ3KLO8HVyZyGf0b50
	qGjZB+JdNeEuobSsC7mSAiEZFYo5nRcVSbrSFSEUH5YPf81G1HLc0pbhtnXhbynP/w897XVdWS/
	Udt4=
X-Received: by 2002:a05:622a:60e:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a73c4f0986mr22710881cf.6.1749929966899;
        Sat, 14 Jun 2025 12:39:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8dmtvab1DD72NJPA+fqrTATOvFUC8Y320lY5T4Vp6J43nwiKHvw9BkAW22BjuNAMnhrTD7w==
X-Received: by 2002:a05:622a:60e:b0:494:b869:ac06 with SMTP id d75a77b69052e-4a73c4f0986mr22710791cf.6.1749929966424;
        Sat, 14 Jun 2025 12:39:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b48cb761sm3224336a12.17.2025.06.14.12.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:39:25 -0700 (PDT)
Message-ID: <ee088b5a-e792-4704-8f1e-e709f1b0c5fc@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:39:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] arm64: dts: qcom: Add Lenovo ThinkBook 16 G7 QOY
 device tree
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250607-tb16-dt-v6-0-61a31914ee72@oldschoolsolutions.biz>
 <20250607-tb16-dt-v6-4-61a31914ee72@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250607-tb16-dt-v6-4-61a31914ee72@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KUGCvSKyJgmU3QC394kSVm4q3d6-6a93
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=684dcfef cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=pGLkceISAAAA:8
 a=Lh12ZzDr1oTyhi1fLBkA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-GUID: KUGCvSKyJgmU3QC394kSVm4q3d6-6a93
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2NCBTYWx0ZWRfX1sm0q4K29uVE
 pEerOFTlhUQGk9+nZm4grXb6TpzlmNkQOQdPEdLp/fs9FJzRGmVo7HYqQHm/YKyL4PK7rsD3pt0
 PGYkJc8SvfPrVp/kOK+zuszjRp0IElSTfsxsJoqiN5FnpqjKR7V2G5kFnpAWF00ftkvFnmWF+/d
 Rx7VmarwcNYsOv4NRXxL7gpLo2f4/0Dv1zQCEJi0TssyP0fRG8KgU1kJK1u5pqqQOJj9bzPOGjO
 Ht4Ct5+N7U6GgTt2YzYcDBCSbbXa9T7D0ZjilJERvhxv8nxV/FVsE3m2/7CKEyYxccqmxl/LSm1
 WGduvO1f7WHBQS/lm5j7Kx/1TEBzX60HmSTw/LYdN222Owdy1j5vckRjtDwZ5XTCFFWlVoWlv4M
 YXsx/eo0jnNFhHelcAUtoFZfMw3mNWWkZK/8C0fycPjwn56NUNVdPpjQ/7yj03pFemKBKcLy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=973 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140164

On 6/7/25 9:19 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Lenovo Thinkbook 16 G7 QOY
> 
> The Laptop is a Snapdragon X1 / X1 Plus (Purwa) based device [1].
> 
> Supported features:
> 
> - USB type-c and type-a ports
> - Keyboard
> - Touchpad (all that are described in the dsdt)
> - Touchscreen (described in the dsdt, no known SKUss)
> - Display including PWM backlight control
> - PCIe devices
> - nvme
> - SDHC card reader
> - ath12k WCN7850 Wifi and Bluetooth
> - ADSP and CDSP
> - GPIO keys (Lid switch)
> - Sound via internal speakers / DMIC / USB / headphone jack
> - DP Altmode with 2 lanes (as all of these still do)
> - Integrated fingerprint reader (FPC)
> - Integrated UVC camera
> 
> Not supported yet:
> 
> - HDMI port.
> - EC and some fn hotkeys.
> 
> Limited support yet:
> 
> - SDHC card reader is based on the on-chip sdhc_2 controller, but the driver from
> the Snapdragon Dev Kit is only a partial match. It can do normal slow sd cards,
> but not UHS-I (SD104) and UHS-II.
> 
> - The GPU is not yet supported. Graphics is only software rendered.
> 
> This work was done without any schematics or non-public knowledge of the device.
> So, it is based on the existing x1e device trees, dsdt analysis, using HWInfo
> ARM64, and pure guesswork. It has been confirmed, however, that the device really
> has 4 NXP PTN3222 eUSB2 repeaters, one of which doesn't have a reset GPIO (eusb5
> @43).
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Co-developed by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

[...]

> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcd_default>;

property-n
property-names

please

[...]

> +	/*
> +	 * This is an odd one. The camera is physically behind the eusb9 repeater (confirmed) but
> +	 * if it is placed below the usb_2_dwc3 node, it will be switched of after ~30 seconds.
> +	 * The whole reason it is described in the dt (as an USB device) is its requirement for
> +	 * that additional regulator, and to get power management to switch it off when suspended.
> +	 * Defining it stand-alone does work.
> +	 */

Looks like DWC3 only does of_platform_populate() ("probe drivers for
child nodes") in drd.c, and your dt sets everything to host-only..

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <34 2>, /* Unused */
> +		<72 2>, /* Secure EC I2C connection (?) */
> +		<238 1>; /* UFS Reset */

Please align the '<'s

Konrad


