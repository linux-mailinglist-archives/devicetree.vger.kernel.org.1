Return-Path: <devicetree+bounces-214977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7164FB4FE6D
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 677451B20757
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416F1342C9B;
	Tue,  9 Sep 2025 13:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e3RVKHfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ADC5322A1D
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 13:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757426343; cv=none; b=vBDOh5v5JhpiVxMuR1wiOwCDDqRGlGvLWwgshVTdI/g4zKQzQoEL3NtZXWjulie/PtrznbfuToos/qhzmmVaIwImYbW7pzvYYGLETALy6R+SlcTnbD2wh775qCUX9eDLMoS6Ad0W/kdK3i4yopDmXRGQ6OegcGAyqc66GNRVjEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757426343; c=relaxed/simple;
	bh=fGoY1rCKFQaava6el/TElRSSYnR2HYwuz4xGqge09P0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J2vPAA/JVWgIhYxWrrAJebYOXK5OPUVoX7VAK55Q/RmKXTenJBgzJMPReX0wIm47GCOsDHyfidUwGo77BHekD0PBAKpkmS3gMGQ62VHReRz7GzluSIlfkHuKX4Ed8e5fzStD4mXV2XxAuYPO6GfmbEABBspwkkXf3lsFl2/8bE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e3RVKHfI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LXwh003664
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 13:59:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+e+m2eXxsaETI5+DzIMa5RUB
	HZ/+khiBv1BzAFhU+3c=; b=e3RVKHfIvyKU1oDik0Wo+ZvycmTxqZqJHGYPKKBY
	v1JnjNrQVxXdzu7H8EJwamY+kGanlkNCRKdEik3p5xmIEa9//LUW2xvByoJbPLdp
	rnVsrUMj4utvHOJUivDreQNssmyZ+itk0sIvg5WDL2+kwQYoC6uzhJcTF3AFuaVb
	0E0t09mHBPZdH4weIT0+3iYnyJDO+rzv/Qmu0F4b/GE0ezdGX8/WzERGlUKNqRNB
	5g9zeb/TimgZb0Q4KM2cParKdLhq4L7cj0UK0k5lmENxLF+m/cOVBSHWnG6K+9qn
	b8kxuZzuRLUzlOUB6yfD5qWB2cSYNJlOLe+DVvwzE9wjBQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapgqa8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 13:59:00 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7211f13bc24so118788016d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 06:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757426340; x=1758031140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+e+m2eXxsaETI5+DzIMa5RUBHZ/+khiBv1BzAFhU+3c=;
        b=F+476Vc0Xt5YxpUefdowuAZWM1q04ErIPTYzj4PJrVbQRYJ1XSG81cEZvPzbW6CZD8
         fl68Dw3tzbZUhnywUpiYp0Fzdrq54PzbJiGQnIKTqpYgdGSNo2YGL97L3M5F6EIQ6uqo
         O2Pjr9FdgS0qK7N+d6/HrOLWF+ydoFySjhBEpV9W0AJH19ibHhiBA6W5/55HepmEIgZ3
         KX4oMH2BPRHh/qOC3U+FCRm4BjCX28gQiDOIwE0eJYG8MzgGrOThIlwrj6YN6iu1vKfc
         KY6tnTCPDNX+ZyHmKyApQ+5p8wvXetkUygKxr6irZer6ByYECAzbfnlikHX2/zPoDw32
         Q1pA==
X-Forwarded-Encrypted: i=1; AJvYcCW8vJ+d40ltWnBcu7ou8UQpsmH12qyFdW0pngwbU+fa1joU/wlanuqciLAfdrDoXjcqKfhFGmdp4IwC@vger.kernel.org
X-Gm-Message-State: AOJu0YzdBeSMq2AWF2m4+D/HcnUW8pm1de404LCq1DZzT3/iktoG2GL9
	/sypVh5yGd+7wKepUZDL9Efy+qd61ARSla9ufMUiRErA6QKr/t5z0Cj3FQegaaXaWH0IILJVTEj
	aqfmJaNRSjidVfwkQzXPiWrAi2ZsuA3aSGyK6Qyvj4J45CXvf5h1kZDy4MHi37V0w
X-Gm-Gg: ASbGncty3EjFyS+cFxzXvJLxRY+Xq3UBBrZx4XPu9HxriOYv5t/GXV9bB7f7Lfm7g3K
	sVZIiFj6VapOhyRfurvBZoRoJe17OGv30AZi1H1ej3K22fXcPKiXrP5SnXYaaOjk9Si6EhDFH4y
	r4dAPm3eXe+pP8ruxDWmUAZf/iDru4+ioH71zHRBMRG2Aci0zAf/tKYsuS0/4Qn+Hxp+D8eyjV5
	w7O1Pr7a8uB1t0uLoaxkg4RTONybL0x5TmFp/ZRRNOW3WGWGbvKylvqvUnHoyctzeqYpVEG34TI
	P8LweM1xpl+J0BixYRSgkUGe5yjUbnTQquruXXeOnnYAF1thqjq7lnaZ2aWQUoOk98S9axOffeH
	Y3lDE3JZPmq1DAOeZ4LVpdCAivWfd21jc02PYlotvx0LyZ1LqbqZw
X-Received: by 2002:a05:6214:e6e:b0:72b:f322:6817 with SMTP id 6a1803df08f44-7391f30353dmr118890586d6.10.1757426339771;
        Tue, 09 Sep 2025 06:58:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx+dFgHWJPMSKPSEn7vDY6bmN0vj3HU50MJCOT7V8BOnFjo1dHoOhzTqahq+CmW1jyx6u1HA==
X-Received: by 2002:a05:6214:e6e:b0:72b:f322:6817 with SMTP id 6a1803df08f44-7391f30353dmr118890216d6.10.1757426339166;
        Tue, 09 Sep 2025 06:58:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680c424fb2sm548560e87.11.2025.09.09.06.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:58:58 -0700 (PDT)
Date: Tue, 9 Sep 2025 16:58:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
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
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Message-ID: <dpidjyofawtrmci5lu72gdnwxxws57sw55cxxedkhsq2dryohm@cdxjwnros57y>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
 <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da984d8f-85ae-44cf-8de4-208bfc9e292d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c032a4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=r0EWWIcaWpoI38bJcbMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: CmFCkibRJ8vj5aSBqnkjr6AA-md5ETVG
X-Proofpoint-ORIG-GUID: CmFCkibRJ8vj5aSBqnkjr6AA-md5ETVG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX3UBENbEprAuT
 guVanGVCgYHut1FgeSh8PVi6OCYaWJzOVM2qpO24jhRH4Z1y03e1STsl3ukJrtuMMA5Q5YrW4Mg
 /mKy4XSRql7LcAHUg7q1SflVA/xfEeE11tjbKwhduhezTfwR7H82NduCu4e14SLj0UiuRgeh0Od
 ixf6JCRjRJ2YXwmuRqej9yhjhysOwkSS+/P4Hmtk2/Qv8BNFnLY4yNir/kpYHKYQohpsSW1RjQo
 I3EN1UFKa5T85yPnU8MaHQQZwIycfSWHHZuX7TVFfWDz6kZelNYBwvxA92Pmm/NUn2N3+LyBLeT
 Huznug7L6wn7aXgFlYCJKfdHwcSzoAeKjngJVLkcNUdzPkpFVgZT/QRC80mN5ynjjqbaXIH8QIe
 4TUQGha+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Tue, Sep 09, 2025 at 01:21:19PM +0200, Konrad Dybcio wrote:
> On 9/9/25 1:16 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
> >> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
> >>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
> >>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> >>>> of a combo glue to route either lanes to the 4 shared physical lanes.
> >>>>
> >>>> The routing of the lanes can be:
> >>>> - 2 DP + 2 USB3
> >>>> - 4 DP
> >>>> - 2 USB3
> >>>>
> >>>> The layout of the lanes was designed to be mapped and swapped
> >>>> related to the USB-C Power Delivery negociation, so it supports
> >>>> a finite set of mappings inherited by the USB-C Altmode layouts.
> >>>>
> >>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> >>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> >>>> an USB-C connector and no PD events.
> >>>>
> >>>> Document the data-lanes on numbered port@0 out endpoints,
> >>>> allowing us to document the lanes mapping to DisplayPort
> >>>> and/or USB3 connectors/peripherals.
> >>>>
> >>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>>> ---
> >>>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
> >>>>   1 file changed, 58 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
> >>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> >>>> @@ -81,10 +81,67 @@ properties:
> >>>>     ports:
> >>>>       $ref: /schemas/graph.yaml#/properties/ports
> >>>> +
> >>>>       properties:
> >>>>         port@0:
> >>>> -        $ref: /schemas/graph.yaml#/properties/port
> >>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
> >>>>           description: Output endpoint of the PHY
> >>>> +        unevaluatedProperties: false
> >>>> +
> >>>> +        properties:
> >>>> +          endpoint:
> >>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> >>>> +            unevaluatedProperties: false
> >>>> +
> >>>> +          endpoint@0:
> >>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> >>>> +            description: Display Port Output lanes of the PHY when used with static mapping
> >>>> +            unevaluatedProperties: false
> >>>> +
> >>>> +            properties:
> >>>> +              data-lanes:
> >>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
> >>>> +                minItems: 2
> >>>
> >>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
> >>
> >> So the PHY already supports 1-lane, but the QMP Combo only supports
> >> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
> >> int both in & out endpoint and still should work fine.
> >>
> >> Do you think this should be done now ?
> > 
> > Do we support it in the PHY hardware?
> 
> I don't think the PHY cares if it's 1 or 2 lanes

I think so too. So maybe we shouldn't list 1 lane separately here.

-- 
With best wishes
Dmitry

