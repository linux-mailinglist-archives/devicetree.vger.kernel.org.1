Return-Path: <devicetree+bounces-321320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OKg+IYzMS2rfaQEAu9opvQ
	(envelope-from <devicetree+bounces-321320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:41:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB540712B89
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:40:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=AN2GHhtm;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=dct0FyGm;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321320-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321320-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E0E931EC9C6
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7FA38BF61;
	Mon,  6 Jul 2026 15:04:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33462383C6E
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 15:04:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783350291; cv=none; b=sFKEHPtjU7TJtNo3iradqq+xUov4SBHil4xXVuPRgpGWGYPWIQ5GGKri/cMFr+ixuyLpuCarvI7I/6xyDnScIlUa+VqrytiYvgVd8R5UVouRUpMFmLAzI0KuSCmG7JC6xxxjy1F/pO93cHBX2NzVJFBM2+KDFa2w8lE/4uqD7o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783350291; c=relaxed/simple;
	bh=X04LUYsxaMNzhkdqZvMTj/P9CJGwCl0lEAN/gR2A8r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ezb3RbEJT9cJ5erJNz/Fo2/w5NKGtEEFvdTs3snZiYTETgHKGAHJKT/f3lJLzFMAeWgNqRdmY1QAGaSE1W907sp4ktp2naH9lBUlTU2who/GdsCl/lxHJp0Cf3fir0mU7SFsBpjwft3UK8mF/pU4KHq2++afOFfkJB5hXBACaJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AN2GHhtm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dct0FyGm; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666EE7Jt616501
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 15:04:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ca2td9+EyVlsweraoMntmzjY
	hSdPbwsqF8kFzfiyaX4=; b=AN2GHhtmMMxBmwhxImr+fE8YcEtR/M0eVlKUqV66
	oveiQyg3nTu2wZ76otqvpdNWss7noUClU42QGos4EFu7VQ45pPxoEzw+nEbb7gtZ
	ucCyHSsB+Dwx9kIiLWf7SSS9Xn03PlC1Sr3JRro1hzjF/5fC8BR/fXRDI/lFznfm
	an8HJClriUnfgVKmtNWH6tbqL9ARkTzeCVTDiXnHojqMVfDGGz27/RYhPKy1jpD/
	uu/iPvQ/cN+PywxEzBuQG3qJEgH3zcpQ2vRLikbfVNLFUMjjglMMnA0Tkgov8fOi
	qX9PpDojdZEesiY4S09lTIJs6Opw01D8MlDxo05HdA/6EQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f87rxt0jg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 15:04:49 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5bd6e81f792so3386572e0c.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 08:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783350288; x=1783955088; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ca2td9+EyVlsweraoMntmzjYhSdPbwsqF8kFzfiyaX4=;
        b=dct0FyGmp1jShB5yxTpWZ1CKzwRcY2WUTxP9rpEsObuz3552oczFyvyj7f1ZCMs8IL
         j160uBszDeA1tAVn/LECrnGsz59mKQnCOZS76kbHEuNdls248jC4RwUs3EmfsoHDy8/7
         5vih5tCUqmaW7XKF6+s82gYDGIig33SXztw5DR6qkdzKxZ9zc0BaaIxVrZk/ogMYrPXG
         bN1A4iG0iPdHiUA8Zckoz3alJiLVspqxU2fW+lOYAe+P4FQJPQg1nrp6kK4Imt6zfBT+
         gzUeHyWqD77cgOuRhAStDXbRyNMmayknqTlIPEbUTEHrbv0itoC32RCvXJ0jfaMEb2F7
         N8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783350288; x=1783955088;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ca2td9+EyVlsweraoMntmzjYhSdPbwsqF8kFzfiyaX4=;
        b=lLG/zQMwJEX1/x5iF3gN5vxCq2MhNjWcBCfqFEV5PH6b2Qw24fKb1wQVoxKJyTS/bh
         HB4KWjdGSLnNSOQ8kPDEooNMIiWPfBF9FiP2SsjWb5CMS6qcL+ilA6H8rCPjUfgxTWFC
         /gKDaCDvYsTpcQgf7mUVk3TAlQI1VNdXiBwY9l7PiJDyjaNPjZkg2kb4ZSyd/efauGvI
         2otBgptz72jNbmGmimik/evWUrlAu9rK2DyKEube6ms3QbjbCzHmJc77S8+kUU0gsqyU
         sWUVHyo2H04lrnKZXH7yjGehBhiE4RL/uvzKZGi7R+9E6p3+FqKMcK7NSEWDez+PXNe+
         01EA==
X-Forwarded-Encrypted: i=1; AHgh+RqXLrDes36kT7M+H12rajnopRTv64w9Ree4vk7BKFWnmyKJVgT2DRvumw7QdgxFWWi5tteCZqH3r5uv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5RdPX9x22ELJUfyKbPZQn0wTKFv1/kwNlxitbL7oCxqQi5YZl
	Mzc0h62x7BAqoMFNyf0sQ0j+tg2hPamEY1rU9i+QRjbxqqIeOweGybA42e6B+xbgAkGeEhe3BWO
	PsAx+rAunhxKfQBQ1fiAtjn2h8fgmguG6uI4Au5CUV9LpyWtZIcXuYda0a4sX3122
X-Gm-Gg: AfdE7cmZVzG/KK6yZG8SbOc8/uuONwcDmNZEXx86nI8TKbTHme9LQMX0b3Qwzz3Zx5H
	rQP6ZyX28n1KQ+kQ2Lvcog6B96ydc1JZWLRtJJXqrbIK0yU7LlmeONZ3wac13JGyMYCBV3R9WkZ
	YLBwGbvNDVw8amd3gzucGFo+ZPAFzuwnqd0pRvA9FIQLjcINy7okjtAo2a3RAB5bMJ08G32E5UT
	tWZYhUVnR6BaK447nYqJfm7gsgwHLTgpPPrvu5ANMIPN7kGsQ45UTLGbdKihlYMqzqh0ux1LEtB
	rDr1Kq+PqBef8nZkOs6ds52lfNDgtAZG+1kg9kuXxaTtijAxTjbtjzYKvbU7IP3N/1sl2J1Kqw6
	3iF1qzXQ2Zb9wLIcAOE0KZZ9X0kamYhCOGiMno+hVa6up/541rv7QDbCagMYaZEuYPo54mb3iA6
	Wp5ys4jsBgFOV5cpU8DWfX38SW
X-Received: by 2002:a05:6122:c89:b0:59e:f727:4bb4 with SMTP id 71dfb90a1353d-5be90771737mr579917e0c.1.1783350288327;
        Mon, 06 Jul 2026 08:04:48 -0700 (PDT)
X-Received: by 2002:a05:6122:c89:b0:59e:f727:4bb4 with SMTP id 71dfb90a1353d-5be90771737mr579889e0c.1.1783350287799;
        Mon, 06 Jul 2026 08:04:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39c5e58bee3sm2046451fa.8.2026.07.06.08.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 08:04:46 -0700 (PDT)
Date: Mon, 6 Jul 2026 18:04:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anna Maniscalco <anna.maniscalco2000@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, iommu@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 03/13] drm/msm: look for lpac from dts
Message-ID: <rwohvfbsw2brpxrfg26egu5arwe6g7n2etelo33eegmu5cz65k@3syofuxzsjrc>
References: <20260705-descriptive-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com>
 <20260705-descriptive-name-lpac-upstream-v1-3-01d50c3e0c99@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260705-descriptive-name-lpac-upstream-v1-3-01d50c3e0c99@gmail.com>
X-Proofpoint-ORIG-GUID: eaflbpuj_0RZl_VZCt2BKfFp3JFL2Hgc
X-Authority-Analysis: v=2.4 cv=Hv1G3UTS c=1 sm=1 tr=0 ts=6a4bc411 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=pGLkceISAAAA:8
 a=lS1fCJvthqzCmkgEd28A:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE1MyBTYWx0ZWRfX2zkCjMj3rY0Q
 aN810sGD7pXPP4u+ov6DW9wcpr2hCXPxxpMVCuxZ8ySVhvF0mNGJNjKM5bZ36451/fN/h5I52mM
 lAeuTJGDOmNHp+tmfj++A4zQBMEZUYM=
X-Proofpoint-GUID: eaflbpuj_0RZl_VZCt2BKfFp3JFL2Hgc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE1MyBTYWx0ZWRfXwQ917OrEuXGV
 ggrI6tvC2jNrh2tLmWJqhFRwOp1jRCQghPTIiFKLA0LNVlad2gOkBgVbV/TyIGoRe3nVNX8aTKH
 nYIc/bQTnFM4V6u365+YUgj1NY9ZXtWUR6V1ioNB36w61QEGqENSf6tJG7G8L5GfhSpXT3WRkDv
 +0KUUqbpLVaGgwk8CajnKSKssSTTyoj1R67FF0ZwguHoch7OdN0ZhdnaRt8vyVs7+g0yemmLhOC
 wbhNcUYgOQtHwqjpHebvbKqZFjwZd2NnIzSMopQse0cZXj0gz8UBJlRKcSBUW31/amiP63xdQMo
 yglL7SZE1kiR5zXn3220HtfsF7hZxosnoFWMytuRSkYHY/iRv6hk8Y272/G22VfRZlSrVcy4Cxt
 MBpzqTgSzxzQXNHjzOpxbqjYe1ff3E+OeX9g8MN5nT/8Btw4Zx5A+Oj/M8Es8R+6LK7n3qzCTLl
 1auukNWDj4g1OCH372g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060153
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321320-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,3syofuxzsjrc:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_RECIPIENTS(0.00)[m:anna.maniscalco2000@gmail.com,m:robin.clark@oss.qualcomm.com,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:sean@poorly.run,m:konradybcio@kernel.org,m:akhilpo@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:andersson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:iommu@lists.linux.dev,m:linux-arm-msm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:annamaniscalco2000@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,arm.com,8bytes.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,lists.linux.dev,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB540712B89

On Sun, Jul 05, 2026 at 09:13:37PM +0200, Anna Maniscalco wrote:
> In order to associate the SID used by LPAC to it's own domain and
> context bank we need a separate node on the DTS.

Can we use iommu-map instead of adding a new device using the same
addresses? You provide zero explanations, but it seems like you are
trying to separate a part of the GPU into a separate device, but it's
unnecessary.

> 
> Add the code to look up that node on initialization.
> 
> Signed-off-by: Anna Maniscalco <anna.maniscalco2000@gmail.com>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_gpu.c | 21 ++++++++++++++++++++-
>  drivers/gpu/drm/msm/msm_gpu.h           |  1 +
>  2 files changed, 21 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

