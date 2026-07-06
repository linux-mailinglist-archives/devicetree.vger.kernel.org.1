Return-Path: <devicetree+bounces-321304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UkZlFXLhS2rkbwEAu9opvQ
	(envelope-from <devicetree+bounces-321304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:10:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FCF713B33
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:10:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="IF/ut3ah";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Yzg35E4V;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321304-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321304-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1E253327B80
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C00E37A844;
	Mon,  6 Jul 2026 15:00:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC50376465
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 15:00:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783350046; cv=none; b=DjzMMg2TOrK3d7OOyOcMMcD+XIkV89yTVIBU9qIYS0OqxevJZr4Yuh0f+kxphYKLX7+A93BXkkfs/AeidxWQLKmOtpqqUZAhKp3SOYOjJQg60VPg3TECWGDTZcukEFKreFW51pWvm15kEDq9shdt50Ug4FIDyTMhr6dOCpz5Anw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783350046; c=relaxed/simple;
	bh=CippwiaLchZkBp17ScVtGD5Koyw5ydwIvHSD5Nc6vxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hsQqzhyfNN97Qf3DAh4c2pOuOFiIl/UNCCg2fEw6Ix2cUotL6hBN1NyM3QrcbyGoMyVZKiQlQ2enNdC2eYVagkttIZslt3yIVEfig2cB+rh8MREWQbX5nYKEsPG3RscIZ9fPKH5d3rEGJc7c/bwSETAFvxENI+lYtaHWqL+BdVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IF/ut3ah; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yzg35E4V; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666EE579688132
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 15:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bn9/G/DyutefUg00Snqy1zzU
	39NkJvMT4AS5q8icaWo=; b=IF/ut3ahI8X40Wfyw7vMydD/20TuCbIZ19Z/0afh
	KTEahq8IFTkDK9tb76zcwC0Q9wNWvlKTH43UBxpNFSa/Q4XjVBXMEK7dcrVQhle3
	4FHEE50mrQk5Vo3uszoyFv9/vb0qHu75pm+FycOu6SSkqLMmDq2PGd4AyrBxHklE
	GVS30PqdnWrDeuyMbWZ7a9c8/QrIa6G8QZRy7CMcZ1jeG5X/3LTGoIcwZhlrbFB0
	7kEjJ3pdpmlUl/sXrkEQ4XshqJ3P0iBcJCnGnNRJr0d/qAnLzJatdHXrNBgoo3J2
	pt8CzE8jBlwn08YYTIQWXp9vHfE+KP7tp9sgX5A4gAX8ow==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a98h7vw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 15:00:44 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-967973f71fcso1177851241.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 08:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783350044; x=1783954844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bn9/G/DyutefUg00Snqy1zzU39NkJvMT4AS5q8icaWo=;
        b=Yzg35E4VPLaBE1bSGXO5wC1HD9/1kjtFD9nYXAt2iU+3cUVzte4Re/Yd1seFILjfDl
         5ISFGmSmonRlJOie5gKK7YTe2+R8f2lDk9sMScF9y0MfZILl2S8wqJD92UAaiq+7AOzZ
         EzbDWLL9VxkxWOVo8mOAm1XH1t4+UYd4R28I7RoYU4j3Gcs+7ecbJHj9emH30gkQoaBK
         zjWbJ2KwOTuFOLA011QBaY6qHKkT0m+KpjAymmgl17SZBjhifH4pddOt9FX75zrQwV9O
         vcaYlSwlvVC5N51+KaILHvz05nxbEX3RUpxJoiV7B+Tsda8GLA3uSlH82x5zrz4q9hdc
         DbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783350044; x=1783954844;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bn9/G/DyutefUg00Snqy1zzU39NkJvMT4AS5q8icaWo=;
        b=aDWmIrvXQGBka6FbWqO34ji/oxKUPodifDoIgSA9Ta5oyg47PQL7sjG8/BLP4F8rpK
         q3V+gpJj96oU5kI8NU8RPzf8z9MbBOnWjMwicNPZ1C56uMr5VGmHFt2awzY+a59gfXqR
         TCX6yTenMKMS2L7HQJGX9amXFu0dZChDXLuNGTMyHSbYjdj8OLFg/oE1L+WWn/vOvthb
         rJM9oiGNlMfk7zS+V0HeGsopbamzs7hctv9LhDygkEu0WrhkJ6evGO+7qm675KEzrZ6+
         i6mw6r0Vnyb3HMaWY1php80mHqHns2FEa9KlxWGqC2sagL28Dk0BniXe6o4gjApa1Mss
         tlgA==
X-Forwarded-Encrypted: i=1; AHgh+RoDGzjfn8JD+9kv6jkVh7WxFZsDwrsrzk7bfsxU/igtziQ6WFdbqSfcqRWa8+EOn1xN1a7gqc1JuSKW@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ+SN88/i3h4vpIGifqL9Ua+hdg4c63xrLwFZF2s700F0dNYoh
	6SUbBDsACZlJlhiNBAjs0PzMR6v55e7Npum4gHAAFDxx2DzAINmQRcoDXVyG0eTpGyB7JWTKoz1
	7Ht2RElRmSHegOErhbrn69uzuwuqrV8BqzyJRQTzQ5QxTDlfmWa7JqFkUMOIB/XUU
X-Gm-Gg: AfdE7cmwjR1oI0c6MfCsDFNcXYBD1WSKcobnCHZisqflaOSPuH+5s9Nv1EoFVoUcVB+
	fkmsNntvxhpSWXZ9h5/654HtckM0FZqWdcst8RdnX1gMjRR/4lcp1RNyokmcCkTGIM2eMhtBh35
	KIDXI4rtJXhpZ4ux55nGg+bSdHE8+v1S2Y9BTRkL9YhULtyKx7XlyqawBXt5MckUmwmDQOq1KOB
	rWhDE/3c2OvRPAZZWTQ4Z0Y5UnV+SV1OyqXFkqEVaFtIj5bcj6StTdNy+qFNZtE9D1TV4/M0L6l
	1evKC2UTXU4g3hAtTVrRQH0ui7YxobP3F/fgjwCAV4BediFesK1uVVbhh89t2IAah18VptTFbc7
	XZD1Q+jO9PW2LpAXneptAWUA94W2E9SOi7LUoMbUmMD3L2N4NLanZL2m6R54gsHEgi6D9xjnqSR
	GIVWz+Iq+XkOFdZ1MSyQyqX4rt
X-Received: by 2002:a05:6102:5ccc:b0:631:4cd8:b6aa with SMTP id ada2fe7eead31-744b7bb690amr470649137.13.1783350039002;
        Mon, 06 Jul 2026 08:00:39 -0700 (PDT)
X-Received: by 2002:a05:6102:5ccc:b0:631:4cd8:b6aa with SMTP id ada2fe7eead31-744b7bb690amr470598137.13.1783350038304;
        Mon, 06 Jul 2026 08:00:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c5c11sm2964033e87.77.2026.07.06.08.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 08:00:36 -0700 (PDT)
Date: Mon, 6 Jul 2026 18:00:34 +0300
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
Subject: Re: [PATCH RFC 01/13] iommu: arm-smmu-qcom: Configure lpac device
 with split address space
Message-ID: <5vfdbrk4bu77e7wgutp4h3ilbpjhcxxnwemqiufmtiwoffp4sl@oaonwwouw4qm>
References: <20260705-descriptive-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com>
 <20260705-descriptive-name-lpac-upstream-v1-1-01d50c3e0c99@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260705-descriptive-name-lpac-upstream-v1-1-01d50c3e0c99@gmail.com>
X-Authority-Analysis: v=2.4 cv=SpigLvO0 c=1 sm=1 tr=0 ts=6a4bc31c cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=pGLkceISAAAA:8
 a=lhguFYgXd42DN747EnMA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE1MiBTYWx0ZWRfX/3fvkDadp4xW
 fhL0Ywq5gbMx66fEyDX9c6cWMe2vHpiVXJaVqZ5sGlnkY9cO6A5l+EfP0ecnwaELgLT4uhbspm9
 R/W6qIrOfB+DhMcALoM05z1c1Yk16dVQLkgdw+hzdN6hfdGDqwnF6DBTVOMT7usB62zkoxPhKks
 JSSZw+AYdt+TgxMepcXSYMu767P4VTjYH5OJCUm1Mduxsl1EBU/h2H0tJX0YdawvVapoTIVQG2i
 LXxSFjsMH+ZreZDgo1ozctrWfoM6HZzXoD6fdgYY7yrr/pkvtOZQRHEsZ/dMAbVx/RB7udwF/zs
 5C/Q2t0iUNmzdgqEEznUUndPUdzaXi1BB69S2kdcWLqQmAy+yi91VkL2Wzt91ZylXM/ZB1uF8ZX
 jeHyJEfWulLkKlgHkWZLF0axJ2/yk400Ua8xdgA8bmWI7rab+p2iRd6jFhAv+OTbl+OY3KZGCCd
 oUqZ0b5R4stjihWGHWg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE1MiBTYWx0ZWRfX8+c3spbbbkh4
 lzTm5PIjajG9eYmHTx+L72uy7b+ryCchnhS3oiDFUsxdTheBbToVYoFblrNMc3mEP5Er2VE+zfJ
 thL4jwf/5YTdH00cXfv9QYdPA/JS6YA=
X-Proofpoint-GUID: sEhWGcUhIyzwWNusZPSO_70mMJVri4L7
X-Proofpoint-ORIG-GUID: sEhWGcUhIyzwWNusZPSO_70mMJVri4L7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060152
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321304-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1FCF713B33

On Sun, Jul 05, 2026 at 09:13:35PM +0200, Anna Maniscalco wrote:
> We want the context bank used by LPAC to use split address space just
> like GFX.

Why?

> 
> Signed-off-by: Anna Maniscalco <anna.maniscalco2000@gmail.com>
> ---
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

