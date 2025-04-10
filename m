Return-Path: <devicetree+bounces-165326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C23E6A83F68
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 11:52:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A0448A48A5
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A86268C49;
	Thu, 10 Apr 2025 09:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JoGKkGwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF85D2571C2
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744278432; cv=none; b=RWPIKN+LuCEmecN0v8a1byjyHgCrk35ofmJmds4KaKfghtEsTRus6+yPftSVXHuUbSZhYPlfEQjdBhuHk8UFMPOV96MF5VyhTeFQ987/tbtsr49etaW2z/LXX+d6BjGimI22OIqi8COJfOtrzqJ8krWh45rwatxtGHvpphqb9/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744278432; c=relaxed/simple;
	bh=WkdNppjBPm099dd+ywOrWyQu0cWt+mwN5QeOCzVk8Y4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OPiPIygRngFQbt1iJyolJM6bqg0AGqY6ZgdDuIDOoRlkaqmBoNbb8POmnZOQEkeNQUpj7tY749Ie1fP0xLmYNp266eK+HgEhRJwRMGsrMWb/rjyqVQ3yRhJMfKol8Xd8SxHsiLz0rmRj9eMTF05l6H28UE4YQckHZD+5YBuFx8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JoGKkGwP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75pgU014128
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0EdbhSHd3iaZd0pjd8SecvgMPJHr+gf1n3EUkcSKFnA=; b=JoGKkGwPeT3cD+Kf
	7IppTJkYq8tbpriiU78Rmh7IxgrvNAcx8rmZWeiJlVUCEtY/CGqoxZnXC5txISU5
	+XjDPTeEM6tCrbN5PWQUcabtcNi7Giv5/sWf1avr+UMlBOS7oQNdwSbAF9pQIx2C
	3W9R8Q15eHC3U0doYwh+EDPchoWKADGMwA2oIXhWDTzeKIgUIopaOv+xh2ujiklo
	9Paz70nTxty/fHufEfsZxzknRsiaiBfRWDFIo67p3Zghf8M2IaSHHNq1ncl7HYBp
	7VYhMwTM5gXuG4zW4Shtsp2NKOltV9Jj/JT8nlBGb0PPSxYyd/cI3ljoTtR4cuR0
	KlVnSQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbeegwm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:47:09 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767e6b4596so9404901cf.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 02:47:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744278428; x=1744883228;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0EdbhSHd3iaZd0pjd8SecvgMPJHr+gf1n3EUkcSKFnA=;
        b=dFw1ccYT1ustMKRT2T5FzyMFbYaUWtVngCwkobllDrefusLNZbwYZfUZhI8aSV0IyS
         AM1romSp8aDT8fMNeEOvcRzFBQybS6OuTP19oOfBCOK2S/HY44tPnuR/VXq1VL9VxcyH
         gyS7mrTO1ZAFZmlVvBs9nJ9RoGfcSxTA7IfCGWCzp6ChH6y0YQl1ulsbOh2bm+530taI
         mVDTBDKTf3MfHO3kOmhQZl+WFnziR+qYtUonUBkTZrY1FMXwxZOQhilubt6GDJrrH2S2
         YKJnSimQ0hb++pi9GKwZyPRbGYuz6gKkMjWpL52CcM6QOV+Qd8YMFiBM/1Q3pHxGN8VZ
         GhBA==
X-Forwarded-Encrypted: i=1; AJvYcCX3GjI8yysjCGGPhvKpFAi3veUPvhFbZG9sTj2ONJHhTqfdZv0OTLw9mR+Ih+3roXxA05dwwSc8hYZU@vger.kernel.org
X-Gm-Message-State: AOJu0YzVcbgkiJxwkSa4sDyZHcWMEkbOpsW7c1yvPib36/etbvKcUcM0
	TGCd9uW9A2HTvtipu3mb3e7UBwijJ9wU5gU2OujYLr+9TeroqhOh2mjBqes3VPnIMbsPJQ+cNjp
	28hOimy9hS5nQxrUUpICphrqwWSPGwcaikNb4YJCLkQpdUh14czcHLAWblRAe
X-Gm-Gg: ASbGncsLVUUNsr0aGbP8TK6o+Oqt8mzOitIEjy46xUWV1iCyO/LoKnhw0akshEc83uy
	Y0dmISL+XMqQ/t6O/fW5j5ajey6gYTb3tMzZYQ6ZP5T7fgxbfxVbBiSO5ply8GflrBzFoLD6CfH
	sgjV3HKEHNCpKn7CtmoNfet3h9bFra2A82IjXg3piQUDM2VMhvUi5Hs8pISvwZq8sWaWgl6OBer
	2n2I53cAuNdz7wyTwMfh9KSHslkcGDCNJVDzNCxtxqqdNG1qmVBVHeYV8W500HDTmy6ZloC2A7i
	CCc00Cepums/jRiHworHEXkdgO1eDAxQobTqgArcXWLTTkjnLpQ/RFzAFmjy4Q/3eqYfYr/Ml0A
	=
X-Received: by 2002:a05:620a:4406:b0:7c7:a5f5:61be with SMTP id af79cd13be357-7c7a816d1a3mr212901785a.32.1744278428621;
        Thu, 10 Apr 2025 02:47:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7qs1DpVyQwTJOvJAUSUQ0FgGk2VoC2vr+a69h3pXsg+ZT8q8nPRSDYrhAxRpUAW3StoLOlg==
X-Received: by 2002:a05:620a:4406:b0:7c7:a5f5:61be with SMTP id af79cd13be357-7c7a816d1a3mr212899885a.32.1744278428277;
        Thu, 10 Apr 2025 02:47:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d236c20sm93229e87.64.2025.04.10.02.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 02:47:07 -0700 (PDT)
Date: Thu, 10 Apr 2025 12:47:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Maxime Ripard <mripard@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display: panel: ili9881c: Add dsi-lanes
 property
Message-ID: <3hfzbjwz4bgog3xr4y2blclwpokrkveggvahzttpkgcbnxywok@u2neqd3lwc4t>
References: <20250408-feature_sfto340xc-v1-0-f303d1b9a996@bootlin.com>
 <20250408-feature_sfto340xc-v1-1-f303d1b9a996@bootlin.com>
 <20250408-statuesque-poised-firefly-ed8db1@houat>
 <20250409112846.2fb20426@kmaincent-XPS-13-7390>
 <frufdok3oxwgv4bk3v6jkeq5zwf3pheffk6qkweulmyye6epup@ucdefcuqwapx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <frufdok3oxwgv4bk3v6jkeq5zwf3pheffk6qkweulmyye6epup@ucdefcuqwapx>
X-Proofpoint-GUID: oLnOvK7qXqvbqu6ZRbCALnm1lX7vEVyX
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f7939e cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=VwQbUJbxAAAA:8 a=51sl9qNqqJDzXnlgZJgA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: oLnOvK7qXqvbqu6ZRbCALnm1lX7vEVyX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100073

On Thu, Apr 10, 2025 at 12:33:35PM +0300, Dmitry Baryshkov wrote:
> On Wed, Apr 09, 2025 at 11:28:46AM +0200, Kory Maincent wrote:
> > On Tue, 8 Apr 2025 17:44:32 +0200
> > Maxime Ripard <mripard@kernel.org> wrote:
> > 
> > > hi,
> > > 
> > > On Tue, Apr 08, 2025 at 05:27:00PM +0200, Kory Maincent wrote:
> > > > Add the dsi-lanes property to specify the number of DSI lanes used by the
> > > > panel. This allows configuring the panel for either two, three or four
> > > > lanes.
> > > > 
> > > > Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml | 5
> > > > +++++ 1 file changed, 5 insertions(+)
> > > > 
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> > > > b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> > > > index
> > > > baf5dfe5f5ebdd92f460a78d0e56e1b45e7dd323..e36550616f6aac86c79832a48132ce8c11ebcf7a
> > > > 100644 ---
> > > > a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml +++
> > > > b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml @@
> > > > -27,6 +27,11 @@ properties: reg: maxItems: 1 
> > > > +  dsi-lanes:
> > > > +    description: Number of DSI lanes to be used must be <2>, <3> or <4>
> > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > +    enum: [2, 3, 4]
> > > > +  
> > > 
> > > We have the data-lanes property for that already
> > 
> > Indeed but there is no such usage in panel bindings, only in bridge bindings.
> 
> It is expected that the DSI host sets mipi_dsi_device::lanes correctly.
> If it is not the case, please fix the DSI host driver. The panel driver
> can then use this data field in the probe function.

And I should have refreshed my memory before writing the comment... It
is checked by DSI host rather than being set by it.

> 
> > 
> > You are saying that I should add something like that:
> >   port:                                                                        
> >     $ref: /schemas/graph.yaml#/properties/port
> > 
> >     properties:                                                             
> >       endpoint:                                                             
> >         $ref: /schemas/media/video-interfaces.yaml#                         
> >         unevaluatedProperties: false                                        
> > 
> >         data-lanes:
> >           minItems: 2
> >           maxItems: 4                                               
> > 
> > And use drm_of_get_data_lanes_count in the drivers.

Yes.

> > 
> > If we do so, maybe this binding should land in panel-common.yaml instead?

I'd say, no, because some panels might support single-lane config. You
will end up tuning the property in your bindings too.

> > 
> > Regards,
> > -- 
> > K�ry Maincent, Bootlin
> > Embedded Linux and kernel engineering
> > https://bootlin.com
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

