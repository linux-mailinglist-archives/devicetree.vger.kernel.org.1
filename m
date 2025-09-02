Return-Path: <devicetree+bounces-211607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BEEB3FA6F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F72F7B22DB
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306892EA486;
	Tue,  2 Sep 2025 09:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ogeea3Kb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E492E8B63
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805441; cv=none; b=Bwhwno3rqVJCd1cGG8aLyH7f1zpajDdZQ1tPBNCUuYg8zlxzNkbWc+aL7BBidtP3caUwIKPN1Zx48yVd10zUESVX/vfPEcMVbKrY+6KO9CLFBUnyIaurdYNh69VjvUKV1Vedq3olg4YvAY/BFCmd+cFdbVMh1YqE1U7ZKTMj400=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805441; c=relaxed/simple;
	bh=pK2/ZjLRPt6qP7AKXFj5yiQ0AiNumreGle8930Y+9R4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m1ORP06lxZiOI3DV8HgcmLuxu3C2/k/B4qx6gY9KKyBv93Eh3/DNqhF6/gBRzEBTHeqqtfMfskd/xbbtk664nVybNV1Wff3dget3JK3r2rmfplme3FuDAbKs+cay4xQbwOlbVg/wCZDK9t0CVbJupmsMruwgReSunh3zr4CE2w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ogeea3Kb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822SA3M022312
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 09:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jA18KHak3xEuH/pG/ByyPr54
	rqvVPspGXhnOl9P369I=; b=Ogeea3KbBKvZAmnR6hReYKQ20SGd+Kjeo6dawV4y
	mgFQFWWbQlVO/hmrq+rvFuzd17svyADjmJkKjmiGNQt3OcLOhR/dPfV0y7wPMseS
	LeC31ZQ9EQT/rix/tKEKoOmlwy9uWqLdTArgauq/XIdrmyAPdRBAqbb/yrGCkP8c
	coNen6GhHRsGK2N9JyiuVbLe5NrNg9ZQ2rjmSMCi1zGMZNF2KUV9UtMC80hergkn
	cGa0HyKoAGI+FdF4UKElq6b+uSy2wLtbcg7IIUZUAizjMBaK1OQIv3LDFhcnOFZE
	K+wMq5vT/BCzll+DACmOZwpRGkPhI0KUuLEm0mp5naBNCw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp7eqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:30:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3349c2c38so42244521cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805437; x=1757410237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jA18KHak3xEuH/pG/ByyPr54rqvVPspGXhnOl9P369I=;
        b=ENVzcR4uPbgD5UTXd6yvGwva0VLjOZBjA/bZulRkZPF36CMbrEd7iqS+O4y1Fe2nQP
         Yv9/nUb2g+Q5capodx4VG5aiWa2ekIw5c4624EbgzYQYJsRrjU7TBy2rzAskTb/ZoXnN
         +yc1+SFEB/mYw9Y0pLirF+cm+Rw64z6dFRTyytcUMhgl0mqe9TLir95CH2zUW77WI7KW
         ziuGrvNI5hF0aQh4CCyiZ6gWoz6eV2fy/1tsZ+CD40C2+FNub2mUDAB4D+/YtTwMJmFe
         w/TlJKXiDIGQ/ke1vUsrtkv8Y7JfSlNaLSNxEnROJ7kfyAHlEqiqml/EgqXuVMcIV1PQ
         mk2A==
X-Forwarded-Encrypted: i=1; AJvYcCVmUjUXtAzabcaZ+GYe8ZrvTiHAUg/A2h1BYTafoKQ1EKSUOb16wpdQscrsppxaJ3qKryReESnK1jnv@vger.kernel.org
X-Gm-Message-State: AOJu0YyE5UawOE3L3iYDVbxiBprJ133c9JrazBsBmv/OkUpf0rCwaFJQ
	5Ob+mPdq613YkbvGc5oeoXqQNMHByuckZah63DyuTr8Klnt+AJ4Dg0eocY3UCJvL7/TipeIovmd
	vvC13vDZlXQldIYzXtzmkGgL9kU3Qkd30puhAcPSUqjJjfCoq/afuSlD0MiLpVXax
X-Gm-Gg: ASbGncuxhVqIIAMM8ECvF3XCCCLmNDqIKWp6m9CIb68tl8AoEo9FpKEMsq53Qsr+2GZ
	lAuV2psXT9rakTMC2HWlavGrzgdE55ld9MKQwTLoEO8rB1eHm2paU9wM45cNhPWmD3dDlvGKrCr
	MY7yJDVpWes1xPfvUbPezTJg3OoqaeNW8jgcwzKm2gslcYF//ahsipcfNiel4+BojnlUlRXxBEF
	WXPJZ5AgF5P8ZiS79MDfrjN9WHuYsJSPfwLk8PYmmOb3Mwns+SLQqoHn9c7BSDYvxP4xo4cnpoS
	MB7yfpztADl6zeUbvGEMS7AKh5rk7TMwIBM9xySyShFV1cSjc3eEbtuYMetevoSYeYlITFvMFby
	eSV92n7anqFntoV8BUADPKuLlsxKi4dUFmcXPSaTEP2CDlgnW+AKi
X-Received: by 2002:a05:622a:2609:b0:4b2:8e41:1aed with SMTP id d75a77b69052e-4b31da37e70mr123618791cf.50.1756805437294;
        Tue, 02 Sep 2025 02:30:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3B2sMY6mhuzZQ9BKM05I6HOCeVfKyCF2/fNLRfgWKFDFDuw/uEv61rjhN5aI6FvZLt8UIZQ==
X-Received: by 2002:a05:622a:2609:b0:4b2:8e41:1aed with SMTP id d75a77b69052e-4b31da37e70mr123618381cf.50.1756805436682;
        Tue, 02 Sep 2025 02:30:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608279d2cesm541552e87.112.2025.09.02.02.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:30:35 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:30:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
Message-ID: <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
X-Proofpoint-GUID: qDr0s1Og6r0nyjynbGTc9NmPFnSc3aDv
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b6b93e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=h5iY_YrdyxaDv9g1vm0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: qDr0s1Og6r0nyjynbGTc9NmPFnSc3aDv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX/ZnlHJKnjbpc
 H77fYm9bNUqYpW2UAMFe6yWkO6klRKTAA1Au3Rf/ejn5RtFktpQqgI1DkezSw7jNcykHFzOZd0m
 hOQDdgfv4dHb8uImTYC57Zb6M1EEbsWJ2KNm9TasOC7NImkqyrbASXijZX/N8E2hQ/OJahf9LgF
 eP9diFdr1xLS6y/QEZlwnNMC6IcAGu5gXOGtOuOY5Hf6J60pg+L61Ot8I/oo0uarP4qulDC1M+y
 eEEm+pc3VZYkLwWjedb+gVmZuOweKBhADyDOCGD1tWtE3a7/RgaDN3Z5JGwg8kLkzycckv5iL6u
 soFbl+jWTDJokJEWYbFdk+0f5MigPAwf7AT+Ju/K26k3LwuTUpyEqGkCumN9OgCccMSMSnpIP0e
 zDOS013Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> etc... without an USB-C connector and no PD events.
> 
> Add a property that documents the static lanes mapping to
> each underlying PHY to allow supporting boards directly
> connecting USB3 and DisplayPort lanes to the QMP Combo
> lanes.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,35 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,static-lanes-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 4
> +    items:
> +      enum:
> +        - 0 # Unconnected (PHY_NONE)
> +        - 4 # USB3 (PHY_TYPE_USB3)
> +        - 6 # DisplayPort (PHY_TYPE_DP)
> +    description:
> +      Describes the static mapping of the Combo PHY lanes, when not used
> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> +      be connected to the DP PHY.

It feels like this significantly duplicates existing data-lanes
definitions. Can we use that property to express the same semantics?


> +      The numbers corresponds to the PHY Type the lanes are connected to.
> +      The possible combinations are
> +        <0 0 0 0> when none are connected
> +        <4 4 0 6> USB3 and DP single lane
> +        <4 4 6 6> USB3 and DP
> +        <6 6 4 4> DP and USB3
> +        <6 0 4 4> DP and USB3 single lane
> +        <4 4 0 0> USB3 Only
> +        <0 0 4 4> USB3 Only
> +        <6 0 0 0> DP single lane
> +        <0 0 0 6> DP single lane
> +        <6 6 0 0> DP 2 lanes
> +        <0 0 6 6> DP 2 lanes
> +        <6 6 6 6> DP 4 lanes
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

