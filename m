Return-Path: <devicetree+bounces-220316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ABEB94202
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 05:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F9E57A1EF5
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73819264602;
	Tue, 23 Sep 2025 03:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GrcfXbjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4E925C6F9
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758598831; cv=none; b=l2cWiOJAyBNp7/ethU8asCIv0hkpgpPwPi9KHXXwToPkr31XGOqQqh87m9Zhr0pR67KJaf7qopJJmGd86SQNTuLDwp7xxiSXR3XctmVKFpwjnXJbpZxakZTsDiBq50gY+bIBYJ3Bg2Yr+5J8v2cx1vhJ+PrvEde/llLI8JroopU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758598831; c=relaxed/simple;
	bh=RIFtvGLBGwCMhWoFPhqwXhmEvVfxHYS/e72rWoa6NKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iKfcDgKZlOCnRz6CrJtzUcuNHZRZTeUe2RQ6rPF7J97C0+aGyW07EBbOChPihXxGwHb4v3W6kYVk9dJWOsNI4trYb16VnCZ8gDb6TbJ61FWLkV5mx5zWsHtMh7JJ7tYaK+2nQC26XjqVk1MEBk/Y2nun5LBV6EsOUnxZhd8X4hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GrcfXbjc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N2KjOY000727
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=44R9e51x+lVSRbLCMDK2omE3
	gm86owMK321JGxNDCZ4=; b=GrcfXbjcft+KDX5rOioBeyIiyuuqRWRb22/4wGGj
	9IDth+Cuqg0IJXK2U9RuJ7WYQipxD1hU9fTwsGjfS/tti1aLTPCLMyRrZpElRf1a
	0gbTgp0bPdnKDcNALDm1Zz4WOT0/1cSx9GRnWtnf8kFxC82JuGqqOB871am5RqoE
	XMJc+zSyoyZOsRuVAhaCJ5HXNSaKJ/706XMvy9ELY88VmQ37lGBtZ+//2fJOWP61
	pnMX+3oFXvWPQnzp/M7qwHAEQOG5uygeAzqloJ54MJpbMxm2Xbyuu0enJSkfxHko
	eIaN591wcQKQrBxCD1hpsnK9WxOY/XjK5krMQVFB9RM+xw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdr60j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:40:29 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7e90f268f62so2762336d6.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758598828; x=1759203628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44R9e51x+lVSRbLCMDK2omE3gm86owMK321JGxNDCZ4=;
        b=QDUzgpXCkeWc7C055VKGceygx3g6U64OZPH0bF0Q/ta0VDXsZ3yf1wcCNTJ4KwNBvS
         9XlYA74ORVt0amAqUz/RnZo7nTbBrW4QiGHS0YbrsIL0sEsvs78+Bg809kic7Kabis3D
         mxvEXW4Hi40KWbypYF0P58CUzVd2Mze4YlUfp5Pp35ggr/GSoYqnwmH0qUTR7SrUSfu5
         yg5CnRRFoUSnP5nou4V32+cxMX8zd/fonlIJbThOQ5kxR1jUTYyoKLiekEa9XxG/+k4Z
         BDdh0tFbwZRzbDj4w2KRamXrAJ4k2O3josq3JEsYrUUpCaOmypW1C2X3KIAI4/bhx0U+
         V1rg==
X-Forwarded-Encrypted: i=1; AJvYcCXYvlcTnksitBWuasvdhA9OFXRH/maRyE13+0TyrZSC0jUYG/+6U4nfF9tFa66sQ2UN0mXIk6wxzCLr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy47TbX7EFOhVYKfbW0y92xqr5jtcL2dnLthUu8apvRfi8zExAJ
	hqCuRZIvINjjY4CO7AYp6F49um2tcSv53sGB2RTZUZDs/5H+epjXGwHJ8gptBWcPVc98ch/6CnF
	81MuKsh4gIbAZV8L9Xl6b0HQIZiJch/J8ktzwBy+8XmC1X15rSFHG7r1JW7OV1DJu
X-Gm-Gg: ASbGncvAgnbjjP0fs72a4hdKleGbi077DbKmAlUVPrf3M+3QZbtz5G+RKXUvsqKyXWq
	rRxawrqJLcFtdj3bLThw/oX/7v1VrqWuh4UA9wzRfsp4+4voLiBn0e88hNOjkwkej5ZNPWFE7uN
	TO39Gwd06sgzsVSxCMicS6xrkySC5GyWhHkk4HlyaPRJxlF02sB76sfqP847wg1nYptInInP2Ov
	/TP91YeDxeKP1Q9lOKwNwEjAcygjWl9ID2BY0AabX+qivLL2PCR4bo/D+FN3G5JeNGmgAg+ogOK
	i4LS5tlhsAxpwYIfwXzpSqkNWg0GEL3ugs6DnEoZTFRfMVbWUFhhoU9J0vmERfRv2Wx/Yzax0zs
	WW7M4ZSoCdhFVc+AFpsIZ6vqjjYR10BOAqOBGjyieZdtdilHzb8eP
X-Received: by 2002:ad4:4eeb:0:b0:765:619f:6412 with SMTP id 6a1803df08f44-7e71b143e45mr16528036d6.63.1758598827658;
        Mon, 22 Sep 2025 20:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGe/bIW5msqYyQoTxSQBIOixG0XTzAYGMxafEVRCzlhMmww2jUk1Mmf5rK6JXSKfsef5miSoQ==
X-Received: by 2002:ad4:4eeb:0:b0:765:619f:6412 with SMTP id 6a1803df08f44-7e71b143e45mr16527656d6.63.1758598826878;
        Mon, 22 Sep 2025 20:40:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b78577636sm2241946e87.80.2025.09.22.20.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:40:26 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:40:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Message-ID: <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: gXTXicPIRNUfDbChrt2aInwEgCJhBG5g
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d216ad cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=38CvGR1NfgmP05XK24QA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: gXTXicPIRNUfDbChrt2aInwEgCJhBG5g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX5VO1pt7KXyjV
 ixCEP/YH9PwHIdEtXQ3GwxkT31DzBvQ+VdrdVyAurNYxLjedwpIlEIOGWt3hsy/7+NMk/n7jXjr
 Yx1wu3TuTEsJxPzSgc/mewZL7Aq2ca0BJRAhgFhic+cj2EIiUeHHahxasFwOzY1rvXzxQNY/E5q
 HQsnZMY+kgPYFdAawBk5oWXaYX58Bx0f4puOYhC/1l4aZWEREG47cMv4Bk1GuHxl5PEqjVxRWYX
 zNNeaVuH92bzlTfc+aduAax2v7mb653SBuyZir9NsaCDR+idvM0KpWO7/nVMJWQ0U1oSJOCyiwH
 qOGbI/nHjC5APIse+x2wWNlMZNQ4GP+aEl1Vl3r1ZktXBSk+Xb5ThjjDGso/R7iSqco38tJiUM6
 9gRDYQAb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
> > > The Glymur USB subsystem contains a multiport controller, which utilizes
> > > two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
> > >   1 file changed, 6 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > index a1b55168e050..772a727a5462 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > @@ -16,6 +16,7 @@ description:
> > >   properties:
> > >     compatible:
> > >       enum:
> > > +      - qcom,glymur-qmp-usb3-uni-phy
> > >         - qcom,ipq5424-qmp-usb3-phy
> > >         - qcom,ipq6018-qmp-usb3-phy
> > >         - qcom,ipq8074-qmp-usb3-phy
> > > @@ -62,6 +63,8 @@ properties:
> > >     vdda-pll-supply: true
> > > +  refgen-supply: true
> > 
> > You've added it, but it's not referenced as required. Why is it so?
> > 
> 
> Hi Dmitry,
> 
> The refgen clock isn't always required on each and every platform unlike the
> .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only really
> depends on how the refclk/CXO network is built for that particular chipset.
> The refgen ensures that we're properly voting for the supply that is
> powering our CXO buffer.

So, it should be marked as required for those SoCs that use it and set
to false for the SoCs that don't.

> 
> > > +
> > >     "#clock-cells":
> > >       const: 0
> > > @@ -139,6 +142,7 @@ allOf:
> > >           compatible:
> > >             contains:
> > >               enum:
> > > +              - qcom,glymur-qmp-usb3-uni-phy
> > >                 - qcom,sdm845-qmp-usb3-uni-phy
> > >       then:
> > >         properties:
> > > @@ -147,7 +151,7 @@ allOf:
> > >           clock-names:
> > >             items:
> > >               - const: aux
> > > -            - const: cfg_ahb
> > > +            - enum: [cfg_ahb, clkref]
> > 
> > Why is it being placed here? Please comment in the commit message.
> > 
> 
> Main reason if to avoid having to define another IF/THEN block, but I can do
> that as well if using enum here is not preferred.

Is it some new clock that hasn't been used on the previous platforms? Is
it actually supplying the PHY rather than the controller (note the
CLKREF clocks on SM8550 / SM8650.

> 
> Thanks
> Wesley Cheng
> 
> > >               - const: ref
> > >               - const: com_aux
> > >               - const: pipe
> > > @@ -157,6 +161,7 @@ allOf:
> > >           compatible:
> > >             contains:
> > >               enum:
> > > +              - qcom,glymur-qmp-usb3-uni-phy
> > >                 - qcom,sa8775p-qmp-usb3-uni-phy
> > >                 - qcom,sc8180x-qmp-usb3-uni-phy
> > >                 - qcom,sc8280xp-qmp-usb3-uni-phy
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

