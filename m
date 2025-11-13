Return-Path: <devicetree+bounces-237907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A48C5595C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFFB54E4123
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 03:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29AD0283FDD;
	Thu, 13 Nov 2025 03:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PC5I63t/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VlIDl4RP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90795288D2
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763005551; cv=none; b=WlQVitwzdpFL13NfJOQflEt1yn+LSJr/mvPonUR2lT2a6T0qrw+QRvBgXjmkUeT36CNTHIBTFiSMDFRgxavJ6tSPF0HsAbJQDBWJ2qFjyZnctQ2jydvDsjCcM2XVYJRxKofYkPlp0Q7vN2OgQuZys2tIjfiHWIIzipyXKHeTbOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763005551; c=relaxed/simple;
	bh=N9CaWEfbANmdrL6dYElHTPVpdO0+9wkV8lseVfQBj0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NFSYRZzV+kY0FLni1TcxZ4COhFkFUejSoUMT3vl1RcxluPJWO07Xw/xH+jocytwOQKeKguoChrPvMRO3xfCYHodNcuFRRdyOV28qiK8HP9digJBKHcvcwxnrw4GP4jqmuVEhmfyNhUboRKo+DqIJoCWP6XVd0og0TGTdIIq7AzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PC5I63t/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VlIDl4RP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11HRI3149963
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:45:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DjNE3w4kVhSIjBmk7rVKZLVn
	fKrOG9zqju24H6h9P2E=; b=PC5I63t/roh00hzp54fPZDB2I1gAZTo0xgMPuYfU
	rc6IIW9/wBjhwlkFzBzF247ucg4bN/AOGsp46QRouhKtY1C0oNE0oLcmMYA+3Ksa
	OImZAj6FFnJ9kXZfsrd5+fFATQBl8BY+VAmRTwH1P7Ko+VCBT3o+0LRwJqcj7OkU
	xBTW2XHg+7dUPAA5DEjW4sXmx4d1b94Bu0FSUR++xi+OY8lcjNgthuqWzF5VJlZ1
	va0CA55yM58wxT4rtSFBOdkJgOWyZHBK71UYgbpzWJGjUgylxo1WoMqA+3kKFZr9
	k42deGrwz123emBIEh6v9HD83VyDwkEAfi4b/NeeIAvH3Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwve9s04-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:45:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88238449415so18178836d6.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 19:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763005548; x=1763610348; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DjNE3w4kVhSIjBmk7rVKZLVnfKrOG9zqju24H6h9P2E=;
        b=VlIDl4RPuT07BMe/l5AP6E4Nb4Eb4y2xkiMX9HFnpd52OqWqoPuQ67Sxh4mKuTSSbG
         M/10B8jUWPZcZvs826MuihHigoKXZfdDJxUGbPgM9WKUW01U/g6cwFPoJWo+DefT8EMX
         KWUXiVxI2/xmj7Yyo/LTQgxIv6uwjTZi0fmdOKinainvRjgJY8rZwGMsbaLFtNL9b6lC
         AAiBi/0pPj2lZVL+qYaJjixK2Eb5F3SiEKusa/G5WVNGi2nOr2RtKwwmZHWKzB//obTK
         eT/gnoxFxnKiWDB4H/g7oRcpS8AKEqAcL5+jsQblIJJVekrm7GUW2RDnvRrEHGLKNAWe
         CYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763005548; x=1763610348;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DjNE3w4kVhSIjBmk7rVKZLVnfKrOG9zqju24H6h9P2E=;
        b=t5ahEaijUjuxVqrbV3oBuDiaWOHkX3yJV/KnIK2naS7VsmvkrmgkAppxIvDjuc3S5m
         nXxP+IwFdRu7Z40Lv6GWoZOUXZhD1zH9gHt4RRL7uzJyH1gOQEwfRjRQg+66Ecs9E8fY
         pJRskdf29RZPvkl1PY1YD7WITP33VXHgOjsY7n37EpYbUu7gp4zLuDt+2guPRUCza9Gf
         5G5KyEYDefB1b21sSH0om9d38NgRRe0Cl6+ehCS/qi9AfpCxtCffVcOqVOq54XP51AFI
         Wp16bmIDlRsRJd7sxcxpZotwFm/Bm7VUs1jy7o8b4w4irD3yOqJqvVK99UByjEmw/yv4
         CyGg==
X-Forwarded-Encrypted: i=1; AJvYcCXOIZUNp6SOZMWnFgld+CWKlOZbyDS3y0gPLEqK744h1nr183reppg5cu1MBbiVmnAcA1OqLDbb3pnT@vger.kernel.org
X-Gm-Message-State: AOJu0YyEAz3zepLIn203FgCCramUB+gw94GBIueTi+W2xpz5X2ZjYk8a
	/OOLZtk5tWrUnJFIuYIx5+FhHot94MiKJ0Hl5HtZVldZuagpHFBdZHho2jrwv5Cippq3zrsEGT2
	D0aELqQbQ7MHe52hMnYvAQv+EY5xVg0r5MGOnHUyOzewsUJKlc6Pf6KRtuzhw6i3/
X-Gm-Gg: ASbGncuTz9RwJKrpz50bDPkuJGMeCMepE29uAU5sD9MspF9ST+lwT2WSCLl/1yhpLoI
	9plmrrX+iCxtyOyfJ4IjOn0xwTDxCfR5UzrfgzUL8T0SascGVK93e73J7GylBY43IAb8E+0pVYd
	1g2mynDsKLa68L4yG/lJvXx+xBep3ArfDlK+JrigYSEnJXEhKPppUPy+NLHYCAq2ZV6PcnY0/0Z
	HBAfgt6blyK+eu4naJiROFDlTzWTG9QCQmukRN3KJM8o1Nzty85n2htIPpYAz/12qLxOGXsWfa6
	lHrvXj+G/EE8w2Ynj1ExSLpR75R/S0k2lx/oOvMtkmddVINdGYSz2rG2qkxG9wkJ4d/pP5cniz+
	er8lsG19tDyH8oFbO25JP0QcFsN+QhE5QiBzHAVggjHTeHPnhMeTXRiN0yazdehmplgNcp73Kfp
	HpIvXOqhFdw5g5
X-Received: by 2002:ad4:4ee1:0:b0:880:49f2:38b2 with SMTP id 6a1803df08f44-882718e5117mr76134696d6.14.1763005547679;
        Wed, 12 Nov 2025 19:45:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfmlsjI3oV0xrxh7FK7VclqjjkV8mhqUSwthmEzk71QsnD+agyh4M4pfdF9zcwVKb610vCNQ==
X-Received: by 2002:ad4:4ee1:0:b0:880:49f2:38b2 with SMTP id 6a1803df08f44-882718e5117mr76134416d6.14.1763005547114;
        Wed, 12 Nov 2025 19:45:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804003d8sm125814e87.70.2025.11.12.19.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 19:45:45 -0800 (PST)
Date: Thu, 13 Nov 2025 05:45:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 rb3gen2 industrial mezzanine
Message-ID: <72ffjdik46dpespj2i2bakju6zcbu5eu7atuqrl4i4ri437nrj@aigb6akxb266>
References: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-0-6eab844ec3ac@oss.qualcomm.com>
 <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-1-6eab844ec3ac@oss.qualcomm.com>
 <kosvayxmpbngn56v7t734f4qqrc2rptkjdd7q5q23brg22dvov@cxs7kzzuapim>
 <qps5fkbgdqqvoqa3m5l4naksyc4aoq4xqnciyrpkrbs5qcno7c@aa6ync6sk4ju>
 <vz7u2jsb677imufu6aillcqnnaybed3occniyx3fgniwtxzij5@uplpfhhyjk5k>
 <5lkcoekfn3d6gwk4ra6u65lu6mtgzn2iucyvswvn4lhwuw3pxv@jcrp22msbaip>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5lkcoekfn3d6gwk4ra6u65lu6mtgzn2iucyvswvn4lhwuw3pxv@jcrp22msbaip>
X-Proofpoint-GUID: gYJdw_bcPHjev13DrJ4btTB27gnENnjS
X-Authority-Analysis: v=2.4 cv=F7Rat6hN c=1 sm=1 tr=0 ts=6915546c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1ZUH7Qa5Occ65oSuLKkA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: gYJdw_bcPHjev13DrJ4btTB27gnENnjS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyMyBTYWx0ZWRfX5niflEdE+9Wl
 j4bXVQT3kBuCP8Q8KlALbPCVsIItFA8CwyeWfIXm5aYc+wFDpRl5gSkLHBbHeY40bbnRz6Fkyke
 AKIV5DN1xuYdvm/KnOBuo8/gWdyv8IPidnvzerHfgAwwYqj7gQNrzMT277FPe2ibT1koxdraTVp
 +gyyTIEnXmNjq+x8pmYRAAokfYaemw6fTLuzVgjGbA6jaGQ0BuUCXjol8o+hhlYm7h6gCNLf0xw
 dGeSTL1lkWN4gINOiLY1Larx2rShG4AFteoUE8NFsRZ9HbttamZsG1X1Yum+Qj1nmApyYpSAh9h
 k+nnoRJZDqkQg2wGbxFchInXymC0IqT6zJC0jJqk41e0r6oXkaKYhHOa4QAnHsgN+o1hdMT5bsw
 5TvSKSxCR6XjxndRg2bab6H4TDNZ0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130023

On Wed, Nov 12, 2025 at 04:07:27PM -0600, Bjorn Andersson wrote:
> On Wed, Nov 12, 2025 at 10:16:27PM +0200, Dmitry Baryshkov wrote:
> > On Wed, Nov 12, 2025 at 10:53:36AM -0600, Bjorn Andersson wrote:
> > > On Wed, Nov 12, 2025 at 05:02:20PM +0200, Dmitry Baryshkov wrote:
> > > > On Wed, Nov 12, 2025 at 08:18:11PM +0530, Gopi Botlagunta wrote:
> > > > > Below is the routing diagram of dsi lanes from qcs6490 soc to
> > > > > mezzanine.
> > > > > 
> > > > > DSI0 --> SW1403.4 --> LT9611uxc --> hdmi port
> > > > >                  |
> > > > >                   --> SW2700.1 --> dsi connector
> > > > >                               |
> > > > >                                --> LT9211c --> LVDS connector
> > > > > 
> > > > > Disable hdmi connector for industrial mezzanine and enable
> > > > > LT9211c bridge and lvds panel node.
> > > > > LT9211c is powered by default with reset gpio connected to 117.
> > > > > 
> > > > > Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> > > > > Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> > > > > ---
> > > > >  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 106 +++++++++++++++++++++
> > > > >  1 file changed, 106 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > > > index 619a42b5ef48..cc8ee1643167 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > > > @@ -8,6 +8,112 @@
> > > > >  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
> > > > >  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> > > > >  
> > > > > +/ {
> > > > > +
> > > > > +	hdmi-connector {
> > > > > +		status = "disabled";
> > > > > +	};
> > > > > +
> > > > > +	panel_lvds: panel-lvds@0 {
> > > > > +		compatible = "panel-lvds";
> > > > 
> > > > Please describe the actual panel using compatible, etc. It's not that
> > > > this is some generic uknown LVDS panel.
> > > > 
> > > 
> > > I presume the mezzanine doesn't have a panel, so how do we provide the
> > > description of the mezzanine such that a developer can quickly get up to
> > > speed with their specific panel connected to it?
> > > 
> > > Do we leave this node disabled, just for reference, or do we specify a
> > > specific panel and then have the developer copy and adopt this to their
> > > panel?
> > > 
> > > The benefit of doing it like that is that we provide a complete example
> > > and something we can test. But at the same time, If I presume we might
> > > have users of the mezzanine without an attached LVDS panel?
> > > 
> > > > > +		data-mapping = "vesa-24";
> > > > > +		width-mm = <476>;
> > > > > +		height-mm = <268>;
> > > 
> > > The way this patch is written we certainly have some specific panel in
> > > mind...
> > 
> > It's even mentioned in the subject: BOE DV215FHM-R01. Having a proper
> > panel compatible is demanded by the panel-lvds bindings.
> > 
> 
> I missed that mention. But that implies then that this isn't "the
> industrial mezzanine", but "the industrial mezznine with a boe
> DV215FHM-R01 connected".
> 
> Are you saying that this is the way you'd prefer that we handle the
> mezzanines with capabilities for extension?

Some time ago, around APQ8064 boards there was a discussion of using
EDID to identify LVDS panels (in a manner similar to panel-edp).

Does industrial mezzanine provide EDID support for the panel?

-- 
With best wishes
Dmitry

