Return-Path: <devicetree+bounces-267801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEEBCBJ1nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:53:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5467F184F7C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6267E30028FD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E030236D50A;
	Tue, 24 Feb 2026 09:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpzVIVFl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q3d5nrXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B882337107D
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926783; cv=none; b=oMUywuIZBzaK80o500HGGCUqfoYUJywphye+ZY+xbTRlW6VcyTTK85uGTwd7eoaFpMy7byRN3JVxty18DzHf6aWhgfnbUfpKysqFLO+3QbTEUzZwQSi3BwBTGFdtZCQdv1NoczWWmjDGd9lvT1qycYQwMcSLrtmuFeXGRTpT5gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926783; c=relaxed/simple;
	bh=xhkpng1n6YmbsIQQvz9aqEU1lB+NHPH1lnGC88a17Tk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TZCcCqoNxSVn34Te31bHZSmW3ohZvhIa4kkMjx79EPZVh0M2cKcgwnLGn5j48yrN9/iqmbLwDc0PmvMXHyNi673rbbe396beeUI6QU2IcLyJa3ZVv/o09GGPRsk0msMR6FLtLL9infvB8/xlcn8Mu9OLLn61gWXEzL4ctC5B5mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpzVIVFl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q3d5nrXh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LujW694525
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:53:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u828qxpVVFzxepP9ptP2nkRL
	eZRVHAa0CaoMHz2ebqQ=; b=JpzVIVFlIcNgr8a4lRjWRfp2t/Oa1LG5qYeNOKBu
	z7CiUqu8dL8Bk4qtV1XuSW5Pe4wlISiC1pVOrOd1PeJ4BJdeJDhwooFaQPCvJ7D4
	IV+K8pPZ/9p64+gM7OJODcsEVYaiITjSa9F1d2IojjlODCHTM/zNlWW0vUltrZDK
	Ej6QHjJr/1o0U7cGwMXOKnyoN8e8NJ1D/iq/Mo1jagd38qi63qkOFwR+TnINg7r/
	rAUXK3G7o827ZJEkx59quZYYqpFf2K5y0jwPXAHJAGa5NSZxDLooHq5KyAK2T91R
	oZ4RFb7ZIafXAaBjB1skRN18tmOUUV+0/vMRIKAyKgP/lw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9tnsq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:53:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4d191ef1so756030085a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771926781; x=1772531581; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u828qxpVVFzxepP9ptP2nkRLeZRVHAa0CaoMHz2ebqQ=;
        b=Q3d5nrXhMBQJP13Gj5OhkwicSMZ/G+oI+yUbTDNUgRFgrp2klu0sk3ujv41dS/jpcc
         jfNRaiRqhj21+Ncc/vioQC0+Zjb1301m0GdvBO9pDj/uUl/nKY7HCIEHQfHKVkxa5V7A
         j+dtU5BRhRjID/o4pSEpM0q3JAwr3HeDT6msUHQCBxQigFVYL4Un4UtpfgZAr2BT1QmL
         X6qlPzd1qkk4H/mRMbYqKXPj0Ce4eKB5gPlrsB6zNHZQeVBJu+Go1eCHJkrcGyMScToZ
         zZUcagu42UTn1YrVea3WYuaRYRjV1HQez1ilbnnegF2EB3zsMbyFE97XE335g9fL2b/P
         mqXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771926781; x=1772531581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u828qxpVVFzxepP9ptP2nkRLeZRVHAa0CaoMHz2ebqQ=;
        b=ExL9qlz7wuGlJ5l7IU3eSNcC4IH7BWIlJIJaaZE61S2KWlDkpcD3OBj29/KnQRLrY6
         qRURkgyGZgc5u+9FXtz0Jhsv/g7xs7BRgQnFPCyWWwwvFtyDfNenmqFQDC4EpF/GcmtH
         7W0E/EiyiOcKxqZKmhOT5ewDH/N/KRuR58F3pzk1r1CvfKB8nNfAnpGfqKaX1f4Yhzbi
         1iyg5ksdH3WQ3ZNAugqS69x2h95mVPHNN50BtCcQ02xEJRWS6JGK2dI5/2iMkhtB/HFL
         Eh2FSeEqkHCbvbQJX0AVdOFAN68HVxWyRo8HIgQ1AgjeaZdX+YVGhsva4YHvQ2srqRJ6
         rHJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+Z+vGUgt2wjXdr0K6VHRNlHOYiKa4seY2cKKSanzi9x85ar+cKWyce7Bro2KmIAVigI3hIfrjMlJP@vger.kernel.org
X-Gm-Message-State: AOJu0YwxBQ4ZkAqbMnx+lOmDiNuxiTMPAA2GSUvmW9ltXl7/q+/veT01
	1S8hSSZzFSFaizR3QOZOe9WXZMrit2d5YEI/9TctguRmKq7KV+agxtjtKyWkJdp2uudEWntp+lk
	2N2oUi7O5FMcFkXUjqn/QfYd91DYVXpk8juY/gw2Nj8+ceoEyFqqzUdkPhyU22RmD
X-Gm-Gg: AZuq6aKIWbqxKA6bqnfTtzmGFLiSIfu/2PzEmNmuHtuc5nz4sOPqAsQm2jeOCVrPfNH
	JvVVEnLfaPcw4S5PrZE432p2znJgC1hM2MAjv8WLaJTMxK7pGGDF/U6FJpfBd0MaRNB76SJef7Y
	sZqiTvZ9sdZbbhKrFEZtnIHmRtxRHHrdb5whpqgleILNJ1LtPJGzeJ+vB5eoelb+qyp+wY+SMTB
	bFJjryqFlK4GxuVd6WxPw6HlBrTx74tOZHkkcpEODlrHJOKAj+31qar9j9HGIG012RylnxyhvaT
	8dK64pODWFz5eY1om9No2QQ3oPZWxT9BRyKmahAuqWNscmGuCCzp0v4++3QQndHwhC1yaCVRA7d
	wr0N8+TSJapq8SQTG2Ld5rwvKvkCubRTMT4IMda60UqfokuPns7Z6fc1KW2W9ws822HLT81qLOF
	cKMmNb8sca4r2uhP7V4d9qlcsAOBOhXxwboxs=
X-Received: by 2002:a05:620a:3197:b0:8cb:3870:5c1e with SMTP id af79cd13be357-8cb8c9fe7a4mr1447993085a.25.1771926780962;
        Tue, 24 Feb 2026 01:53:00 -0800 (PST)
X-Received: by 2002:a05:620a:3197:b0:8cb:3870:5c1e with SMTP id af79cd13be357-8cb8c9fe7a4mr1447990085a.25.1771926780409;
        Tue, 24 Feb 2026 01:53:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45a64sm2072227e87.67.2026.02.24.01.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 01:52:59 -0800 (PST)
Date: Tue, 24 Feb 2026 11:52:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raymond Hackley <wonderfulshrinemaidenofparadise@postmarketos.org>
Cc: linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Max McNamee <maxmcnamee@proton.me>,
        Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Raymond Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916-samsung-coreprimeltevzw:
 add device tree
Message-ID: <t3khpv3xltx276k3fgfcawt46yxsb7ro33kffj4kmb6pxrvx2t@mds6hqfaz5ol>
References: <20260223220514.2556033-1-wonderfulshrinemaidenofparadise@postmarketos.org>
 <20260223220514.2556033-4-wonderfulshrinemaidenofparadise@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223220514.2556033-4-wonderfulshrinemaidenofparadise@postmarketos.org>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d74fe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=sfOm8-O8AAAA:8
 a=EUspDBNiAAAA:8 a=d2ve7ugHHLgULyLVOFsA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MiBTYWx0ZWRfX+ronwNe43Now
 UaRxBwTRJ6Scqp47rSY2R98Szr1U6OEbUAYA7J0bJqopD/ftjsPwIukGIGeCENGAoSATN9pZhYy
 z3r5fI+GA3jKc76D46ePNZK7aDWzrPD1cj9iNZW9yro8feHtECOdgyjgtl3Lrp0YCDQ8l0TaQGF
 7m93lWRi1iH+KQATIf0lFCT5BD3VLitwHhZuo2++ITa8O1AcK3QRa8m4v8PTcK68DRmymMKX9Gc
 CS+e65g6TgNX28YCFaY9CBeRx1fCqjQgRmv+U8Ysi6eCTuU0ka8mYkw13WUEXSLDJby12NMhcCd
 3b1yO1RyP2oQ8jJI6husMLWru3GYiB4+fPi/ehqgyUYQvSxSypEdJVuL1kAww17Pify9sm6V9T1
 czr0Goa5wz5d0vY2BkrEEsYeP/YXrSL9j+sSUoV4CLm1w7RCUN3u15tpeS1Wkb7pWlf8/lmp17L
 2KT3Doz40hRYGWXcmFA==
X-Proofpoint-ORIG-GUID: e8_pjm8eQp9wtr6F-SRj-D_D_HUs-XXK
X-Proofpoint-GUID: e8_pjm8eQp9wtr6F-SRj-D_D_HUs-XXK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267801-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,proton.me,gerhold.net,trvn.ru,lists.sr.ht,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,protonmail.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5467F184F7C
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:05:14PM +0000, Raymond Hackley wrote:
> From: Max McNamee <maxmcnamee@proton.me>
> 
> Samsung Galaxy Core Prime Verizon Wireless is a phone based on MSM8916.
> They are similar to the other Samsung devices based on MSM8916 with only a
> few minor differences.
> 
> The device trees contain initial support with:
>  - GPIO keys
>  - Regulator haptic
>  - SDHCI (internal and external storage)
>  - USB Device Mode
>  - UART (on USB connector via the SM5502 MUIC)
>  - WCNSS (WiFi/BT)
>  - Regulators
>  - QDSP6 audio
>  - Speaker/earpiece/headphones/microphones via digital/analog codec in
>    MSM8916/PM8916
>  - WWAN Internet via BAM-DMUX
>  - PMIC and charger
>  - Touchscreen
> 
> There are different variants of Core Prime, with some differences in
> NFC and MUIC.
> 
> The common parts are shared in
> msm8916-samsung-fortuna-common.dtsi and msm8916-samsung-rossa-common.dtsi
> to reduce duplication.
> 
> Signed-off-by: Max McNamee <maxmcnamee@proton.me>
> [Raymond: Refactor touchscreen and MUIC. Add commit messages.]
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  1 +
>  .../qcom/msm8916-samsung-coreprimeltevzw.dts  | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-coreprimeltevzw.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

