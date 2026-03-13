Return-Path: <devicetree+bounces-274854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +rwwJ4x4s2nDWwAAu9opvQ
	(envelope-from <devicetree+bounces-274854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:38:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAA927CD3B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA8D1303743B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E80333FE05;
	Fri, 13 Mar 2026 02:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kxeAXnsv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="csa83kkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C7E2E888C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369482; cv=none; b=TiBQe4lDpc5ec0feQC39mxCG+n4Bbw7QnWcdjK29wFA1GYht105XCgxg33yzBaRdI50eJEABGW5stDJkoF0QcUScGXIgtGCnpUZtpvdX7I6SGm+9o62QhvXbwY1PnUbtaQhJtv26SCWbDG62gQ50GxzJ0w4crpJVxTnyRR+SEvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369482; c=relaxed/simple;
	bh=kHkfzFfuvqrzI5Gk4X/AVa6vzJ1jsczG8A8Hq19dAm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xp1gAxYEL8ldGETTWRfs25iFZJOlDj19Nh4p44ZUhjfzcAbDu7Jn1wVp0y1i1t3IXhASmEl9dn5KnDBTMVSJU/TJOenwo/4rfhyxB7fu5CW1JzvK7Aso5AxOrocq6V4X/PeTDvBE4TbnuUYl1N2rsk20AEMEY5jqWA3//VKhtlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kxeAXnsv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=csa83kkD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CHnxu74025952
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=edTbfdYk6vj38n03jA9Ccdlz
	+0y08pAQYAZXZkC8ewE=; b=kxeAXnsv0gSMRvu1meDg9mrP7Hrsj9MCtT8zO82+
	1SpBXboYkDnL84MBy7Y+exCctZG0grUmN9YvO7Jj8SYJFMx5w0ZvH8cqL7FNfE+2
	XaxvAQrZA4vEbMS2rwynVJOzZYzeFknHwjTbsn2GaAwhppuvtFGxZPtzTu4GD/hs
	pd5ZnCWu+4XQKXjjT10xyUCHfpUGUsASx5/+NVKmgCxEDRx6RWCpk11Wq6RmjpCi
	83u0Cp+FBWCbw7x7q/lODuooTKNRTJJJF06tCd3D7od0EXxHVgWb82iSQE/ZPxQj
	6EytNt3MTTPrZcAzI17p/SQcR8DAipInakrWlnP35+n4sw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50v5hr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:38:00 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899f474fae1so239208676d6.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773369479; x=1773974279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=edTbfdYk6vj38n03jA9Ccdlz+0y08pAQYAZXZkC8ewE=;
        b=csa83kkDax/lck8WdBWu88dpg+jcb60J8spA4jScOgCKmLDUvaTQCfMbN73AWU4Pty
         XHodDjrmQJNQhfDC5jaRxHmc3sqbYv6niySvLpT/MveKA/QYzwXV6fXTWFPecC5IjD+K
         Qf0rfzwr8NRjlmETvqOvAOVEe0zJwjl9Of8AK7wuKze5UxM7on7WoHSsKfyX7gXCkDiu
         Lf1JiALtFa5aL/UXArRcGbR70dUj+fZkTXs5ZghpfFIb20dR2CXm8baEUXx3ZRZGrrO1
         U9bHkimW+NpnyOstN86eGSJf9futpFtNEzp6RxBmvathhAYqbsMf/WiF/M1petxzUQxi
         rKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369479; x=1773974279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=edTbfdYk6vj38n03jA9Ccdlz+0y08pAQYAZXZkC8ewE=;
        b=K6fpxMUBmWSVal/HJRMM6M1x+YL6kx9Ji6heEcmz3imuepLz38QMSiCFkbHjsumy02
         4Y19UMvV5t9blWu2ZRwhOxZKi7+1LJZvTXhGfLSAh90bGj+qokZziUs22FxP7FdKVtI9
         7zGxR4o1cddToDkGJWKZsYtLQvYSyJSwOL0yZX189w5iPz7igvX80W7YMk39UWBfxeE9
         sK29prwAtUJ6icguYDW1K80x2PiMS3AQhv/TIZc+d5z548AHhiumNVBCkwk0UL5yT3c6
         noCHz4pordnRQRpz303T7fPYtYwlKgBCLL0HxgaMZ8WNGAun4giJ2TGySA7WHyREUJmQ
         knRw==
X-Forwarded-Encrypted: i=1; AJvYcCV/kfX23kr9X56FfmgT4NtJlI0dfNAZaPJMboZllKSx0kkzyAg12QOg8CwQChyeI76s1rWp9cQD+TfR@vger.kernel.org
X-Gm-Message-State: AOJu0YzHIgu1EEDeeBt/EpWkpu5nIAgs4CXiQIp239GuN1EmQsPXe7IY
	+Sd3r5MtW1psoTlBh8vkAnZ/OQjr4B+jP2Tdli9JRUuOSvnBVThtR86ZWuUZGWq+MkrV710qFN3
	CEgYD/tizE64aYkDYZxkX0NY+Jlf3rvMczfqFbXnkkrPe+3M4Hg/LHRQVzpmObMLG
X-Gm-Gg: ATEYQzxxMvYTjMbqlZ4XdcxW8KaqNd6HeZIKkt4r8YS4LsB/nTGVOYUNumazH0HCLMc
	yUrOerNuw4+PBw71Bbikpc1f+Vm4I/qCSePcGIss61a5AN9GV3vNaatwIofJrBKPdRwwvR/jipr
	VarcG169CqO1JPB1rzCtm6brGqc020UUulv3TokbjCu+QDH0VuJXWjGPYeoso+fpHYkN3qK/Pnk
	cpwqXaMTco+yUlozlE1WTJrsto0IZUsJWxYf++RDrflXlkZE9gioClwouEp009G+X4yOoSL/kxm
	FyDGhgnDp73bXRLlb2rXyG0eUEYENL4c4uDpbSACC8ukgkjQImFnAx59U0G2L/SsW3LgBWRErPH
	UcUDk/mxPOalq4d5GYbjKApY6rd4kU9c/vhvDnaXQIWc+IP/KfVDmDa0abYwocqClQtqVYfKt4l
	wXH1/bX4sz2UyatuoX3+ywuFzZucy5V/yRLn0=
X-Received: by 2002:a05:620a:2a0d:b0:8cd:86a2:33f9 with SMTP id af79cd13be357-8cdaa776eaamr698692785a.9.1773369479257;
        Thu, 12 Mar 2026 19:37:59 -0700 (PDT)
X-Received: by 2002:a05:620a:2a0d:b0:8cd:86a2:33f9 with SMTP id af79cd13be357-8cdaa776eaamr698691685a.9.1773369478802;
        Thu, 12 Mar 2026 19:37:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156358066sm1275495e87.63.2026.03.12.19.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:37:56 -0700 (PDT)
Date: Fri, 13 Mar 2026 04:37:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 5/7] remoteproc: core: set recovery_disabled when
 doing rproc_add()
Message-ID: <ymo3kf4bsaz5yh4uwpk6dapfuzujepru3szaa4ujge7vtv43ka@skc5xgejj6aw>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-5-0a91575e0e7e@oss.qualcomm.com>
 <CAMRc=MedT32COu-B_TsrN+jCrHjde2v5gnA6WOUmMQ2dEBY6WQ@mail.gmail.com>
 <ce24a2sgg4b6wymoxwgl2ve6np2nxn2wuxfqxfpmvqqrpvgouf@xihd6ziqwu4m>
 <CAMRc=MfRxhXXdAEX+Gm-vJbQGJZ7QRL6RM2CbhcLiqicyvftdg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMRc=MfRxhXXdAEX+Gm-vJbQGJZ7QRL6RM2CbhcLiqicyvftdg@mail.gmail.com>
X-Proofpoint-GUID: yUtvjwmXuLL2Go73DdBvaN_dY2IVD2Qa
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b37888 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=XRqFVi2MeEOXw3go7kIA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: yUtvjwmXuLL2Go73DdBvaN_dY2IVD2Qa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAyMCBTYWx0ZWRfX8wL9u4pjsPZQ
 5l0GJ2NATEo8/UDPoe8fuRL48WmPvyGTJNUy9f1dy7/as5ix5qEIYPGfMpOMZIX7BYSahJf309j
 MA9eYRZ0fBoVAojJxcIC0UT9IChpbNrrqi0I4Iw6wExD0JKTvsHVik/yWjYo+kgLZxbdAOGuZq9
 BzeBvzu/NLqHbkxQGzrgwZY+BXOyoQ21DJucyPV0p4K4Gfoa9eop0fBeT1wenafSYwtvb17+YQG
 paWk3Uk1CVw5YzjBL9/MSZ4IWUbRbQB6VF81wLTneDRczjj3Q24KO+ve6L4NKQxtz1wFaSZj5I4
 fL+qDIxgPHxd2egUnaOm8zLmehEb8fM+O0KLt4/bJTEua7cDqdI++7zYuwf8Knt8l0McH2uaf6i
 +dXwXDohzzug/xEpGC/G77+eQAN7ZWtsNXA3FCBKsSkdmxEJfw4JzNTKkc72mE1X3gumg7Ki+I+
 3p4O3YHe36aae4xSTWg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130020
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EEAA927CD3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 01:39:50AM -0700, Bartosz Golaszewski wrote:
> On Wed, 11 Mar 2026 03:11:42 +0100, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> said:
> > On Tue, Mar 10, 2026 at 06:50:30AM -0700, Bartosz Golaszewski wrote:
> >>
> >> Ideally things like this would be passed to the rproc core in some kind of a
> >> config structure and only set when registration succeeds. This looks to me
> >> like papering over the real issue and I think it's still racy as there's no
> >> true synchronization.
> >>
> >> Wouldn't it be better to take rproc->lock for the entire duration of
> >> rproc_add()? It's already initialized in rproc_alloc().
> >
> > It would still be racy as rproc_trigger_recovery() is called outside of
> > the lock. Instead the error cleanup path (and BTW, rproc_del() path too)
> > must explicitly call cancel_work_sync() on the crash_handler work (and
> > any other work items that can be scheduled).
> >
> 
> This looks weird TBH. For example: rproc_crash_handler_work() takes the lock,
> but releases it right before calling inspecting rproc->recovery_disabled and
> calling rproc_trigger_recovery(). It looks wrong, I think it should keep the
> lock and rptoc_trigger_recovery() should enforce it being taken before the
> call.

Yes. Nevertheless the driver should cancel the work too.

-- 
With best wishes
Dmitry

