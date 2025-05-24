Return-Path: <devicetree+bounces-180190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24449AC2ECB
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 12:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 457207A5089
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 10:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B78C1A08AF;
	Sat, 24 May 2025 10:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jopsFuCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D649158538
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748081506; cv=none; b=ehskOLRS+NduiQLPiaNPTKOXsqe2q7Czj2NdgfA8ZyRhq34y5fOHqjpuLE3m01p4UAfE+nE28gLx0RHJhAylRpSTv11iP8jCczqnqce/zHEKqDnBc4oMETg7auz1fxk0N2eT5lcJrxjpEw1SG2IP420Ktz1K2Q5dCCDg/KCfN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748081506; c=relaxed/simple;
	bh=yi0nJZG9HpJprpjPC17cymVzwqzBeojV3kBquhceHpU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s9WAOgZI+feOt1PRwDk47Xd4nKAk6ta1V11xeJ9Z9CHePvjyigjQKnkQI1PWoderXxq+wZaMJznhFG9CG/IMD6XXvgW5J7TvDHrsnQm4TD7twIoH/+WOEmRgszPB/8dCD12uApESZSgTR7cLLknZ97pb7eaJvZsd30TUN7lEocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jopsFuCM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O1028l020328
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q5Ywd8CbRuq6nVjt49lYrhT3
	U7K9EU94H7oOTbzR8PI=; b=jopsFuCM3uH7xTo+LmcRutvUrKk8LvTQ4RzCmBBT
	Wz5jsSkBvvtseKSNOO6c0U9M6h4usQhgyFrm/nO1UGodVGOJewNzKra9ndhGIno5
	CAffzgMWOo/aAFroUIbYMUgMbmHcekJ5RpylhFA+6h52rRgTDlK8mCzQwYJeuNOo
	++Jo+R/Tl4eh+ypL45h/NOnWao13fq+N4phxwPUHWCTDqLOyf9gd6Lv76aHiSNkr
	/1TLAuvwwNh102RQmDTPq0zmK0Vg/dSLSipkZYZqdBmEtePHcxIVqrwnsfIE0mBX
	VCikBpu61ee2fhcSgW0Yl2xdirPWfnAUQm/KMw35xwgpXw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3thrp9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 10:11:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8d3f48f35so12758746d6.0
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 03:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748081501; x=1748686301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5Ywd8CbRuq6nVjt49lYrhT3U7K9EU94H7oOTbzR8PI=;
        b=Oo4krpRk1bK+m+BhmF1F2dgQ9dC6T3BZlTs+CuPW6Gqp7Nz33VnotfT+EimLYBzm2r
         SKOc8IOsUXmhMKHBgWW2goV9bwS0XgjuNSi80DTy1TiFDGNw20y3zRH4z+Dc12pLZOdT
         bkN1zNvjZY+FBUNi5MOjCo0R47S1XEmYIsvlg+ajEv6Lm0qEpzjmCXOUEFp0dvg5ekm9
         ZUFiBMlGsFJlR1C8cJby/vhovDJjbXmwNFP64GdptCVbe/ZK4+OCT7iBVEybFOLN5fop
         xNLIsVm77Tf4q0tYDQU/VgA1yMszUrJxe1VQ5L5QRQ3Czo7AEcOe/Z4PqpghV4XzRsVo
         u8Fg==
X-Forwarded-Encrypted: i=1; AJvYcCWG9dbUXWf9dvJmPwVxaToh90RHm8moCZcGifD+2EME7FimJWbgwWoimihc6nOU3CjFVFeaqqsfHhyT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjs5s6mvacznXOU/w48pYImrEFDcxCeFk6Hv1c6lxysGcLnKrn
	W9jzlSeJ8bP8FMwyu74jfKrs510A2UH6p4r9U9dovTdfksj4zsGA7tzmC16GYq6D8HX4LxoP4t/
	fG4pUDXEopyZI0PoL8akW5MbbAewIfIfsCyEWRmOhEvhyhUF/ptAHfT4GKU4TTA1e
X-Gm-Gg: ASbGncsK+UlaHYqeGDZO6kIUY/OyZXJ1zDpznJ5lJfLJVvp/AVe92eTFkahMa0C4hds
	Biy6AzWmcHXBJ11XcMd1U4PkPJHKn76mykRVP3gcL+PRymMqnkhxzDlVnmpaOTmYPfuu2pczS7S
	gJvmVoYHhKUNf9yhakHZMjMYVJrkd2w6hyOiUc8bD6Ejfrlo7TqBeQt29/U4Ed/lqLD1L1oQ/BV
	YG/0iWr/sl/zx9gMA+s8Kf/rcLC4ZrY0sTNufMuguTJhpW5SyRw6rbF8SEVPGnJCcuUyeRQzsRk
	ksqlYbp3qVu7QeDWtbUaSTJWQZrDbIL7Y/T6ToomVH19TV+so6mYMEKQqreQbM10pkla6DhDYAU
	=
X-Received: by 2002:a05:6214:240f:b0:6f8:c284:45c5 with SMTP id 6a1803df08f44-6fa9cfea4dcmr46563496d6.4.1748081501041;
        Sat, 24 May 2025 03:11:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3xlcfUJq8nA48ODJlNUBRaEf9+7/QJQDSqq3iA7gxZrJiVGayzAZZZ+Q6hrv/sh+JeoK21g==
X-Received: by 2002:a05:6214:240f:b0:6f8:c284:45c5 with SMTP id 6a1803df08f44-6fa9cfea4dcmr46563106d6.4.1748081500681;
        Sat, 24 May 2025 03:11:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084c8c78sm39724731fa.36.2025.05.24.03.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 03:11:39 -0700 (PDT)
Date: Sat, 24 May 2025 13:11:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: x1p42100: Add Lenovo ThinkBook
 16 G7 QOY
Message-ID: <6iuro54yed6tqfej6l2l2ky7dletbs73nwjnfufbuulkw3kl46@okoj2v3wvck3>
References: <20250524-tb16-dt-v3-0-17e26d935e73@oldschoolsolutions.biz>
 <20250524-tb16-dt-v3-5-17e26d935e73@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250524-tb16-dt-v3-5-17e26d935e73@oldschoolsolutions.biz>
X-Proofpoint-ORIG-GUID: 2S8MeqOIAjvB8A7GT5_iXr8erBGBD04p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA5MSBTYWx0ZWRfXzwxr0IGT6tFr
 pyGkNEWSTI007Jt3BQuJFBFIYWKZqL8QUailhtNdTGuC/Ldeip7hXMLV3UrDuG+kmHHrj2vOHLT
 p3TXq57shTwccSkIDTnjIKhJYPNqnLFvPa9qQnIVhhkMLOKjY4TaHQT9PDxE7ucpJJGC1Vi6bof
 jk44JJL593ILns6lv8OCDaHK695N986WCcGxMoG0yDYkzPYT8vIwDhPpdMapByWxFfUuDTO/rDM
 zUNshjImkqx+HhM7NgdsFrblpu+vmMKDyxQzEt4kvj7tO9z+HeE8dZ18mfvERPXLftwc7qaMh7v
 ceXawJ1Qe98rnzrLdvFLFYf8W51+mVSx89/Gbjba5jSjj9smIKf4E6jLpHn3d3Ian6p2ZX0P0fe
 IkuLhlPDb3HkKxupsmVxjCO4j+8IXNeYrKyyxIR/zyObFjGYKx8astARuFwbDjy7LuyQUBlS
X-Authority-Analysis: v=2.4 cv=e94GSbp/ c=1 sm=1 tr=0 ts=68319b5e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=gxl3bz0cAAAA:8 a=cusL2G7gvvxGUya2EAQA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-GUID: 2S8MeqOIAjvB8A7GT5_iXr8erBGBD04p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_05,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 mlxlogscore=789 malwarescore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505240091

On Sat, May 24, 2025 at 11:19:12AM +0200, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The Thinkbook 16 appears to be an X1 / X1 Plus only design.
> Add make targets for normal and -el2 variant.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  arch/arm64/boot/dts/qcom/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 669b888b27a1daa93ac15f47e8b9a302bb0922c2..aff4fe3e81ec0d6f6d52e2aa0da327b7576632d8 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -327,3 +327,6 @@ x1e80100-qcp-el2-dtbs	:= x1e80100-qcp.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-qcp.dtb x1e80100-qcp-el2.dtb
>  x1p42100-crd-el2-dtbs	:= x1p42100-crd.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-crd.dtb x1p42100-crd-el2.dtb
> +x1p42100-lenovo-thinkbook-16-el2-dtbs	:= x1p42100-lenovo-thinkbook-16.dtb x1-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-lenovo-thinkbook-16.dtb x1p42100-lenovo-thinkbook-16-el2.dtb
> +

This will break without the next patch. They need to be squashet into a
single patch.

-- 
With best wishes
Dmitry

