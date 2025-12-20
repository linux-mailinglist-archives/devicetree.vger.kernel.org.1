Return-Path: <devicetree+bounces-248468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06082CD2FD4
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 14:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C414B30141CC
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 13:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA0624E4A8;
	Sat, 20 Dec 2025 13:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="icc8dDOE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LEZQDEAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808FC23EAB7
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 13:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766237834; cv=none; b=NQ88qCuKOxSXkxM9lpUsnpgwS+tKN+MmGt5NYOpn+2s97ZRmS1eLio+6dIkYxppeWzNWopBdrs2o7QyEEqQbinlLXJYAMlZ8INgFQA6GVNSJ1fV05/kY/HqoxJ467pLG0eNpqC5IkmTvg/fufie+fQJuuqkWA8gkTyhI2eA2tLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766237834; c=relaxed/simple;
	bh=dGnvps8ukeLQilQeQDda2j/+IEr+MUbWBkFHxTQOU80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RVdgmrY7R1Lanw79v9WH91+lwBmE+P11O85as79ebQwgyjMqGyawVnAkOKaykjdqmPd9WugAZuU9YWbOB5L1fF9yEQZpvK5M8hhkVeaWrCFNqxCv1CHLnGijatafNvBCpcYyWpkjtd1fDk0fBB88D6CCjDD1X0QjyVuUEjEKj4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=icc8dDOE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LEZQDEAP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBOqOq243945
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 13:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=onVr/ykTPBWcVxEDt3BDI+kt
	/cs0vi1mzT38qepZ9rU=; b=icc8dDOEwl6cht5OL0a3XpXioLWuZT4mCuKAVS6k
	6PHSyDQOsD1g+vKvzTMahzUBvLg3HHZ6sDJ9c9mDnrwuezCbqH8PW6r9jLxPqFwM
	Uy1H0JsJ/hH574xb1A9xiGg6Jb2K5Z+Wy2oDFUX61b41XSBpjI0872spNHCwc0O4
	lkw6GvUo/KtdTVdyaE87bUQ2ON9OYe+l10jMUP+squBxcR+eBrTK22vbTvx2Dw7t
	nrg1fbe2yfyXtK6nICOGyH8QcKt01yIZc9EvNbKdasipwve0GPNzwP5d9Bg6paDk
	JXI9vY/9R8lZxQg+r/V7pcbx9O8nyKzs06AAdkSHGdpT3g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mubgq1w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 13:37:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8823f4666abso63318206d6.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 05:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766237831; x=1766842631; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=onVr/ykTPBWcVxEDt3BDI+kt/cs0vi1mzT38qepZ9rU=;
        b=LEZQDEAPv5/BWxSNVW+Q8X1GELk4ERfuxX8fXCCaMv+/aiYCtPPKvNCAii9K7EyonZ
         mwvD1tDLJ6EfK7Rqz0sOtfvUfxiykryYBn6MEsNidNOe2l1OLYNZgTySgu2YJsrtEg29
         on2BTgIm6I6pkB3QKsRLn9IAXh8AsmCl4vqrqc0ZDIiZ90OxpJ0U0R5nBsbYYDreFQWr
         Ej/K1U9XwCEj3L1wt2wM78BKVCSkfa95dOd6s+3sgZKvbB6IL3fgstK4SVy3rJkp2aaq
         HXmQ8Ph4P7qjB3uxuPGWxwqah1RSG/Y7LldRrZG45v4a1K2VfZxZus8Z83UW0TonXU3a
         iumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766237831; x=1766842631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=onVr/ykTPBWcVxEDt3BDI+kt/cs0vi1mzT38qepZ9rU=;
        b=HXuoU45XolKKwUUewTJrjYSBZZLzxcVhiiB0lCKNUQP1pydtZssIlSKnDbg1rGOCNB
         PgF/d0J5Da9Om6JWmDzXuBGszWKXLpvmrS8qw4JswNsMkXlMWBOq86eY5ILI4RJBvOBS
         VT2fa2bR7kcLOnvv00KREblnQeW0DdQBpI3T08tDhntJQO/HQKlLop6gRsb/eRpZFxYW
         oJXzXLaiCcr4aOwYjM/MO6oSgVZRQpePfvgqdZYk1vWK970o83lO4bMJlP4WK7nAq20I
         5SvgInrah0bFFWyVGd8/W79W/59XXkNev8udhtXx2NrJp/Hc8JIOQa1mrd4Q+w4P4lVj
         KDMA==
X-Forwarded-Encrypted: i=1; AJvYcCWxo+RNK17mBVjh4ifpo+udCtW7GqWBrMwjc8G5yW5iUTQTYkoOagnJyLYdYMBWWAbjuOAgu9uR8Q+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyNjnzV/DIvT3ZFVItupKvQWk7ANP77eWrVnHSv250isV5X+HA+
	FVuYi3sFKxyOvjqZikIU4vB/9yO3mPLjNMqBdv6h1D0fI3OJWT1ZHTqEq4HAckywdkHWD+Sz9rt
	av/bww4Wdb4EIxTj5eQUCfYHLyticQvqNzT6F7B5ihMOAgVbMMBmzOSdOJXP1GsnO
X-Gm-Gg: AY/fxX4tCDOtZ5hUFSX1x+lWnOlgaARWBFTU2TJuKeAd4DKzdVO1iSmceXv+e1cCIEw
	Y+rr8fTGPGt53YQVZEUMid2Dc0br/dmPJuPsiW5ozzNgplyilZ/mdIjVXb0gk1RE3HGSIddDW1a
	o1hr3RSFcDddL2bIheWIlGjfpJiuuIJjFxZwfGcQvqPumg2huRytd7atTNWDUiMmTAAhtSMKONT
	tHkQlBuSwVlpmWZXlXU3rwxxXPK5cgDKWGg5sjxXYdDeHylIJAcmcqRSvmQG/J+qPIfEDlfFFi/
	86vbUu1S8uVhlFbvvjQ70Hv1fiDNhXmqQtSvL0fOD1WKEHyOlBsvgEtY+qiXYsS6PGAuo1Lcnzr
	VbpJAIIAbm9fpC44O6J6rPnuXHlioUWmGAEGhfzTUvPXyN5Zmz9ND/XwDa5ceBSRT/+djumGYS+
	oSdkYUbVkrdA8wYCvb0b69XnM=
X-Received: by 2002:ad4:54c3:0:b0:888:7bac:7a1a with SMTP id 6a1803df08f44-88d8369ea81mr71771336d6.32.1766237831392;
        Sat, 20 Dec 2025 05:37:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoJmhc0j1QSHWpqeB1INPb1LxQclfOysI5mjmJBEqKXoqG/hNFTCz3XTo6pOZ9BO/LtyeplA==
X-Received: by 2002:ad4:54c3:0:b0:888:7bac:7a1a with SMTP id 6a1803df08f44-88d8369ea81mr71770916d6.32.1766237830925;
        Sat, 20 Dec 2025 05:37:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d64sm1485257e87.49.2025.12.20.05.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 05:37:10 -0800 (PST)
Date: Sat, 20 Dec 2025 15:37:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: maud_spierings@hotmail.com
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: x1e80100-vivobook-s15: enable
 ps8830 retimers
Message-ID: <ia3f22isuxflakbyphrpsbobvxgmbrr6rwysh7nasqmvwt4h2m@t2x3f3fmbghh>
References: <20251220-asus_usbc_dp-v3-0-5e244d420d0f@hotmail.com>
 <20251220-asus_usbc_dp-v3-1-5e244d420d0f@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220-asus_usbc_dp-v3-1-5e244d420d0f@hotmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDExNiBTYWx0ZWRfX7xSOGgNPldgz
 jbLzzfwKH8hhXIm+OwAbcG4j7iQSNlqf5UVrUe3ZAt6BufrNwT3gC9HbBtEDaUH5intv5zyIJoj
 P4m+MWZzyShaXVJgtRkAuVW7U+bxEpPYGOjtOJ8YE/nEefD7WVRmXgBgEXWVJ3Nzpc3gFpR1lk4
 pHxW8Kgn9ilkL4077RiR2AZ8fil2JuaInrUchYxWtLiKrcAA/I1Rwnh3ixFmyyLYPDROXoYgmzF
 VoUy6PgjQYI3yPw3Er0iYyPXZvz7Mm/lyKXPHqlJV669n57y0YSpLjEF/vMg2YmkkDb3D4nps/O
 serzz0eTPjpptel9lKjpTqatH/ZlMVOWO2C+eWCxhywO4kSzriO4neriWDOfNI23l2kkJwV6CPB
 t06RzqHJwgBP7a7ma02optNYtAS5NF2mPGI8w7IH6EB963dnFbyBexr4f8vmaQgKB+j14NRpHgh
 e6VMILeRAIOvtAd57vA==
X-Proofpoint-GUID: UbwlRVwsLUgYIV8NMRj9yFYpHWL_-ZRS
X-Proofpoint-ORIG-GUID: UbwlRVwsLUgYIV8NMRj9yFYpHWL_-ZRS
X-Authority-Analysis: v=2.4 cv=KYbfcAYD c=1 sm=1 tr=0 ts=6946a688 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8 a=A7QAhaETn3pxQinkG5gA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_03,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200116

On Sat, Dec 20, 2025 at 12:38:57PM +0100, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Asus vivobook s15 has two usb type c ports on the left side, these
> use parade ps8830 retimers like the others, enable them to also enable
> dp altmode
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 310 ++++++++++++++++++++-
>  1 file changed, 302 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

