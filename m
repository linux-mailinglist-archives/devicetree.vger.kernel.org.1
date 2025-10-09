Return-Path: <devicetree+bounces-225067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D54DEBCA273
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 59D4534C47B
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E2622128A;
	Thu,  9 Oct 2025 16:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cqci1QN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504631E51EE
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760026995; cv=none; b=ek9DFh+Z55gJ4hg2FWqwhw20LQSh7XQu8fKnAD+91vYWjwvkZ5oErX4YPnzRJeCvCZEQk9l+ZaBKQo+UfXSLg4MhdxxTM6F6fU60SgwL+HrVcfPeWqMfjIFr0Cgrqr7/UM2aVGHGceGmkn7V2LWwhurLJDsiElmaKS+usoLB/Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760026995; c=relaxed/simple;
	bh=E0WUp+SFGkom1xfm7TjoArjAQgZAB0HlkcaNu/zLrW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CB8cYg0xsqnpE/VkO9FvBid8IWKxziDBlGs3MMbiFVeoE3ZAWwYvRHAag4bltlyO2Hs8AzRk2baPz0K7lKfaHFNPGBA0S99tI7k2Hq7mi2BnWr6MwqgibGHHwByBg6Y+4nu0NfGZ3aywOPY5w3sfMCVUDH32ust+NvpOYHzIaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cqci1QN9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EWcuJ012775
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 16:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bt39X8dW+ZDv9jSNO3RMlOzt
	N0nkdVf4IKuaB0k3nl4=; b=Cqci1QN97/teVcqE1BVo4WyOolpPKOXmhP86rTTe
	8ablEGLhj9fFsU9s985Tl1Z1dMi/kpDskgXb9j1AyPCJWvua/8YGu0f1PFl9aByj
	5/EkUJlKgKzkpjvV7gAcXUmxIItNXXBGbGWz9fz7pbC4RDIGLjbnJmIziaUIajfn
	XsPMG4FSEtXP2iJivh+TkgEihFQMzuyJJkjTRjWqs0f52DIhZhBsSF5oPlpzquCU
	ZjG5/RkpmodNzNLNcEuPtiYDjZYihWa+RieBSkyTxkBSjWQ+Z2JR7/LEEZA9lcV+
	xKm54IxR9QyJ3mLxjWBSX2xuc7ciZ6ql00hGMK3dNtdujQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kkkhc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 16:23:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d9ec6e592bso31334341cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760026991; x=1760631791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bt39X8dW+ZDv9jSNO3RMlOztN0nkdVf4IKuaB0k3nl4=;
        b=e9FDa1jokhTCKSOLhKe9mhhyhLA/aBiWQapvJmYfT4VcEiezh6RRicCDanz2wH8mH8
         aHNOA+6KQkUxmyVvg7SMlKBR578nfEBekTn0U2SDKIImTVtZVbss4f3JwhBIo4YyyUcr
         /cAMiKGygqrrt7NZijsm59Ybr1DQZZ2zmCoIHZm6zfcjXUcBL34HQurAJobJRz/5alZJ
         +ThdtyIZybsjCZ+y/T8PrYWKKheBO0+6T0dckB8g6H1c7bPYjPFd/0BH6cI5H8I5YNNR
         9Fa1a5dYRJ2y22s4AkLmXe1/1y9T5lC+h75MG7a8UMyitNtjU2BvRm+uC2K+LZpt6wul
         9i5Q==
X-Forwarded-Encrypted: i=1; AJvYcCU5K7YdL5IjZJ9IJMQd6Fg9uRhk6+Pe6GfqRsDwIitWZoD28F/o6q6arCQSzWw8YaPfHTC+OXfPjoWT@vger.kernel.org
X-Gm-Message-State: AOJu0YyGx/rdpC1CvDDXV26nZaQpbdUEnHY9Bduslp1GRAqgLdPEufUg
	2XtHX9m7splQspPzfltdERVtVgpZvoCAX/+hpRDsroW8onYMCKyJHbs9AIQJJKfHZlTUJKC3vW2
	FGF47WjPcS/yw0RZyBK9JVIyU5+JZ7aNebdtUyB5DP9vxOjhSMS7RrFTtcRJ7Z0Cl
X-Gm-Gg: ASbGncv8dDq/4/P0PboyPzQinNktByk+s/+cYPzj/jxS9250YL8+CIssra4IIN1Qr0e
	tK0/YLVnnftkbZ2M9d5fYfKF+kYrh0YnAqIMdxDzRmyPeUDy2sXDWGRxMWRIbPw09myui7TCiLU
	bxqjG0Hi1f8LAWUVso5zNUN8eFWOsICZz3GvG25VgjthAlcVUyw3IaGf2AIVnENJ6foG93n4Bpn
	K0sqcHRd+lf/7d4AYny363O0gXdHWYxBS457LaE4stYY0rdzKLEEw1edFM4huSYVwQYURZL863V
	gK329Fc+iJ8DEO7Tm6oUgo7AR+3UmBkYYgcFCmNDJaBmniHMWAlALJUQuiuWtbERL8eenYTopI+
	l6kjPo5rITpEeUI7zxh37ty1ZSx+XTcXXoSG9kQzEWwHBs4eikQkjMKgidA==
X-Received: by 2002:a05:622a:355:b0:4bd:f73d:eee3 with SMTP id d75a77b69052e-4e6ead54c1fmr111202781cf.39.1760026991175;
        Thu, 09 Oct 2025 09:23:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGg801ObE8F+R8kZBeMVN+M/a5YBBI9id+lFXKMYLvZEjycOY0KP+OvFKokNNP+wtFnRV298w==
X-Received: by 2002:a05:622a:355:b0:4bd:f73d:eee3 with SMTP id d75a77b69052e-4e6ead54c1fmr111202101cf.39.1760026990405;
        Thu, 09 Oct 2025 09:23:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac00a78sm1182099e87.19.2025.10.09.09.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:23:09 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:23:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
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
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] dt-bindings: panel: Add Samsung S6E3FC2X01 DDIC
 with panel
Message-ID: <ylnjckdtgfktz4x7tcgy5g5qebpppregubhjn23e6cx7s5w23b@7tq35tvwx2qi>
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-1-21eca1d5c289@ixit.cz>
 <7askbazrkbny5jlw6cpxcpjyw5nyiozmksoyj5b5momcc7w5hn@r3x6kddatf3u>
 <74893f76-1b7d-4cfb-ba7a-9fd64427762b@oss.qualcomm.com>
 <bmsxmwfdwx7wlmngaqpvz7c2nudcoukspkxgq6zqh2mdlolfxg@fsdbafotp5q2>
 <75011ead-8bd8-4939-ae7b-1c127eba8aa8@ixit.cz>
 <3mbngf2r3rvbn5fr4vxbk64ouvm3voo5o2r63vg3clyswnceoh@64r6ujb5qr65>
 <9018af52-1c81-4d2d-8717-44e5372dbffa@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9018af52-1c81-4d2d-8717-44e5372dbffa@ixit.cz>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e7e170 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=7einrZQClg3FUqyrEHMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: fB46l4oKaoq7IHfmoiCFM2TNBq8SG8V_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXwcbIJSeVwBRa
 JIfzeSawnHfIsq+DZsaMbLGwh5LS9Cu61khHhRwKciJNi7X2gZB5+EopkXafkpIbi8Ad2uZRKNW
 j77ppgTlj/zitPxgtUG6yQbp6pjXl4Jwj5Q3UZTJ8RsEPcjwxP3277cjVe32UZfBSVwLyKaTgdk
 e0YPk7Q2Zlb170TXVmI2pu9xx0CqNTO6kejmpVBTjfLOMHLMpFAdy+307S6HGIVl3BaEUqSKNSQ
 1kN0q2EhMA4Y7vud6jCrTGzI+aM1WPfsj4agOL83jUwiqDMDsMyEyIJhjqWcm/kmVxarj0vRijn
 jUcDFABs7VWVYAcwCuK1sqU7VsyYl2lbMopvYx5OI1QexBa0SRvjRWTGj4yucefZ0p2q0t9E21x
 Wfl1Y4jvgMKPgsiiYW2+xyKC1AJ9Cw==
X-Proofpoint-ORIG-GUID: fB46l4oKaoq7IHfmoiCFM2TNBq8SG8V_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 05:44:46PM +0200, David Heidelberg wrote:
> On 09/10/2025 16:26, Dmitry Baryshkov wrote:
> > On Thu, Oct 09, 2025 at 03:32:22PM +0200, David Heidelberg wrote:
> > > 
> > > 
> > > On 09/10/2025 15:21, Dmitry Baryshkov wrote:
> > > > On Thu, Oct 09, 2025 at 10:51:31AM +0200, Konrad Dybcio wrote:
> > > > > On 10/8/25 8:57 PM, Dmitry Baryshkov wrote:
> > > > > > On Wed, Oct 08, 2025 at 04:05:28PM +0200, David Heidelberg via B4 Relay wrote:
> > > > > > > From: David Heidelberg <david@ixit.cz>
> > > > > > > 
> > > > > > > Basic description for S6E3FC2X01 DDIC with attached panel AMS641RW.
> > > > > > > 
> > > > > > > Samsung AMS641RW is 6.41 inch, 1080x2340 pixels, 19.5:9 ratio panel
> > > > > > > 
> > > > > > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > > > > > ---
> > > > > > >    .../bindings/display/panel/samsung,s6e3fc2x01.yaml | 78 ++++++++++++++++++++++
> > > > > > >    MAINTAINERS                                        |  5 ++
> > > > > > >    2 files changed, 83 insertions(+)
> > > > > > > 
> > > > > > 
> > > > > > Please also describe, why it's not enough to use defined compatible,
> > > > > > samsung,s6e3fc2x01. Why do we need a separate schema and can't use the
> > > > > > panel-simple-dsi.yaml
> > > > > 
> > > > > panel-simple works for 'dumb' (perhaps a harsh word for 'made with
> > > > > just the in-spec DCS commands in mind') panels, but Samsungs are
> > > > > widely known to require a ton of vendor magic
> > > > 
> > > > The question is about the _schema_. I think it's fine to have a driver
> > > > for a panel covered by panel-simple-dsi.yaml.
> > > 
> > > see display/panel/samsung,amoled-mipi-dsi.yaml
> > > the OLED display don't fit well, but I wouldn't mind consolidating at some
> > > point, but since we know very little (no datasheets), it's hard to do for
> > > now. Maybe in the future when there will be more panels schemas, we can find
> > > a way to consolidate into one big?
> > 
> > I'm looking for a simple answer ATM: it doesn't fit
> > panel-simple-dsi.yaml because it needs foo bar baz, which is not a part
> > of that schema.
> 
> v3 will have:
> 
>     dt-bindings: panel: Add Samsung S6E3FC2X01 DDIC with panel
> 
>     Basic description for S6E3FC2X01 DDIC with attached panel AMS641RW.
> 
>     Samsung AMS641RW is 6.41 inch, 1080x2340 pixels, 19.5:9 ratio panel
> 
>     panel-simple-dsi cannot be used because it's limited to one
>     power-supply, while we use three.

Perfect, thank you. If the bindings for samsumg,s6e3fc2x01 are
incorrect, they should be dropped too.

> > > > > Perhaps the original change was made with an "oh it just works
> > > > > surely there's no drawbacks possible" attitude, as the panel
> > > > > was left initialized by the bootloader

-- 
With best wishes
Dmitry

