Return-Path: <devicetree+bounces-206810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51188B2D9EE
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB8FA189CB04
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22A52DCF5B;
	Wed, 20 Aug 2025 10:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m04ZDh9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6065E267B89
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755685109; cv=none; b=flUkyerrTHehxV9dWWwMotjkw3NkHO6uk3CYC6ucBXXn06ZYLB5BGa54S7eSDYj0FGwYQaATXvUR9dTBi4E9Jgv1yXhNEnXWWrbh8gnZjmPkjQgsgrLP9V/U8OYzRgfsXbwxpttlLIMRbSS7WxfeEbjehJofp5ezwqDpBhz0J4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755685109; c=relaxed/simple;
	bh=RD/YhGR6n6Cqcm80/va7EGUN4MC358kbGLBV1nwlbKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=plnQopXaWYT8leNBIw0g0yp1v2kI9xsXux5uImCdUyCC4e4aY9PCEDWcmg4RL/SIJkTXjBCEM0odfS9j76bsdORDq6vzrlc4C9t5JjyLXndZ33YNkFjo1gW8wgXukRRbrTprVQysbWhdQhTxRGrUJQxGuyc5wwuOml6h3Qs7X70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m04ZDh9m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oYKC002014
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:18:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RMmIf6OvZrK65C2lJ9Pmjnze
	nmAYNUQwMUXR7Q7PPco=; b=m04ZDh9m3eZZiWHDtRw+bhpEsiBl3XlWz+Yc9AOI
	gHgXA+fqa8B1WbSIincNp6cSJOpfOMfWNNeETEgTS9HKHuZRTzUmxmb/OzkyMP9k
	opd6Qz2SGN1A2t9iHN8DKTqa/T6mXIK/P6/mxC03PJ+R5fnmGQjP6fFgFenI1Gtj
	8IkAuR9N4dHdQX4tyyNg0SlWajKunB4eLhw609Cbvw50G0NqHdLEAmNQoluZ7aV7
	D6xVni2lWpctfrfXLiFV7woLvwdcFJRye/COQZjEuZhqtd7fFffcpMqxqLNt/0v1
	oZAzzT7VTEQLP7wPHJ9g5aWfB/0yyYq5TGfP3zqV9otVHQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528sat8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:18:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109919a51so294467991cf.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755685106; x=1756289906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RMmIf6OvZrK65C2lJ9PmjnzenmAYNUQwMUXR7Q7PPco=;
        b=LHPF2HWxCMEyph5nD7e2Ys93fZePsLMWi5Umz0vVHDCZxuCJBM9VxWBG0ePkCrfj4w
         YXQumQqBk/2j6IA8vRvxU/hpwluFtStUVIVflEc04qq5Jm62NO13EhEMvMyoH25mIPhk
         K+oIozBkSr8G0Z6I4jSK5pjSAgypu/5hJgkXrR2VhNCxvoffkDZVjBTDGO9R59bz97WZ
         ujYDPHKqgx7Z9KX4I8pUpMJ0mCSbKLlN5yJTmqHYIpqy7BZotslYHH/6dXjhBN/I/B6Z
         J0xdwpiprhwHzvIzs/aQRf1mKfBY4HFJCf7i01g9iAREa0+omJ/mjGhVuaxNGqU6QKox
         Okig==
X-Forwarded-Encrypted: i=1; AJvYcCUPrCA0K1dPLZ3yS1Lf7mWqoenta4wNPy462/mcoUQBCkAO9u2tOOQ71MAVq2pki9W7+9leu45zikPF@vger.kernel.org
X-Gm-Message-State: AOJu0YyAkGpqybqfGcwqeN6/Ky9ASXw/gf/NMV6NHDAz7Q9GFLn1FsK0
	p7RoAwch8aUC5q8aObBZaoWvYxyXASwGhMxuvPhAIFH8JC4dilwyqB84RFPursBfE4O9xh4wNKK
	MBQpQ+EPzBBpe0uMgMf6+Ph3V4F7szJhMtHjc4ZXFabF+DON1aj385n27gPUXn6Va
X-Gm-Gg: ASbGncvFFm1SuwDria3hynq/lD77xqBzDCD6KOG+R7/kD3PNqxv0UmSI0R49EIdJ0C2
	kTcwG5Ov250pYyR1VY8OBHYtvzE8BL7sr7D26f1a93c4DXlxMyPQmhluCQ9L0bm+eMtusPqFgKP
	HXI76L+QTkc7xZyjTQeJfN6b9nwtet8r0imLDkhBCdopvW5rhCqIUpvHH1O+tLsJU+ATxnd14ax
	6NBsNWQlz8E+iE+c33XBAi53Xf4IRZIyhBsiiwTZmWj7VRHe5A3JGio2M/0+NKusi31NVTQzJpI
	aJUjM786dk4uZMGmREpE3bWtoOgX0UJLTc2zl+FrrJ0QGO/6a4C7C17xf2wnkKMLXaIxr3SXjqH
	oEyx6MeGFavry4S14rJJVBJrJJX0Pro2PkLqNEy5op7/kgIC/XebZ
X-Received: by 2002:ac8:7c52:0:b0:4b0:677f:db03 with SMTP id d75a77b69052e-4b291a450cbmr19242901cf.15.1755685106385;
        Wed, 20 Aug 2025 03:18:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2AOZHGENtzCbjXG8zdnjHcyu3nc3kzJVHOmLOa0gbBzdcDRDqks1SlZYpXJ4L372H7WS/sw==
X-Received: by 2002:ac8:7c52:0:b0:4b0:677f:db03 with SMTP id d75a77b69052e-4b291a450cbmr19242671cf.15.1755685105881;
        Wed, 20 Aug 2025 03:18:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e02c31498sm623244e87.12.2025.08.20.03.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:18:25 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:18:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
Message-ID: <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a5a0f3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=6LesCdOPl9v1yPo426oA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 59OifqLoMVfWNOU2_FumlMZ7LxvdaNLt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXwFvURLLDSlVp
 amYnwTnDqdCMjRGAA2wy21DFWCOO7sIcinBK+70Q43zWMssX8p2mXLRwRmlUjIrzRkyyrURr3go
 sG62JP946zHvFL/9COujXmhsa1s0PUxZzCezyTyu8DWkg7vFz+88lAQIfPS3BGF4qpCGf1nImgs
 1NL5kTqiJ5Dq6MlZVQqrgQGye/zyloPZ1x4CDV/Mx4ee4N/2Df7MqgoNfLs4/ABJBdAjSObIvPm
 wmN0DATr+CHoacJK/2uDxCRTaU96sXw+ZC5YZlaktIoPgXOh+8sZ3ed1AhAT1ua39n9M2nhShDU
 yCZbJdplMXMXREp0nMKWkXuq1uBZFAdsKsrUG/wa3xW2JHYIaLT7SKA8IOsVFBK5YMxMOEIX5jU
 5Z3257+ldC0FbwH+uHWnY9K9uSOIFA==
X-Proofpoint-ORIG-GUID: 59OifqLoMVfWNOU2_FumlMZ7LxvdaNLt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller for Qualcomm SM6150 SoC.
> While SM6150 currently shares the same configuration as SC7180,
> its hardware capabilities differ. Explicitly listing it ensures clarity
> and avoids potential issues if SC7180 support evolves in the future.

I assume, it has no MST support. Am I right?

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -27,6 +27,7 @@ properties:
>            - qcom,sc8280xp-dp
>            - qcom,sc8280xp-edp
>            - qcom,sdm845-dp
> +          - qcom,sm6150-dp
>            - qcom,sm8350-dp
>            - qcom,sm8650-dp
>        - items:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

