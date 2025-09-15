Return-Path: <devicetree+bounces-217577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321FB584F6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 20:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A60EF161697
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F70727BF93;
	Mon, 15 Sep 2025 18:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EuNE+aar"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECAF1FA859
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757962421; cv=none; b=j3fKfoeLqx4ze2SkmymsP1hJjbqwF4uzh/I+kbZgIul9/NH3UsJImvor8ym9c5fj5bn5kB0PtQRTem0NjtgZRf+3y7juE6ddktPtF3A9GVJ3BOT0hN7TpfpDrygeXoXe1BwzQ/agTHABrpZCT6vxEP9arDRoVsmKISp+PXt9AB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757962421; c=relaxed/simple;
	bh=WaCGK7JVGkNZfy8wWvMHPjeoKB2xSuL6UkAla4ZV4uE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GxhrjaL9eXf+aY0E/Umg4I91Is/z5m2HFeVAs4McmCHddsF/Z72I5NjRVVZaj1Zuxf8KwCiIIMZS43mUTHiNNOPcRmYCWEog273dgFudFTb93FlejP6e/7EOxKGr6vNNhmW2KktLAeo79Oap4/C3yjGdmINtPUxLdGMUTkxE0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EuNE+aar; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FE3BK0020478
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nMMKPwbFMSjvy9PWk7yGxyrz
	P5qxhwSObKoN7zz9Cmg=; b=EuNE+aarumICU53Pb8nbWw1vWJELMwtngsr/NFhj
	b67tH0/faAVXM8BakGNmxzZL/eduCfCUAQ5+knxk3lp63THxklrq5jhZZOsjC9c6
	rYhIyXq9WCA/I1qxRoAmbRRUj6sYT6CS738RLMZUXPU20MWvtdKAq2ZtI9mWI/jD
	5ja3P28kw8CeSkfuwXvWnghnPmgBJeKGJ0FD6Ppqlbxce14ELRdSkIDDstuJAjK9
	tXF/CWtbY9GrrQpleEC9M/mOAeomKPXO84c84sfITddHT01T2T11KX/Xirf9HDkC
	1LVewdCj0d01yUnv0q4qsbqR/EOIOnXmbrJxBfCBFbTWlQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv673s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:53:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5ecf597acso106389551cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:53:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757962417; x=1758567217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMMKPwbFMSjvy9PWk7yGxyrzP5qxhwSObKoN7zz9Cmg=;
        b=SCmwz2waNtAR4GiijBRwdzZ4SzJAJJnJ69beyfSTM49YULmzZNfs7DUPQsGWW2RHF2
         30wf1j4VjTvp25hRPzL4/aVKAdrIdcB28sf/uPyzuhj8O2GwXrbIXEWKaI9pR5KpZAt6
         UU5PwUGg/mxmv+/aAfy1BfUNqjzMFpQfONV0tamFwkcVFt/RaCVkpZgY+Rpe/bPC44wY
         Uo00QV3T2rPjNbJ50TpZ6RlHMZWgQQAaLlOvI8zFRACOvAc+39hu4K2Ctb3p38+bzX5u
         e0TRtpcorYJ9cwrIffkBg9LjgwbqoBr4jHffKR91gdWeeAW9F8/aaiCJlDFW/zFaGOFE
         BOwQ==
X-Forwarded-Encrypted: i=1; AJvYcCW59VAcXT772+JBhKS6MKZ7efyUwkqV0hy9neOGAc8HlJtqSO0eh+Aol6OiJWH2H0s1l3PIEyvvCbnT@vger.kernel.org
X-Gm-Message-State: AOJu0YxqvJ4td82I2BmMJ483hsFipeiY4oeT3M4YMaD9LTJJVc2sMiya
	Gphcr76JwWSPyGt3/ztzuVM/UUQ03iBiMfW98vvGcW6LwPxA1rBWQBS10DhpBnVi7cPl6MR+bD2
	It5VOejBFRMgO0sCok1y6ra8uF6H/WhOgplZ+JMnmtoV4/7SyeDY6DSu60K9qsnhL
X-Gm-Gg: ASbGncukHDMI6f/HomFOrE6+Co6TWjNo+bh2F9oGdWgAc5nzS8Z88nM/byqBEPmf6Qu
	gglgWoFMsEloMeFRRNxqvwpPybLaOafORYO2riZ2hZVZD/KxVxmaI9sxUTpSIbBq4oasTXRzAvn
	dnsZjQDw6uK0zUR6o9XPWtU+GbltXv24avWmFbp7iT61+9oeCX9SDQs7jGOrB4fW9t7cvTqBX+C
	j0Jh5I/JAUMYDHp2/cKr8Vvrsu4hKV0QDncCnQzRfp1vXjxX9t4ccrJgY1YftAgtzAGdJy4AlMl
	IngSqyIkxrP28hkkkU34lJzZA6qUcgV3px3Zan9rk6K+tW/E2D2nNeluXi/RIMJtO5hrlSwaLS8
	9r+Bh4ODicjlWNcYuENjDLNpGoTkfi+/gjFNBBRxOgMoUBikz8Wbg
X-Received: by 2002:ac8:7d89:0:b0:4b7:95da:b3c7 with SMTP id d75a77b69052e-4b795dac12amr105743861cf.48.1757962417287;
        Mon, 15 Sep 2025 11:53:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl1bgwAg6xsiD3botpPruuj1Z5eTwC4YuXll3Zv1jmcPqXrGVhLUi0yvP8XfARs9TjfTPNrg==
X-Received: by 2002:ac8:7d89:0:b0:4b7:95da:b3c7 with SMTP id d75a77b69052e-4b795dac12amr105743251cf.48.1757962416589;
        Mon, 15 Sep 2025 11:53:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8211afsm28253981fa.45.2025.09.15.11.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 11:53:35 -0700 (PDT)
Date: Mon, 15 Sep 2025 21:53:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, sjakhade@cadence.com, yamonkar@cadence.com,
        lumag@kernel.org, dianders@chromium.org, jani.nikula@intel.com,
        luca.ceresoli@bootlin.com, andy.yan@rock-chips.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, devarsht@ti.com, u-kumar1@ti.com,
        s-jain1@ti.com, tomi.valkeinen@ideasonboard.com
Subject: Re: [PATCH v5 2/2] drm: bridge: cdns-mhdp8546: Add support for DSC
 and FEC
Message-ID: <d6l5vwx5s5oopyhniqbc3wputceblazpry2omeja2qvak37y2m@dbge4vedh7ko>
References: <20250915103041.3891448-1-h-shenoy@ti.com>
 <20250915103041.3891448-3-h-shenoy@ti.com>
 <pwd4hocrxrnfymby6szzp7irlveoa36er7yn5ivlht5mwxrpdz@r237bd3epols>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pwd4hocrxrnfymby6szzp7irlveoa36er7yn5ivlht5mwxrpdz@r237bd3epols>
X-Proofpoint-ORIG-GUID: pxzCZ5-fDS1t0AS27aDqsRqjvsNIzpjF
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c860b2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=Br2UW1UjAAAA:8 a=sozttTNsAAAA:8
 a=aquk1Lx4SgTA5jucOdcA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=WmXOPjafLNExVIMTj843:22
X-Proofpoint-GUID: pxzCZ5-fDS1t0AS27aDqsRqjvsNIzpjF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX6wSUCbHkUmVW
 uYJOhW/8gRP2gNFR29JROmwoGnSihBy7FACjPnWpJ/WdSp/dB51HdqlMjxhHt7OYqprjSdh0LQ1
 E6foFp5iYPnw6GF7qMn0yM//A6Ug7/sbORvArjTtIuGY1R2S6uhALQbMQ132RW92mU8Fs+GTyq0
 xVJ9BXuuUPkU7OGIIh2P8axGFN+VkW0fUF6v4Hxs8re8PLsrAQoIpzN4Sy5c9w6r/FOu0BF+Q0Q
 1CA7FQb4kgJgtuZI4JXdCg4hBwynLyPEZb9msRbJMav8p/4TlJDOuUxjZfJa95i7dzjZ6MZlfgY
 yaij8MmlQl973uYPehC6sm2N1uaH+PIXvVSl+lSUL1vdnuMESr/0Sb1nGtY2x4XAwTTyid6HxNo
 Pp3NSo3g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_07,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029

On Mon, Sep 15, 2025 at 02:06:58PM +0300, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 04:00:41PM +0530, Harikrishna Shenoy wrote:
> > From: Swapnil Jakhade <sjakhade@cadence.com>
> > 
> > Enable support for Display Stream Compression (DSC) in independent
> > mode with a single stream, along with Forward Error Correction (FEC)
> > in the Cadence MHDP8546 DisplayPort controller driver.
> > 
> > FEC is required when DSC is enabled to ensure reliable transmission
> > of the compressed stream.
> > 
> > Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> > Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> > ---
> >  drivers/gpu/drm/bridge/cadence/Makefile       |   2 +-
> >  .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 367 ++++++++-
> >  .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  68 ++
> >  .../drm/bridge/cadence/cdns-mhdp8546-dsc.c    | 695 ++++++++++++++++++
> >  .../drm/bridge/cadence/cdns-mhdp8546-dsc.h    | 285 +++++++
> >  5 files changed, 1392 insertions(+), 25 deletions(-)
> >  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-dsc.c
> >  create mode 100644 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-dsc.h
> > 
> > +		goto err;
> > +	}
> > +
> > +	if (ret > 0)
> > +		return 0;
> > +err:
> > +	return ret;
> > +}
> 
> Consider extracting a common helper and using it here and in the Intel
> DP driver. Also please use new DPCD helpers which return 0 instead of
> size.

For the reference, some time ago one of my colleagues implemented DP DSC
support for the drm/msm driver. It didn't go in for multiple reasons,
but feel free to use it as an inspiration for possible generic helpers.
See https://patchwork.freedesktop.org/series/113240/


-- 
With best wishes
Dmitry

