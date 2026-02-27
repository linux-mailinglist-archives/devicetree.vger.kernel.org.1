Return-Path: <devicetree+bounces-269419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PWEOX78oWl4yAQAu9opvQ
	(envelope-from <devicetree+bounces-269419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:20:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2381BD871
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 541733078F3F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69BC5477E24;
	Fri, 27 Feb 2026 20:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l46VX7Ci";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RbUiAT8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB2D4779A3
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772223299; cv=none; b=l3h50yMXNCklRZ6WnMnZ+VvfEEoDNZUYidzOJBsL2IBY8H2UZcBE4KanBA1sNCHVSyh5cpCpdoJA6TP7EEh19lAG/W9FrvBJJepe+pt+++JTD/KSROPsXA2USxq6QmpJdmKOhUKI9S4ya5KzVwwwmNpGbj5Zy05eZGscyrijJIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772223299; c=relaxed/simple;
	bh=iucNoNEStscn+tF3OuWq/KxWs14WthoY9Q8cXGzCxVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uu/pQurHv1EW7UWsgqmWqmFVoN8xJiS+9WECNyabdkyzMdZrlfYK6cKEg5W3OwA/M4An0OD21dXP0Ev5Rh6cBER+txSP5AeIWEczsfYNXFSZJtOLYezgJAlDg45UkgGCdTG0yQ4mXN9ZDDO6hTS1lR57iCprSRZ+/cIUr3oMkcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l46VX7Ci; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RbUiAT8w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0GC8010531
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:14:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=d3qWlTlHeHHlcRziGZQh+7Eh
	dQAZWCc1/zRjvAUju5Y=; b=l46VX7CiT4zVHDcCd/GnnhhLMZLwnJdSy/NSQCL8
	K4woeRxVjr48lgLFgPd1jDHU9UiH88OgxAtrY6SGuqHktIdLSKdfPbTCo0vYn7lv
	HS0dGrwrI4rbeKM1XFTgClUN32V8EaYNG+HD+NSOossL1Pvttv/7n43eORVi01GQ
	LNtUp2Wl8GEaX0fT1OmYmoZvnYHunR1MQe7gZvApkf+WqP8j9ja/5syrSG8yOAXk
	47f7DWYt5ThDHkaufGgEbebUwtuzC2ZhExf4VUAZbodWhIys6MXdMbE0J5kQL5+y
	CKnYNPRcDFvfMQdsK8isU3XHcQm0zjjwuFAKEUQ9h4SFFw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuytvedc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:14:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ef98116so2295581485a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772223295; x=1772828095; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d3qWlTlHeHHlcRziGZQh+7EhdQAZWCc1/zRjvAUju5Y=;
        b=RbUiAT8wKBCa3griz4wX0QXuglSpBfM9R0Sw6IABxbwEl1u21jzI7Ob1DBsKcgwPwI
         y/uV4XmiZpUqM2JnuzSXr7ZtmMGfQP03jasJq1TduLGLqJ+J5xWiXEAzDAxGWpcL9FsB
         efh57YnbbIf+m3snHX8nxXdD4fCowhfzDMHmFjK/NC5T4RsYsK/mr70dh5+naBCW8a2U
         1oPYaTod0NGvphxZQ5iYe5+14nG54Oh60RB/kMMj77szrcMSjN2iF/3IsOLyilqP5Ywu
         84r+seTgCw1Jlf5D3E9APM3mt9UtjWTJlzW8mBUXXjIxYZQ8xbnuF4aH7wej0mw+S9Fo
         oXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772223295; x=1772828095;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d3qWlTlHeHHlcRziGZQh+7EhdQAZWCc1/zRjvAUju5Y=;
        b=nbYlO+6bYYUTZ5IWbeCIBGZlamBMK6o9QHerMsMcQksOIau6kmUF/FdA3VfjU6HcO3
         e43It8CXkkCT8SYe5J6y2sGuKSk6Hw6RcJkp1np0miMhthj0nW6RivXw20l0dxPMGFnC
         8ct7xiWOAIm2b8AZOWAHR9HyNwjP2/kiAv5naBzdXnNBQkjw8Uo8tSgoFHMRoBaqgUIE
         bRv5zxzGZrpoCl7a27nHS22hc+D1nwBuohfAm9wL5JSSc6USJhkNVCxbYcrEZNRkxd3E
         Bps5EYngm7yKg+sGxasQyv5zW/WEenegy65PVzBXxrX0gD9OdV3YaBmpk4NM2uVecFYM
         NaCw==
X-Forwarded-Encrypted: i=1; AJvYcCXUNlUrbg1Qy6Tagkh+syuRtZTGwOlFrTUXLOFgMBSadH287mxwE5kzx/ugNR0LkxQf0e4/sOFAdxEd@vger.kernel.org
X-Gm-Message-State: AOJu0YzRtt//lO+dPv59/m/QT9B6c2EBO0WDWPA61VnWju3oIimRNd32
	avr3Vwy3ZjNFp38LPOWsRw0xLXXR5oz1NLTPsDAW6Ds7F9B4w5t4Txps+RoQyCe34j5fQpaT62+
	0zbJvosTG131LAuZ2nDQQUKMnn9OxFcbvrx6j9aqadDP9lEvzgInQx9Bh4HrOjGdq
X-Gm-Gg: ATEYQzxR0hiXNb2nFrxq3AJ0e4WcsY93n6isjTiKcPHJDAjXeev5h+0sPe9Yfb52KWR
	0bx9sZpLi9H3LTWgaI2BMkuOTecf8UkxJBJ+XDj4AbZjyZa3gp6S6jdIPcyJGikrFAxjg2EjZC+
	QBzcfyTV6AiKs+DM1s1kYobFN9eaHUNlLcHzQY2ZDnfaClKIFOVZeO9GFUVDGq247RxRKdM2i8L
	KjJfxfjwvsEhDKfHRUFr9n+FUu7zZDkZ6vj8LuiuUR7vMn8GLk5riRcuIr/2c1fLnPuhnqvmnGA
	QuAzEN+rEYF9bwBG8PAfqg21G98EbNmmWZnYLO8L4K52cFyODqUj05BK6nI5KS5UyCf927f3N1O
	jM37bGOtzZtpKx9MzclJeivnre4f8J84LV2esya7qg7o3u/jL/VdUBWC5JLqpqOdAeBR2cvdvq/
	bBDTiU2OXy7ZWD/cUF0f/WddL1quH3FcoM0ag=
X-Received: by 2002:a05:620a:28d6:b0:8c6:a341:ac1a with SMTP id af79cd13be357-8cbc8de81famr504699785a.52.1772223295026;
        Fri, 27 Feb 2026 12:14:55 -0800 (PST)
X-Received: by 2002:a05:620a:28d6:b0:8c6:a341:ac1a with SMTP id af79cd13be357-8cbc8de81famr504697385a.52.1772223294554;
        Fri, 27 Feb 2026 12:14:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a116022215sm102994e87.52.2026.02.27.12.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:14:53 -0800 (PST)
Date: Fri, 27 Feb 2026 22:14:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 3/7] media: iris: add iris vpu bus support and
 register it with iommu_buses
Message-ID: <rgglzg6kcq4xz5wtambs3mwch7foxruh7ecbabtu6gm7txr3wu@b67uwl6mk5tx>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-3-850043ac3933@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-kaanapali-iris-v2-3-850043ac3933@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bJIb4f+Z c=1 sm=1 tr=0 ts=69a1fb40 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=A7-SorSeRF4lZ4C7dWIA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: i-IctCphMiCsurkVi2gVUTCmISRjV-Qc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NyBTYWx0ZWRfX/zkauO134jrR
 9blwh5JLxgLDZoP7Gzu9/WeXmlNUp7Ot9ep6K/XBO1KSDad9Kh7giio51SDKlYRNx4W/YnTicLH
 ImRBF5QoEVh4Oj8sccJpFwG+a/SlMs/SdowtGVLc+eZWImmAv4oLT+O0BgfXvud5JO5SJ2oPe/H
 5+UGzXv3EYuFyGoL9RdPJO89eJLhxdN8rDYFG5C2b4h2c6pcCMAdOOYhkp/n3zROdm5TTKelktL
 PhmVMopyZRfpb+r+4qgz1CnegwlytxZBzWWsXJ8Es6GJyAU0mYh5tmILCIYzC3YtzcyXcaFeJHB
 2oU8RLdkNeKYd4wCiYV/8VWG/dwfeu5Nla3r/IIWaOxLHgrp/XKzppmUzNbdbuXxx++efC5uPIz
 ldPOY7Xi0YlMMIDlRX2afMj7zRz1QlSXl49lmbNOSSOfJpmvAsN0yljUeji/FGgCNxokzLVz8Rd
 TQIOIhCuPusBknvXp7Q==
X-Proofpoint-GUID: i-IctCphMiCsurkVi2gVUTCmISRjV-Qc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270177
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269419-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D2381BD871
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 07:41:19PM +0530, Vikash Garodia wrote:
> Add iris vpu bus support and hooks the new bus into the iommu_buses
> list. Iris devices need their own bus so that each iris device can run
> its own dma_configure() logic.

What are "Iris devices"? Are there multiple en/decoders in an SoC?

> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/iommu/iommu.c                           |  4 ++++
>  drivers/media/platform/qcom/iris/Makefile       |  4 ++++
>  drivers/media/platform/qcom/iris/iris_vpu_bus.c | 32 +++++++++++++++++++++++++
>  include/linux/iris_vpu_bus.h                    | 13 ++++++++++
>  4 files changed, 53 insertions(+)
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 35db5178095404fec87cd0f18e44ea97cf354e78..fd5fb7c10da22ab548d359ca1f44504acc3d646c 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -13,6 +13,7 @@
>  #include <linux/bug.h>
>  #include <linux/types.h>
>  #include <linux/init.h>
> +#include <linux/iris_vpu_bus.h>
>  #include <linux/export.h>
>  #include <linux/slab.h>
>  #include <linux/errno.h>
> @@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
>  #ifdef CONFIG_CDX_BUS
>  	&cdx_bus_type,
>  #endif
> +#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
> +	&iris_vpu_bus_type,
> +#endif
>  };
>  
>  /*
> diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
> index 2abbd3aeb4af07e52bf372a4b2f352463529c92c..6f4052b98491aeddc299669334d4c93e9a3420e4 100644
> --- a/drivers/media/platform/qcom/iris/Makefile
> +++ b/drivers/media/platform/qcom/iris/Makefile
> @@ -31,3 +31,7 @@ qcom-iris-objs += iris_platform_gen1.o
>  endif
>  
>  obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o
> +
> +ifdef CONFIG_VIDEO_QCOM_IRIS
> +obj-y += iris_vpu_bus.o
> +endif
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_bus.c b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..34ce78d9b0ff1feda15ba4f060a56d02749a0858
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.

Drop the year.

> + */
> +
> +#include <linux/device.h>
> +#include <linux/of_device.h>
> +
> +#include "iris_platform_common.h"
> +
> +static int iris_vpu_bus_dma_configure(struct device *dev)
> +{
> +	struct iris_context_bank *cb = dev_get_drvdata(dev);
> +
> +	if (!cb)
> +		return -ENODEV;
> +
> +	return of_dma_configure_id(dev, dev->parent->of_node, true, &cb->f_id);
> +}
> +
> +const struct bus_type iris_vpu_bus_type = {
> +	.name = "iris-bus",
> +	.dma_configure = iris_vpu_bus_dma_configure,
> +};
> +EXPORT_SYMBOL_GPL(iris_vpu_bus_type);
> +
> +static int __init iris_vpu_bus_init(void)
> +{
> +	return bus_register(&iris_vpu_bus_type);

Together with the Host1x it's the third bus having exactly the same
functionality that I've seen in the last several days (I counted the
FastRPC one). Could you please generalize Tegra code and come up with
the single bug that will work for all simple users?

> +}
> +
> +postcore_initcall(iris_vpu_bus_init);
> diff --git a/include/linux/iris_vpu_bus.h b/include/linux/iris_vpu_bus.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..8aba472fcadd269e196b7243da5660deaff31abb
> --- /dev/null
> +++ b/include/linux/iris_vpu_bus.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only
> + *
> + * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef __IRIS_VPU_BUS_H__
> +#define __IRIS_VPU_BUS_H__
> +
> +#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
> +extern const struct bus_type iris_vpu_bus_type;
> +#endif
> +
> +#endif /* __IRIS_VPU_BUS_H__ */
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

