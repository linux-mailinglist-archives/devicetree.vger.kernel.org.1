Return-Path: <devicetree+bounces-217392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7346B577B8
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06EA0189FE85
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC322FD7A0;
	Mon, 15 Sep 2025 11:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b8lPHVRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235481FA178
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934699; cv=none; b=BhDcBOWHdjsN8/+x5SOMqkKp4Z7QnPqo5h3Ve8r7YDL5DPBW3dEKhHM1df1Ptwm3T77jEiFkMkXtDZYIdPOJdKu8JliRa2WzRNoDKhhn7oMzVz3LA+Pk8G371EGy8L/juizJFb22ukUKgrRtuRog3Oq9wNcYj030u+oy+n5YUAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934699; c=relaxed/simple;
	bh=QwQxSAAeBlvaUMXjHQi1tPtJVO6+Xzp8Xz4RKXXn9R4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RYjsdUpHO+XA3spFsq5Lvz8DiDoY2IOxLKQvhq2QTj42TkG2hE9aEL+xLUQIDerHCM0UbUuyi/zgJxK+S+bWYhEZlO8zV7LbA/WDWS8fqtCNlQZfHSaf+kfVfUekcl3ojXa37n3yrt/6791JcoZwTbUBDloqNDKNJO9/9w+kjww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b8lPHVRl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fivs008264
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:11:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XdB3ee82a2VvLPTM8C2BPhUv
	8QQP4Ys9XkdbXnW+eOQ=; b=b8lPHVRlg58D7grObMkFW2yhxHYUpSReSO//bFgt
	K1aPjRR7J4L3lRfXgQNWz4WNwK2QpCBReGkAlR1ZXvXlHCTLmsbHvxe9dFU3fVhU
	ewylHzFtHiW8t05WXwmLq4c/67lZUZXTWjs4CcgC3fTJ9Ng6j3zT2D2QVycPLtTd
	M1zAUE3tFEXc/hW0xkLgZVnqCUEHYTUvZlpaAGUY90kF9eVRD75BThmSVkptX5YM
	HSu3MpXvUo4tN9LxZlaMhnIKe8GhtFSU3zf8QosHclgN8eJeP5yFBCsJIVXZ8TI+
	f6SBjAJq1eVDMG5aJ+JkxKeiF7Ahl/+r6LolX9UoLgsP6w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpuhk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:11:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f31ef7dfso95634361cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:11:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934695; x=1758539495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdB3ee82a2VvLPTM8C2BPhUv8QQP4Ys9XkdbXnW+eOQ=;
        b=wT+Qm4NYyBIjFY6MUG0AJYbeFXtI1b6LvAk18h0V/LvRopvYNwAlbxDeZdr3bWeWyY
         z1OthH+ZbPF2a2QjgbSsNwuoT0TkkRCjU+zmKuYP9HeH8C49owYYn06bM5gcBYA2e7An
         1MmPfQh+SeIVGDJ8yrW908YAHA/RBBneGF/KZSpzo8IR3KNs9d7/nqP5g0YumAWrD1M0
         dOh9neKcXMhQgmSZAe6w2raIkEISlA8SLqrwu7xA7pugP3bzao48CGmcWKkCy3AEqkv2
         Xza0ShO7JpHHkE2EmRWWBMrN5+Vt5uOxUWemWKb12wg1kq28aWYIH17jSn1fmOkurxiP
         f81w==
X-Forwarded-Encrypted: i=1; AJvYcCXdfk4FzVco0lo3pPisAohIWcH1G+/6LGfgNXKqVo1qPgA5heEOLrRkCe5XYfYCylgn19TmfiqoSkf8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt71DVLvV1p4E3AOQ3Dr/U5BdtaDG6/zd0/9j7l2GMNLeHwe0q
	Mb4xC1QgB1UfGKODOH5AuF1fx8hPVq9GvgQ5PDaupY+WWRzyLB4Vjqh/k3w1bVpciOjvAFaNvI1
	8nMgjkoe1h4UvgF5cEqi5ZMKiSi6NzHHkq4f+fl9TqmSFhBA8NxvZmo1WPws1sydo
X-Gm-Gg: ASbGncsqcC9iv3E9GbqLZGiLGwy9pirZ/1xCVOfRqtnTqQmWjJAHgbrNRTiDDx8lJdu
	GYmYnTJFy1V7CXwzRCcLM4wvUV0zQpuAUE1M3/Hm569xN/uYWYbsMncLLdq873inUsGHM4T+q7+
	euvCfH7jXjjlcq4QehbQS+Y5hmJJrhsDULl9v8lB2UbOxL1XsCJxx5YsaN+pNOoyQAbrFGT7wYd
	yGQnRoqFoFWjfPpWe1bDmg4uyCbWLYC//tENjF6l7efzV8ZKWhLNtcLfkKAPcVRhMRyNQEG2EOq
	vQWyJXuaxyEML72cQcmj18KBeHXWTGyeHONQ5FwrW5rmRMfvSZF7MrnZG7S35g8/Zv3dX2ACUXv
	0zUZTtNtlGSym2n2Xq7YLxAzh78ZRJmEfg0jpJNQMbuoyNW62Hmv1
X-Received: by 2002:a05:6214:9ab:b0:784:b299:9c29 with SMTP id 6a1803df08f44-784b299a052mr15325326d6.26.1757934694449;
        Mon, 15 Sep 2025 04:11:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHT3PDb/ZyytqoXXQM/9aC2/b+zBIr8oo77lrn1IuoMlX4o8MvEYE7fMWu3HsGJjprRAtyb1Q==
X-Received: by 2002:a05:6214:9ab:b0:784:b299:9c29 with SMTP id 6a1803df08f44-784b299a052mr15324886d6.26.1757934693893;
        Mon, 15 Sep 2025 04:11:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460d4b5sm3552605e87.97.2025.09.15.04.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 04:11:33 -0700 (PDT)
Date: Mon, 15 Sep 2025 14:11:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Sumit Semwal <sumit.semwal@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Molly Sophia <mollysophia379@gmail.com>,
        Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: Re: [PATCH v6 2/3] drm: panel: nt36672a: Add support for novatek
 nt35596s panel
Message-ID: <a5zz3piadpmi4atnnafa5bfz32da4nioob7xsmqtyhgpjpqz5c@zzoa72rgwaet>
References: <20250913-nt35596s-v6-0-b5deb05e04af@ixit.cz>
 <20250913-nt35596s-v6-2-b5deb05e04af@ixit.cz>
 <xi65tabv4sgblzmw52wxci5wsrdahshvos5we5wko4kfcfyozp@y3vw5gt3elwv>
 <ad1764a3-12b3-4c30-9b79-313d9c1d37eb@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad1764a3-12b3-4c30-9b79-313d9c1d37eb@ixit.cz>
X-Proofpoint-GUID: qIPguROEONsYWmA30N0yLyI2d02Cyyrj
X-Proofpoint-ORIG-GUID: qIPguROEONsYWmA30N0yLyI2d02Cyyrj
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c7f468 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Vt2AcnKqAAAA:8 a=e5mUnYsNAAAA:8 a=pGLkceISAAAA:8
 a=QX4gbG5DAAAA:8 a=KKAkSRfTAAAA:8 a=mCu-rAxjWtjh-wTS5UcA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=v10HlyRyNeVhbzM4Lqgd:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AbAUZ8qAyYyZVLSsDulk:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX345fGSnimwxs
 HbZ4KfdXbtwco05SNIqqiKqWmzq9n3rf56sVpsWxmnnkOZEE/0b5eK0XKYcuNfwLprK8W1ZBxJb
 sjRbS4WPpzQ1w++ZCVQKRghjleYv6ijGMwzC9I6DF0HlsV7LNNsDN0vcO/CIQ0aPypa6AFXLtEO
 yz7EK6dl8FFf/TjNfws2S5SPX0CL9prfpvS0FeJWG1veQtSAwVBzMz4yCgWS5sb2d768Nwkk2ZC
 J2H2jyHRKtsn9fxrWrWE5nHFufbcj+qbgxf6VIznFvKzoj62Qm0Dh3jQsbRsEeLvNNtoEIcPpot
 +qSG0hSoeRxMwUMqRYvgDD6gzaKcfXI3zsHEYvbSyjGJUrNuQU6Z/heEJKWkGfTpXpySrRwgsvZ
 zeXr7y2q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Mon, Sep 15, 2025 at 12:11:49PM +0200, David Heidelberg wrote:
> On 15/09/2025 03:29, Dmitry Baryshkov wrote:
> > On Sat, Sep 13, 2025 at 09:19:48PM +0200, David Heidelberg via B4 Relay wrote:
> > > From: Molly Sophia <mollysophia379@gmail.com>
> > > 
> > > Novatek NT35596s is a generic DSI IC that drives command and video mode
> > > panels.
> > > Currently add support for the LCD panel from JDI connected with this IC,
> > > as found on Xiaomi Mi Mix 2S phones.
> > 
> > Why are you adding it to the existing driver rather than adding a new
> > one?
> 
> Hello, originally it started as a standalone driver (see v2 patchset), but
> got merged due to similarities.

I'm not sure, you had to get rid of the two command sets. On the other
hand, adding a new module will add a lot of boilerplate. Let's keep it
as is. Please add some notes to the commit message.

> 
> v2 patchset:
> https://www.mail-archive.com/dri-devel@lists.freedesktop.org/msg404290.html
> 
> If it's desired, I can switch it back to the standalone driver.
> 
> > 
> > > 
> > > Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> > > Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > ---
> > >   drivers/gpu/drm/panel/Kconfig                  |   7 +-
> > >   drivers/gpu/drm/panel/panel-novatek-nt36672a.c | 225 ++++++++++++++++++++++++-
> > >   2 files changed, 222 insertions(+), 10 deletions(-)
> > > 
> > >   MODULE_AUTHOR("Sumit Semwal <sumit.semwal@linaro.org>");
> > > -MODULE_DESCRIPTION("NOVATEK NT36672A based MIPI-DSI LCD panel driver");
> > > +MODULE_AUTHOR("Molly Sophia <mollysophia379@gmail.com>");
> > 
> > ??
> 
> What's wrong with it?

I thought that the module can have only one MODULE_AUTHOR declaration, I
was wrong. This is fine.

> 
> David
> 
> > 
> > > +MODULE_DESCRIPTION("NOVATEK NT36672A/NT35596S based MIPI-DSI LCD panel driver");
> > >   MODULE_LICENSE("GPL");
> > > 
> > > -- 
> > > 2.51.0
> > > 
> > > 
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

