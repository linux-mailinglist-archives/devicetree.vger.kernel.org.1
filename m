Return-Path: <devicetree+bounces-198434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732DB0CCBC
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 23:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18F8A545F37
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 21:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CAEC242D94;
	Mon, 21 Jul 2025 21:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a7Cs9nET"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613DD2417C5
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753133824; cv=none; b=MdgSxyOfCQRcCc1vSQQsf7vpz1RJrn2tpXN+kCSkElPUe/RTODVZi5/QTGS1OM+jJHedjBr364EU0nG8IpF+7wjtql3TPdgrsxbLmw67dhE0/zl/J5SBvDFBJyfKwTbc7TjO2nsfrQM77nXAgH9Fp0lcJRqFegtr6Gs6k/ZtTaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753133824; c=relaxed/simple;
	bh=NhZKKC0lMBkpQr5YwAYsG7J4EHYPJs4VzzhXBQifSEo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WE/ePnj+ru7/Bb9LHVuDneusRWzbw4C9g2UJThME9jkBG7PhRd50TJvb/zLE5wQacazo4Dtgsd8mb8BfqaeoU3fyNmpZgEOW39kfRyH9zJrLMCUfbbBGACgy+uwJV+hcrdPPxT8FE76Ior8AYRz7gp5JuSZl4HcUH3QKqNzF/OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a7Cs9nET; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIh8Qh012287
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:37:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XSeneYubwoKFVumkVWiLXeNw
	ksNpoI4nzayH5GcuL7o=; b=a7Cs9nETT2sN9EK3jsfH7FtrU8CgqAwo9tVFk5g0
	wkb797A1k4AlBoloSn2mci4IjK6bVR4nLUcJMJoW0kcMlwrHd/syVoym51qWUjAk
	yZ6iNu3r0vS5nyOkIgN/8TDWRUsp8AkaHAiUIpHcY/jTL92mql8ymbDlwGfE6Q76
	SemUdAD3yHBaa4pbrssgNQVPIc3rZlufh67xn0ePJfENPvCM0lnDdskEdqDPWwbS
	tsScXZ+hTuN2EeoE4VHOWwPt5g3Imd3QBFzsvr9ptfzliRw8B6jCPAygPjRcuiKd
	B+vjlF0AESonxfs5SYJRw5bra8wmqp21quhvVv5bNlu69A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480459nr2x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:37:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e350915d2aso1288661085a.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753133820; x=1753738620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSeneYubwoKFVumkVWiLXeNwksNpoI4nzayH5GcuL7o=;
        b=dEY5bWOqsWG7rhonidqYfKUNRHEX98byQ1po+z6DpoPW3QnKgpQ2Jub/htGjt04CAY
         /x1Gn3uf2EHXwpcBi/SuC6mMQRNdRSjbT1jeWl8NI9d3fKwufA5VRQNG53qbNIDE2zyO
         ikKO/cKYpbBgfRj9IUtEq3ZkhSBTf2xLFX+5EFKad9nVsZ5XbXCCjXqauLrZV99sZqz6
         Ac8db8gQRz+n0dHofUSqaTWN1bVg4HJjbDZD6510xZR2EV7TIr0wawlrumKyLh6ouS6f
         EHTnDVOARQFTSLcfwzlua709MJqkWLaSi64s8K33Bipg85HkycJ8Mfsw8vz49NwjNi04
         3GCA==
X-Forwarded-Encrypted: i=1; AJvYcCWmrS+GJdYUQUCCpBC/bIkePcTmdA0xOMOElHpXQfyc0T1zl88gKSvUlCuCtoDgO2xAcAkYfLtWE8pH@vger.kernel.org
X-Gm-Message-State: AOJu0YwFy7B1PINd5Skn8c2Td1AbOlbO87lA0VQtVWlfr/IPsoNJ+UnS
	NQbb0KtIT0u7CyKN9epW3PGTjf5wu1WOZlPt/UuVbwKzje8VeVMRYlDeHnYrJ8uh/nE8OV+k5ef
	3OzfPQC+GvgBFT1glRVZETa3/5YbXhp6ABhB09+HDZixQiJJQyri7OkJancFfRgwH
X-Gm-Gg: ASbGncsHVBPJQAF95XPJTBqRtxqkxBim0Mc5Ond4eGdtZ6ScAlHt9DoRFQROo1rfP8a
	ehkZUAk+S7E1zIr3MpvPs4o5rChOU8SK1Vmh9JTSOxVHG8ha4M7DaK+8GnUnyNLKSQQfRXyHSml
	KBKf+LeTErfs15SpVh8QMMqa0e7uhaKB/3XED7rARe7zHCY53OFKev4ZqU1707rLyX2X/asgCk6
	knhNDF+1UmeduyIfeviqqejiM74PhRPfsvUSFKJNkKlm1HCeMIRrC235Iy3Gf33gaVpQd2wou2U
	/2cSxPleVdahqot3SI6gQrDx1GaRou6obObHzd1G8W5WFhlmShyUivdK3G8FQhMBMM6vCX2tKp3
	Mc2YqlmqyF729it1kciGobr85EwEbEZDy6/ldeRKS7FMMXOyXq9Lf
X-Received: by 2002:a05:620a:2852:b0:7e3:5129:db49 with SMTP id af79cd13be357-7e356b06e5dmr1803432285a.45.1753133819767;
        Mon, 21 Jul 2025 14:36:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFF4jT0+GbYEvvHgqyFvbhxqSYTWAMQbDApGgQWdExppcPmAG6eo15SkHyeIVhHgv8/4M2flg==
X-Received: by 2002:a05:620a:2852:b0:7e3:5129:db49 with SMTP id af79cd13be357-7e356b06e5dmr1803430085a.45.1753133819325;
        Mon, 21 Jul 2025 14:36:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d7c690sm1698974e87.110.2025.07.21.14.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 14:36:58 -0700 (PDT)
Date: Tue, 22 Jul 2025 00:36:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v12 1/8] power: reset: reboot-mode: Add device tree
 node-based registration
Message-ID: <33gq4iyx5jxrr6f5w3ctgy7l7om53jdvb4tmfmxzourhfvpc3t@cr5re2dab4tc>
References: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
 <20250721-arm-psci-system_reset2-vendor-reboots-v12-1-87bac3ec422e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250721-arm-psci-system_reset2-vendor-reboots-v12-1-87bac3ec422e@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: HmL6ULUo7ENI2l_KUcP3RxrFMChC-CjY
X-Authority-Analysis: v=2.4 cv=fdyty1QF c=1 sm=1 tr=0 ts=687eb2fd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=1bIxdRCwe99oYZTV_csA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: HmL6ULUo7ENI2l_KUcP3RxrFMChC-CjY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE5MiBTYWx0ZWRfX2bhIPGiqSbfD
 IhFEJVT/6FZ9gBfCR82Le+Fw4hq10PHUD+41FrIRL2iRgF0TmbXgCNj3sU+DFyMPvT+ox3OAP7E
 a2Lsky7bUW3gB5ERGA0GJfS/XyiqnamLxPEg56jaTl5aAm0FyzyhAnnxejApR2hu0w+rGaK13L8
 0xOhmcI0HUtCgLwIGw2PV6HClncpkOekkucIYY9rzeD7q6WJ1/qzFUCKkmcs/QZfml/A4oc6yyf
 SuFBN2jhZs4c6Yw+xJ0hzYQJcHFyHtDwLQ0H42rzCjeAnD7GuqWm9R4pVoy+D5UUD8AhtjYe15H
 mgOIV7H3srJCo3BJ8JQXw+QittxUhCyREraKWs+aDdIOEOza0kkySoyDePPj9PfsozWeBZ5sG5P
 4KVJDiXm2KXXK5NYn2M6dHXoDavHL5EUDnSqaUe2WV0yiKychANXPKEkuc+HP9nqMaRhf+Rc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210192

On Mon, Jul 21, 2025 at 11:58:48PM +0530, Shivendra Pratap wrote:
> The reboot-mode driver does not have a strict requirement for
> device-based registration. It primarily uses the device's of_node
> to read mode-<cmd> properties and the device pointer for logging.
> 
> Remove the dependency on struct device and introduce support for
> Device Tree (DT) node-based registration. This enables drivers
> that are not associated with a struct device to leverage the
> reboot-mode framework.
> 
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/reboot-mode.c | 45 +++++++++++++++++++++++++++++----------
>  include/linux/reboot-mode.h       |  6 +++++-
>  2 files changed, 39 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index fba53f638da04655e756b5f8b7d2d666d1379535..5dd3f06ca88cb28606d9fd2100ce03383c14d215 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -3,13 +3,17 @@
>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>   */
>  
> +#define pr_fmt(fmt)	"reboot-mode: " fmt
> +
>  #include <linux/device.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> +#include <linux/list.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/reboot.h>
>  #include <linux/reboot-mode.h>
> +#include <linux/slab.h>
>  
>  #define PREFIX "mode-"
>  
> @@ -55,7 +59,9 @@ static int reboot_mode_notify(struct notifier_block *this,
>  	unsigned int magic;
>  
>  	reboot = container_of(this, struct reboot_mode_driver, reboot_notifier);
> +	mutex_lock(&reboot->rb_lock);

This one should go into the get_reboot_mode_magic() function, otherwise
it's not obvious why do you need it here.

Also, please split mutex addition to a separate patch.

>  	magic = get_reboot_mode_magic(reboot, cmd);
> +	mutex_unlock(&reboot->rb_lock);
>  	if (magic)
>  		reboot->write(reboot, magic);
>  

-- 
With best wishes
Dmitry

