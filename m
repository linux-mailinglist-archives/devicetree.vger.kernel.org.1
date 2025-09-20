Return-Path: <devicetree+bounces-219579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C56EB8CBD9
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 17:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18CE0463C3C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 15:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AD02D3733;
	Sat, 20 Sep 2025 15:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aD0Ny0nC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB13223323
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758382946; cv=none; b=KAwQo7imQhvI0cwCDI8z/orjWgQL3uWnK8YOjxUn9EjLRmVxXRhabcIJlvs2vjnInUisNnGXAzcUVSWZ2WBoISlz4sXiaJkC2T7tbRs7bIpTghokTgQt7NJJw0lKDB3H2CcM5sAX9QXeiuOb4rnz8u/9kU7F+CtXbrpEGAPzYGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758382946; c=relaxed/simple;
	bh=7N5jlOZYh9u1THddtOHhgkD+bhf1xoM3gGgwqKJdFqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JgFZD4Kxtvd29gNtBVKrFzV2hJaB52G7P4ucP3L1XQ6jSRQ1/kWGd9s3nDE0cOCQCIMQRArLrKsSPAqez8a1oYhY0MuMnQe1N1pwYzKcW78BmV8IMWjenHj6XEL7j2342H37coCVVesfGO3ed7SsuFmJOO+L9G3dk0Khcmd/Vxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aD0Ny0nC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K4BiS2022202
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ySgCIkEcT6RN//nbWYzuq5eP
	Gh9GHy2GH+slUyUPPTc=; b=aD0Ny0nCLmWMWLln8dhigVD2p98ZjnM7Hhjiy7Io
	OSzpOmF/9xFlnw6RgBm8V7VJsgtb1lY97wWsSaMOYIxgtInXVyUGiapOf2SpSKlN
	CrSnJqG3MwcNHv1tw25TBP3PJNayf95X2XeAUVgzdTA40POrr/MfI9TQzg28wrXH
	uzx6AryKBEzq7YLb1FLqPkUkxdsJHsVbGredFeKi20WlW+Ojl8mjeGOpqHjIrtk3
	Si79Fs3QH/va57PgWoGLIColF0Qr+RkMrSQIRBWnLD7NQWW3Ph7iazPI7GyFRdHu
	VFn1G3do5z/mE8j64iemUdCMxFE5OfG5JcGUO8safeWVSw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1f8ty8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 15:42:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b79773a429so91686951cf.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 08:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758382942; x=1758987742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySgCIkEcT6RN//nbWYzuq5ePGh9GHy2GH+slUyUPPTc=;
        b=UQV9m6uUVMW4yiLFg7QjTzfA6LxtF0zQ7X7QApiYDWDsJ+j1kLG5+scgEXKs5u4XoL
         O3Qt2pgYibTvdh0w5097/rPv4sLhRHeYoupYfZ7tG41iiDRR/hkEchwSLYKXfXPkJcMR
         C8Rzo7QkoDR34wt4EtUMmqrVca2DMgob8wnuL9C7cU9dGvHyx5fqJiFRkha9j9b2KWIm
         +wfucv6vnA8ZPpOPXJl8gDBhRb6u/JOx/+qXxXZH1nb0gfumYxOsYYUmNiJo26f7QjcJ
         jevItl47fon1WJ7lxABMk/EKwn7IlRsi6WPa6ZjS+hGaFs8TsVRwEBzvEer4Tff3Q32W
         1Sew==
X-Forwarded-Encrypted: i=1; AJvYcCUgi5+UuQjnn3H4xPPewGWnxTcGh8VRfXJzOkWWUxhjJvA0/jv5R5miZS4v0AK3DIttZcMJphUkc+bd@vger.kernel.org
X-Gm-Message-State: AOJu0YzgcJFYoFY28JdT6ljDGiwiTPcz4U7aEfueGQ5Ner1UkG6rBy69
	m2OvOe8YZiC9n+PM29WnUSuIm0g0V3U6Oc4xPAnqtZ2cnWJ+RWVSo79WxwBw1nwLA4hTjeqDfAP
	QBIXcm8ZvvqKC4fnAtzJzAH/rTP20OzM8fA3leHVc86U42112W66eIeP9kf68MZuT
X-Gm-Gg: ASbGnctlo+ifnzX/9ayaC270xCwbPg5fW0P0k5VuIRTpePv7IFiNGkPLpB59U2jEisQ
	0HNyz2DLo0gZxoTU6yhGQ8xJCOpUQyTgFqOqSd4I7umLcFxCELMDXIB2gwURX4Fxgk+CDdz/1EC
	Tr7dFZx9fTsT2nWLRVT6zb+9Jw5jaPHTypqrJw4pllO138g5JmEaehsicMiGr50B9nOOllLwKx0
	rc+TJkF1r11uFTAO8xyUmGZK4Fxr15frgDTSNSQh9Ato5biMXiqefp5gBkjXcYDtAvCwgeUHzXf
	Q02ZrylP6NshBHq5UcQz78GLmQbQ/PbVv1XLcTJlTutKg9XiLFvTx9DUMx82JYp5BWYZPLQ+Z6o
	6ecrDunci0K4zsaAZagciK7EUKXNtw9dOq9edJv94jjGEV918leks
X-Received: by 2002:a05:622a:34b:b0:4b7:9b8f:77f5 with SMTP id d75a77b69052e-4c0735e1ba6mr76977441cf.74.1758382941863;
        Sat, 20 Sep 2025 08:42:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa7N3uIqh65GWelgeqk16thcj0MeA27XSvrxJ5FJEhQq0QoxcPVOcMSSN3aUJTlhCRSHqxDA==
X-Received: by 2002:a05:622a:34b:b0:4b7:9b8f:77f5 with SMTP id d75a77b69052e-4c0735e1ba6mr76977211cf.74.1758382941370;
        Sat, 20 Sep 2025 08:42:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f4479fsm2017952e87.12.2025.09.20.08.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:42:20 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:42:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Message-ID: <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 8hm7By-zQbLDhOLZ3yI0WpZY4zaBWVD0
X-Proofpoint-GUID: 8hm7By-zQbLDhOLZ3yI0WpZY4zaBWVD0
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68cecb5f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GYK7A1noeA1yCKcWlPMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX6d65wpY1rOOx
 hMXFCup+Lm5oQ0jQ80wFUZKb7+bbEr4vH7BhgOkiWpXF8ngPW/nNXEEexUPAmOkTWMw0/geturq
 5xiLyWseAxt6MO56ok92b2p5CXLbnq4EQhfjegHD6tns9j5dxHcmTZyxodv5Tt8f0JJqEd9d4oP
 XlNSzT1+ApuWMlDm1oEjM4aliCC4lY/XNaadA46QGOTZEH44T9yWE5imBspgHrY0ROllIZv6ecf
 6REgzNHHHsALXH/vt5Jg22iLFM5sW/aP/UIiEatmBlDk+3DQMOczIb1J3U8q29VrTGOPyl8tmAq
 rPTbUCKpMkR633nIM1eOVRperDGk+gNP5xTJU/r4+JntYZ5sN1rrWuuGnHIxtsQO9CwTcPCsSvB
 1/IGs6Jj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On Fri, Sep 19, 2025 at 08:21:08PM -0700, Wesley Cheng wrote:
> Change the notation of making the USB repeater a required DT parameter.
> Issues were seen when supporting USB2 across different form
> factor/platforms, which led to enumeration issues due to improper eUSB2
> repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
> repeaters, it can utilize repeater settings done in the bootloader,
> which cover a wider range of platforms.

No, please don't depend on the bootloader settings. Instead we need to
implement proper prgramming / tuning for eUSB2 repeaters

> 
> For other repeater vendors outside of the SMB/QC PMICs the repeater
> should be defined and managed within the kernel.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index f4355d38aad9..b8ddadf78c53 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(phy->phy, phy);
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");

-- 
With best wishes
Dmitry

