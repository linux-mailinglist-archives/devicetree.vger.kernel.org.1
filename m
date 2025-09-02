Return-Path: <devicetree+bounces-211612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E7712B3FAFD
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7E3C7A2666
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBE12777F2;
	Tue,  2 Sep 2025 09:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bMAnIhXa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7880C2773E9
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806369; cv=none; b=lUmRvyucUjw1IuAZjBGU+RuX3epFcgtRpAVTH8iixLDqPoja/huYeKX4JJC5uApmOzzZmEd6IGhMu4TB5pY7XcJMnc3otdPuHaW8tlyag/tF3eG3lQT5xEF/A61HZSZ5awAKoFEkKIiGIA531zFYUL7wlKWnPCjCj/HlgKieLy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806369; c=relaxed/simple;
	bh=9vZm+CpE5/TzBi01gAUyiY0mPJeQCDJqZEKw0Bh6/Qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JKb8ZSZu5atMOw9LvE2XTdR/L4Dbsq9DDBYNxSsIYOT5p8+3S7CtMcV+HXs4aSLHhm93lUW7NbhAZrosCQ4CBlZjWMVo+ATJu1s1fdAIx/BgUGNrjOL3KsIIcScF4Uxf9Cn+vhwbbnkzu9DGM8KOvWDn49yWuTwQAWet3vHwYv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bMAnIhXa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822SHif013393
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 09:46:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kuvcx9dK+4uPO7PcKf2xDvCA
	/wZvMuQBYtW1BRkUMHs=; b=bMAnIhXaL4tjXQoR242+kYg3wyyhu8xAaePglGcF
	rX5tb9HzfAvjws3tmxb8bkdJ2TKxWrbU9xEj43O1eD+HVJjlOMgxj24sZL0ifFU+
	JGPGBe0mkYm8Dsj+TkVgO7vcdqsX9MNKNYXdo3D5wMX1M9l2zdQIjVY4C0q88Xx7
	lMzcCHo8Rmiz/CvGGDJPKCz2s5zlaiBsqoF3uoaaYnV8ss3UkYTgR7tyzqTA00mX
	ub09LEkAnNUF4EsRb9ap87MR16rrRCcYmp8AcAGcvOoqT1mfVTvQl8WwUX5AgobT
	OiQwK0kRTpVrWwJ+HjHHv/LHOz+Celi5n2TutAWVr1VMyA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2ff7nw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:46:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b335bd70b8so25148841cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806364; x=1757411164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kuvcx9dK+4uPO7PcKf2xDvCA/wZvMuQBYtW1BRkUMHs=;
        b=PyLByOWAvqTuMG1xoSSRPP9uTIL3s6Mls1F/T0OCZpCQwx+Dl7KlQSyCBDfh5M1kLe
         WCQy3n2ceudzhQfNklNH2JOvRXxM4EEq6NmOYc5hFonPErpI+qGyImcVlvy4UVR0dpTh
         57rTFfhCC4QtmO+B09RXhm9lrkZeb4/4p+tbb7w2bjVrhKKzzNVIW4JQUl3NnQ9Dbt2D
         hs7dWW3NzPY2Yd1OOmXrqFV4YqhcGMv82pmH9Mn60yA2G5evLxx6k8PopjyPt3knNJ+X
         dSiQt7NubJMszE0wnK1TpzYZiwqvppdAQM/TE3kkOdU2gPxN3XZgWlD0WFNJIqtsqMcu
         x/tw==
X-Forwarded-Encrypted: i=1; AJvYcCW0GxJnF2TfTph+TgBUPOjlO6yJji8Z7q+91P6XwkhHzSd4qNl/RlfaFcq8akOP11USHboI5cQqt99b@vger.kernel.org
X-Gm-Message-State: AOJu0YyFJyt7rZgmM5PBHfN77+IO9VGPuxUc5tpKUbfdS4RQKLOAB/Fv
	VH9UKDOKkZ8+5mshzar3bFl35Ln890Ow9IpmxN8G50n3sBBz6ZDZ5jBTO0CluNjyOGWGgyokyTY
	NNhrxS7cB4up4pk8odEg9folElC1BAF+/D+xEoyk1CYDDM3pMZ69dipP07FQt65pa
X-Gm-Gg: ASbGncvNkFvvkYuAj4C70qBheBeeawlSKFdbZjE0EwlnK8uqYpGGcOdpMHqJxdLke68
	E8ch6xbppz1KNVa63vgNgpxdneBKoeNFvkVCn3IJDnf5oZNBZzP8zo9PW5MK55cq5hoaOWbpNNg
	Wp8k2gY1jJlPmiX6S7UMCkUHQBZxPLtmDQYQYhG6WyKMV2bSxD0oObJOSWABhUZ5+DHBGgdIwom
	GieTQgaTGW6zL2Kw4ingDst5eZC1zKFIFp/T32tYkXhuDdR7R1SqhgRknvxHZex3CsNF1KJIdq6
	fM0BT+jCq7gRQHNd83IQXyR6tcnf2qqhu5/TQudgb2AjUd/+qqYJatiHhRNlIgu7D9FRSis8Tq9
	bxg6tOptl8x9s3TpCedgsBmS5RGVExNs/3RnvyQA9Fb2MDXR6no1g
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr110963031cf.30.1756806364122;
        Tue, 02 Sep 2025 02:46:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6+NH9LnUGOobc8Z3ipkGt2tyqr1PSej/+J4YRMh0RhCCuZpIUdsEIhFAtonApsNUh/JxvIw==
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr110962671cf.30.1756806363442;
        Tue, 02 Sep 2025 02:46:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c91d37sm3581281fa.19.2025.09.02.02.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:46:02 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:46:00 +0300
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
Message-ID: <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX2n/sQT0Opq5S
 0weKR4BDAyCPbpogIJfSoE3NBXRY4OH5lR3Ey6UQRwDttdL/dKTmUW+z1eROll7s0jvVJOqyMuM
 BYHa56Q8TXhF9C9fXz9gBMM9JS30zWUKb0Q9SkHzW1udGwfaXwY6TOmdsC9IO+H7gQSJLgH12Sp
 TsEox0gJGp4dkWGGy8oaPG6W+OtCYJe9q3tdqiSC5kJ4187HeEdedEWWH6kfB0jxiDdPJQmlRq2
 coY18LHkO8DOmDAF0pcVRCwVYk07qIe5CR6bBy0XtAqdPvsOMTUD0ZeQcYcP4LYu7W4a0qqSQ3X
 Zs2HRpcNhorocUuqDLxBxxRcz6FvQr3QR13nC66W1A9AV+/9mRndmiZsTCzdriq42+Va6Si0OXa
 ZkE+gAVb
X-Proofpoint-ORIG-GUID: xWDMiOdR7TKaYlHDU4wvBCYwiVqsYcQ9
X-Proofpoint-GUID: xWDMiOdR7TKaYlHDU4wvBCYwiVqsYcQ9
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b6bcdd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=SY17gm6z-Ks54HuadOoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On Tue, Sep 02, 2025 at 11:35:25AM +0200, Neil Armstrong wrote:
> On 02/09/2025 11:30, Dmitry Baryshkov wrote:
> > On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
> > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > 
> > > The routing of the lanes can be:
> > > - 2 DP + 2 USB3
> > > - 4 DP
> > > - 2 USB3
> > > 
> > > The layout of the lanes was designed to be mapped and swapped
> > > related to the USB-C Power Delivery negociation, so it supports
> > > a finite set of mappings inherited by the USB-C Altmode layouts.
> > > 
> > > Nevertheless those QMP Comby PHY can be statically used to
> > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> > > etc... without an USB-C connector and no PD events.
> > > 
> > > Add a property that documents the static lanes mapping to
> > > each underlying PHY to allow supporting boards directly
> > > connecting USB3 and DisplayPort lanes to the QMP Combo
> > > lanes.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
> > >   1 file changed, 29 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > @@ -76,6 +76,35 @@ properties:
> > >     mode-switch: true
> > >     orientation-switch: true
> > > +  qcom,static-lanes-mapping:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +    minItems: 4
> > > +    items:
> > > +      enum:
> > > +        - 0 # Unconnected (PHY_NONE)
> > > +        - 4 # USB3 (PHY_TYPE_USB3)
> > > +        - 6 # DisplayPort (PHY_TYPE_DP)
> > > +    description:
> > > +      Describes the static mapping of the Combo PHY lanes, when not used
> > > +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> > > +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> > > +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> > > +      be connected to the DP PHY.
> > 
> > It feels like this significantly duplicates existing data-lanes
> > definitions. Can we use that property to express the same semantics?
> 
> Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
> to describes the lanes layout/ordering, not the type/mapping.
> 
> Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
> but which lane is supposed to connect to which internal PHY.
> 
> Anyway, I'm open to suggestions.

phy@abcdef {
	ports {
		port@1 {
			endpoint {
				remote-endpoint = <&&usb_1_dwc3_ss>;
				data-lanes = <2 3>;
			};
		};

		port@2 {
			endpoint {
				remote-endpoint = <&mdss_dp0_out>;
				data-lanes = <1>;
			};
		};
	};
};

phy@cafecafe {
	ports {
		port@1 {
			endpoint {
				remote-endpoint = <&&usb_1_dwc3_ss>;
				status = "disabled";
			};
		};

		port@2 {
			endpoint {
				remote-endpoint = <&mdss_dp0_out>;
				data-lanes = <2 3 0 1>;
			};
		};
	};
};


> 
> Neil
> 
> > 
> > 
> > > +      The numbers corresponds to the PHY Type the lanes are connected to.
> > > +      The possible combinations are
> > > +        <0 0 0 0> when none are connected
> > > +        <4 4 0 6> USB3 and DP single lane
> > > +        <4 4 6 6> USB3 and DP
> > > +        <6 6 4 4> DP and USB3
> > > +        <6 0 4 4> DP and USB3 single lane
> > > +        <4 4 0 0> USB3 Only
> > > +        <0 0 4 4> USB3 Only
> > > +        <6 0 0 0> DP single lane
> > > +        <0 0 0 6> DP single lane
> > > +        <6 6 0 0> DP 2 lanes
> > > +        <0 0 6 6> DP 2 lanes
> > > +        <6 6 6 6> DP 4 lanes
> > > +
> > >     ports:
> > >       $ref: /schemas/graph.yaml#/properties/ports
> > >       properties:
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

