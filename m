Return-Path: <devicetree+bounces-180171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF11AC2E3E
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 10:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05F1F188464C
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 08:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F2C2AE84;
	Sat, 24 May 2025 08:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OU1yU/ep"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E992DCC0C
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 08:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748074303; cv=none; b=CZcgVhbdvHAtnNyrplqyE5tZ7ixq7K8bMs7gTSG4PSvcsYHtDwt6aar/yMc48kr58dQxA7UWhYSTu8L8Mn1qT+euoIo0owTWsxW+BXpDWn+8/AXXg6LwIcQxWmwzzrVghAeV9c4coBtXQIQ5ilRCBYMUwsCvuF0PHoHa14u3LKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748074303; c=relaxed/simple;
	bh=uvuc86gKOWODjnW+UMCTvkJfo63qplzFHhIneB8zt/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j/iRVy8s5lEmyoN9Fky8XA7Ia5koKv6RDScIeLaVUw1f+xnHvnr1RbGeNm79abkq+g8oboOm7kQZy3HUAsGv8KnAWmFz3zZfUdg2aVLygLtHnNFw/v+ZfeB2svv4Br/++3VXx40KboFaargX2l9OMn9nIK0EHrDQveT6bjkno5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OU1yU/ep; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O3Zwer018901
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 08:11:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tHPIepG7q7mc2xqprg9sD27w/5edJZMQOBa1WzER5So=; b=OU1yU/epswZPLPX3
	EaLw6wAQmJII3aCjx2G8e++6kSShC1uOQNWeZ7FyISn2eh49vSYnb9uPO/l6oTMo
	cSjjfkEP2cKScFD+l0XiDv997FNeF+qIby5KVSfIUNUrODDLvL1WV5dDZLC7e81j
	JLQJQJVtZDIH0wZlxdb3whIyQ36l1woQ7SS3lv1LaOmx6lqwWjLt3C252y7tmkpf
	gVoxXBEtmA+jRfK68RYdQYSjUWuHUnhenLro9YvyNlkMtEzWhwxvn+86rS9nGUgm
	Ft/sZXL/YCiQv5WtTN2rC8HmyJdV/muwiuqSvOwRR/v0RpAKnianiCdVQem5IOjr
	KqKOPA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6b5gbyy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 08:11:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7caee990721so166281085a.1
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 01:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748074300; x=1748679100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHPIepG7q7mc2xqprg9sD27w/5edJZMQOBa1WzER5So=;
        b=t7UAeGho+AsvN6/mm6Bm4ZQCb4A5Ljj9Ej9bIq66rGrLNkxCYJmp5g6I///JBxCbJ+
         vJWwuGRLbWUWTnoGkL+/CJ55CCppNO+XHG2vCGlBgaffjTEsorO7+o7CZzaNFkUeD4g0
         Uqt9JpAbWhVkFku/to/pLiyE2BPOKPsUfhHwlCN314XXjubEm1o3yLvB8l6Sf2bU41Li
         6G5SInPv8ODL8upwnoJsDagBVxEwCcsnzdDkKEBPtgCj7mLxYwNo3vJW9syUm/0F/J34
         qG2abvzSe4g2mB0rCAg7CBtGQGD0VgxqzaQv7HIZ+NOPMZs4Mbb+tJ170qy1M40+gRSj
         ZMmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnvMLky2DXIJqdygyyzw/NULKMiGAe0tM0WXRDw6QFgkfhxirz/6WJyWkoqrNbf8cfuUS73skGVHpA@vger.kernel.org
X-Gm-Message-State: AOJu0YxsF88j26l/dKtW3Ludl1e1B6R3ZY4DIK2gMGNb2v5TwhHbwgrN
	rcvnmZmY/t3yt2DEk2Onfc69hcmer8P3rxAEXMRt73BOy0HWzSQR2bjyFr/ZHTXfs1bmhPXKxrg
	p2YNzXzs2BeORmrGRUUPqVRkKKV2kbT3hWHRSKWSYtRAIQSyDNNHJX96ihtzDdmCs
X-Gm-Gg: ASbGncueWHdL5P+Uc6lv8ce2SsOurfAzhlRUzdSq0mj2Xelcl+UTKvw5LjLUhkXgWh0
	mR4c9r8L0uH76uxXk3V3M1oVQW2ljhR9acwNOZ6RkIVDg2DuYCXXjHJLCceqp2e1g7k0Ztiae4z
	cZyKlUARPZe6og9zo4bwNLQEouddtleOZO1ZCULgyZAvYal9u6iGMopVoiRdA1xT7dc7a05YAHb
	sN/Pij+VQQj0xbYmZNsfDekzfQ153qT4SNwsOy8bHbOa18A+n9hC0cT1pDEXOwssiblV9w3IxiO
	eS+LO4Nq6BsBEp2xDtlpQdQj1b521OyU4bYy4vb1UjEnQ4HP9mRopovcndAoQLJ4YWIBKqCncb8
	=
X-Received: by 2002:a05:620a:f15:b0:7ca:f40b:f44b with SMTP id af79cd13be357-7ceecc44cacmr332737485a.50.1748074299686;
        Sat, 24 May 2025 01:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh+51bBBWaUmqP+dgjFmfrbkOFuigtqEW7bD1m0xToXs6orv1NCpLgTxWoAXv/SLi3H/a8SA==
X-Received: by 2002:a05:620a:f15:b0:7ca:f40b:f44b with SMTP id af79cd13be357-7ceecc44cacmr332735885a.50.1748074299340;
        Sat, 24 May 2025 01:11:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b8efesm41722811fa.73.2025.05.24.01.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 01:11:38 -0700 (PDT)
Date: Sat, 24 May 2025 11:11:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
        sebastian.reichel@collabora.com, stephen@radxa.com,
        dri-devel@lists.freedesktop.org, hjc@rock-chips.com,
        mripard@kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        yubing.zhang@rock-chips.com, naoki@radxa.com,
        Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>,
        krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/9] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <osjee6ibus3kuhv7oqqvki2wdxjotjfgcnxarpovvw25jiwhqg@uburpxawk754>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-3-andyshrk@163.com>
 <2f4796ad.a2e0.196ceb908b0.Coremail.andyshrk@163.com>
 <hsrec7lguapfxdxulyncypdx5c2rzamcxeoj2kiojw3ukvi5c3@lwr6eriwoxdy>
 <7d4f2ae8.23f1.197014e386f.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7d4f2ae8.23f1.197014e386f.Coremail.andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=ZcodNtVA c=1 sm=1 tr=0 ts=68317f3d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=EUspDBNiAAAA:8
 a=s8YR1HE3AAAA:8 a=rLSYf88_2vispd5-KzUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA3MyBTYWx0ZWRfX9jIvdkLM2Vrh
 CsiFQfOHfr5X4ZfU8bqnRg5YGydY41//MkV3q7IHt/5NnVPoxb6zrLbXKGuPgeCTGjtIzaAcnwR
 z0GTEiKbUXKWDsDDRZyDRQlasmTbgSoC0LbrS84kK5xiUuaKOi7bajt3NYKUxZ+EagFhwWWG3gy
 23l0V3fWawXiPFQDEa5hGPSigZOyltoBOJh16+VnSecbh6TXwXq4Q2oXH6niFfHe++V5joXc7fd
 hjnIE4hFL/FvsGXHAgfkezqPAzBRYGD1kldeP+TnmbkhEcTOJmrGWYmIP0CYACHYDMGfSVP+6xC
 vaLUzfipS5rp2nXSM6bqdvYs95Niu52fBSiG4SHLvNWlX4AQmVVC5hmxSai3Y7nIBUkE+u4BPjV
 xKwUUODUu8raXgbpcxD515OmPnN3wnWCNIRqxMNq/9geq5X9ulRdX8mcd9fuFLWd04+Qzdyt
X-Proofpoint-GUID: Op4Nj9auep9Mpjy7Xy5Ae_qGJrUXum4j
X-Proofpoint-ORIG-GUID: Op4Nj9auep9Mpjy7Xy5Ae_qGJrUXum4j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_04,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505240073

On Sat, May 24, 2025 at 03:59:52PM +0800, Andy Yan wrote:
> 
> 
> Hello Dmitry,
> 
> 
> 在 2025-05-24 15:46:15，"Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com> 写道：
> >On Wed, May 14, 2025 at 08:15:55PM +0800, Andy Yan wrote:
> >> Hello Dmitry，
> >> 
> >>     Would it be convenient for you to continue reviewing this patch at your convenience?
> >> Or let me know your opinion on this patch.
> >>  
> >>    There is still one unresolved issue highlighted by you in the first version: try to use drm_dp_read_sink_count_cap
> >> instead of dw_dp_has_sink_count. But there is no response on my patch try to Pass down connector to drm bridge detect hook[0].
> >>    I don't know how to proceed with this patch at the moment.
> >
> >Please excuse me for the delay. It seems Maxime doesn't like that patch,
> >but I do not see a viable generic alternative.
> >
> 
> 
> I still want to express my gratitude for your help. 
> So, could we perhaps first keep this part as it is now, and
> we can switch to the generic helper in one day when we find a proper way to get the connector ?
> 

Yes. I will take a look at the series in one of the forthcoming days.

> 
> >> 
> >> 
> >> [0]https://lore.kernel.org/dri-devel/20250321085345.136380-1-andyshrk@163.com/
> >> 
> >> Thank you.
> >>   
> >> At 2025-04-03 11:37:30, "Andy Yan" <andyshrk@163.com> wrote:
> >> >From: Andy Yan <andy.yan@rock-chips.com>
> >> >

-- 
With best wishes
Dmitry

