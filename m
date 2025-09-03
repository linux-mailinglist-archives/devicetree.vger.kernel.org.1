Return-Path: <devicetree+bounces-212309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 013D3B42573
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D3327B412F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84705258CF2;
	Wed,  3 Sep 2025 15:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dSH+Gm4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8945243371
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756913126; cv=none; b=DezkoKwgP2ewk80hAgwZbKiLgwLx5n58F6Uc7U5yHAmLB48px7ev++xnlkAIg9+jAUQAwj1RKlWOa/PUBCJPTYJsBItvrB1xlbV5sEkFP3W15poF33lsmDvBLiFORmrhJEfzOZgipg2z/46fAhiAAz1BMLKJd8ysHMxzr7QMETo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756913126; c=relaxed/simple;
	bh=+YkVF9ra63z3wMgiI/TfUqIfihU7tBSzz2QwS/q8+PU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=icpvDkdN3E9/GeeRcBaiVX/kRHYC72TVyYt+ctKjaDNKZ1Bi9r4RIBoCA5etFKIIEN/GRPV+p4CyNVhJ5gdxm5ypn2MYb+E6yYz1r+4bibZmQ69cGyUpT09g1cSeNG9XNH94/So6e3nh9gJR/ThowICm27VOFa913UBdql2GqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dSH+Gm4Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwpHX007654
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:25:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IzstwaAk/9gASzk67aMPoDLF
	wx1pPBoDPB8FIPR+FXc=; b=dSH+Gm4Y8lZ+abblwn5oiEtwLhMymGrVbiwpJt4G
	v2B1G5YfHBhcHX+Y+p5PawEKefsDIBm3rM5jc3SXoc0dObfIMHOWLM7Wd5yISKwB
	44SdTKgzXbQCZuajuUYV+t7fDneQ8vn9Fu4TsjjZ/RCG0eScgwNVCDqElThXTNQz
	nu1HBhHjcbuNE74uFcCfXNNEcuXkNVHgVdyAqA3PnD4FGSOmHIUS/8WxcXVBaPs0
	b9G5kujl0uVlyKadFNt3E2XrIvT+Ur2w+buORX61Xzqkc67rpRdfwguB8IumTl4z
	hrQiLuBSVGWSCyElf0SmC/YuDIiQk8Hcqv9M+R2RSstR3Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy82m1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:25:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b29cdc7417so692931cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756913121; x=1757517921;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IzstwaAk/9gASzk67aMPoDLFwx1pPBoDPB8FIPR+FXc=;
        b=gxBirXAnQrlepG/Jqz+3uPNUJv9Y4DchjufSglK3Q5IPQ3n74DAMKtaZd2Rux2RVM6
         jv2QnudlOR5Ig8NLFpoo2xL1O/7GDijXw9JreguyQ8hrgowjy0MAOfzUVBEkRxFtYA3N
         Y2epcqvOVUyQgko/qzQ9+NcYrPklmbFzanfwJ/TB8SC1M2W9+UT0d9u5X9H8ZnUPfeIB
         wmSMNz1x/d97DLW3hUwbYF1nYUTqmVH2sspIEDh5Hen/KlgtLxn2OV59ksYivQUFZyfC
         GRdO+Fygn9GXbxZmAmsm2KRGl1QU+AeUTErvGrpY0zgIitD0uUq6FLwPyYmPKtPNgo5O
         LEFg==
X-Forwarded-Encrypted: i=1; AJvYcCUI/RsTJHruSXtU+en/m4q0rpFbX2k764T42UEyMAoUpTb7IC4ROx9VrtfA2OUPJH/qADZEnefwN2Du@vger.kernel.org
X-Gm-Message-State: AOJu0YydjQtja8E/1bI4Dr2qs4ab8+UQpGJSg/yklxkujmFisLrt2FBD
	/nYRuP6Sxrtg3rc5qm13QM+y/ztfoaR4GzjcITLYRqgReVRClcjLXWCwDc4K5lb1JVpC9E8gKI6
	Hfzhw9x9IGInaohE9wLm5bdycNZv1iNEm29miBmBFk5iYA8PQLkzF7GfTB2iefy8S
X-Gm-Gg: ASbGnctkwdwSy87ctIYcnjfqa9SpYTWvf6tw9m/DuLEUuY6Egxxm5T4FTame1mAsChe
	N4qHTZ5DPrh5OgFfrlUh5zfNybtAVWzgkdsIDC8IecBIthCt7w2uSoojwVFmLZYj+2QZs6gEpwH
	70F+zWc9wERPLYe++bCAAu58BHtgvBBLWYmXSs5m2bJgAKz6NHx9wf4wfikkwogOPU8W0j/Aze7
	yXPY1V+dYJ5XH+UhiR7nQhyJZvACx0nJY0AaV/rC4IE7C3UeSrGtK0Xfd3Ug8vfmjI3MKrvc+tn
	pm4TnMxngmofQGn2bKmxg42bWOMKPTzswJoF6sxPuob8dAEZ7QacNjiR3bpGcE3CN38/QI61r+V
	n5gQeO1hlo6di+QQAgbSSEoc4JeUHg+q4nr2Bf6XwTx8O25WnoUSg
X-Received: by 2002:a05:622a:997:b0:4b3:735:c36a with SMTP id d75a77b69052e-4b31dcd00c5mr189313671cf.75.1756913120704;
        Wed, 03 Sep 2025 08:25:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsXzIAz12Lk6+O5Zx3h1C4NcdtKzpJmeWYRdgvuT0mpQkWtK7EWAI1sP87I4FOMC3nC+7qlA==
X-Received: by 2002:a05:622a:997:b0:4b3:735:c36a with SMTP id d75a77b69052e-4b31dcd00c5mr189310761cf.75.1756913119675;
        Wed, 03 Sep 2025 08:25:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5e530sm589009e87.10.2025.09.03.08.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:25:18 -0700 (PDT)
Date: Wed, 3 Sep 2025 18:25:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: drm/bridge: ti-tmds181: Add TI
 TMDS181 and SN65DP159 bindings
Message-ID: <37czaypq2newm3hn6nfuy5ndkibvaqf53nx6zvv3mhddh4qku5@psqqxbu7bycf>
References: <20250901142958.843678-1-mike.looijmans@topic.nl>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.edc18686-244f-441e-a6ac-0b62492b96c8@emailsignatures365.codetwo.com>
 <20250901142958.843678-2-mike.looijmans@topic.nl>
 <pml7rfbkerzkx5df26x7kxn3tk2o7oqrkqnx26tzikeg53djn5@islb4hlm4ks7>
 <aa80b3c4-01b5-4d4c-9fe0-523cdb895eb3@topic.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa80b3c4-01b5-4d4c-9fe0-523cdb895eb3@topic.nl>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b85de1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=S_xtky-yvbmAgHGpMXIA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: hjEmtBSBANfnls9KzyQ9SkycEf5TXl9O
X-Proofpoint-ORIG-GUID: hjEmtBSBANfnls9KzyQ9SkycEf5TXl9O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX/KISRXzW9L+1
 638kZPlGZCTWqT5lVf7FtuRwPWOtmAP3juKLaYQksu1LjfQG3WbAK3zmITqCeWL6P8Ud6W+om68
 xhmsuUqkYFN4DYb9QRtNz5HUldB4FNOB1Hycf6+Adti4UIkNMybEHybNuR8x9e8C0LSVsJonFgS
 ccMZ/hWdthPG5c9X4ROASXMDlwQMo7+kXTEQaulcKAkDkxZzjiYhss5fIldeuPNfB2jB60YqIal
 mN1VWhPuy70BcpX8HBTEOWCyOwHBEMgGY0STBG/vz7no4eE2jvNJHq5m+hM1ld7bbi7+9H/B2/o
 rgNy51hZKByevPpe2ooVT7uGO1ioIziz4p0esocjbL+uUZrl+e7VDhHX1sHdHNW47NyEkh/uGaI
 LO4Ov59H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On Wed, Sep 03, 2025 at 08:17:33AM +0200, Mike Looijmans wrote:
> On 02-09-2025 19:29, Maxime Ripard wrote:
> > On Mon, Sep 01, 2025 at 04:29:01PM +0200, Mike Looijmans wrote:
> > > +  ti,retimer-threshold-hz:
> > > +    minimum: 25000000
> > > +    maximum: 600000000
> > > +    default: 200000000
> > > +    description:
> > > +      Cross-over point. Up until this pixel clock frequency
> > > +      the chip remains in the low-power redriver mode. Above
> > > +      the threshold the chip should operate in retimer mode.
> > Why should anyone want to tune this at the firmware level?
> 
> It's a board property. You'd set this based on the hardware you've soldered
> on. If your clock and serdes are good quality, there's no need for the chip
> to be in retimer mode (it will consume more power and actually make the
> signal worse). At higher speeds, that situation may change, hence the need
> for a way to describe that. The chip has a similar function built in, but
> with only 2 choices of cross-over point.
> 
> To tune these parameters (retimer, equalizer), you'll probably have to take
> your equipment to a test facility (like we did). It's not something that
> end-users would want to tune themselves.
> 
> Most of these settings can also be done using pin strapping. I guess it'd be
> helpful if I added that to the description.
> 
> 
> > > +  ti,dvi-mode:
> > > +    type: boolean
> > > +    description: Makes the DP159 chip operate in DVI mode.
> > Ditto. Both describe policy, not hardware.
> 
> I would set this flag if I've soldered on a DVI connector instead of a HDMI
> one. I'd consider that hardware.

Do you need to set this if you have DVI monitor attached to the HDMI
connector via the passive cable?

As for the connector type, you can check it in the .atomic_enable by
checking drm_connector::connector_type.

-- 
With best wishes
Dmitry

