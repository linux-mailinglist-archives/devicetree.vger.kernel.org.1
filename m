Return-Path: <devicetree+bounces-213079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3801B44858
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 23:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1767D1887CF6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CCF28BA81;
	Thu,  4 Sep 2025 21:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FQH2Fxz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E429AB02
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 21:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757020617; cv=none; b=Cgp3NKR8qSOs5RX1WbRFniiJUSTGgNYqxoyEs5g653cN7nSB4V667suX7fQiHvqEN8BUXzHBt0HabCpmmaWmrR/GnhSHHBaCTYmN1vT8UF3vOSmF7bY+Qf0nArzQwxe6IT7kcno1qvnGGAnf6niyoAQeFisaXoHp9je5C7XG1s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757020617; c=relaxed/simple;
	bh=5jElI79aTeUe/J69ij3K0O9HaHlhMaLrW3syJ0LieHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tsDfKvWR+NRXsVftMwkBJY6bzlq86a7tNtHYxGgkUGwcr4KF9LJHrN5wxrhMlR1CU6BHvKDIpCJ0I/BCJ8LK5EVgy3u6gnITpZ+Wwk9NstdaA3rz1aMH7eeG8MemNhT4JH9SQCqXpm8tZznUNfPLGxHbf2ZsV3Y9ytufL/dbXOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FQH2Fxz6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584HsaO1031741
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 21:16:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Mh8AMrdW/g+ZTiJBMaP3XjJz
	yon1YTwT1+baWuYxfZ4=; b=FQH2Fxz6fog71vdvkBS4rxNYjUGXV7+eG01OaBsm
	yMLaThMXmXuStGfvH7SlNCZcTUY3N3mxN3SP96ZvFtCpl3V+kAL+2gKrqafbdKFP
	6h+IMRGKFLs552kncQiW2Vj812qgGGXKaKqHRie2b10QC/ZL9qNVBHXFqh0fYqRp
	S04WQ63ktqO15nxPE+ieUpJfYsLPQjODDxWYw9EaJ5ZSfIFZVswUuOxorYWXJwLY
	ww3BGPrxCccGuJ+9XBeVgqxFqNvVIteihAWFtZ3bcituFquZqzIg6XTNCoUYbB98
	XnrxeeMDjZ6gWmA711DhdTNJ01pnuynxy7+fXAZ4hy2tsw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw0907r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 21:16:54 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-720408622c3so22095226d6.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757020613; x=1757625413;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mh8AMrdW/g+ZTiJBMaP3XjJzyon1YTwT1+baWuYxfZ4=;
        b=m8sK361V6PRIVsnx6ZbC8Z0tiG0yU7agUtp8iUXCULE58svLdnOM3kKm1UB2wQbd1t
         YeZJW5ufkvnRnAqgZgdCAdgxBpUt5RVZlBXn05QPmWJ5oapyZ0MNwvhfYRqGmRkgyJQH
         xkHhauCReZJ+GtGR5x8BwiksFBXkJ16YR0PaeAfRPhsALGJJfKIc2zVajGXyDi39KVDv
         ZWTpSVTOcOFxLJMbx5cRRgjZh0dmZ0BPgCYncM+13Thv/Dp4yKLFnWdNNfDs+3jn0SjO
         Wc2Bn3sAIdpeTLBVUcBgSWKLXr2zcZgbiRS3v0TOJfI9hdsXvn1we6yUVIJUmNvwkJvW
         v/4w==
X-Forwarded-Encrypted: i=1; AJvYcCVaHxFP5pFKwaU9hrSHYLXDRbGbL2Nb0EoPPHHaHmnOy76hQ84ogHfRGGrCI1T+/QBYCqryy8CYzroh@vger.kernel.org
X-Gm-Message-State: AOJu0YzRrXUdh8Bqm2cCNDYVyJMpIm9nVl2nar2GWohUBGTh2dThhooK
	JJ0SDiowLzmYGBKPcVsTFheFfMACaZOm/R4jgKE4VzqL6oe8I0i4OlE2V3IB3cPOCI/pOubzNkl
	KGn59AjHnHd7ObF1FmjgyfCqWiaJiIMe34EqCAaz8qupx0ynKUiaQ4+B76rHx0dVQ
X-Gm-Gg: ASbGncs2f/S+86UOT4RUhDMRC+ga920+mLRQ9PtXVLhvQTHSMGTMmpZwykYoIgAfy8E
	aQSBZzljbExTsMUcA7148sw0eCQzBtXpJofyH6MgX35VCWr1ZBh5Apw2H18uNaRJ6mmmJX4GqoV
	fgbusqcJVc/tTMA6EOee8u3YRejbZrImELIv47A8u0OTxul0FILJpS5MkaJhaIn8vFAd0lZ4nYt
	FbuVzwp64tNruQgvHKKHen5f9P59VcVZRT+k0JkMqbureaM7lO20a761JeyjEwmsq0ABy8fhyyL
	RrmF1pG/bGOsiuV2963bDghNqWo37sQltoGsZXq2TY8mQ0SVxQtkRA0Yp4g23hQXY4o5IOEkCQe
	EDKuc659YlEAaVLJj/tDyjUu8VK7vnd8lJTgbAirySMFZwZDC0mLn
X-Received: by 2002:a05:6214:4002:b0:70f:a9a3:251 with SMTP id 6a1803df08f44-70fac7877bemr229450036d6.24.1757020613045;
        Thu, 04 Sep 2025 14:16:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2H1du5auKnvQbtV9SHrDXiNbYxgk+GtJPZ9m4TugfdymzyxBYc9+tnOTS22ROkQ9dqLXTOw==
X-Received: by 2002:a05:6214:4002:b0:70f:a9a3:251 with SMTP id 6a1803df08f44-70fac7877bemr229449596d6.24.1757020612516;
        Thu, 04 Sep 2025 14:16:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5c226sm1447746e87.22.2025.09.04.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 14:16:51 -0700 (PDT)
Date: Fri, 5 Sep 2025 00:16:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        David Airlie <airlied@gmail.com>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/panel: ilitek-ili9881c: Add configuration for
 5" Raspberry Pi 720x1280
Message-ID: <ojrgzagempsmmlpm44kp623zltzynkdcatq42necy5a25pvfoq@ntkb5gaknszy>
References: <20250904205743.186177-1-marek.vasut+renesas@mailbox.org>
 <20250904205743.186177-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904205743.186177-2-marek.vasut+renesas@mailbox.org>
X-Proofpoint-GUID: -p1V3z7fuIBmVP-ZuIkIUeb8z6lh0VIc
X-Proofpoint-ORIG-GUID: -p1V3z7fuIBmVP-ZuIkIUeb8z6lh0VIc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX2jNSZtacRqV8
 BBhUnLEsqJHh9ExLhKzEpWq14snUlnM0tS7CFGG5Kky2t8NPEjaJp5Z93ON9tdJ5fzC/cJGTzbk
 qwp15RWq+0nOpcReJFY/IrptpBwPUHBJ1GDcrPqMClt6XNdT7JFrAzuyo6y/bpakPm5BBbnmOVz
 90kS5k/gkFARZGIVyO8m/fjuiFFzD0BsbCuj9sSDpvb7Pp8jnUKMc4ingzQmGaGXKv/3k1Qaey7
 cThiHtVjSO45NdrLWnUTGfoO9okfmycBr7RHd0APkhbAaPZbA4nMFU28pMRCLIvFDqX1sB0wdEP
 t4cqxHfCuMORnf3N3fKiNhuBXHqWhpDfiXza5LGBZjWmd/gcgUs1uTQIW9Go0tpvTEovXBUR0ly
 xdIW7Q3J
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68ba01c6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=b3CbU_ItAAAA:8 a=VwQbUJbxAAAA:8 a=RF00TdSWAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=KKAkSRfTAAAA:8
 a=e5mUnYsNAAAA:8 a=dCZUmJHuHaGrPOQQW1IA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Rv2g8BkzVjQTVhhssdqe:22 a=_nx8FpPT0le-2JWwMI5O:22
 a=cvBusfyB2V15izCimMoJ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On Thu, Sep 04, 2025 at 10:56:57PM +0200, Marek Vasut wrote:
> Add configuration for the 5" Raspberry Pi 720x1280 DSI panel
> based on ili9881. This uses 10px longer horizontal sync pulse
> and 10px shorter HBP to avoid very short hsync pulse.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> V2: Turn ILI9881C_COMMAND_INSTR() params lowercase
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 214 ++++++++++++++++++
>  1 file changed, 214 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

