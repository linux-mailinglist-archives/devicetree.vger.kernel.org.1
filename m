Return-Path: <devicetree+bounces-212177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D60B41EFE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4C184858AE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18953D544;
	Wed,  3 Sep 2025 12:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h6Irafxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6262E1E4AE
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756902655; cv=none; b=Hnfd+MyoVO59BgW6pCNlb95RAycMLHoveQ9KtUtGIaUKIpLylxIwtesBuJ1L64phbRSo340MOiHx2bIYq5YPWFLSGqoFqbKeZwWmjDSznBAqo16wZ5383yUjrSuy0XBKsB4wBBbOKlSndC7j6pRtcLdYwlbAJF2rLZk0zXsnRvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756902655; c=relaxed/simple;
	bh=N8xj5bZNLcP1eYQY/UQ4GOKWqnxujbe0QOOjK+vE4S0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iRx2Ry8d6SEWSVtqudUUm2xQ7Yq1pu1Km44aiCThBY/iqQibXXfTtm4WXoYuzMN+4s9ofjjei2C7cT09wfT5l03FcB6TcGEpa+bD4RtsyYXah8VVD463bDuVij4xgIVrlNKvChUfx4ZfT2n85xaY27NHV3ETdBQppekDJpH//e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h6Irafxz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEqi2009341
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:30:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QLthK9+25KX0PZkgxfUXb/nyfRZ4etTvDcrXLtnH1gY=; b=h6IrafxzmpW06kYa
	/dGoXvBizu/hIHW8yizzqVcUZVDilW17OR3qvIHNLtRVFQ95nM5fInGNniDBum5d
	tNvEV+q4p0fD14AQsj9rW3hF0DwyixVgCID5X3cn+B5ONRdx0S35iv9+NFpBmiRO
	UbdN0LQL16VIwIDWXpxobrJsQBEbLbkCXbTuSBmECNJ+kWdtPIZcTMt8x6QtxiT7
	K6/dmsuoUAS+piT4UJvTK/rcil9ZNjkK4+/koC1dClbGlRxaVCwyNyvzCGtOhKk0
	Ad71m3Ot58exLzhGKojjYQQgwIvNqK8m5CPTJDWTJ+EHipL0yu2Jj/ptEmt/Uv9V
	MRFMoA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8ujs0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:30:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e8704e0264so1313529085a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:30:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756902652; x=1757507452;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QLthK9+25KX0PZkgxfUXb/nyfRZ4etTvDcrXLtnH1gY=;
        b=mKE59HxfMhFW839MrKhZS3XKY6J7CGvQ1wJ02J+PVi57C26LV3oP9gUAAq8dcEyQNt
         k9ZJgPN5kHkZm23t6SDMi0dIstSowE8aUstlaLMBtr2FjAGXkx1xX18G+rZt4lzeb02d
         VwZpgrDweFOyAcUG4PkemtjN45dplR5HUPz+VPOH8Ae1AnerfzOSq2R8I59unEv1dOFs
         Afm5wSgxyJSozauHrM5hKvQULVCXymacsojoSyIMjYTrwhrhU3kJFYjYx/Uv1yo4S5PW
         bclSKvrut/Lq97DXUwuWBpeReKTuoLvRuav8sfhodU53vUdOvL6WcsTaOfjXy1NPl58L
         sU3w==
X-Forwarded-Encrypted: i=1; AJvYcCVuwknt1uQLSJNeBupMWAfCaeOEonV2StH9qIIgxeO5Ls9PbFHseX/ayDV2LdfpzYCNykQ7xafwoVmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzgLYTp+iBOcvix5WNuy91oJjm7FZixJpyPxfisqAyOjy8XANHE
	XcRh/OdTZPb6Pxb2OGCizjnaTiHZaQTFCmNf9oI9gP4tWw3R451HduoMDmBC4w+4MVRlUhnNNKY
	5gs0bhgWJL3vf9z44x4qyoWNOF3z5aoQVGss9JARLnJ2Jbl2IiMhuSaNzSgD5rCn8
X-Gm-Gg: ASbGncuWwDlBTR1ke8rdjug/NhC411Qf6m87LNguLJ99qpzj9PpQIt+5S4EwMbuvofa
	8kRGVomHGrfufUmcgpB8hzkwiDBONbF/OgJEfrXskpST+6hm0ogJRWLgVL/piHmvwJIudbqLUpF
	dbe3muiuAO9TZLGX5XAod+bvBCvaJTjn+1al2SrZwQXLK7J18ItTiIGRWTbMSfkUuujDQk0uV5+
	LF7dkjbx3c7KNTLgM8ZVv1Yejl3gNPF7+rxHHjHj8HT4gOz1+e7hkGDTUPzURy+vvZ5ejJg7vCA
	xpbbxRh+WacMGY92qFWN7oyCmd+LLRP3/Vz+CJJ5drRv1yN0JJPKRLoI6AUp3dsxdmLdxeEMJMe
	CqIcnS4YmRK0m2MCR/o0avR6TQPTVyi1rqR6BzrA5n9ERAzH7OCsm
X-Received: by 2002:ad4:5dcf:0:b0:719:50da:4a21 with SMTP id 6a1803df08f44-71950da4ba2mr111873276d6.26.1756902652459;
        Wed, 03 Sep 2025 05:30:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnPeg40muTt0G1FfsjpDxo4ZRqx4blR1Wc4qnDjnE2n9owGkHkgKD0nBs0gJYO2KbOTOtoGA==
X-Received: by 2002:ad4:5dcf:0:b0:719:50da:4a21 with SMTP id 6a1803df08f44-71950da4ba2mr111872576d6.26.1756902651807;
        Wed, 03 Sep 2025 05:30:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc17e9sm499952e87.56.2025.09.03.05.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:30:49 -0700 (PDT)
Date: Wed, 3 Sep 2025 15:30:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>, Yury Norov <yury.norov@gmail.com>
Cc: Andy Yan <andyshrk@163.com>, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <4ox7yh3i47odinoaalzjz7d3gvx36bxbaspo6qfvvvl3jqhdiv@24ownjco3ud2>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <5255838.1BCLMh4Saa@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5255838.1BCLMh4Saa@phil>
X-Proofpoint-ORIG-GUID: UuJPrayrF5uoZNxyDEAwZkv8RZebIBEg
X-Proofpoint-GUID: UuJPrayrF5uoZNxyDEAwZkv8RZebIBEg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX2g3E/uWd7KqR
 lnqYvs5rmhDwlvJjClPlYAnhNxntiL28mujF2ZtFIro9sb6u7A5acPrN6HiXmIFv4GCuThTjTVb
 lR6zpkGvW/lzjcBMnIZKwtPYsgh6I4dezGyIO5dAUvYpd7se4b6S2LFr/eMmVTZjTn1knpjFDkd
 IvhS2Nh751HFZUcFg3gbFPGUvqGu02UAI+cyhMxy/UhLxeQ8jxbNsFFLu3SHlQTtV9F34HJ6kqd
 Zr1Sq2yq1u6kTKMxkOgDnW3mo/cjxLTuz8N2+Yfb9GLYzkAD4SxXlJpwNX8WAVD6M0Ll94AAGYu
 ILdn02ttMjFUAVbr7UdE/HSLODl6bBJlt8xrmkfwDfe2ZdImph58c79pBCS6SUxNHsDar1FbNJN
 DW2iRRZ9
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b834fd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=0SXiZArQvuHb7nzfZOsA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Wed, Sep 03, 2025 at 01:59:51PM +0200, Heiko Stuebner wrote:
> Hi Andy,
> 
> Am Mittwoch, 3. September 2025, 13:07:38 Mitteleuropäische Sommerzeit schrieb Andy Yan:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > Convert it to drm bridge driver, it will be convenient for us to
> > migrate the connector part to the display driver later.
> > 
> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> more like a general remark, this essentially conflicts with the
> big hiword-cleanup [0] that was merged today, as the inno-hdmi driver
> "lost" its separate HIWORD_UPDATE macro in favor a nicer generic one.
> 
> I'm not sure what the best way to proceed is, apart from waiting for
> 6.18-rc1.

I'd say, the correct way to handle would have been to:
- merge only FIELD_PREP_WM16 addition into bitmap-for-next using
  immutable tag
- merge the tag + all other patches into subsystem trees. Otherwise
  that series can cause a lot of conflicts with all affected subsystems.

Yury, would it be possible to implement this plan instead of pulling
everything through your tree?

-- 
With best wishes
Dmitry

