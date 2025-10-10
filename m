Return-Path: <devicetree+bounces-225443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F65FBCE1A4
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3D925347AD3
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 674CB221578;
	Fri, 10 Oct 2025 17:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eCXD/oji"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1941F790F
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117908; cv=none; b=DMi6DYbLGCfDfRaFkklcSKOO3xnGIyFKlIVi4JqX4Ry43kaSRsgxjDh8B40X0zM4q4xlYGIfqvK2nbU3zP82Y3YwA+BQYeYwXIfvMxuVz1Il9s5L/UEBQ/GO7rBgpRY70JsODRRPBDeGjQR+z2y+WFEDvLiYjob7yW+0tYHQbWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117908; c=relaxed/simple;
	bh=WlMRssIh5zYebG/2qOucIDbKqlW9Tme8xzWY4T8SErc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QbFOROBDET6noRBR9PwK4VVPQOBOMZDokonZ/07s/QSOnAMI4wrtfv4byd7gYOQqv4Tj1X7QY766N6givGKHyWXrVWAbrFEHmxDQansb8lRYk4Cqul1JTOD6GuUQVVibUyyC9IoiLha4WN3RrIAbPDyo0sN10BVv5ZckZWhThuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eCXD/oji; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AFaGRf011763
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:38:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bHopJWpMCYVDcAtBNZFS+e4d
	nBu6DmW8XDXrseCiOq8=; b=eCXD/ojiHGrMPEvKSChJR8lmJv2FWtHjBM6MQNwa
	C8h3O14kpQsEABo+IeaxcNbtq8M5irtYvws2H0DbxLfHPQTS+VZZOgxAaRQ3JFZe
	364CygO2+85Lo16LjbyZfWS7PjMyJpJCNogy6hK5BfNFIbuluuzlDbKBypTB13V4
	tAiehVEyHJ9AaC7Ab2r0CjOZfBNB+oxf5ttrF60zcD+xrg/aDZe9x51nduUZsx3N
	xDTCcYefXddrY2ZJo3G135m010sMLYTVrarWhriy2h5hpEG3NK26aO5a0R5Ys0Rp
	rOf8z6w2IUZqSEziGpm8VaeTKB03VFggFaegY8XKrnjUYA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49q4x1gbc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:38:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8635d47553dso727632885a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:38:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760117905; x=1760722705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bHopJWpMCYVDcAtBNZFS+e4dnBu6DmW8XDXrseCiOq8=;
        b=Euk1lkHXSeraGiVPG4d2/10I6z2w2f+wKAqNhZ9JL6zvoRz7BgBFNAx26auOSa/NJT
         rVmNK/gC5/KNcVaVTk6wio0euuPcVRHZjpK+PrKT195134wAje6MLaoOhAe02dfXw5OF
         NcBlReWubldhMFDb96JV+M4Pqbx5C28WHlkTPJO7VRjdGSvz/WPJuFAJ1P6cGJOjAyr1
         s2DMj04++M+MGOMWW1m6PH+O1d5fXW4HMa88dihW82RBxot7hckUBVfEoFj8KSRdioki
         vosBN24oTR5jZr/rK+RzvAGIUr5Uxcm8sdHCAy5Bk5AWymtbJOZFpSrqmTXRVOeQgVUQ
         cWKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+c0FGaAtNLNCvXOkz9TcvI2ET2VQ679EixEZDn+FTOGyAE0VqaeMWu7Rq8AYwutGaGKBW3nkKMIG7@vger.kernel.org
X-Gm-Message-State: AOJu0YyngFEyCc9zJFUj5TAaMHJWE1L1aRZ8Nvs8rqiLUhZGbJE5uw/z
	uzA+vsGlEnrSJ5wrb1jtwNrlpA8Dkjv+dKs/bv/RTwa8oIcysgh2q7YgaftP83x8IFRINK0Pt2q
	s2oujN/q9NVeHKkyGaNsZfFgWJJBmgFBX+c30v0Q0PQibBCv+1yixbqYeK19jt/3O
X-Gm-Gg: ASbGncuQ2XQN5wsNeJwoWmpMwd4uqxxcS7vbbB7NlW8pOZcKF9Flw+gCED+hfFTlcNM
	P5cy9kj9+YIkUJl/pBQqyHFtQAAX2HbyNIzX4LBtqZFzG43T1EeXIqcOzsQbZjyrL802SYcycCz
	zDGuFg47Tb+eBLAgyzyksm+i0+ADrcR7PUAAvfFql5D0ml23Ahez+zlRRZtxi1tkmARm229SmUd
	HWH5Qp4vVJVNOrfWH2NHTjOXkvs4OdJylZm3MfGi7MU4BOA7i7RW4qAdxOpWn88E3JNakCujxyc
	8G1oxul7LlLJlYVruPjO+B6mrAqWba8FD89/ZVwZA9arEhbMCPsdvgt+xUetKelRy5CMTBf0oDl
	EgZJ/eP5Gge1EPV/Ji2PX4kXsPnDqnUFEIo1HfNVLlfQjdnhqaAtu
X-Received: by 2002:a05:622a:550b:b0:4d8:67fb:417c with SMTP id d75a77b69052e-4e6eacc6653mr200002841cf.16.1760117904783;
        Fri, 10 Oct 2025 10:38:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKChfLnLv6uMZuWTNjeEXangYm9IkXBq61vh5oNYRc8TIuCkU2/pQdzdpKhqDcWyE0R351rA==
X-Received: by 2002:a05:622a:550b:b0:4d8:67fb:417c with SMTP id d75a77b69052e-4e6eacc6653mr200002151cf.16.1760117904234;
        Fri, 10 Oct 2025 10:38:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3aae3sm7638331fa.45.2025.10.10.10.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 10:38:23 -0700 (PDT)
Date: Fri, 10 Oct 2025 20:38:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org,
        robh@kernel.org, bleung@chromium.org, heikki.krogerus@linux.intel.com,
        ukaszb@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org,
        chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
Message-ID: <zcs3utvlaac336ezw2y7mzbbjsqocbls3e4nx5sc4tufiig475@cekebowcrpmz>
References: <20251009010312.2203812-1-jthies@google.com>
 <20251009010312.2203812-4-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009010312.2203812-4-jthies@google.com>
X-Proofpoint-GUID: 8X-1amvLv3VAUzpg7Oihfqm7PiNawlxM
X-Authority-Analysis: v=2.4 cv=N4gk1m9B c=1 sm=1 tr=0 ts=68e94491 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=1XWaLZrsAAAA:8 a=aqZUw6bxmdrI7EJOglwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEwMDA5MCBTYWx0ZWRfXyeGprvDpsuHS
 4Jn4/CjJTJVZo/JjUB3azJ1nFNWC1uo7Ol8pVG6f+7ftgmRLao3gcImw7l6UeBt33sojO8HGi6G
 5KWMPeY27vQCLR7hVCTyd2elXtVGkfP5KzykK8Vi+fxPmyt8eUvVNjpSB4h/mPj31pArmZ/vdqh
 MmPTtJk/UzKABlEmyqYQOcIjSD6VswkPpTCr20lu3tgTBf8bBpi4GISC/weTtp5+eAn34tGKyJx
 W+3VC0P6KcfwDHA58ucSCx7fhhcsv4BZu25aPQuf5/duky56SXGkbUeRXVx73fo2MFuYCoxqyO+
 RtZBeixaoVMqaBjo50IpX5p91dzS4dXypORiz4WuappW9D6kLqizHOJ3liASu1ZLBHancxlREGE
 HEK2/r6dM4L1ehkpq3TKFfRvUICVdg==
X-Proofpoint-ORIG-GUID: 8X-1amvLv3VAUzpg7Oihfqm7PiNawlxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0 adultscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510100090

On Thu, Oct 09, 2025 at 01:03:08AM +0000, Jameson Thies wrote:
> On devices with a UCSI PPM in the EC, check for cros_ec_ucsi to be
> defined in the OF device tree or an ACPI node. If it is defined by
> either OF or ACPI, it does not need to be added as a subdevice of
> cros_ec_dev.

It still can be a subdevice of the EC, if it has a correct DT node.

> 
> Signed-off-by: Jameson Thies <jthies@google.com>
> ---
>  drivers/mfd/cros_ec_dev.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
> index dc80a272726b..1928c2ea2b8f 100644
> --- a/drivers/mfd/cros_ec_dev.c
> +++ b/drivers/mfd/cros_ec_dev.c
> @@ -5,6 +5,7 @@
>   * Copyright (C) 2014 Google, Inc.
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/dmi.h>
>  #include <linux/kconfig.h>
>  #include <linux/mfd/core.h>
> @@ -131,11 +132,6 @@ static const struct cros_feature_to_cells cros_subdevices[] = {
>  		.mfd_cells	= cros_ec_rtc_cells,
>  		.num_cells	= ARRAY_SIZE(cros_ec_rtc_cells),
>  	},
> -	{
> -		.id		= EC_FEATURE_UCSI_PPM,
> -		.mfd_cells	= cros_ec_ucsi_cells,
> -		.num_cells	= ARRAY_SIZE(cros_ec_ucsi_cells),
> -	},
>  	{
>  		.id		= EC_FEATURE_HANG_DETECT,
>  		.mfd_cells	= cros_ec_wdt_cells,
> @@ -264,6 +260,23 @@ static int ec_device_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> +	/*
> +	 * FW nodes can load cros_ec_ucsi, but early PDC devices did not define
> +	 * the required nodes. On PDC systems without FW nodes for cros_ec_ucsi,
> +	 * the driver should be added as an mfd subdevice.
> +	 */
> +	if (cros_ec_check_features(ec, EC_FEATURE_USB_PD) &&
> +	    cros_ec_check_features(ec, EC_FEATURE_UCSI_PPM) &&
> +	    !acpi_dev_found("GOOG0021") &&
> +	    !of_find_compatible_node(NULL, NULL, "google,cros-ec-ucsi")) {
> +		retval = mfd_add_hotplug_devices(ec->dev,
> +						 cros_ec_ucsi_cells,
> +						 ARRAY_SIZE(cros_ec_ucsi_cells));
> +
> +		if (retval)
> +			dev_warn(ec->dev, "failed to add cros_ec_ucsi: %d\n", retval);
> +	}
> +
>  	/*
>  	 * UCSI provides power supply information so we don't need to separately
>  	 * load the cros_usbpd_charger driver.
> -- 
> 2.51.0.710.ga91ca5db03-goog
> 

-- 
With best wishes
Dmitry

