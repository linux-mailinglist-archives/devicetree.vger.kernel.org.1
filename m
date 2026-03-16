Return-Path: <devicetree+bounces-275917-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIOwHG52t2nxRQEAu9opvQ
	(envelope-from <devicetree+bounces-275917-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:18:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EB32945A3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 878D6300788D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241653126C4;
	Mon, 16 Mar 2026 03:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UgZY4e3T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f7DWqD3J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01B8137923
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773631082; cv=none; b=jh8bjyOfo+/mCtuKNo+kfO8kkCKFQPy0fCTQQUOq7UzVp+5xfTIkIj5xninyEeN8JNM3tt6i/8ymEq89p4UD2W0TAG4LJEbRsCRY3GJdVcVJnFDooec23uxBxvM/xRE8FZ/QIxsmkdP4nxEByX9l09PtJKrLkIcH2PqQw40Ux9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773631082; c=relaxed/simple;
	bh=MQIo7gOyraSVkhGD0+E4X1EBQG6EFoJcEyMsVDYUAJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FkkKP3H4S4AbRQSq7n1VjypW0q435KEeNsmDJhgtBWQznll0Ane1378dVtHXgImJPvN9ripECL81dReEXZvXTyDPwMjdu0ablfMNZvUqgJq/pGpBFgVJnbkus4JiIyCrMCTqw2TxF3tV6JFECcFq04bPEI/nEbobDJur0RjwZwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UgZY4e3T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f7DWqD3J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FMgDbw138313
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rCtDtvcMPIIzhmO3lBZlD8BEAmaAtTPECV5u+wA+9e4=; b=UgZY4e3TeFQKHPMO
	r6LQfQJeV3Qn53k6CAeodM36D4WHGJUBdYzlZIXc/BaPfW8a4pgN7bjOfVsynI2N
	4Gv5Li7Rnv2mB0OkuRDUdqsLM0oG2nJSwc3vrGaGbaMWsDCt4ZUb2H8htU2KrH25
	iHaWq9Tayse/EPVAwFxjFj1ZN+amDyJfKe62a/OSx7yB3Tj2Wq0+djVKl02iBTLu
	+V+RoXafAEIan1xvli4t6tVnn3g/ZT48KW2+uGJh1t1MN87tuxjK2pg2nHZF29pM
	sAuB6k7L09ullyq6vsD9bM2Pqk6cWtoTq1R8YcJsI03pxTjWg9taQOUuAwY29Mwr
	JbGu1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027c0g8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:17:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb0595def4so3589599885a.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773631079; x=1774235879; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rCtDtvcMPIIzhmO3lBZlD8BEAmaAtTPECV5u+wA+9e4=;
        b=f7DWqD3JjD1nxrnsM+JR80J+ZzSVLlmmx0/CRK2A9AB2nBjq4/j4pKB2rCO1PL+5WE
         Ap8+fqh5pN+Ddgui3EYCQXhZSeg8UUyPhhEGdFlI+ZA4hY8bF6kwf9yqWYu5FzD//7eD
         pQQ73SEBPwmTR0fBX/+YdMUS6STy+aPp5yZJ2sBeA3sPFnfOKKClOeu1bJMWWC7lJNTY
         MFJsgsPwAK3KxtzpbbNHdJln395C/nFg6whXhX8OLcvYoRVB2di4eKLVd7eahTgBadDb
         E09Ymi2W6wOLCTX6zIfrgfavYTUCQ5LWFhAfhSG39xO7e9EsOgRh8XfMuVhHAWXhWB+P
         KNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773631079; x=1774235879;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rCtDtvcMPIIzhmO3lBZlD8BEAmaAtTPECV5u+wA+9e4=;
        b=PfY5QlqFe6V2dWx8dwFRRWjHetGDg3cx2427aUDbrfICiCYEhh2k9bWCDKR+4+p3xf
         USRjN9aK+2/UbFKjlea3YfTTN1msEfe4wKFfdV9HrynoxiWE/uKFOOkemvFHQC5SuTb2
         68nZwNuHVBVo3/X9pdMgvzWBvLnQc3EF5krlCIZjHkPZOFb5hROv4ah+tRVAJth1Fmyk
         IVfTYO3TqTV0WneRG+mfgQ0P6/fysAR0QjyHE9R24WtW+an7YYLvCZh3FbN76S1yh2Yd
         hCw6ZxRN9JrG7FEahgw+wl3cvq+fzCRmnlnKJ5MYzxG4Kc1s8GIo+6TtZhKggPPp+Rnl
         YHaA==
X-Forwarded-Encrypted: i=1; AJvYcCV2VTOFkmJDalnyN8wYheWLRfCkfdO0Ct5NouiccUZjKphTZa9cVxZsQnzOU96OANnt7xenhP7R/I5o@vger.kernel.org
X-Gm-Message-State: AOJu0YwxogZA95zaR22Do/mec3EVFKeyDQ4b0HNDqi5hhvb8n4RUGPkX
	225OFI5HUy1WOzgjkxUsDZLigWQVfLyxM2GHfNlbIapq6GPo5Fzh6Dvs4KnGWPUOq6KZmBfciD4
	AWAh4AnRV5zkx6S6WHTwZ0v7EwTAhGzLs5kZ9yYKHZUK+oE2YQo1DBYxf9h80eMbq
X-Gm-Gg: ATEYQzww6my8sC8wBxOVbmRIVuRi3gYckYllVvnx0NJCzAC4eD0qJFEK9y0nZ+f9IEu
	IPNkbRg1bm5UGhYDd4ZExUuwgqJljLneolRxC7gWTWIigXpY2Nn7O/IcW2ZlgUUpUOrTMdFOwdH
	5zwWxmofUAz8BpyQQ2nXE8ZSs7iAvcykNqgRSfaksAg1TNA7lluL8BEBomRa/VD4JM7qGevm3XV
	AP0CWsdpuOMuLxJYzNsWLT7xLidREYC3Jw+QVXhvT0xlxo4ToSK6UIT6Lvo0i2Sw74vWS40CuX0
	xsm9A2IhamwqqD2qGzmR5YQInTKIDUNor/B9FXB2NHNKsWtNPNZdFrnuDNeoTMz1uYV4V+tGKbT
	oyGOex0jnJHRVwDEMIQVURUww2Xov28MG16j6lYWAuNZZ+/qgQMkqNyzNAJsmxc+gQsq/gpYFQ0
	t7mKNf/Dh2u5I5Yv/e20mjGgeiNW0IcNpcwn4=
X-Received: by 2002:a05:620a:29ca:b0:8cd:85a1:d136 with SMTP id af79cd13be357-8cdaa7793a3mr1718924585a.4.1773631079315;
        Sun, 15 Mar 2026 20:17:59 -0700 (PDT)
X-Received: by 2002:a05:620a:29ca:b0:8cd:85a1:d136 with SMTP id af79cd13be357-8cdaa7793a3mr1718923685a.4.1773631078859;
        Sun, 15 Mar 2026 20:17:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e47csm3234895e87.28.2026.03.15.20.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 20:17:56 -0700 (PDT)
Date: Mon, 16 Mar 2026 05:17:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Kaustabh Chakraborty <kauschluss@disroot.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 2/3] drm: panel: Add Samsung S6E8FCO DSI controller
 for M1906F9 panel
Message-ID: <36cglvsoch5vvlyyanyh4zuqbpb3mxlb463dh4zddr2ceu6kwt@mbmcwckg4meo>
References: <20260314-panel-patches-v4-0-1ecbb2c0c3c8@gmail.com>
 <20260314-panel-patches-v4-2-1ecbb2c0c3c8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260314-panel-patches-v4-2-1ecbb2c0c3c8@gmail.com>
X-Proofpoint-GUID: BgG-KF5Avx0AzSeuOJWzR7bEXcKTX0Jx
X-Proofpoint-ORIG-GUID: BgG-KF5Avx0AzSeuOJWzR7bEXcKTX0Jx
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b77667 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=sfOm8-O8AAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=8s1cotv8QL1OgUCTKcIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAyMyBTYWx0ZWRfXx1vT4j9264NI
 DUqiIcTq8F2b0ZZBzXK45gW5eYZ1VD8eQBMF37gWAgoHVuMaevPeXOfHEDBstDFlvloO010NMdn
 COqGdsfkEkzeLqyV9D1X+IZFFT8UW0kfiwzEVB8Usx8RwovRYMgrSVVOgvekbCYfMQ+YRxjTIsr
 /s16yySr4GwJEagGs+g4rPAFYrSbDUTHTk/T5uqsn5xQ/NoonPggcIx1lLdZ+g/Z8+NGkEo39Gf
 fB/WoZZ378fu6mt5k5xbXdL59p1M27aIa+J8jjh7KOcxsswinhSzEzRGakLOGVQEzuUIZRF7Ri+
 3mQzdtxB8pNhaR/VqGaHULqfE3/Erb0BxBpk1UjKp0uqhvHyiIBtTqYI8D20ZRTUzd2TUg8bhTz
 UnmjJFXLfCVw2eG7EETbdvCtsFy6ILQyVPn83pCysVCN+7qpWvdYcvXsQcLsJ8P1PYf/44F2BNY
 UJT1gHp2hzablfPgciQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160023
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275917-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org,lists.sr.ht,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E0EB32945A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 14, 2026 at 11:46:22PM +0200, Yedaya Katsman wrote:
> Add driver for Samsung S6E8FCO DSI controller for M1906F9 video mode panel,
> found in Xiaomi Mi A3 mobile phone.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> ---
> 
> The downstream dts claims a max brightness of 2047, but seems to ignore the
> MSB.
> ---
>  MAINTAINERS                                        |   5 +
>  drivers/gpu/drm/panel/Kconfig                      |  13 +
>  drivers/gpu/drm/panel/Makefile                     |   1 +
>  .../gpu/drm/panel/panel-samsung-s6e8fco-m1906f9.c  | 301 +++++++++++++++++++++
>  4 files changed, 320 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

