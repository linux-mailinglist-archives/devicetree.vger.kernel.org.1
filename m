Return-Path: <devicetree+bounces-268576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI+0MjO7n2n5dQQAu9opvQ
	(envelope-from <devicetree+bounces-268576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:17:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7321A06BD
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A581A3012E89
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598A63859F9;
	Thu, 26 Feb 2026 03:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Icyp69qD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yb4+M0HN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABD830E0E0
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075824; cv=none; b=cXRYIFXx/xxl3Te4gl+VeyzJX+CkzjmLftDIUZnC/BLE5VfRenFhmlyopbu6uyqR5NqzIO6QKgXlCrJYB2XSK1qv45gSGCbJo870WKKLqSQg/OKYbMW0lliWN969Fcj5jA+ST3f8n7Mb5GtiGdD1lpgv94u1Uuo868QuJR6z+no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075824; c=relaxed/simple;
	bh=eA/pys3vvVU/XyfVWIjmJ/Rynf+QXRxwg3CP+owHqws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WU5SKzgjXjBRIBU5GISorFuR9vYn5jNnZpjOfxzt6HdbBefeKMFQEC6/uCclsL4igF1XaaIPvNJSxKpYXASEK9cmfvDj0BV4mCZepjv/BeUR1fKOrnRdqQ5jl/+/JlZY0Fc8Is/4A7dO1wqaySH1gXxTlYJ5g48L603GDuyWBac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Icyp69qD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yb4+M0HN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PHFnk53057123
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:16:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=x4Oin2eFJWAEHjLuD9tLoYce
	wXRKKg+sy1mMDk6n0RA=; b=Icyp69qDaTGEUhbuhBW/swKuhVkCMrEGUdLgvjDr
	d3g41kocnw4YMsXB+IHsQEpJJnJX6R/zi912um7smpkQzs2y+DeSyCZTEcgis2GW
	P2Z0rrPBadlVFjd8HUV33l+pAK7IgQNrLnObLjFhOc/LTA8Z8VaBxMxVRq6XW1vn
	NG3E6IvVlTnVnXGwq36d3EMZFF7EY0305JL9lF3kXEXahbDCQ3sx7uE8mPHC0mmm
	t/PgLWOL0K8HyXqOhBWru6WSZMkpiZ64zr9xESyHFSbKZ77j13whcoPqDFwvYbrt
	uIXLDZaoQfyt+k/n329BZsVi8y9x+7Xhehp80WKtCG/K9A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chx39k1tc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:16:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3a2eb984so443036785a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772075816; x=1772680616; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x4Oin2eFJWAEHjLuD9tLoYcewXRKKg+sy1mMDk6n0RA=;
        b=Yb4+M0HNyIGWYCUGz2W0S+wswc96dLPLqq5/shcOklZqmedQwljF7lUbAj/+zoDA74
         lH4Pkl1NLDTw9c7mrnBGsz82kvpHh43n/VPX5g794poizVtdfxKFMmWMUDQM9LEY8M+3
         RWXFrtZAnOfkyvDJi5nYYZ5bSAGylRcymmw0M40WHEiP+eG0auKkILbp5jGFqRxP89XZ
         zwBSPGptbazUkZrn8i7KRKfJ4wEevlBZCX9bbCKdH7Cu7S05svx2M75+Mfrov/lUQHri
         HE4JmYwNCzb7b7283jtyFUWO3gj9RAUbxSCDMZrUV8da/X1hZkhc1tVNApVyDYyqY+FT
         nFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772075816; x=1772680616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x4Oin2eFJWAEHjLuD9tLoYcewXRKKg+sy1mMDk6n0RA=;
        b=J3f4zFHvZNez0/RKqVL8i/WiPJjoJHzX7NfVIOC6gsSnBMnLgYSNFSDgs7bov7nspF
         l9Oqub3EK2okiLQ8BUD8qomrYFF1kFXXfZ1tTD0/ayht7ShysVtp7rKhCxIZm13K0tke
         O2+KOGCjH5/5mzuaWMGMk1CCLYdeDr+XLbnpaVQpqI5hvMtLdbd4MD3XO2lsXmoFPg9P
         CJfFo0MUImq/+MR/r5xoNj7FP44TJFg2pCqqi1xzOPxl1DDC+BbUwGVdjuKMW6ZUTrni
         GYI5xy8nQCzp/wXFCBdeX4BhrGnCXt8WOgwxaTNoV+8z0iy25fIH8Xsx4xnwKmubIFo7
         mNSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvj7BFUVoR8L6YCdi1EprhYWQJe0DtTw/Gae53F+tJXkWZzCxm6vpFOAz3YqbKkoV386camc/ZRwCB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+WKjhAvBiFmIryZaBGTm3LRG//PhwtS7ugZ6GouVvo28CdBMS
	MntjkUm1+PQhRaatM2NPhWwbDRc2mXMXwo9ZF+Ayk0r0U5Tb66IXr6Qjm8118g0O3HBDY/kkKeM
	MzFisywH1lI9yJ2TsqK+XSKNJ7JwfBkZe1J2boRSKcL4sSv60KYDnYUnu24noOCii
X-Gm-Gg: ATEYQzwVc3ywYBUXBOrKDf14FDxQdbPeN1JFgM6A6ZVyyN1mmvG4riHJQQf625MYkrb
	v9FScw96mEmXad1K4+LHjP5bGHOWd4K2946/9hsRfrx5y2MwtNRKx0BHtkT0IFeIFRLpkGiv4c4
	wNcL2xyRu3mrMQbz+SOdCMjvWp/kqVwRWRGwMK4aH80wKM6TeH7y2hKyv1ePLEhL0TRMs6gNoef
	dfb6se1gX1k/inevWMvx88OS3JTlziIO+/A2kOHBLPdo99hMKWUCZrxfJTZmPsnAPdNS4e+15LY
	HPLUSroRL23NIrzjcOgMa9Vr11PeNL9RfVqrEXUtZAWz+IxvxeMdL4Vh5NcIwrX/xYOHwCFf7bp
	9RjW3dRddb6HFqgkg1ageEBjgZ8pRay+2ENtPHd3LmLl7aLmh+EFF9YtFaB1a9vmvAWRg/08Kxf
	FZyofk3PumpEtEPQNrC7n4geeYsy+jc0bSZGQ=
X-Received: by 2002:a05:620a:29ce:b0:8c6:af59:5e28 with SMTP id af79cd13be357-8cbbcf5ff82mr384725785a.22.1772075816254;
        Wed, 25 Feb 2026 19:16:56 -0800 (PST)
X-Received: by 2002:a05:620a:29ce:b0:8c6:af59:5e28 with SMTP id af79cd13be357-8cbbcf5ff82mr384722885a.22.1772075815795;
        Wed, 25 Feb 2026 19:16:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a10a05b2e6sm243072e87.22.2026.02.25.19.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:16:53 -0800 (PST)
Date: Thu, 26 Feb 2026 05:16:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Tianyu Gao <gty0622@gmail.com>, White Lewis <liu224806@gmail.com>
Subject: Re: [PATCH 4/5] drm/msm/dsi: Add DSI PHY configuration on SC8280XP
Message-ID: <zpilakwmv45vrfr2qvigelgsglgmhpiozw72nciqp6slyyhluu@ks2bys7r74ql>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
 <20260225054525.6803-5-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225054525.6803-5-mitltlatltl@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAyNiBTYWx0ZWRfXy/jaCj71M6nh
 6vn3tUUlnNDhLTbZUGUiReby0wO8gfjmyppSRvSkUZv9oziRbiuqTvwFrZCWZE/VyKHLsNSnDXX
 w+myUWXR5ntRCitb+bV1ZhKxt6Nlaya/sm1cG0p3tkpu4HQOJ9vPRnnC3Eodoz4YXrrlNC6lauX
 ntkrNGixifKSkDXncnW1KRWwl5hc/JX0tm2hzHW1GHcHTooilIQ5N9Q9Ii6Je+Ic3KxNVu1t9lA
 7zjY6pVnGUt324lvN6/ueSA0RKX8CWz0Tc0RWmqQ+7ACERf24HSgLaUAYOwnDcY0NXZ+g1QDiA0
 qqVN2W4mIdk+v2cgw8G9P2L79h+m0RA6tILZ5uharqTPgj/IRCOgWYGVTYU6/ttAwHLtjS36piM
 4UVH37iYrNq1RTyvHx+jAKaoptN3RZ9l9TMyBdmgbYXauS94RqndBASHfrBNJxvhgS606e2dGOk
 /AKjW2GjajbxjWBmNGQ==
X-Authority-Analysis: v=2.4 cv=FvoIPmrq c=1 sm=1 tr=0 ts=699fbb29 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=pGLkceISAAAA:8
 a=t8rQu5QzYQlLpjgIwqIA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: QiVwvhuYmHkGVLGg0q7KnVjn4EnvTwn_
X-Proofpoint-ORIG-GUID: QiVwvhuYmHkGVLGg0q7KnVjn4EnvTwn_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260026
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268576-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2A7321A06BD
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 01:45:24PM +0800, Pengyu Luo wrote:
> According to the REG_DSI_7nm_PHY_CMN_GLBL_RESCODE_OFFSET_TOP_CTRL
> value(0x3c) on Windows OS, we can confirm that the SC8280XP uses the
> 5nm (v4.2) DSI PHY.
> 
> Since SC8280XP and SA8775P have the same DSI version (v2.5.1), using
> SA8775P configuration.

Then we should not need separate config here. Use sa8775p as a fallback
compatible.

> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index 7937266de..4a37c50d9 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -565,6 +565,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>  	  .data = &dsi_phy_5nm_sar2130p_cfgs },
>  	{ .compatible = "qcom,sc7280-dsi-phy-7nm",
>  	  .data = &dsi_phy_7nm_7280_cfgs },
> +	{ .compatible = "qcom,sc8280xp-dsi-phy-5nm",
> +	  .data = &dsi_phy_5nm_8775p_cfgs },
>  	{ .compatible = "qcom,sm6375-dsi-phy-7nm",
>  	  .data = &dsi_phy_7nm_6375_cfgs },
>  	{ .compatible = "qcom,sm8350-dsi-phy-5nm",
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

