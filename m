Return-Path: <devicetree+bounces-226984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FD7BDD758
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DE3114EDEB5
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51FC306B18;
	Wed, 15 Oct 2025 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ERA1fabA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336193064AB
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760517632; cv=none; b=UNaKOt5xdynUaXY4yjys2So+etSnXEyMrJ+tNtFn+1FhRq2EN9DCE7kysUtdZVEtLb9Pk94JnrHoy7foiRb97v/wK+LBNKWGh0WigTZTdOgVxr6xDtguhEcARw1BhGkfmywb4eVH6rGkxyoQjqgJy7A28DDd7wu5qP0bpaQqfzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760517632; c=relaxed/simple;
	bh=B1HU4XzpjvLoGBRdWYfuclPmNkqrtuYSBUbFU9qekvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rTzs9sgVRbJyRsPzsmrISw5prTubgLc8VoDysim5PnohO80HvyZ3H5TAV2hUNTRjxwffajH9OwlhI0Kfcof8ITzf3bX1u9QzZRElymsGBpb3ByqZg7GDRM4qbnG5f6utN1yCxE2Mu1dTnRaZ3kn2p30dHYCgXj+2By4f4W9xMDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ERA1fabA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2slKC005001
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:40:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n0NkvLFD9PifIf1hw60K2ieqObK9jLK25z7AF/7XH88=; b=ERA1fabAccWTUBw0
	x099SJ2xQXSqXMKDkvMnifMmbAtoioyy27Ov1wDm4ZyxD0asULryHzVitYp5emQG
	thQtmxFXcJQOSDFaXnJflt4svqCkfI4qZxhEN58skIHKpw7ztJtwN4Nhoi6yPtWR
	dX6rA98Xv7B/wSUe8MRJl+ZlLK3F/YYkCfXWdORVqVl0UOg/zSKzumSpzWT0ntcO
	s9wQOOqkWwRuqXYDLywE5Iu4FLfwXJOVrPKzCi3f/EjWGwZvMEeY6AxEPoDD8Osu
	5vrS428dbhoSQP24kRHe+Cx5JC7TsJZ+J9PIebXlpVu/xbQsORGnApQYtxWffTGh
	RudgCQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwp087-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:40:30 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7810af03a63so17861766b3a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760517629; x=1761122429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n0NkvLFD9PifIf1hw60K2ieqObK9jLK25z7AF/7XH88=;
        b=rLpnSBlDk3tXdMxtgoMI8cgdgRDW7DdpJgkbV9FoUdfEktroT1ahQD04BexMiTCGc6
         MJa8kiMl+4gVgVjEEIPNmwaq147f+/VVkmPSV55AQdxDVmlM0pMOBKZrhcT4If6c+PLS
         wOhELdET7FfaJnHXrFf1BAuO9Ien7GV2zbrt0FYV7ufVeldmU2lXFb7CJNI6As7La9+X
         J6Us3LSjSGdJUnvFXAXeR3Yjm4sITibLlro8EGjKIZ5i3axQ/MwaugKo0smmr2haSHRD
         pCBQC92xnzobC6TGA86MY7xRzmPs2j3Sxs/qyRqsHocXhBV81SGJnJwHvRu0iSqpviFz
         yrPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs9aPI9i5azb8XiJ2DIwV0BNyzCn8BNyFf4Ynaeokvws1j+Rth0XXH0YFa3SgfEQ8uf81/5bCGa+SA@vger.kernel.org
X-Gm-Message-State: AOJu0YzbREoHDc4ITZIv9s4ReD6bC6b39K8p4G28D6nkjQZj7dOGhnav
	ycA7NrltQv7dpPjXb9QyBOBczjWnxCjnpV/3W5fbkGF02R/Gwomhenz4gXe9L06v8PTLbgFBfKC
	Grten1qKBz36+n7J+tyRehETZJCYD+cmZRj7WDaduku9OKvLSkcdLk0Mg5UcG2Sz9
X-Gm-Gg: ASbGnctCMaMBv3KrvXJGNsaszf9GB5Lg/9I1VOQ0uzAgYrwPEwR8Rh6uwxaD/ec06oF
	ueiy9E/MGNMuNnNO93S1vIBHfFLKUrv7NC0BNim9V0/i8AE2nnYpDvuDG8SEPZtRmekSC6nzkGI
	bV+kB79lhIkZnovT7SmQ2/aeYdX6NnlTp/yLvrDVG238KgRwTFUT9SoEqSE3zTVLqz1yYPguoRL
	yh/4zXObU7Jo//sMG1eqrqqiyAaokYkigOCP0kDUEzOKuZcd9dayW86RE93NQK/5qCvZCnpFhhQ
	dtodqy6b7vatkfbmFfLGutFhIRKHksp3HTyMxO97QHed4zOFRHUCfFrjNm8mUNo6ua6GgNU=
X-Received: by 2002:a05:6a00:4c11:b0:79a:905a:8956 with SMTP id d2e1a72fcca58-79a905a955bmr19850794b3a.14.1760517629497;
        Wed, 15 Oct 2025 01:40:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkvRS9mqkw4xAmKHSN24pxFC4rUHTz/FMp8QKwR3Q9/4/dkq/owOCSgKDO0abpL3A0/sRbMw==
X-Received: by 2002:a05:6a00:4c11:b0:79a:905a:8956 with SMTP id d2e1a72fcca58-79a905a955bmr19850757b3a.14.1760517628915;
        Wed, 15 Oct 2025 01:40:28 -0700 (PDT)
Received: from [10.92.210.195] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e198bsm17833032b3a.60.2025.10.15.01.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 01:40:28 -0700 (PDT)
Message-ID: <2bc64bc2-97ac-4a08-9721-7d39c665a95a@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 14:10:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 03/14] power: reset: reboot-mode: Add support for 64
 bit magic
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
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
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-3-b98aedaa23ee@oss.qualcomm.com>
Content-Language: en-US
From: Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-3-b98aedaa23ee@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX7pzoOH1hXxo+
 KCarpQ71418JYpAt4TP10idHYeKQ4vO81QpG69tE6mfItqk68UQuXkhXmqlpP/wuY2nDYx6gEYP
 6HacEICDstagneTg9qWhsG86j9UXok1yFwKgUM3s5jYsuvv3OeXCrbkhKo4a4uQpt6uOF72C7H/
 c+ZV7F7M0EUlAXG2tw532uwXW2GQQDqYTbA3NcXIK4gOEMYYEbdbi5wAJi7REnn4lJAF6hWVdSJ
 KMOO9OF0v89aSEM9G4vXsD6/TboNsnuQkX+78bWh+JXYsA51C6eDF4tlFOoULGMD7mzdF6ywpS7
 mBZUtP/EBQt16EuK3Lz1G/dQnIFNRFFt+DT/1dRrDFgYkMUWC12xmLzw60CYFl0GDRPZ6obbVeY
 aQ+aOSc4wKQF518ZRWOe4mtQX0uhRw==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef5dfe cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=xyQZWzCWjP-v2z6xiYIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: Lr-MryKBquhLbN_7ze1P1z6KDwRgtY-8
X-Proofpoint-ORIG-GUID: Lr-MryKBquhLbN_7ze1P1z6KDwRgtY-8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083


On 10/15/2025 10:08 AM, Shivendra Pratap wrote:
> Current reboot-mode supports a single 32-bit argument for any
> supported mode. Some reboot-mode based drivers may require
> passing two independent 32-bit arguments during a reboot
> sequence, for uses-cases, where a mode requires an additional
> argument. Such drivers may not be able to use the reboot-mode
> driver. For example, ARM PSCI vendor-specific resets, need two
> arguments for its operation – reset_type and cookie, to complete
> the reset operation. If a driver wants to implement this
> firmware-based reset, it cannot use reboot-mode framework.
>
> Introduce 64-bit magic values in reboot-mode driver to
> accommodate dual 32-bit arguments when specified via device tree.
> In cases, where no second argument is passed from device tree,
> keep the upper 32-bit of magic un-changed(0) to maintain backward
> compatibility.
>
> Update the current drivers using reboot-mode for a 64-bit magic
> value.
>
> Reviewed-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>   drivers/power/reset/nvmem-reboot-mode.c  | 13 +++++++++----
>   drivers/power/reset/qcom-pon.c           | 11 ++++++++---
>   drivers/power/reset/reboot-mode.c        | 19 +++++++++++++------
>   drivers/power/reset/syscon-reboot-mode.c | 11 ++++++++---
>   include/linux/reboot-mode.h              |  3 ++-
>   5 files changed, 40 insertions(+), 17 deletions(-)

Reviewed-by: Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>

Thanks,
Nirmesh


