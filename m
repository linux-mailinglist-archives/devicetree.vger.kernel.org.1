Return-Path: <devicetree+bounces-220465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 389DBB96892
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 17:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E45F63AD6D7
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C641805E;
	Tue, 23 Sep 2025 15:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LigH6/vT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB49146588
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758640648; cv=none; b=Z9X6umREk5DUQgU44/daVIX9WcUqF1QJvpa8E/ufNWEua9qA1/zD6RwHcZ2aaynpDGP+mx3ulbijPf2NpPM8QEwlN8/w7xxfX+oH5nZz3CYbCOqOGctaJIoxEttJviSwYcbDDcLwZl/W89fq/2QG7U9I3ZCmQCwxK/ZpjtmBQ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758640648; c=relaxed/simple;
	bh=/7kee+I8j9/Lr7ysS2tbhFYpdtuo1tTppWFv+ttxnGQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PEiS0Gl2mjeq1yUwEywNljPY+4THJshor+6W6Qr7RJhmrQf09ZhkynFclKwm5nzXimxG1lpjVvu36gltVfCuc/442RaucoPNrcyTLQr12rio8OKAft3OGY1SEtjfw2hUG75oAJBrgEQXe34+JzuBJ0s6sWhrj4QZibg8BHGcrLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LigH6/vT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8H8YM007333
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zKMrwI1eQYz33WkyvRDWZnB2
	zzJf4oJ0W5w8S7iD9HI=; b=LigH6/vTaZEWPZ7Cf1S+hvgNRAcTbmd375676yYC
	emQK3bQsKjHVyhIALwXK0eRZpQPFWwogCewflIGZ0UCRTNXrJ6mf6OHIlLrSZ4UE
	1kWhN/TYLANbhwKC2iGv2gJ7fhzxI/HTtQZVBEjCapM43v3Sxlk3PoS/vEHRz3Wh
	/oC6rijCCWYF3XTq7jDDqSOQQV5KTqOn3usGSKz2GF63mYb4e7kArSgMcVJrbDzm
	vlFXqSx77tkBpEJjp0hQJOGydOYzy0PeQ05bPnte8YbanpvZ3DmcPHYOK64F+Quh
	7U79C0ef7loOnqM9ZwkU/Q8ZrV7klxvWQAU196cmtU30/Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98h3p5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:17:25 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-79538b281cdso87578916d6.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758640645; x=1759245445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zKMrwI1eQYz33WkyvRDWZnB2zzJf4oJ0W5w8S7iD9HI=;
        b=FkUgmswxbhW2wl2o6gT18oezMThD8o7bgQzctXb5jowk2OxhkCJ4Gs690GsgcwoPt6
         RVCFR/tgqc/uyA/xE8X6IHnYqhZcH1ZMB+6cys9nFOW/al55db24GnF8jrppwn32pB/A
         Ypskc/uwHt+LhXq+Hif+ZOianoqIKS083o9oA1ker7pqX4EY2grrw9jKqndpUaYwauSS
         p3GdV3pSphS0S729PWuWjoxhq7p0VUTdvvqdkPb9d77quSMvqCLT/A+tjIMrSkIguUSZ
         z7p9VOnEXXjtDsTTxfxPEVF9W0PcdP6HsKa0Yyobzup2g0rmp57hdGnhqghNzeJS8C9Z
         tOmw==
X-Forwarded-Encrypted: i=1; AJvYcCUsLDBJbuIOytDysy4d5pbfyspGbHRp3dwULxtJE2g0a1xsVCVKvsJ7uWmTmpBH+1vHClM8ShOSgAQg@vger.kernel.org
X-Gm-Message-State: AOJu0YwX30qF7QZG4O3tRq8g7K6XDHO6A/ZOzFo+Z9nQEp8XHzTJFP1/
	0RaJZJAjN36nap9BR6l9v4S4nUCwa3kHI6r/c2fo2sAKQ9IxsQLrcaBQ/+K3N/chSN870jcmFLd
	joM/TIjNXUCQlwAz9AbS0j/T8xWwFJsBakzRAy2wP9UW35EMnW9kxkntVQYzu053J
X-Gm-Gg: ASbGncs5JDnuLMur1bo6V8x0SOwC3l3ubCwbD90tiJPqhgh2PtVAFSG5v9LCqQbM/IO
	g5TCMV+avMrsss+wq+gYrfI2CEbgAkXrTdTBEr4d9gsHAhBfQDC+UeTjsQqZGSzB8m49r4HSjGD
	RWxc6/HH8A8wrtqCu+FFiCAM3vxzN1swDERzlz7gZGEaphVaaNDoBNBFmtoXG6LIAAy5qevGZ/i
	vtCd7XFXE/oxnJKbmYFEoVoDd+j5SfrsQhfzkN5BKazFWXKy6g5no8ewk1ffLfNFVEgrmS3NA+/
	UxnJKiJWodUmQQNIshNVC3oxIhAJf8Q6ZJ3WCh9ckKQ1sEJ9P5mHloXt756zomwhnP3fpcn3BUk
	4jHAzlf08KjlfabATlB9ZMKcNHvJtdTmIw+uE+jByojlMEtyoDxqv
X-Received: by 2002:ad4:4eec:0:b0:70d:ba79:251e with SMTP id 6a1803df08f44-7e7a4cd6a23mr27205916d6.13.1758640644739;
        Tue, 23 Sep 2025 08:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbjx8nOdd4srh2DDvcouzuNx8y7t17u070QeQCvysOaVT8ihRfB3wbeiinjQMhJI8Wz0tAxg==
X-Received: by 2002:ad4:4eec:0:b0:70d:ba79:251e with SMTP id 6a1803df08f44-7e7a4cd6a23mr27205486d6.13.1758640644122;
        Tue, 23 Sep 2025 08:17:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a1e079e7sm36471931fa.13.2025.09.23.08.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 08:17:23 -0700 (PDT)
Date: Tue, 23 Sep 2025 18:17:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: qcom: rename dtsi files for sm6150,
 x1e80100 and qcs8300
Message-ID: <7o2n3wcjlb3ltbqndehfntqvsdpnn633pk4rlfq3h7fz2ygaus@na326qso5rs4>
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
 <DD075WC7A6KR.NJJA1Q4WAJUZ@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DD075WC7A6KR.NJJA1Q4WAJUZ@fairphone.com>
X-Proofpoint-GUID: AvXPznjH9lxHIFj7i4o3Knx96_XXWz3-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX00qMmXlobCil
 YdHgwQr2ltHfCJ7Aqe+D+JzGsoaRnvUtcGQ4bhwZUkJ6ta9IosVxOy0a8SJSD9LDPWxxekVqox8
 zTATevjhqyaWNjn/1Hd0oxalytRbaE9c87pTTVWFvb0ui64W/9PN91AujJB0deqDpTPQ26Ie71D
 gy8pGfFtnZjhBzDgO40BB/QRopYJnzq+Sgd27z9DjZvXuhBfbnBlreqH2o/e9HqXBu67qFm6mM9
 03nuWCxXEE35y63Qc6VgA0fRGwbHWDVMsAsVICSSJnd4WQqGKWz+nVw769B/6BYXoz4WzrMeP9/
 Qepmt8z+J4Qa52NqVDkI2nyyKvzIXz5fdrD2NjfCAO9teWad5IVjMjStrcIcy855kAdRhlpoy5z
 U1OET7cd
X-Proofpoint-ORIG-GUID: AvXPznjH9lxHIFj7i4o3Knx96_XXWz3-
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d2ba05 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-__yLQ3fiRWGdVT6V6QA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On Tue, Sep 23, 2025 at 03:00:19PM +0200, Luca Weiss wrote:
> On Tue Sep 23, 2025 at 1:01 PM CEST, Dmitry Baryshkov wrote:
> > Bjorn said to me that he disliked the conseqeuences of renaming
> > qcs615.dtsi to sm6150.dtsi. Let's increase entropy even more and rename
> > even more base DTSI files.
> >
> > Leaving jokes aside. It's not uncommon to see different names for the
> > same SoC (or almost same SoC, with no visible differences from the Linux
> > side). The platform now known as 'lemans' is a good example, because it
> > had been using SA8775P, QCS9100 and QCS9075 in different contexts for
> > slightly different modifications. QCS8300 / QCS8275 is another example.
> > All such names cause a lot of confusion when somebody tries to follow
> > the actual SoC used by the platform.
> >
> > For 'lemans' after a lot of trial, error, Naks and reviews we've settled
> > upon having 'lemans.dtsi', the core DT file for the platform and then
> > naming individual DT files following the marketing name for the platform
> > or for the SoC.
> >
> > Apply the same approach to several other platforms, renaming the base
> > DTSI and keeping the DT names as is.
> 
> If we're doing this already, sc7280 -> kodiak? That also covers sc7280,
> qc{m,s}6490 & 5430 and sm7325.

And few other platform names with multiple SoC names per platform.

> 
> Also, does this mean that milos-based Fairphone 6 the dtsi should be
> milos.dtsi while dts should be sm7635-fairphone-fp6? The latest patch
> series uses milos-fairphone-fp6.dts.

I'd leave this to Bjorn's discretion.

> 
> Regards
> Luca
> 
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> > Dmitry Baryshkov (3):
> >       arm64: dts: qcom: rename qcs8300 to monaco
> >       arm64: dts: qcom: rename x1e80100 to hamoa
> >       arm64: dts: qcom: rename sm6150 to talos
> >
> >  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi                        | 4 ++--
> >  arch/arm64/boot/dts/qcom/{x1e80100-pmics.dtsi => hamoa-pmics.dtsi} | 0
> >  arch/arm64/boot/dts/qcom/{x1e80100.dtsi => hamoa.dtsi}             | 0
> >  arch/arm64/boot/dts/qcom/monaco-evk.dts                            | 4 ++--
> >  arch/arm64/boot/dts/qcom/{qcs8300-pmics.dtsi => monaco-pmics.dtsi} | 0
> >  arch/arm64/boot/dts/qcom/{qcs8300.dtsi => monaco.dtsi}             | 0
> >  arch/arm64/boot/dts/qcom/qcs615-ride.dts                           | 2 +-
> >  arch/arm64/boot/dts/qcom/qcs8300-ride.dts                          | 4 ++--
> >  arch/arm64/boot/dts/qcom/{sm6150.dtsi => talos.dtsi}               | 0
> >  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi                  | 2 +-
> >  arch/arm64/boot/dts/qcom/x1-crd.dtsi                               | 2 +-
> >  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi                        | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                       | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi        | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts            | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts             | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                          | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts   | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts           | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts              | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts              | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts           | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi           | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                          | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts              | 2 +-
> >  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts          | 2 +-
> >  arch/arm64/boot/dts/qcom/x1p42100.dtsi                             | 4 ++--
> >  27 files changed, 34 insertions(+), 34 deletions(-)
> > ---
> > base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
> > change-id: 20250923-rename-dts-5d74d6132f40
> >
> > Best regards,
> 

-- 
With best wishes
Dmitry

