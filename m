Return-Path: <devicetree+bounces-223840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E81EBBE2D7
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 15:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B8044E80F6
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 13:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749822D0634;
	Mon,  6 Oct 2025 13:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pj+bBsVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA7E2D0619
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 13:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759757177; cv=none; b=adQhhqAdhjoUMeLFxm6pS8gyEUkbEHvPXM7dz9tiSZuftc6oyqePb7uYEyVUHwKgnPNgJF/kLHNFbq/cM3AFyJSK+ghJ4On4eIsAbKPvzctC24QwUxZF32DBsEnfwYaQ1mnME3V6Z23SsaAhIEDl8cnfJYOwsrH8Tnfz0G+47g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759757177; c=relaxed/simple;
	bh=MT9skSBafU/OO6TyPXQDKc8LwQvb8rKcFgEGPquoaCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=suibK5xOVlKGBThhKmJXcy1R9jqqVyf5h8VOfE/xIh8thPL9aaBre/MeWth1VNHtCsD9+T22XqQZctZGqUYZIbJB7ORcbjZSlF/Foyjtyh+trTcv1WO/4dxWjrhvFqDliP8vbI53qIuyiPy1fSEWpseccXr8EgLmNWmOFol36kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pj+bBsVa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NLPRc026488
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 13:26:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=N6ypGwDaGlhrK6ZG0i30/Y0b
	yq9GzIhyKl5ZGLSoyg8=; b=Pj+bBsVa5wdki1EC9M/Y/T2PXX2Nn0MrZz3/MJFP
	8ODFOvriAzyVcNtwGjIvxQoANbtaKse6qUooemhy/RqvMcoUslVCM+t8L/OWc6Dk
	mmnsnplzFmw0sOWgV8BcYhtuuft4mJSAZaa6UuYU64Cxo1tA+thDg10WuD5DYA+D
	ShBBedvpkOc2BPIi+NeEohURSC9tA+lcQrRzqv9WMWeQSA/GX1NPpYKIgoy5uDD3
	9vEPi4hAYBCtRuP+C68uS+05T6wlMtNON68nwFlDo3Oo+uHQAs2GTU/iRnvckP8N
	Zc4rbShhk6MOqt5JINFdFsGlErCfHDN8WRItOpYM0WmWHA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1kw64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 13:26:14 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28e538b5f23so54112095ad.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 06:26:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759757174; x=1760361974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6ypGwDaGlhrK6ZG0i30/Y0byq9GzIhyKl5ZGLSoyg8=;
        b=RLB1VYJ35I4G8mS1O5POYJV15yc3gxDMW6cYqCAybgR+JO4WFebwKh2rdvnDXvgMqa
         uvzgWBVPOrrXkNNlLNmGK0FIEF8WqxNHtPXBkuIi1DC5I1nKUo+R9J1gIc12Z18EN1Wc
         Hf7VHM5tZ9SpcqFAHF/+7Ec20JW3KtRXjnxDzaWQMK6V1zGw2jScO2jEgCQSlRrmHny9
         1kxH/UroMCozMLW19B7CiceVLz+YYNd8FTqRfJr5f/2c4eW7ooiocAB7J+3VwL0hIDmn
         +9fs1m1HPouqAMVl/wlWvpsHr0oXvO16eLt7KmWHSKZu92HmFiaI9ULviOd/qwA11X7a
         78nA==
X-Forwarded-Encrypted: i=1; AJvYcCVC66rqmBkKBOI1CItnIVAmFF4T2cqVfRh80/tsdl3YLaoIbpcWN1X1QzL0r+EoTMKVGs5Yd3tioKGe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9NYoZKSCNiowpEtTB2QJCmF3UuwED37JXw0sf/DGWgrONi6X6
	Lg1ofynQNR8oFhNu0cxB+tu8OBW29juu0fOc3xO2GSe77xGcqJkRKYsMf7OySSphs47iPvfP1/k
	2lCF8L3ZwEZxel8dsBdWdHSS0YtKkVyBrXJDXEWDu4lJA3OHzxinHyOwRsGeiaAFU
X-Gm-Gg: ASbGncsJ8vXTHhsfPCVLBDo4WDLiuzxZPCX+5IryljLzZFjgxsszR1ezk9TOqrIJGwx
	FaEH6Qo3cSyTPP6bEwI9xzrCXSRQEQ4T3NorMA+qYxB3GiEnFd5rXx6kp4mtss2x2idPk7frOkL
	kaHL0T5Ong9DRwmR8Gp8nuCvJfIs+JUjuYjezNw/HxIcNrv4lUrnAMe4TBiKabqEgOtbVsSBTjw
	rKA5pQ8nrffLSLlCkF7CFOyh8yu4i8YLQYAHyeRgobFGJyeXyMRBwMK4uCZUTHuo5H439fv3Ssq
	4icODZALHiPKxoP35voAGpiB3qZyfiM7BQESkS+LnuTRUuz7g9NZ/nIhPKMkjLnm7/P/4KhBBGW
	4Iio=
X-Received: by 2002:a17:903:fa7:b0:26d:72f8:8d0a with SMTP id d9443c01a7336-28e9a546107mr157426355ad.12.1759757173866;
        Mon, 06 Oct 2025 06:26:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFCL9tEe0bUa/fsgaePc+hDb76CeL+9swiqptY7n40Bj6hjQm6jXL8R3obANVcrWL1Rq7DAw==
X-Received: by 2002:a17:903:fa7:b0:26d:72f8:8d0a with SMTP id d9443c01a7336-28e9a546107mr157426005ad.12.1759757173382;
        Mon, 06 Oct 2025 06:26:13 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d126ad9sm133655095ad.45.2025.10.06.06.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:26:13 -0700 (PDT)
Date: Mon, 6 Oct 2025 18:56:06 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        hrishabh.rajput@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] watchdog: Add driver for Gunyah Watchdog
Message-ID: <491de94c-e3c5-4f81-8e1a-82596413cede@quicinc.com>
References: <20251006-gunyah_watchdog-v2-1-b99d41d45450@oss.qualcomm.com>
 <3b901f9d-dbfa-4f93-a8d2-3e89bd9783c9@kernel.org>
 <a7633abf-0005-423b-b152-e8c70aa5c27a@quicinc.com>
 <b94d8ca3-af58-4a78-9a5a-12e3db0bf75f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b94d8ca3-af58-4a78-9a5a-12e3db0bf75f@kernel.org>
X-Proofpoint-GUID: F5hFf42pruWzbSQSGulrHNd4XnRhOh4Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfX0br2SnMyb4+J
 9+pLj0tcbjQKqJjmoBraORVFOdzx3OrBy2prJRLELhqQSKAd7XZEEfU83rZvmUzBmUiYYfPN4fH
 ZtiHv0PbAIS6fv965c/cZs8uj8wjceq2eMcVInhNMQ2BOxkNJMbqD0LMB3MZb8kFGcBGVQWtvvx
 OrUUOcUozVwfBOWxfePIcvwIfafMjiRxmg5uA8L5EBcpugRj/5iXzen7fsRV40WtV+4FZeTran3
 5/iSg1t/vFzKkHqszCGHlDCu39kMhwqDy/el0JRrEiIKPaLzkl2ijI6no2XG1pOhS6L5gYo5F39
 9m44+VTnUUBr9JIO8vEcg/QZ/fYdMrtemwtm1iKnXEJPl4Xcq3azp2zDcw99g8dNcOb5EvsVhvg
 fA+aaadYzDOfT9MLLFpa7VZNry4L6A==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e3c376 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=Jc37b2qoeXC1bbEKzk4A:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: F5hFf42pruWzbSQSGulrHNd4XnRhOh4Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

On Mon, Oct 06, 2025 at 10:03:59PM +0900, Krzysztof Kozlowski wrote:
> On 06/10/2025 19:03, Pavan Kondeti wrote:
> > On Mon, Oct 06, 2025 at 05:56:42PM +0900, Krzysztof Kozlowski wrote:
> >> On 06/10/2025 16:37, Hrishabh Rajput via B4 Relay wrote:
> >>> +
> >>> +static int __init gunyah_wdt_init(void)
> >>> +{
> >>> +	struct arm_smccc_res res;
> >>> +	struct watchdog_device *wdd;
> >>> +	struct device_node *np;
> >>> +	int ret;
> >>> +
> >>> +	np = of_find_compatible_node(NULL, NULL, "qcom,kpss-wdt");
> >>> +	if (np) {
> >>> +		of_node_put(np);
> >>> +		return -ENODEV;
> >>> +	}
> >>> +
> >>> +	np = of_find_compatible_node(NULL, NULL, "arm,sbsa-gwdt");
> >>> +	if (np) {
> >>> +		of_node_put(np);
> >>> +		return -ENODEV;
> >>> +	}
> >>> +
> >>> +	ret = gunyah_wdt_call(GUNYAH_WDT_STATUS, 0, 0, &res);
> >>> +	if (ret)
> >>> +		return -ENODEV;
> >>
> >> No, your hypervisor driver (which you have) should start the module via
> >> adding platform/aux/something devices. Now you are running this on every
> >> machine, which is clearly wrong...
> >>
> > 
> > This is a good point. Thanks for bringing it up. We don't have a
> > hypervisor glue driver (yet!) that can add an aux device. Based on v1
> > feedback, we would like to be a standalone module that can self discover
> > gunyah hypercall interface.
> > 
> > Currently this driver depends on ARCH_QCOM || COMPILE_TEST. So,
> > technically this can be built and loaded on all non-Qualcomm machines.
> 
> 
> Not technically, but practically. We do not make single-platform kernels
> anymore, it's not 2010. Entire arm64 is multiarch.

Thanks, I understand that we build single kernel image that works across
machines. However, I wonder do all modules built say from
arch/arm64/configs/defconfig gets loaded? Usually, the modules
corresponding to drivers for which devices are registered (modalias
based) gets loaded, correct? In this case, we don't have a device, so
there may be an explicit rule to load this module. I totally get your
point on why it would be preferred to make this module active only on
QCOM platform.

> 
> > 
> > We can make the STATUS SMCC before looking for the other watchdog
> > devices and fail early.
> > 
> > Our Gunyah glue driver [1] do make SMCC call to establish that we
> > are actually a guest under Gunyah. Since our intention here is to
> > support watchdog on as many as platform as possible, it is better not to
> > tie this with glue driver and make it a stand alone and self discovery
> > module.
> 
> 
> I think you should have only one driver pinging for Gunyah, so glue
> driver or this. Not both. If you add such SMC here, then how do you
> determine the platform in the glue driver? Via DT? Then DT supersedes this.

The SMCC that this module would be using is specific to Gunyah watchdog
interface. So there is no real dependency w/ Gunyah glue driver. I
understand your point that there should not be two drivers probing the
watchdog.

> 
> > 
> > If this is not an acceptable solution (Please let us know), we can find other 
> > ways to limit it to only work on Qualcomm machines. For ex: Socinfo
> > platform device is added from SMEM driver which make it only probed on 
> > Qualcomm machines. We can look into this. 
> 
> 
> To me socinfo feels even better. That way only, really only qcom devices
> will execute this SMC.
> 

Ok, we will look into this.

Thanks,
Pavan

