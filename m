Return-Path: <devicetree+bounces-208028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ADDB315F4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8501F1D029D4
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AE82F90E9;
	Fri, 22 Aug 2025 10:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lAqfUhGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5A42F90CC
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755860233; cv=none; b=u+KKm5ESvK/zGgsvFAV0o55L/YmH7iE032XDgUCewm+5sdxYCLmTMoFmLM8DaJYk7Cz3TQK2MEJzzEYDBsp1bjwfwT+CXaD4xwAi8/HrfW5WMsVS3l9AGE4UhI6QFu/Ur2QoGJoBAQjXq6E+7B+2hNyRx2einXZaLkm1Qdoiv8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755860233; c=relaxed/simple;
	bh=UfiA5LSSLvdOsSgP5c+PQ814BcBr0jYp6fSxRFsuPUg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usJS4set4PdV0JVeRHa4IhdigNwB9pSE3oouP6c53VwG+kcJpWBDbisxUs4clneUvq/mL1zTG9SBjMLle9BwrY2qgI6hb9werXLtA5EYZRM1g9HZ9Vy/uC5+fUN7glt7/X7/AgN5RsHmRNY1wmjyqs/m9welIe4a8XwgNmyij44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lAqfUhGa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UIAX027216
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3UQrGVqjSSQmpliOJA4Xb1OO
	EwV8MQbwtqNERrXa4jA=; b=lAqfUhGaCj3cvEsrQ1qieqfNR4feDyAk0ZYKpHej
	n0rgynhAy/xBSToDOgjPUK+nIUF8LYGr9r9M34aInEyIiALxi8D6LRd+m5xXFWOw
	zEDsnwr8x7rUBH92hfCISqdP7wg4kqyUvt5t1hKP+LK2UjYuO3bGeRqoWCbyoN+i
	jWHpWhiNqTU38wZvKk+SJDH1eR6LIs6bid+jA2axGlLJ3hQ/zh3PV2sz9ciSwHXq
	4Pgnsf77VBlx1pHHHDMz6GE9EGzp+ER4w+0b7bzfdDLDq4i2wCtlzOYW3hlli3za
	ejQTZRl/kpDfzPSMKqUMef6ahfcqwboRFG8JKkKFXvbkqg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5298xuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:57:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e8705feefaso522445385a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:57:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860230; x=1756465030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UQrGVqjSSQmpliOJA4Xb1OOEwV8MQbwtqNERrXa4jA=;
        b=s8zgTufT4r0Wiw8bPg5RQ9UAgCT8beT9yv1KuFjLW7oazZobK/nlIFwW0fUhwO+M9+
         BVSN4weap5gmPo+f9mHba45Cnsw2dOEY8W8ANOuwusWVKIgKfCjvIlOETuCm+MVG4FRq
         etO54f92W8LY6kg+n2PfYexwMOS+y1D6x6znV53yKUIRQUoh+3KGsjahCDSbW0UhKoVm
         Fq6LnRfVVUbFgITl/yYtV9PFh/xFmYrM+yWfULJ/d8zGBZIP+284vPwdQKKWeQ0XaiBX
         uesnYOJagPV7vrRw46Govj5gkQ/tK0g/IAWb+TwvE709tiqseX/gWhnf2gl1ASvW0xdS
         5+Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUuUipvyTJhQxH5KeyU8qouMt4oAzwXZvV3d32kMmcrQ2uQUyKgCDYP6Vrk/s9mCUZKKh/AzTWinmDm@vger.kernel.org
X-Gm-Message-State: AOJu0YxvFmowGQ5uIx/doenW/MzKmUBk5IA3yjUPP4b2ClnbYk4UUaOT
	c44NGER3M/jjGNS+oix+ysyy/wm3O6YbQX0vVrzz+V8QYzxNWpXXu0WI5Uy757zbnSrd6dd0B/8
	3r7T71yGtYULWzDe9I9LCTyYPtow8cXkTeuFZOFw/+uxxUgJynq9tHqGE9CrStnmR
X-Gm-Gg: ASbGnct9WX0wRZW5gCYKnqGgIxgEtgxS6XuLWha6IE4SOlIvXsu6MsCPl21sIWtYvsB
	/AJ3qrY/IaBsa2wBS95i060jk98wmpa5Y/VtqdF0Fbd55i0TDrfbTyWH2S7diLhaFIsDMxgxedB
	ASsXK2PmYCEKn9lhJLJfpa0J3wDxVsmkrtfPIYobhzh3RWE3GLrNPToSPcTRXMsIEmjj3lQGmsI
	2EsYAQtrbo3ASVTXOfgIVPef87VXEnsQgSNhhbKCTD/Cb07zojqOA5Fh4ZrPe/it8NvrKGuZPOs
	s3NeSRJNltihWQbf9PocqC9LlYKRMhy6dYV5oLmsir+TIkKYj1EG3+Z4riNZ47ebBIN2MgzNWFB
	s+zhfB/32qdu0OXXqMZH1tIL/FeOZyHNixnIDW25G0vqWIGAG4j6G
X-Received: by 2002:a05:622a:ca:b0:4b2:8ac4:ef70 with SMTP id d75a77b69052e-4b2aab40c3amr29596691cf.83.1755860230207;
        Fri, 22 Aug 2025 03:57:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuLWCCZnI5In7y4ErM2MToO2IgEg0s/ty1U+t0OKmjsrE3j0h7gWXUiKhn+W/Ngv68PUajSQ==
X-Received: by 2002:a05:622a:ca:b0:4b2:8ac4:ef70 with SMTP id d75a77b69052e-4b2aab40c3amr29596431cf.83.1755860229666;
        Fri, 22 Aug 2025 03:57:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a481a13sm35509521fa.34.2025.08.22.03.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:57:08 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:57:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Message-ID: <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
X-Authority-Analysis: v=2.4 cv=ZJKOWX7b c=1 sm=1 tr=0 ts=68a84d07 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=QmbdcxT1eW_NYhLIMYYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CD5iJUAmaVwxOYTh8GxRCJABjbr8JW9h
X-Proofpoint-GUID: CD5iJUAmaVwxOYTh8GxRCJABjbr8JW9h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX6dTYZBBpt7Rf
 26nMrTgyEfmNZhBgHXvpNiu/w/k+8v4g3vTbu+oCfDhF3nLDmmBrA+VOjSS1B+iAwO1GjXL8e6u
 TMHE9seOTOll1h3rCU9I0uNbmwM1BXp2yDi3ccj0kcSxiWvXxi343tJuafbl+JyZgp+q3JBgV2C
 vExQEVqlZjEdIDKKojzLCNlh9jUecMwJJSXeazGDwSH8RJ9PVRaU/iM1mWd+UZRGymjntnRqL/8
 tejktTZu647fI2dALGVz2lcGAvH+8cNKZ092xI+czzEx/R3C3RzBqx7inr8bnAafkmkXoSYczDA
 OSPBI3ahg7TQUHRdI+pIV2WMI5bBGX0FaqyclCsPitiivDE/HFWyq/z7Hex+q9tizaHVxJDtZqm
 nqlVMder0XS8TkzYXa5IylHIueSuPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> And the layout of the lanes can be swpped depending of an
> eventual USB-C connector orientation.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
> 
> But if a 4lanes DP->HDMI bridge is directly connected to the
> QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
> probbaly be USB3, making the DP->HDMI bridge non functional.
> 
> Add a property to hint in which layout mode the QMP Comby PHY
> should be as startup.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,19 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,combo-initial-mode:
> +    description:
> +      Describe the initial mode of the Combo PHY configuration.
> +      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
> +      sharing the same SuperSpeed lanes with either DisplayPort over
> +      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
> +      technologies in a 2+2 configuration (usb3+dp) as default.

SPecifying this as an initial mode means that it can be switched later.
Should we generalize this and desribe it as bus-type (from
video-interfaces.yaml) and allow it to be present only if there is no
mode-switch property?


> +    default: usb3+dp
> +    enum:
> +      - usb3+dp
> +      - usb3
> +      - dp
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

