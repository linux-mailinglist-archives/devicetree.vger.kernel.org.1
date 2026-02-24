Return-Path: <devicetree+bounces-267802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJkeA7B1nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:56:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE55184FF6
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D63CA30013A9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDF8372B2D;
	Tue, 24 Feb 2026 09:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MKdnxV3y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XCDbdO8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDB536C0BC
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926954; cv=none; b=de+zdUFJ5wkvU+aN7/FXndR5Ust7+lqELeiCVBNQN3IL7zVafiNg7JpUpyZQlHFOcf3wBi6bfueC7dviJL+HzSc5ddfEWgHofobAdD7K/oXNRa6CLOe6HvInhRVub00FQcbBzQLzboHC6Mzf9OUkoRHT7ZVqHwZm55Ijo7IlNps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926954; c=relaxed/simple;
	bh=yt2fIk54oS0XsyIBun+HVIenhJOeRN6sclpfrO3q04I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tIXwYnGt2etMkYA7Ls/06aeq0e/5NP8boa5udT/SyTYGHow3j2U+eQleHUKmIg+Vvn+2CIPojvTMlZT0YaTeQgFFO+3z/xjKOEGKtiZxRYc1+pMtNFSmxC5h7N4ZmxHjpOxj55Ym1Y40mizG7UvXej1fy59QQqwmUgIldDTz1GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MKdnxV3y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XCDbdO8p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O9senD2727339
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:55:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NLB0qQPuzbACSQImKVEef+mg
	RNvirxc5Ksz+GvAVFv8=; b=MKdnxV3yzibPL80QEsKWXtKNa48g2J7/F29iuHMc
	718U9q+WCWn6PWPyu6uf8pD54aLMAQs0F7rIlgU5c99EbayoA8HG1LUL+HQ7B1NR
	GTgBYTv4kIV+jqYQ/hnk4Bh90PUw8D0HzuYEaQE+h1WsP0G1iFFHtKzexszyTZQO
	ecKnu5p5bSFqO4zlO8vc2He6LJgDbIRP0TKN1SGcEyssGXNGJhOoAeLWgklYBKD0
	2xtL6CxuIoAEfD2jd5b8lGCu7Viw3bAiw8cSj906S/YdJR76UeuQtBqcZbhJwujK
	Q26rErbHgnZRiD8BcrQJf6bNMjMoHeTsID9ZRMISGgqUNw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69k82u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:55:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb37db8b79so2842578385a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771926952; x=1772531752; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NLB0qQPuzbACSQImKVEef+mgRNvirxc5Ksz+GvAVFv8=;
        b=XCDbdO8pH4jNl0ww0EatDr+cmsDTYyylFJozT1+0cjFrCYt3CKo57T00ir7pcnn4Np
         99EOqwfUY4WhwDq903QQR+mC7foWOuUcodjTBmD3Sg+K6p6dM1BJOqgeG2Zu8HpvU7DQ
         hblZo+JU2HiWLzQ3bnR5rVOkU+/Qo7/Pj+L10QJdy71qTJKmWiCLYnKMEZN2QzKBIqoc
         lOrLYGaoQtH7K3Fv7iM0zFK3CJhYgz7gU/vTtma5/YrbxjvSle8riBj68RzH6hTukMyq
         mBt7jhba6MfzIdM9QphBy49RaW3TF0GaGhoemYmVa+bhsl2hGDBbCg5YMquOC87YnSeI
         46XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926952; x=1772531752;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLB0qQPuzbACSQImKVEef+mgRNvirxc5Ksz+GvAVFv8=;
        b=heBRWTFEBT3nzxTH+bgl88Yz8ii3dYCPZ5+AnW+FHK1pXrNfes2G0jR+4caKhx77O8
         l0lkd9+V3AWnLikoCV7chgDzUfVeWuQdXjJPB+NSp+X4kYAIji3P/T2VzMlEYX5BINtz
         THIxp1yVXKd1Uo0sLa7Qfo/gi8fmRKrNdUh63Zrto12QL2pVhgt+RCIMhisPfgXLsSas
         ymYw67vtO9xqWf8Rrw3U43vauBfr4CyEmtDZ9RH90+aEjDLYZWaNSPUTcEHcnFsRrFUO
         p+0khg/+8ngZDuSqGCG0vwmV7hFZATXY+ykAYSKh7G37leMKNEGsXWdUeUNywTP5qyBm
         9tLw==
X-Forwarded-Encrypted: i=1; AJvYcCV6wkNh1yGP+rhr2NR4MnNyzFoWb3wr9ooyfvT8s9KYzWknwCDZl6et4W2Ls036r8U2vmUvGfqH4xgG@vger.kernel.org
X-Gm-Message-State: AOJu0YyQBXVUp4q+HESbFhQncnvZe8rzlMWtGIjOHZ5PhIPNsxgW2iwB
	3JFY844rQmWw5FwR6hol5uo5H2XrNvfAemLkxbS/cmT37Fu9638yRZ0VGpGL3orDqETPUJNWnQ0
	xWwttOa+7c51kFumdgBEAdK/tSFwel+iZRaSEoMFg+Qrc53j8/12P755O9+Lbhdl1
X-Gm-Gg: AZuq6aLCb3ldxCO9bHkZc7/fNbG9+ZwqeRNhlU2zI/d4mZf68fNs3loM3F6lu8pLF0u
	YO+8z1HKisrSmbfI0w1l2BF7XKNBWYoXsDB5KSMGW4+L5Xji4gjBYqmg0DfuFP7pq63ld/8ktuD
	gJYeAFt/yvAqoLmOsMXsEPmZ1k1GzENV6evD8o8MzIv0Jh2pnknj4VlLQrxp9o5jD4IjnY1Ec/J
	Cd11F+bBsvDUVHKDMrYD71M46ZaSEw1/iODybjH0v9lom6S+3oqmRB29tY8mPxNPqs0qbtpQEaQ
	c0CA6gDWrHoh/lHmqpc6j82+13a3S0G+ENFxwWOrMfGxZrYDDhoZsmOyzT1SYvwGAmHyBnRwWIZ
	DJjQz3lLBHvB+SIW1b0qCT3e7Lu2ViRDb22HpAW688ie+eaUijc9vQIm0IG0tOfrvHEqrpffpW5
	5s5kU0YBMTIW8wyCdnNevBwJz8OW4JsrLOB5M=
X-Received: by 2002:a05:620a:1708:b0:8cb:3505:443c with SMTP id af79cd13be357-8cb8ca63f71mr1522350785a.44.1771926951638;
        Tue, 24 Feb 2026 01:55:51 -0800 (PST)
X-Received: by 2002:a05:620a:1708:b0:8cb:3505:443c with SMTP id af79cd13be357-8cb8ca63f71mr1522348085a.44.1771926951077;
        Tue, 24 Feb 2026 01:55:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b95csm2073554e87.16.2026.02.24.01.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:55:50 -0800 (PST)
Date: Tue, 24 Feb 2026 11:55:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yifei Zhan <yifei@zhan.science>
Cc: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/panel: Add Novatek/Tianma NT37700F panel
Message-ID: <u72thihdv7ct6twwmqz6744w7ls6ulhqqo2awwq2mmhkva4xzb@cbkowz6rwnj4>
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-4-mailingradian@gmail.com>
 <gpkuq7b6mae5ib2xvphmir66pb6ysexhhfqkorve5zewkj4ofc@ryccazsoxqm7>
 <DGGAL7I1KRM8.1DSZIKWRHLEPM@zhan.science>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DGGAL7I1KRM8.1DSZIKWRHLEPM@zhan.science>
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699d75a8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=NEAV23lmAAAA:8
 a=pGLkceISAAAA:8 a=X6Xd5_H3JNy0hcg6DaYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: zScT6cNjOk0XXLlaulc3m0u68t7fTqkK
X-Proofpoint-GUID: zScT6cNjOk0XXLlaulc3m0u68t7fTqkK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MiBTYWx0ZWRfX8q/p6+n10eFs
 RIg+YButG4IlM2xHVqCM+8hsceCla+E7LSFz6Ngo/8yzY3PHk8JJ6TdH0vxcO1tnV6RyShm7cuy
 bV+8XJh0AxR3NPr7TALhS7XDy1CoWpMXVndjzK2Ii+wdqYq2SoJoDJA/ZnJ6c5SSFar15Hrq3I/
 vzEtJJk4F/P3JRuiglSoGk04HRBw4bxNVe2c3BOYnF3a9qVkocIrBvuYSskHSl9Z4MjRIL8M4Hd
 pdlr2oX6UxjFpSm7PvVQkR/wyaErAqAtn8F67mLK9uUgMNuObumq1slEvc3+eCvao0CiSDIP85p
 LjUPMQE1OSHyBUmOfZ+WvnLWIDVPBp6Mtx0Xbl0mBS2Ej/lL6TAaglT81fT+kVWK8Ba0qXjpjZj
 cnFMW7K5R0KGekuUEWD0Fo90sknzIrNPwfPCzegLnf7dQsaUVbzRRW6+Qj/hiCCUNFEv9In/kL/
 YglfOqkdhzs92hNMtsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267802-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FE55184FF6
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 09:51:57AM +0000, Yifei Zhan wrote:
> On Fri Feb 13, 2026 at 6:07 PM UTC, Dmitry Baryshkov wrote:
> > On Mon, Feb 09, 2026 at 09:32:57PM -0500, Richard Acayan wrote:
> >> Some Pixel 3a XL devices have a Tianma panel. Add support for it, with
> >> the aid of linux-mdss-dsi-panel-driver-generator.
> >> 
> >> Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
> >> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> >> ---
> >>  drivers/gpu/drm/panel/Kconfig                 |   9 +
> >>  drivers/gpu/drm/panel/Makefile                |   1 +
> >>  .../gpu/drm/panel/panel-novatek-nt37700f.c    | 294 ++++++++++++++++++
> >>  3 files changed, 304 insertions(+)
> >>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c
> 
> <--cut-->
> 
> >> 
> >> +// TODO: Check if /sys/class/backlight/.../actual_brightness actually returns
> >> +// correct values. If not, remove this function.
> >
> > Any chance of checking it?
> 
> 
> I tested this with my Pixel3A XL with tianma panel, it worked correctly.
> /sys/class/backlight/.../actual_brightness returns same value
> as /sys/class/backlight/.../brightness and I'm able to change brightness
> level.
>                                                                                                                                                                                                                      

Then TODO needs to be dropped.

> Tested-by: Yifei Zhan <yifei@zhan.science>  
> >

-- 
With best wishes
Dmitry

