Return-Path: <devicetree+bounces-173473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 795ABAA87ED
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 18:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 744873B72A4
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B291A9B58;
	Sun,  4 May 2025 16:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjIO5Rsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A277156F45
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 16:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375403; cv=none; b=hE/WUZz6gSlz/cPtSakGacmeN0n4Lv1NFp0M81F6ZXaT2PEUcoOEWoNFxoaiMVPYnmsPCnWsz96ssqfUYNXTCtUU/AZ+5DX4pswZ6mBba280N6t2zlec9hMU0dHJtD12RnffVL8uqAoqBEq9xvnsbgIKU2GK1bd44Lm7u+oLWVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375403; c=relaxed/simple;
	bh=ub6T5r45aocaSqexuVP40keC8qi3fmqutKz9rgN/nE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTwm+NkSqbwrFidV4YkhmR77z6gL7E7EZ+Ve63AfXYmVcXjp0gnwm85CsfmkT9hlUGvelebZpFFfYQ+AriGIjIcfe9yLm8UkCcJ3aBPdnw+U7mSzsTX611v0kTnV/fR8miYd3FH5mnkE6E9XGK1GbmPN6Z1Ld3V4kmwvT9/AGVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjIO5Rsq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544FP2oN005976
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 16:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2EVC3je5HAhssIAnNfZ+XqOXLnIfrV/oZD5AQQ6xe/s=; b=jjIO5RsqjwOL8NcZ
	Qifcx92SBgVIeZQ9Nc4Pg+OJtmB3KHtixWVrzFuxZaztvsMUbkQ/GS+L6ATcygWS
	PYEgNHlYxtF1EcMtZZmS1rQ0GvxQ6yKUOAKsmSKqvZpXEjAwaGSgCP43qkU40OrF
	xORvhu2q9vZsoXxbpUqtC8HV7YkH3RkU0dawPX8ANytBXxaVbZpZL7/0NP8fnkRR
	LFAFhIzI3oElI+Ci8MBru8G/iCOOydwToIajdRl+I/Igiabr6clEnQdWYRp7kBJJ
	dyFmOjv0ldDhNfzX/xJ6NuRirda0kuANJIEKA7X28iD1BJpTc1+E3QnFoRO/nImK
	VfQCHw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dafg2722-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 16:16:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so499014685a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 09:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375398; x=1746980198;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EVC3je5HAhssIAnNfZ+XqOXLnIfrV/oZD5AQQ6xe/s=;
        b=eXxZPabcKsUtiG/H3Af1u+jA/Xg2QsH3RelQc8Qvjyed5OuuY3hHZgvTLxk2H1bLAJ
         qbjzZyqCCSEqfFNnCccfetXiS1lLD2ZSIWwFjdx6YJxIdypcbf8Mhn55Yzqru5WIsivk
         QIFAHg5RZSKnNr+1hl2opRMCUmd4PXCOOnhfbh5szLPF/mFrUjmzDaroMtCbuhVxOnTq
         +QK3+gDVsXbt2BETExf1toHovcc/I4Dc78NkdWLaDYKqlg7Gtgp6Jft/S9s3UFa7tTgF
         lAyV+MDr6iiU794OLFuxYkUTtXA8h80C2h3REuuqgoaqiRvBBvPxzgEYpIoB+HTt9jpp
         hXzg==
X-Forwarded-Encrypted: i=1; AJvYcCUQDiiQ465lvlukjnzUUxhAN9nHNuyuvb+d0qWNvgjgW30eVL3A69+EUKN82uJ9lURBb6rsUm9Zx2ks@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm77+g/rXWNcwlmjRKUGiUvr0iesRLoVPQMaal0iwZHZ8m1QH5
	mMyucEIrqc3OLWcZP1vPxaq42a2Dq0iVrVQX8iIc5Mhgb/zSrXXQbMDWMvWmaW9p6Fk+euGE/9d
	XKHpewfvZMhftXxjLQgOOWTL3m1d1aQilJN6W7VOl77Cp/rIjq/8F7ptMsYz1
X-Gm-Gg: ASbGncvfUjx++Tv7U1c3K2GHVeVge4tpdCq47/SImAldMMZJunTR4m9enlqwpCNcfal
	m/viGfLXUVWrsFqE57V9EBmra0pv/mbvp4kti4rnnEVGEPbt7sGJmGHarbTTSzmaX+rJWsgpARg
	ZT7SRQH6CGYyvrOYpG5FaLWqDqz1bMQ4/0+4pJ0AVz+3EtaMoImP9bBKM3lFzXodhL/++Lv8+pH
	YHwTLivX/r5PxelldEagwVUzp/D7CSh4y4NtBGUPbh+VfBAMrfzhMeiL8BGeLCBANOUkClNl15l
	u3GRHoBrScxvb95I5RliOu/B4qObKgGeuDosOhaFwVZptPdrakPh3uMepiN94B/ObjY27nlIXR4
	=
X-Received: by 2002:a05:620a:371e:b0:7c3:d5a4:3df3 with SMTP id af79cd13be357-7cae3aa64e3mr573861885a.34.1746375398512;
        Sun, 04 May 2025 09:16:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiT08Hu2FwqUiAAbt7TpcAAf+6cb8td1czl+K5aq9kRsZS87wnWvgBk2BX0BgUjYPWiwBvqg==
X-Received: by 2002:a05:620a:371e:b0:7c3:d5a4:3df3 with SMTP id af79cd13be357-7cae3aa64e3mr573858585a.34.1746375398104;
        Sun, 04 May 2025 09:16:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94edff7sm1299766e87.137.2025.05.04.09.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:16:37 -0700 (PDT)
Date: Sun, 4 May 2025 19:16:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Andy Yan <andyshrk@163.com>, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, hjc@rock-chips.com, mripard@kernel.org,
        neil.armstrong@linaro.org, knaerzche@gmail.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 0/7] Convert inno hdmi to drm bridge
Message-ID: <nco27hnwykffzgirhocskltrkcds32tefkix23nfknf3e5m3zd@mkrrbw6kogsi>
References: <20250422070455.432666-1-andyshrk@163.com>
 <9503607.rMLUfLXkoz@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9503607.rMLUfLXkoz@diego>
X-Proofpoint-GUID: fKacARUFEXTG_uTjSmnA0ID0odH66nw6
X-Proofpoint-ORIG-GUID: fKacARUFEXTG_uTjSmnA0ID0odH66nw6
X-Authority-Analysis: v=2.4 cv=atqyCTZV c=1 sm=1 tr=0 ts=681792e7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=dt9VzEwgFbYA:10 a=s8YR1HE3AAAA:8 a=iQVnW9HZ8WsgGSc_yxwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfX1wNAz3yVIHnl
 TweNXAWcwcPFiRh3PzBBgm+190B2hxZ4VsUnPMkRP5wP1d0VV5PpeuxV6iX8a9E6j/M14XMWn+J
 UfbOu4XLJ/zi6Ilm9wpadcRWFtzsfJTjYgp9yZT1zk0lTGTgXXVtzVUvpjipBXKrU3l4CmwWIed
 3idsg4hXMN/z065Vz6RJt/aTB1sSRf18IdsM3iMtqwXJ8n5Er9ZfA7QKJFgwxcntGxdZS/NOcvY
 Q+rM9Btc5adabTlPJX56IhnbJKvyGN1ZdwkIZJd3mDNpBvBBv4VOeSKsj3d18UCz1FQkRWvtomE
 uYjdC5RNtUpa06XZ1HWmeuQVODkH3szTZPAWEB9Ye6wTyFcApihxA+lxrhVQIioaQQ3Lxk+lAHk
 WefpCfTQHJIbuP5kJNFNKn1q1s0Z6G2nqmT0QU3aB8KulFNoOOPbT9A8Sq7KkKqc4yC+XetD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0 adultscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505040152

On Sat, May 03, 2025 at 04:42:04PM +0200, Heiko Stübner wrote:
> Am Dienstag, 22. April 2025, 09:04:39 Mitteleuropäische Sommerzeit schrieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > When preparing to convert the current inno hdmi driver into a
> > bridge driver, I found that there are several issues currently
> > existing with it:
> > 
> > 1. When the system starts up, the first time it reads the EDID, it
> >    will fail. This is because RK3036 HDMI DDC bus requires it's PHY's
> >    reference clock to be enabled first before normal DDC communication
> >    can be carried out.
> > 
> > 2. The signal is unstable. When running the glmark2 test on the screen,
> >    there is a small probability of seeing some screen flickering.
> >    This is because The HSYNC/VSYNC polarity of rk3036 HDMI are controlled
> >    by GRF. This part is missing in the current driver.
> > 
> > PATCH 1~6 are try to Fix Document in the dt-binding, then add the
> > missing part in driver and dts.
> > PATCH 7 converts the curren driver to drm bridge mode.
> 
> After resurrecting my rk3036-kylin which hasn't sucessfully booted in a
> while, I could veryify this series, so on a rk3036-kylin
> 
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> 
> 
> I'll probably apply patches 1-4 to drm-misc later today, as that solely
> touches the Rockchip (and only rk3036-)side and patches 5+6 to the
> rockchip tree.
> 
> Patch 7 should probably get some attention by people more familiar with
> drm-bridges, so I'll let that sit for a bit longer.

I will take a look later, but on the first glance it looks like there
are too many things going on in that patch, including some unnecessary
fnction movements and define movements, etc. I would kindly ask to split
the non-functional refactorings and the functional ones (splitting to a
library, etc).

> 
> 
> Thanks a lot for working on all this
> Heiko
> 
> 

-- 
With best wishes
Dmitry

