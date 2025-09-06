Return-Path: <devicetree+bounces-213913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5ADB476E1
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 21:25:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9513B585D11
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 19:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED3E4287504;
	Sat,  6 Sep 2025 19:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DdPwKsIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE9C2550A4
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 19:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757186701; cv=none; b=FCHSalXLxabZrs7vE6rJSNwBjWtl9JK81rqwDbIjrEEETOJPDx8VSGz6B92gUyXmPnpCUktQGQ8qDJzhTze4DVNuIC7mT4gei1AafLBd2uTUkAiUEWoQSbhuNLXkIJMDBNXNROMs16t3wii7fbQM3WSpm1cnF2LlASESwagmUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757186701; c=relaxed/simple;
	bh=TO9sUdIq0PpuxZrYE9cAwhgg0k63LhZG8aXeiXUCBZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ABEBnjtatzYYgQQ53Fpz3C16DGKne51zu5d67WS2lY4ywUlVJV5MZg8S1/nTYcfGQK30Mw2dCiYubZjEq8FVKQMQszeF9dyGhgHJSwImsUBIlmZwsNFhcC+RAXjlw2LFzcEJQEOvUKAqLckKBihZZs5/B70mVxB7sOU9YM5Retk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DdPwKsIY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586CucAA001961
	for <devicetree@vger.kernel.org>; Sat, 6 Sep 2025 19:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MTEK0pkDHJjciIVxHN9OmhQI
	NcjLjs9n3rxGq729tTE=; b=DdPwKsIYMWvg8x8N76/OFmxu4st7+i6Xm7nNHoSw
	xxhOS07Bd2FmXKrePMmNQYdbHYKjQoPCG3umm6WMnxbKVxSwvf75vSmEh/gnQgDt
	cGcN5iQf5KAl/fIsxs+Bt54Nv5Fn4wB/CCns3U9e7jfMq1WvIsOOADJz1WBk6T+a
	tdm3OwCm3rhaL1SMvkjAEhPrSdyXbEsmgn/ug47MTLMBZ4magi4oHWuETK7yLL4k
	uibp/5MTko3mD+NBYFBhLiONtePX0VgTV/nrDBHST/kZ4USRH1LLyJoutVDJe97V
	HrcemKRKeA56msJcbfWqZ4SC6mdRryL5cWZJr+AOOnkc5Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490d6392u5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 19:24:59 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70de0bdb600so56642236d6.1
        for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 12:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757186698; x=1757791498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MTEK0pkDHJjciIVxHN9OmhQINcjLjs9n3rxGq729tTE=;
        b=APvQIlDimRcu/7tkw7pej7MR0sQIjxCsuNbutFGc6Kt49xsux5r71Z4wJ7JeD5ohs3
         aQtEAVzrEkJ4l7DJR1qaFoT4sZh1rXpBI0r4tF/4v9CVuqCmZgPQK8XSeC5gUutmR4+j
         HeoeEVgQlGusITFdUkubOC4OuqFnpFly7iRTzcwo4nznguaYwod/zdVKWrQpV1m6pxK+
         TbLAmkFET9Kt01MqS3fXeEabj8Cmsmr24yD3JlI8ErBrifpQIeV7jQEHQHTCCqMcgCvw
         /AchjD5eSCIRRrifRw6GvQOO8a4OkJBH8rbrRWmcGG2Mspf0Uu/zP66fZ0VyJA0N+9F8
         cvnw==
X-Forwarded-Encrypted: i=1; AJvYcCWGsa3KjVKrb0dVyGOA8CkRTg23cTPnoiu8PeQ/eK7s4/vKjT0iwialg0msk5vv+DYzKjI2aDxz4YjM@vger.kernel.org
X-Gm-Message-State: AOJu0YyAaY3jTjRJE4aWQInn7mlZv+/fl2C5zfl3eavPALNlkyXMVlBF
	J4Ha1nPN8TUr9ZBIgPq8VHZCcOJ57iGJzL25Lk0/7HOD8t5GcfvUXDALU9aBuBrHyIwxtuoftH/
	jQeQ2Bt1sYwExoBlRSZ/dn82l63pYz4MotQjjJBicpKTpNEY7t/6s3/7QcbVmkv0l
X-Gm-Gg: ASbGncvb84Z1MNZ/rmuCbkba8NQ2szshe56W1vHGK1ZPcDm7VG/34uH+vdAsP5NXFfy
	5SVe1ApVp5vBJ5qhUohgf1YN1s7HQfvyu792Rg1z+F53HbyZNlphXpYnt9rGg/eHplodXAUOE3Z
	D1UHO4/dAREDwOkWc9C6jlNVp/ByUNH9cBQdyw43AmtOTSogG6u+fOns2tMbTteOqVsKr9AztN+
	/rlpZluPpEw4ZPwz6BWyT+Q7asOLT8WfmHBdeB0zk73ZuH0LRmjIB/wJAqxrVgo8glsEVUMaHfd
	Kp7ouoMDfa1s/a2Kl/+fd/8B98Y/c+yi5oBVXUeVSLjJuRhq9+T1aqMRetocJuQJ+tOv0WzxRiD
	d1ujz7wZbPtcCJsU9UVE2Oj1YP1TUqhHTDnXsCVe244ebswIuT1G2
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553256d6.47.1757186698179;
        Sat, 06 Sep 2025 12:24:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrz7N2428ImzsvEUQElMBkqhCweROuKesIV1+3pYGl1R0oId7O3XdYr9aAYzNEBMgDXflUUA==
X-Received: by 2002:ad4:5f07:0:b0:728:4af1:e4f9 with SMTP id 6a1803df08f44-739435cf288mr38553016d6.47.1757186697694;
        Sat, 06 Sep 2025 12:24:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfd2ffsm2500187e87.107.2025.09.06.12.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 12:24:56 -0700 (PDT)
Date: Sat, 6 Sep 2025 22:24:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Frank Wang <frank.wang@rock-chips.com>,
        Zhang Yubing <yubing.zhang@rock-chips.com>,
        Andy Yan <andyshrk@163.com>,
        Maud Spierings <maud_spierings@hotmail.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Message-ID: <aLyKhngeksG2SKdq@umbar.lan>
References: <20250904-rock5b-dp-alt-mode-v1-0-23df726b31ce@collabora.com>
 <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyOSBTYWx0ZWRfX7g3/502cH1BD
 N+U34CKiBgDg7S/sZpT7aZ4qwb7JNQSF1HciIygqhvrR0Ww9Wz5m9SBYKcl1u7JCijkmZ3vEhmP
 yFa/dyrPXqr0M6IyTIOM6pYo6zMx5TD+xvs/dhOWegoH64DWBnAk8rlz4yOiiksbZ/040/oiOCn
 kPiY5KhEvEGBlxI3yx6cx17DgL9w+fZEF8rQ59X7v6p2wxgFh+D0cEPckm9cfuvfD4mkhyFLY8i
 aG0kKf86d/5UmfPBMXsj/lwtyYCfV+gCsIv1rJ068vwIHPGxQ6Batg7VnvvUxvI5pZ5gM84ltb7
 +1/qhnmWPyOrAhWVaSeK5WrGyWBtUxT7VR7tQRvR5o8nkle8NCFJFGwZk9El2EbXz/uxR1yVN+Q
 XXJU5A6K
X-Proofpoint-GUID: B5oFGYBnCalVpIzgx50iq-MHAUbQp1H0
X-Proofpoint-ORIG-GUID: B5oFGYBnCalVpIzgx50iq-MHAUbQp1H0
X-Authority-Analysis: v=2.4 cv=DYgXqutW c=1 sm=1 tr=0 ts=68bc8a8b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=QX4gbG5DAAAA:8 a=OfM26ny4dbP1suOavW4A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060029

On Thu, Sep 04, 2025 at 08:26:02PM +0200, Sebastian Reichel wrote:
> Currently the Rockchip USBDP PHY as a very simply port scheme: It just
> offers a single port, which is supposed to point towards the connector.
> Usually with 2 endpoints, one for the USB-C superspeed port and one for
> the USB-C SBU port.
> 
> This scheme is not good enough to properly handle DP AltMode, so add
> a new scheme, which has separate ports for everything. This has been
> modelled after the Qualcomm QMP USB4-USB3-DP PHY controller binding
> with a slight difference that there is an additional port for the
> USB-C SBU port as the Rockchip USB-DP PHY also contains the mux.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 8b7059d5b1826fdec5170cf78d6e27f2bd6766bb..f728acf057e4046a4d254ee687af3451f17bcd01 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -114,6 +114,29 @@ properties:
>        A port node to link the PHY to a TypeC controller for the purpose of
>        handling orientation switching.
>  
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
> +          mode), which should point to the superspeed port of a USB connector.

What abourt USB+DP mode, where each one gets 2 lanes?

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the DisplayPort controller
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of the PHY for DP, which should either point to the
> +          SBU port of a USB-C connector or a DisplayPort connector input port.

I would suggest describing this port as 'DisplayPort AUX signals to be
connected to the SBU port of a USB-C connector (maybe through the
additinal mux, switch or retimer)'. It should not be confused with the
actual DisplayPort signals (as those go through the port@0).

In the Qualcomm world we currently do not describe this link from the
PHY to the gpio-mux or retimer, but I think we will have to do that
soon.

> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.50.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
With best wishes
Dmitry

