Return-Path: <devicetree+bounces-217575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 235D5B5847F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 20:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77D5A1AA774C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5D2E2773F2;
	Mon, 15 Sep 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hct3YM5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440E11E411C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757960573; cv=none; b=e7+mVmsyefQ869XSz5rAMWUsEkCF+45TbTyOSYuV+RgBC76F6m0Jx+A0vYJWm4IE8yAkXA/NMX4iB12ZBx4Dlrh+E/sT8CstENYPtIAd4fUp2yaG1FI/sjW4BsjJ/ybhDDHovqxGRpceB/ik+Jdo78XA8GIaGQHbF9gi5wQMtqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757960573; c=relaxed/simple;
	bh=gKyS5sTdyjU2bT+xqX3t7C5k8OZgyBBrIG5tqYiW1p0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cVNTa8T8UIDpU6TXLTDf/AOXBAA3RiCtXcm86doCqikQLbbxmpqaz7dOLcXIdYBQhfihpEJlbjKRhOGK/w3QVFjyyZixLroKur5uM59/Lpb88EoJBTrHAunSv0zT3DLEJEABHIuXaUDD0qAi/46tmj5yXsJMW5wglJrPPK2zDIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hct3YM5V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FFwwPJ022055
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:22:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F1LjIqAwbyBFY61E2h7fViEwka8RdZtiySWmXgTI3a8=; b=hct3YM5VCcVXNXsm
	JNY1lgpvsscIGnVixGxMLCvDrkhKt9qGRTGAM9LmAP7OU0I6uH9BKx/svAepFs4x
	gk3TQWQFnHaFKeMZw6i29fMtTmBummUwei5QiW1UpabMCTTKzcUNRels/Q56xoYI
	88+6YHTa7s7+RhjG5fbBSLK6fVzkU0oj5Ktvn12BdJfAb70MWQQsFd7W3Z+i646E
	aqeDuItCY7OXWCjW7RjFhZxlgYlvN92LtMzWuRRw9I/f6y0jDvUJNDKUFHZK6QH+
	XQv+NptwYm4OgjT5VD226EtbH3U/N6v3K++W+VMvg5iUdh9CjhfvU90Oga6RZZae
	BDJxRw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n1q25-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:22:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5ee6cd9a3so95774791cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:22:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757960570; x=1758565370;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F1LjIqAwbyBFY61E2h7fViEwka8RdZtiySWmXgTI3a8=;
        b=IFkq1D2Ivq4xq4KMx9VjUfCH8N4c5VWU+3d0H+c1y23TiqKEvWHZxqGkbya0QIgM4i
         14RUup24PgDB7hhuua7d94tVV7CLU+z7JL7+JslcUHbu2jAPghWgXytbyjuC9K0nY5i3
         Rdz3bhvPKtXI5/ua2TW9YNHDVUYl7u+6MGvtHW0IPP7ChvSkcofVRxQ0mvU6ovuNJblJ
         ijVsLGp/2w+gqcBGeIEn3d01rcI/BGixYECEpHtslZkwXpqx0DEEwuVE7J4yYsknZ67s
         z9prd/gBzK9z1eJAH6HY6FrldF4g2xlZ/a8RFrx+V3N5yssLJwVBYaocZrlfIYTJ3vOk
         MkBg==
X-Forwarded-Encrypted: i=1; AJvYcCVdbFKM16VSB1I7KgvkA5HmA/1F9QynACnHEJbdEnPGEIk09y9EthEU0tCYbckmzYpiaizlWV//gZKk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5817cQ+cWxpb+fuLPRtXBHBW9vdXpr0q3mHo0iurGCl4+QdSV
	+euWFkHW9xfHAKpdeKilW2CbCOFztEFMgLuxwZNReXMu0SOdHdTk6ULuAW8kqGRu6AVGyN2aFDh
	7CU+Rn7GNtHB6FxiFBu6CsdXwKCu13klASDibyKBN7mV8JF8DiXZm0pBo8iweo6ob
X-Gm-Gg: ASbGncvyVl7WxYLbPZDPFj1QFS2bM71jh0AftNaNZJlbv8waOFHLcjgmA4GMP69oabc
	hI0lSk0XdnITa8HnppSiRtGgZzywY6xAuCmGNgB1LUpOCIY8ynrvQVxUGeZ6zuL2rUvka/5xFt7
	52z6F5LvkeTL8RQmRAlkpaZ7YDLYAbSrCgi3hNalQ9ff1Ho6zZn4tduZyCCbu5h95f3JuxwkvFs
	05uHGm5oLgRqnogIQ99vj645STaQlBxoWna8d+CDKa4cDObG4oBt1kdaDGoAzRtKHvMHZKlN7zc
	QG47SaZ7ckOSOQOoO8tEAVsp/H4EC8r+dRGurRjCTJ2KMSd2fxSzAOCAFGNkUieBvkp1i9kgJqd
	vzAfgAo27hK+F4/V/Ub4bpR5mNV7JmycL/OEfXK64dYQahIRpl9SH
X-Received: by 2002:a05:622a:2448:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4b77cf3fd63mr188715001cf.0.1757960569961;
        Mon, 15 Sep 2025 11:22:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAuVVuM0n9l3Cg1YMA/er5S/o95KrZuuWZTRloeO1lERKI/EYVWxGvd6dsy0z2sc5Sm5CG7w==
X-Received: by 2002:a05:622a:2448:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4b77cf3fd63mr188714401cf.0.1757960569240;
        Mon, 15 Sep 2025 11:22:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-573c8330d2csm1333852e87.58.2025.09.15.11.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 11:22:48 -0700 (PDT)
Date: Mon, 15 Sep 2025 21:22:46 +0300
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
Message-ID: <ylo6kh6wqzpedoibc52qjbb3fbmiofclfjj2zog7sufn4rqyvf@jxcxjft56czl>
References: <20250913-nt35596s-v6-0-b5deb05e04af@ixit.cz>
 <20250913-nt35596s-v6-2-b5deb05e04af@ixit.cz>
 <xi65tabv4sgblzmw52wxci5wsrdahshvos5we5wko4kfcfyozp@y3vw5gt3elwv>
 <ad1764a3-12b3-4c30-9b79-313d9c1d37eb@ixit.cz>
 <a5zz3piadpmi4atnnafa5bfz32da4nioob7xsmqtyhgpjpqz5c@zzoa72rgwaet>
 <4a718ca8-cc40-4642-9f88-b654a90045cf@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4a718ca8-cc40-4642-9f88-b654a90045cf@ixit.cz>
X-Proofpoint-GUID: KzMErdjEbiDzYhg1_zdRwkEP28Qo-qKj
X-Proofpoint-ORIG-GUID: KzMErdjEbiDzYhg1_zdRwkEP28Qo-qKj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfXwtBLEUthdO3H
 38W70gj3zxEm8QOTxQvd3GSJWlQgzB18vKif/GKcnEJcYcbbxfcj/R50pEX2skWTw0P5UQUg3AX
 DFvie67snYTkJzYl695JWWGfMeX3cCSmoREHL0EQizMo0mb9/xPw3h/E8n2nN1w/AypcN/LHwsj
 EqIQPoOPYbTwKT652EZGH9cAI8ObAKce1fuOq9OoutL5LYvt8hSCH+S4zaSOUSxiSAmGwcmjISQ
 FRVY59oapgzzpkK4YzcqJQbo4j1c7lVKYDtr/Ucn/ZRxN0AlvBHDilUC1BAizOF1NVrKqLraMZx
 J+XbrDAj3GtyrkgOW1cV6ONJcz+4IKv9KWNNHdnpA57YkakAGcE/rfSRxOrOdwdyaM5gbgpS0RX
 qPSuNdkS
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c8597b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=NEAV23lmAAAA:8 a=Vt2AcnKqAAAA:8 a=e5mUnYsNAAAA:8
 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=KKAkSRfTAAAA:8 a=wCpFDx9_YxCViFKvQc0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=v10HlyRyNeVhbzM4Lqgd:22 a=Vxmtnl_E_bksehYqCbjh:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_07,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

On Mon, Sep 15, 2025 at 05:06:51PM +0200, David Heidelberg wrote:
> 
> On 15/09/2025 13:11, Dmitry Baryshkov wrote:
> > On Mon, Sep 15, 2025 at 12:11:49PM +0200, David Heidelberg wrote:
> > > On 15/09/2025 03:29, Dmitry Baryshkov wrote:
> > > > On Sat, Sep 13, 2025 at 09:19:48PM +0200, David Heidelberg via B4 Relay wrote:
> > > > > From: Molly Sophia <mollysophia379@gmail.com>
> > > > > 
> > > > > Novatek NT35596s is a generic DSI IC that drives command and video mode
> > > > > panels.
> > > > > Currently add support for the LCD panel from JDI connected with this IC,
> > > > > as found on Xiaomi Mi Mix 2S phones.
> > > > 
> > > > Why are you adding it to the existing driver rather than adding a new
> > > > one?
> > > 
> > > Hello, originally it started as a standalone driver (see v2 patchset), but
> > > got merged due to similarities.
> > 
> > I'm not sure, you had to get rid of the two command sets. On the other
> > hand, adding a new module will add a lot of boilerplate. Let's keep it
> > as is. Please add some notes to the commit message.
> 
> Ok, I found out in the meantime that Alexey is working on refactoring
> nt36672a, so we’ll coordinate. I’ll likely need to rebase this changeset on
> top of the refactored nt36672a, or possibly move it into a separate driver.
> 
> See https://github.com/sdm660-mainline/linux/pull/114/commits

I think it fits even more after refactoring. I hope Alexey will post the
refacrorings soon.

> 
> > 
> > > 
> > > v2 patchset:
> > > https://www.mail-archive.com/dri-devel@lists.freedesktop.org/msg404290.html
> > > 
> > > If it's desired, I can switch it back to the standalone driver.
> > > 
> > > > 
> > > > > 
> > > > > Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> > > > > Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> > > > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > > > ---
> > > > >    drivers/gpu/drm/panel/Kconfig                  |   7 +-
> > > > >    drivers/gpu/drm/panel/panel-novatek-nt36672a.c | 225 ++++++++++++++++++++++++-
> > > > >    2 files changed, 222 insertions(+), 10 deletions(-)
> > > > > 
> > > > >    MODULE_AUTHOR("Sumit Semwal <sumit.semwal@linaro.org>");
> > > > > -MODULE_DESCRIPTION("NOVATEK NT36672A based MIPI-DSI LCD panel driver");
> > > > > +MODULE_AUTHOR("Molly Sophia <mollysophia379@gmail.com>");
> > > > 
> > > > ??
> > > 
> > > What's wrong with it?
> > 
> > I thought that the module can have only one MODULE_AUTHOR declaration, I
> > was wrong. This is fine.
> 
> Yeah, it's not usual to have more than one.
> 
> > 
> > > 
> > > David
> > > 
> > > > 
> > > > > +MODULE_DESCRIPTION("NOVATEK NT36672A/NT35596S based MIPI-DSI LCD panel driver");
> > > > >    MODULE_LICENSE("GPL");
> > > > > 
> > > > > -- 
> > > > > 2.51.0
> > > > > 
> > > > > 
> > > > 
> > > 
> > > -- 
> > > David Heidelberg
> > > 
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

