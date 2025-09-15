Return-Path: <devicetree+bounces-217574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7806EB58450
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 20:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAD6B1883A77
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1CC24167F;
	Mon, 15 Sep 2025 18:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WlTSAvuP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B691E7C10
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757960139; cv=none; b=jc4N8Gl9+T/Z1yb/TegG7XJJDhhv1t08G3ptmyWgjB1+vjvkwqB2kwjiwJ+Pg4EyBv9zmrWMiKKluCzyMzDj2Bbf8N+EHYDfcByos3HAYxkyTtr4PxEa4qOy8hmSt2fwnr4I/gRaNvLC+IKDdgZbrwmcvcmKCek9GBH4iBC7bw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757960139; c=relaxed/simple;
	bh=b3tLW6Lh2bd/lWW1rlpdKcjwC3k7IeJWmkKC3UYrR/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cy0MKND6ayZJdggMeQC353XXXj7lLpcMLdOEVx3Hd62cAwPT1GS9gUo9O1+wbAManTKf2nUnqmwViE6Owb1H7MH4wAZW1BVr4bgFhZ06RJIV90jmVMuMGwTUTlHmiAvk9F00XRJFaZkvQDyUCLGDZdw41uwR37oTENxeazJEeP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WlTSAvuP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FETbTP002363
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:15:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x6f1ur2OAuyG3gVnkNaf1NXHoDMPmNFiXyxlSHSLCAk=; b=WlTSAvuPyp4e7Tkd
	RHWpwRQ+NGYn1GZlknsNRNDJgrayongGvBjQO4e5BBSYxcgfB87mXvohwQ/LYA+G
	7rER5gMgpoGlBgBg3EGNERiIJD9eS3Di8J064nEtwL2cRYD/XRCqrIqUq4JoyjR0
	6FT5MYRUDv1Xia0r/Ap6X/xvxSPwCkqsA+UlFEsRFziL8NtHJkHDp3rL/JunWitA
	AmseY09Ilq0RqWy2av445dxcNu8lGoD+OnDLRjCH+6Lnix603ic9EB8CPeoHi2HZ
	98cNlKt74EMBTC9tpK1QMs/9i6GVS0aNHQ8duPzSrRWEezVfjbhx2phWIzM8fzeI
	4OA7Lg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9acd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:15:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b78fb758e9so39497901cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:15:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757960135; x=1758564935;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6f1ur2OAuyG3gVnkNaf1NXHoDMPmNFiXyxlSHSLCAk=;
        b=JTFmc8kNY5Wy3rNVJHKQuxPWZqACgnh2Wtq2VXTRSGgjRk6CBJS/l3/sdCLI9llXY7
         z3jK/ysMC+U2gRSgu5K6OHL7QP/sO13jGHmapi5FXOPYgxiLY+DIsHhFrH7FV4ck/ION
         wTz8s467V/TYj6lKzmJggiKYAguUPBEdOoAvcw88mdSODWKHYn50Isq3zRiYAjGdMddW
         1ik6SCz/dFfuIJJrbDJSjXRW6k60r64cWM5eQlkCg6uyK/oZN6dAVJE45IgcMm2g6ML3
         LSKlhBxNhimP2kM2WbeajcCYxYWP5R0jeuUyDixrgJjq7xwAMHqcwoEPNm7eOma1tu9y
         LOng==
X-Forwarded-Encrypted: i=1; AJvYcCVja9BlOds1E1d+5tHuHuYlXgASdomZInw0VJEyoMMliA9tH6UtaTB5VNliwUHImkPTrGeDCI5Ii4ZY@vger.kernel.org
X-Gm-Message-State: AOJu0YxT/ny1J19z6Lfry8oq8X+qBVDyfcFIhgsGn4FYHUy7nBTvF8Ft
	qVZtL+zI4o6OgtdfypRcIVleconclt+tzp3E6/nTmHOqdbfSfICD7yq7Hd+bDM2rXr21xBOpDOG
	h31F3ADxvWupZJkWWwr0JMKaC5tnd/QuYwWk86LRG3SyTJVgGP1hzpMCGNVV2IZ6cvh8EXTH3
X-Gm-Gg: ASbGncv59Zr70k3bTfbhl8xsVcr+k6j0taaLmV19h9+dAKPl01s444yAbwo2h6DHrre
	kph8yRN4e4yuN5ftVIgJIVYzntbGezpdl+bbWJZE6PVmRndIJgIK1dmamPuU1LuYFL7ELv/HDTU
	U1hK+4PRPZ98lDNKMxDhhvctyW6fXHmMyuQpF3LB7i4h/rlA3P7kXBl/rMYUtYQYT1cSLzDJaxG
	wO+gImoA92I3YYtHAGkd3rdP4jn8FpsNhVOOfXf5n51Ra5wbYq1wY+L1ZpZHdQt6l3XXqxWwd7K
	gIQLYPUYaNW2D2t7NP0iHjr1TbnpzBTiVQ8JEXjyEEaHIdvoreU22bWOJ/phercUGV9xee7PbWs
	lz919IguygvO2oKSYjGpHlTE859FAK+bVo4k4P7pqTCGGRAGQsJzM
X-Received: by 2002:a05:622a:8c14:b0:4b6:3d70:8810 with SMTP id d75a77b69052e-4b63d7088e2mr175507171cf.22.1757960135030;
        Mon, 15 Sep 2025 11:15:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUuro1SmpPEADogZffdM7l1FjPktoEHc4t8tIvDkL3K5P/oGNVhE55NqVHm7z5YEMGTHbndg==
X-Received: by 2002:a05:622a:8c14:b0:4b6:3d70:8810 with SMTP id d75a77b69052e-4b63d7088e2mr175506541cf.22.1757960134479;
        Mon, 15 Sep 2025 11:15:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5d20df19sm3772762e87.48.2025.09.15.11.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 11:15:33 -0700 (PDT)
Date: Mon, 15 Sep 2025 21:15:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: display: simple: Add
 innolux,n133hse-ea1 and nlt,nl12880bc20-spwg-24
Message-ID: <l7ycmuoktaamk7kaurt757ihk5jifruoe6fq42aejpb7t6ljv2@26gtcl65s34v>
References: <20250915155123.3250823-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250915155123.3250823-1-Frank.Li@nxp.com>
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c857c8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=XQU3RipaE_N5LczM4VUA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: 4rVRgG4KBSVOfryzaw2hNQxoHXs5jqbp
X-Proofpoint-ORIG-GUID: 4rVRgG4KBSVOfryzaw2hNQxoHXs5jqbp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfXx/2WvI6j11sB
 7bBfhoP/3DhJv0m/R7BTbdcOFCaUpI0zT8O++GFTbOFl7npvzlhgKDYG2G3qyGaJtoDU3bZomdh
 zk0llDP6b1WKTwz+pGH/xpMzAOaOJb8beqgMAP5Q1iKop/MUyL/PD5Hn+VoTnMecd0C7KovehPJ
 KPJUUqEhBOj1ASvNxK0mXZ4mbUWoE9MrYsbyipUaDNczHwmuHjPCmB1fMMy1zkewrV4AvjUZURk
 MncxqKXhFyU7l/1enmb+qUS5oFIcf1LgKs1ZOxpotCNpx/qB/PODHtjBmP+53K15d2tUZIVaqBa
 YLncFpaikPbULSG0UiIl0Q96TSfU6zo58fSXxMNYC2fwDjTbEsVNa/z/00FNRWDkui8pLmsWGXe
 AojfoyBh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_07,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056

On Mon, Sep 15, 2025 at 11:51:23AM -0400, Frank Li wrote:
> Add innolux,n133hse-ea1 13.3" TFT LCD panel and nlt,nl12880bc20-spwg-24
> 12.1" WXGA (1280 x 800) LVDS TFT LCD panel.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6q-novena.dtb: /panel: failed to match any schema with compatible: ['innolux,n133hse-ea1']
> arch/arm/boot/dts/nxp/imx/imx6dl-tx6u-811x.dtb: /lvds0-panel: failed to match any schema with compatible: ['nlt,nl12880bc20-spwg-24']
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - update commit message to show fix CHECK_DTBS warnings.
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml       | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 48344ce74a6e7..77a5d20a8b0d9 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -180,6 +180,8 @@ properties:
>        - innolux,g121xce-l01
>          # InnoLux 15.6" FHD (1920x1080) TFT LCD panel
>        - innolux,g156hce-l01
> +        # InnoLux 13.3" FHD (1920x1080) TFT LCD panel
> +      - innolux,n133hse-ea1

For the reference: https://lore.kernel.org/dri-devel/20200509111834.26335-3-srk@48.io/

>          # InnoLux 15.6" WXGA TFT LCD panel
>        - innolux,n156bge-l21
>          # Innolux Corporation 7.0" WSVGA (1024x600) TFT LCD panel
> @@ -230,6 +232,8 @@ properties:
>        - netron-dy,e231732
>          # Newhaven Display International 480 x 272 TFT LCD panel
>        - newhaven,nhd-4.3-480272ef-atxl
> +        # NLT Technologies, Ltd. 12.1" WXGA (1280 x 800) LVDS TFT LCD panel
> +      - nlt,nl12880bc20-spwg-24

For the reference: https://lore.kernel.org/dri-devel/1507721021-28174-8-git-send-email-LW@KARO-electronics.de/

>          # NLT Technologies, Ltd. 15.6" WXGA (1366×768) LVDS TFT LCD panel
>        - nlt,nl13676bc25-03f
>          # New Vision Display 7.0" 800 RGB x 480 TFT LCD panel
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

