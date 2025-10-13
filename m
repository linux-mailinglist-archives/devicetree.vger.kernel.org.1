Return-Path: <devicetree+bounces-226018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74199BD2FB0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0D363C5FA4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67B4270576;
	Mon, 13 Oct 2025 12:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RG5gfZkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC6B189BB0
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358711; cv=none; b=VTWE5hJmKb7Yx6vBdaonNkPcncK2rq6UQgkzuBzy99rMBsBL8Mxx5KY7tihkmvap/EaxhNk6omchD8Ygqa/kabc6zc1ljpFOzAFSnhxqxr2UjulFbOEsGQF+KopDN6XYu0n3DSW+OtnCNNRm7nU4y/2BPKCNNwlzaDeyW/pX+iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358711; c=relaxed/simple;
	bh=dz8cx89HDxIcaxrZuEu5Yd98IbJB0V8Lfkh5M8KCFsU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oDIkJ0LdjzX0w93LXlJAMaMUlB/GKJdBCawbUiDPxPyaXt+e3mO0U0esDzXTYrF4zXWBDoLT+56TacoU92aMpJNJoTwrebiVdXL+eVpg1P0yR4XMPr64tGIb62QIc0Wv7xPbyTvlfv+GwPF5JTqiORAfYXxJbZVWfcFDofNcw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RG5gfZkD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DA7Hdw000510
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cYNxqbays5cmz2HSt+aik4gYTlT8HzRJE2TAcbJc00E=; b=RG5gfZkDPqOcbesY
	rfVW6bPEGX9tzIziEyGZZR8sGsmTBwq27ET3o7go0P3gkwiHQmViKW2ezPPKShIU
	5PRayu/Zk0QPs0Li9tMb/in2D4S0jkp/yDhgXdrVJFHDtoeZiVmWK9wIAKhPWRoy
	ezlE3z89gkWNjqJ3Twrwo25XY1kDNgvzl9AaDWNBBXkurwP8PGATBG8DLk+83/7K
	CCNpEt+RhRRO9hvVxPiOlf1eopM1xx6h8HLnb2iqF4UaJ9p8o+TWtdFmE7Rgf/TX
	YJzAEjSzx02ty/fzRU1OtLfFwyJMN1n/jeYwzcNLyGpjPh3UkWytZyU49Ql+WTBT
	qSIJdg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfervhcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:31:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-856c1aa079bso2241583285a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:31:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358708; x=1760963508;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cYNxqbays5cmz2HSt+aik4gYTlT8HzRJE2TAcbJc00E=;
        b=gBxnVPvqSxtXuwjTjin/YdvqxAUv9YgfNqS36emgkmYoOYQorpdN+KSW4uOEPKRf0A
         D4dDvJ14oAlW1YQC5dad56YzNVuwycjtTWUNmiblrXQWzN7Sp3CZ5SsFDrUiR8a1ADy5
         PRcikD+jAP1zRBTZlekb6/pEtrtfoMVVfgplXmIMmLfPyIxp2AY7jEk46TksDDsT+HVn
         BDjQmjB6UDrl31xWEDztRkiJ4hGSlWAwRKIpWr+N3TuOVGk7Y4EOxJiDIx+MKnyQEbmh
         41hbYc/HkEbFTCmbAJlqpjnAarZ7glyRD8eJ7tf7zupyf6jaRTS6ysAR524gezg6Tq4c
         GyZw==
X-Forwarded-Encrypted: i=1; AJvYcCV2yk1B1usMW4+iffMhHJvCwqN3CKVejslNsadh84j3VbFImSUSCa+Z1tPoVLIXoUPWEO+NejZCdsny@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn6qCJHyhGWyHUKwHENL78xsMdC6HwCtzjE8pUq9U0WHNFsnFJ
	cYg4cP0dDZ5hPXWWOp1oioHAVCRtwcg945PwpHb6SyU8kcjevJke5qPP9GzMfcQipabqs7bfluf
	CD0doYTD0ewIpdubPKMH6kA4Cd43EvZhh/swn/SxXlh6DasZUWh9m9FfhNKA3INQk
X-Gm-Gg: ASbGnct5BOa+YiikdovYGjYs1a7YEhnOKx0UGvlFMbq6/xSq/R+Um1LRf0tMGoaU3M+
	joeiQORTmpQ7KrI+RyrL+ZOOVtYWOAOfzxBxU6yoS9FbgXTDmOQpxU/Cr6xiuLmQhFwOtpB7sK+
	vhj4KpPzGRJ46gCuz5k/zEtIub8kntkKJz1kguDEuqbP9CWNtwCYt6SC9NHxmUd8QUnoeN2UD+D
	d94mJJ6/xbv7qFqhBgC9UaTCI2M0JeAF1A0slWReP4CzMDX0pBs2es1fDEd2peCnm9xXpERC300
	r0nc73qceOInyHQn3Y7XDpgpZ+2RmPcA/DTllGiIHci/tOXb+OuyVA0FzNMX6bRHDbXfKY4yyMI
	1SC1MppGlYhdPqcMEOlobrC5x8Nf9f4IY32vzreGm4hmDbtRSPqwW
X-Received: by 2002:a05:620a:3954:b0:813:3a81:1a49 with SMTP id af79cd13be357-8820b47d622mr3460913985a.12.1760358707804;
        Mon, 13 Oct 2025 05:31:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxWv8jBSeEMJrjh9fglJwfOjWcpLkZZq9O6emnAaN6L/NdN9TASZgfwtditG4j7n9Ie4Y6Dg==
X-Received: by 2002:a05:620a:3954:b0:813:3a81:1a49 with SMTP id af79cd13be357-8820b47d622mr3460906385a.12.1760358707218;
        Mon, 13 Oct 2025 05:31:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e7b47ddsm31234111fa.21.2025.10.13.05.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:31:46 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:31:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Junjie Cao <caojunjie650@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Antonino Maniscalco <antomani103@gmail.com>,
        Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>,
        Jun Nie <jun.nie@linaro.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
Message-ID: <icj24ghckurcunjormsfhhscng4wfcxiyadl2z5xduitxxqqmp@iws3pssew5dx>
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-3-caojunjie650@gmail.com>
 <cwgn24f6tnmytd4omr2tul4e5jjin3ijji3ff3qkumqm2xe3t3@ntayu3m5kai3>
 <CAK6c68jBwykcWZm3ckm3nwab-X9Are4rD-eauE4rXA2+XvuX1w@mail.gmail.com>
 <9cafccd5-35d4-46c5-aa57-1b0b8ec116e8@oss.qualcomm.com>
 <CAK6c68iV=n3BvMMa30FuehbMs7-U01s0saZnsYwPVoiyw0VTrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK6c68iV=n3BvMMa30FuehbMs7-U01s0saZnsYwPVoiyw0VTrg@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68ecf134 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=RAbU-raeAAAA:8
 a=pGLkceISAAAA:8 a=Vo2vBpsxqBqMA0PNVwMA:9 a=lqcHg5cX4UMA:10 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-GUID: 3FuyH0h4qcfbw8reHl4ciTSDuwI0d721
X-Proofpoint-ORIG-GUID: 3FuyH0h4qcfbw8reHl4ciTSDuwI0d721
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX+DHmpklvrLj7
 mxMuiG7T8m85Zr7Ui7oIyL5U6JHOU363STjWvIXvlPXL1oUih9SK4hDk0q10iNUJuvQgwLFEtx1
 8eZu8s5kygKpbNMdYwM6kIXJB189JZHjWErzUd5aRikW1IIq6JCTFadWX/ru+PRuYCB8izYxf5m
 amiZlfgrgAyzdAH1NwhrR8I8gYXBcXV6nviQouh5kVOXT1O5qQEZdlwoHnmAdhqkQ9+/lan57Hn
 RHP6yP4emg7Ef3wWLB7Ees51BdmYTYUyt+CGHeU0pR9K6/Z2P3cmT7jBsIgBWzAZ5HvksSmeejG
 oOAkOQP6pZ+14f9OQAPvzIfKxfqKRfmMURptYinhRksckH4TFpYZ3Sl7K/5lzs5QvabXYO5L2gz
 F8N3N5SUcoUPEJvnYwYZ1/BzWLl3bQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On Mon, Oct 13, 2025 at 07:04:43PM +0800, Junjie Cao wrote:
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年10月13日周一 17:39写道：
> > On 13/10/2025 04:52, 曹俊杰 wrote:
> > >  >Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com
> > > <mailto:dmitry.baryshkov@oss.qualcomm.com>> 于2025年10月2日周四 10:04写道：
> > >  >On Wed, Oct 01, 2025 at 09:59:13PM +0800, Junjie Cao wrote:
> > >  >> From: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> > >  >>
> > >  >> Some panels support multiple slice to be sent in a single DSC
> > > packet. And
> > >  >> this feature is a must for specific panels, such as JDI LPM026M648C.
> > > Add a
> > >  >> dsc_slice_per_pkt member into struct mipi_dsi_device and support the
> > >  >> feature in msm mdss driver.
> > >  >>
> > >  >> Co-developed-by: Jonathan Marek <jonathan@marek.ca
> > > <mailto:jonathan@marek.ca>>
> > >  >> Signed-off-by: Jonathan Marek <jonathan@marek.ca
> > > <mailto:jonathan@marek.ca>>
> > >  >> Signed-off-by: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> > >  >> Signed-off-by: Junjie Cao <caojunjie650@gmail.com
> > > <mailto:caojunjie650@gmail.com>>
> > >  >> ---
> > >  >>  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
> > >  >>  include/drm/drm_mipi_dsi.h         |  2 ++
> > >  >>  2 files changed, 12 insertions(+), 15 deletions(-)
> > >  >
> > >  >Please extract the generic part, so that it can be merged through a
> > >  >generic tree.
> > >  >
> > >
> > > Sorry, I don't get it.  The generic part, generic tree? Do you mean
> > > the drm tree? `slice_per_pkt >= 2` is seen on the panels of these
> > > tablets that are equipped with qcom chips. I don't know if these
> > > panels are used on other platforms, and if it is necessary to do it
> > > in drm.
> >
> > There are two changes here:
> > - MIPI DSI header change
> > - msm DSI driver
> >
> > I've asked to split it to those two commits so that he change for
> > drm_mipi_dsi.h is more obvious for reviewers and so that it can be
> > merged through a drm-misc tree (or through drm-msm tree provided it gets
> > a necessary ack).
> >
> 
> Thanks for your clear explanation.
> 
> I don't mind to add the field separately. But should I submit it
> with the panel driver together? Otherwise, this field is unused
> for a while.
> 
> However, as you mentioned, this is not a part of standard, neither
> mipi dsi nor VESA DSC. Recently, only Qualcomm devices require it
> to calculate parameters, then we use them to program registers. Why
> don't we parse the field from devicetree?

Because the value is uniquelly identified by the panel's compat string.

-- 
With best wishes
Dmitry

