Return-Path: <devicetree+bounces-249594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A77CDD1CC
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C17D7301A19F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1092E62A6;
	Wed, 24 Dec 2025 22:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m06/rbe/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hHVB8ZSP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955DB29DB86
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766615339; cv=none; b=AHiJJCuB/WG2/XZ/jpwOVWEMR4CWMShH4FaxXhTneG1DC8MrUa+ic7Dz4tVSGf4948Ut82WRLVpZgowqElyCwRtOMKQLU5RtvOCZ+fQ1fK2/L8hcabjtttIaa3OeY/3iBtygKAKnfaQJvqOpHiwUAktbTgnWdU1TCWzGKPKMsd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766615339; c=relaxed/simple;
	bh=XwfrgBdUbqaiiPhdFynj61P28+fexr3SqblhTpEV05Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IHzvcp7mcD/yeMZ97bUAIVIuj4GeB/DqDH+Yr3tmQDnusSN//jD+x/c18qFP6NaskJg8+xPJ+JZWiHxbIXpwdF6UUMBXbwSu6gDQ3wnRDPKe0kRZGpKt10XPEw2lxI/BWlaF5EG3fPfx8pBjgsvLGk1ZC3/LsbvR/hLMPbdtUF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m06/rbe/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hHVB8ZSP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOJ01EH3290320
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=; b=m06/rbe/crPqalbK
	uh4vnpL9CD8E7INXhMCw4HfEx8iYczBLZ93py29srR9424RkTc+Yu9HHa5Mv5Q0c
	JSg+FDnZDK2inaQF2y82dQKTugivRmJH7JuhEdR63Ahn1ukaBStAQTeG33HzdE2P
	RNokJsLXaMcP8Gh/s7kXdXpMJCyB8l9fOEV214oZRnhogtKif/jk+/PjAa1x9Fg4
	Crx9f1OSriZhrDc4tbC6E1ItXmY+N/XOQ801h/6D/fNYEaPQl/ovAgiV/xsK+hBw
	U+zwqTezlYH1FjuPxLrlVWoQ9cu6C8baUUbzV9ZT/yrBcaoMhk+sTuk9r/J1lU3T
	AkkfUA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46v2js-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:28:50 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a43d4cd2bso81792716d6.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 14:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615330; x=1767220130; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=;
        b=hHVB8ZSPnMdDHPuGuevS9GWEZJPf2aUBX7VhWGvYEGhex5yPeH/kNCC9Ky2IQeJmCL
         yk2bviLweoVUA8jXBqDURiEQeZk8DoWTjcwHUgthFUF7KwMDAnoUrmej1pLGCHllxsP0
         YbXgw3U71VpX4FVKLHra6CURhmeA798wuMnGaVKGeyZXj+fpr/0OC8MLxBDTn5t1dwU9
         TGq+SQwyirV+JeejNW1Kvx1O2Wz1qxz3PL4j1EWeAD+LDjCcu4w572k9wTfbo+0jgq5j
         iT68BGzgYenxkkEkZgJpqpLXiyjQlrHULobNafeqVre8pt94gg8BhQWQsJBVuvDpLMtz
         D1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615330; x=1767220130;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jnqeKfDVEUH7RrIR88HfljemBK9UZki/ZbbnLXfs5xc=;
        b=Apq80PxQuINyUlQ8vSlz0hmOI8hgoVHv5pC6pxtFpwwsRhNArHhNv43+rcj+Ns2x6i
         QuemCrNw1JMO7WIbdpBUy2WOlHn4aGLKNRYxjD9AKgj/s1gnEIqnEU3RcMriUEruUm/u
         zwK482kRBlA9j7XBUqBjLqg/cPO+/AC8Y2L26cM/piTGDESyZtb1fruuCBXcAG9Qi7Ug
         /1Exez1TLSGFsbNMn5CzV298hNwtKwSG68ocIukR3LB4yh1lvzpHlN9P/8QmUtRlPavV
         pU7khVumI/Ozzd46Tls0kyzp+bXY7tiyDqsQRmpDXJxM0ntRRohWie9IkrYc3zlA7J/1
         Pd9w==
X-Forwarded-Encrypted: i=1; AJvYcCUcv0ak57c47hFASmo3/pruC3quim3kozoqYrSpK/nb6Wiz4gZX0SC2w01sfvDLfPSUJAsx87gzm60M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3joZE6DM1INUbuiJl6fCgmTuszDl4mVGMjD6mlig9oOxdHmu1
	mZz5sjGWQgPaiAwDi8PcsRVFtxRoUHEq0/Z6f+w/MMM/ZA7iPsQJao4ed0ZPsiwUVAh/wSedwdd
	+zYSmjQ8j5kSC52X4EnSfUUo8ScuQEMMQt7rwg2FGj5zmW9X5BgV+jmKl7K/JvdEO
X-Gm-Gg: AY/fxX6oLBCjbV2yGaEczVqWkPkhqn6pZ0ChfQBKAXmtQhwyTK/M7d3tFgBDq/IOWyn
	5zIlLEJ/S25BGXxYnJS8GhNI975UjH39ADxwfOIr0PkNhJTI6xsHlUzNoVOLf5by/r+5wuij0C8
	rkoa6CsBt44ukZPZcx0VtChRD6gA5BFuRQ773CJgaM+AjX4I5R5NFcTzolqFywCWeyDf6KxVtEf
	OVs5s7b8/295i+9/2UxjUxEWcTQgc91KtayO8H1cAPN2jbXhpiststFwSmKLUMTCfvVeLhtKdVM
	enhhRi+NfoiGIu+GY0kc902+rcIBTwXD5ZwCPACvJWh5UjGuR6EHAweYlJ1v0QvWX9AJvH3IYR3
	jytlHds4e0oU9NvyMKi8iSxToWuMXpubnt+bQKd86fjDJ59g1NKaWtr2ROGEjgJ5psDY1FGw/yP
	5+t6EiM/o89HxskOLkR9UGZBQ=
X-Received: by 2002:a05:6214:1cc6:b0:88a:52a1:2576 with SMTP id 6a1803df08f44-88d816677e6mr313884106d6.1.1766615329937;
        Wed, 24 Dec 2025 14:28:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDjHfHLudL34DV3f8CJ7r61XAAinJKO1G9J6E+GUx3WmZ4f3SX+neuLfUYgLL/zzuLkHENnQ==
X-Received: by 2002:a05:6214:1cc6:b0:88a:52a1:2576 with SMTP id 6a1803df08f44-88d816677e6mr313883876d6.1.1766615329428;
        Wed, 24 Dec 2025 14:28:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd1e9sm5197038e87.23.2025.12.24.14.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:28:48 -0800 (PST)
Date: Thu, 25 Dec 2025 00:28:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Andy Yan <andyshrk@163.com>, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, mripard@kernel.org, jernej.skrabec@gmail.com,
        jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com,
        maarten.lankhorst@linux.intel.com, rfoss@kernel.org, simona@ffwll.ch,
        tzimmermann@suse.de, knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v8 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <h7iqdiolwb5hkqdkbirqjeytxu7h25p6aptspgdvndbv2husd6@mb6vroredden>
References: <20251016083843.76675-1-andyshrk@163.com>
 <20251016083843.76675-2-andyshrk@163.com>
 <8913609.MhkbZ0Pkbq@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8913609.MhkbZ0Pkbq@phil>
X-Proofpoint-ORIG-GUID: kfrlcEcJBXyK8sNRHS7foA7scJCRNU8S
X-Proofpoint-GUID: kfrlcEcJBXyK8sNRHS7foA7scJCRNU8S
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694c6923 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=Kmzl1NW6Bz_df4YWhFgA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMiBTYWx0ZWRfX6doELktnKl1T
 nJhwlGeqgVigKfbGh/zD4E0FSzDlMociCoTAnF5h7Jw+B4BED3TSi+4TDGQgltPjByuj+JgUwvW
 vp//oA7TqCR25yiy0WGxru99RBCzXT/rxu81O183uxviwmHllw1avUk5QTCbCSrnfe6id6K0XIY
 OkN0mvOSjBIrbF8lP22bQEyFwsUSkP6Atx98U61WUJkMp70y0g/TGuBFt/TXb+DU2Ri+7wxbwq+
 eSeB3ZsWKasDXpx9m4v+dAPqddpEq4YvpeIWEBbuqfKA0wAofWWDp6qA/Tx7H62uBCxfgTQGiv2
 a+H8Mw8FDd3SzX3cafIist98x3x7nZtSrmeIFJiz2FKUykHa7AVN47nrsaz/YN56IrBFKsEoCai
 Xcbx0rtj8HdnsVhURj0StcDkSBzu1ggfMA1+mKH6K3NfoNKF3hg45nnnfPl5eUX9NQPUqifGZLZ
 AG9DDsJGz1aKkNOa5cQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240202

On Mon, Oct 20, 2025 at 02:45:34PM +0200, Heiko Stuebner wrote:
> Am Donnerstag, 16. Oktober 2025, 10:38:31 Mitteleuropäische Sommerzeit schrieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > Convert it to drm bridge driver, it will be convenient for us to
> > migrate the connector part to the display driver later.
> > 
> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> 
> But of course I would be really happy if someone with more experience
> on general bridges could also take a look.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

