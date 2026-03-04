Return-Path: <devicetree+bounces-271081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPblBUlHqGlOrwAAu9opvQ
	(envelope-from <devicetree+bounces-271081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA454201F6F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 15:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56F9031314EE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B23838236D;
	Wed,  4 Mar 2026 14:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BJqCBfB0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gFS887cK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE6E31AA9B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772634590; cv=none; b=MvJN44FZ3JUae0mB5eZD7OPMc1KrvuABTdyu6OMHmLdzlALAAZsEczFl9JcpQgk9oly5wEW+qvQuQU4y9576g/C/yjf5xKvdAwaDYMSba3WTraREjPU4lubncxUfTGFLVmFvFa1tyKvEi8hvGinRXkQ5o+lKmZCiBWqWJf83zL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772634590; c=relaxed/simple;
	bh=Z2LC8PMWLBDnhyfICO9t+8ZqiBF2qp+Z2cmaj40hR/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=duylvYo/THrchck3SeZj8YnKxfhBrRcTP4PsFnuwu6Zqr9EDtAbV6ulgge4+iZI6O6Fsf8XJuNnbX6WVtV5/2GexNXR3cFrJOhvGuY4UZerjI/WdxqiizKXswndwtk461R/AQZvzcI9UCNGqaeg5L1N6ZItRQcMm3UW4BkXLdZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BJqCBfB0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gFS887cK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6249spJO1213639
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 14:29:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lAM0lLkLhAfZCHZbUwD7qSCj
	DT4hN9TPL8tFOeuxmUI=; b=BJqCBfB0qKdEQVsK/2X15m5IXjAdc5KRuN8e/Xo4
	vi4ro0xCEUv6OFDzLXDcsh1/STs1snGMX+15LLxHZfJxfwCf+TNzMMBTaiDxHx1B
	TyTnKVtkQB6vGH22fa1F/HJKKMbYOqdVCtv2UGs/6X4pbaFWVNwNnnjixMPy33dh
	DJdZ/gu968JpVuKUCi7gx4Xp4egHOMt7R1dwm9EbFD8PDogFutbUUeUY+yzch3WN
	wU42V9A6qitW259GdmZK1mSiugBRJuzZJOhjwUSnB75h9/KFV0Aus2FO4e/Aho7b
	7Y/xWiMlB+f2RsJZ++3MTqkdwnDaUXf8HZ23eqnDwYuK9g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpjh5rrwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 14:29:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4817f3c8so3791201885a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772634587; x=1773239387; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lAM0lLkLhAfZCHZbUwD7qSCjDT4hN9TPL8tFOeuxmUI=;
        b=gFS887cKCpSOpE9bh1Ss0lLhjfiH14eDNeOQkigQAO3kSZ3ulnszt0sP/8UsN7EkvD
         WlojCCCauQCDL5dUDSqYGDveoAH5+7UWCcA+zTDIO6gz6XW4V6eXnB00DrmDrWvLIWa5
         eQaWNUUitvNWmY9L2RFVSk8E8m/u+D8tWN24oSnvK9w2cLc1t5M3xD63QMCO77AwU5J5
         UDMbdHgb1LIHQHQWHa9BgXlxkadz1HPHVh3OJikhGYOGQQCZSMVnBvQ9DNnWHV2WMz8Y
         KQ1ui7R7/EoxV/Ib2jKPHGKRiWTCiqznBfaPsnScvZMtfx3OKf4j7HM0tG7mf4kGWXqR
         xTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772634587; x=1773239387;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAM0lLkLhAfZCHZbUwD7qSCjDT4hN9TPL8tFOeuxmUI=;
        b=J6LzqAt04fB4bQNt5rqHi5G4aW63o5CZn0WCFS31Sy3Wafq0vCag4b42lKr0kGuMkz
         onWly4AkqO4ynJMOqbaYqvjQ2cQpkbu/PidlnYG+hnfM+8h6CxolVi2PKimu4WWJoyg7
         cbSjn41EL25WpV+LeyvR6FO9EKSUGTRZkiOHdVKDojfMLTQDF7KJIph9++FuKSJCmJgj
         jDxL+IQE6H5I7QuesWmfMmRNT7nIzS45vCej5WZMT76vDT9ANVav98k64sqHK4v3Kemh
         yGGYCtUdrcOmFL6XH628UqO6fCbKh3HErnVuHNxZmLR711edxZaCeV82ditrRjHr6Bjd
         J8Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXyEUekiZXkIKh5/2RwROoxoFUesog6QDznFmmof5NnHGxEwjubnwm0komAoO9X6eib8f7QOsrogc35@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj3kRTLmKpSx+RLgK5weKK9t++OTtI+yrWfLrdIWXSTiH879q/
	kGszT0r+YOyyk8kKgqcSeTt5BHdw9D58mIPUK+AIyP0bQkrkdsUyHVfIlMRNknyaIF1zk81/gJB
	CzM/HruXIPLoQUgzPk2z6oYpBYXg1bCkSogUHwdN/q9F+zp8f8RRgbP2jhw+BHlRS
X-Gm-Gg: ATEYQzxw36OiiB0/cRUMXsanyuvKdkfVvvKxMdZxhfwVJl6TEk/7/bOgd7n48brQY8n
	pKPdlt/suIkf/i4GrHd7Kh9N3zbOufYhyCHqT4unERcAvKNF72fKF48YiXZI//hXQfXOuvA3nYv
	LiZnytgPbOALaqU0IICTJHXf9ZgyBjn7W2vq0aA3Ro++G3olPnNHAjcWdheiDXzRuznLP0uZ/rD
	/nS9Tgy3Uzh0D+UEbfCxRQAxJrSUQxJVjYl5xgyG5ER9Iep5ZVmV+8/cW7H2vBF74EYG17DFWFn
	A9avucp9a+rrmrxk3mJgeTgtZ5tmIXAUCPSnqMyJz+g7VEjQU1PlXT6kzjzupus7Pt9VCgqP/Tw
	R5OR9NjlqJPawTiZb26F8FGjkwarzl+F9NxBimT20hvmJ7vRhAzdu6EdESfHmv4F3mMNtaPhYb4
	5bWFk5/Vf7oGfb3UtIiVY+NAj6yXMYN0Tj/yY=
X-Received: by 2002:a05:620a:28c6:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cd5aebf056mr239659785a.8.1772634587162;
        Wed, 04 Mar 2026 06:29:47 -0800 (PST)
X-Received: by 2002:a05:620a:28c6:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cd5aebf056mr239655185a.8.1772634586679;
        Wed, 04 Mar 2026 06:29:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f3016bf6sm36955351fa.32.2026.03.04.06.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:29:45 -0800 (PST)
Date: Wed, 4 Mar 2026 16:29:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 7/8] drm/msm/dpu: Add support for Eliza SoC
Message-ID: <mo2fc5oalscfgagdrj67aa7xssnugsara4dartp4ycsdvoyvwv@swzmdnwtij6u>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
 <20260304-drm-display-eliza-v2-7-ea0579f62358@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304-drm-display-eliza-v2-7-ea0579f62358@oss.qualcomm.com>
X-Proofpoint-GUID: uN1Zg7EpkqxQEAyfYblbKMopQ-qK6NEt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDExNyBTYWx0ZWRfX4hSY8o0rheEb
 L+qz/9lhsX8Mu3IA92J90RLMhdGerZhFsWwsGTzA0cdNt9Bvqe1QT9exMF+D0PctfDdJgrGX7jp
 4FOFsLRPAmif/DunMeapgfnXkc53iFpG7y0+7+XikCvRGswtZ+DkK+5x5+sKhZj7nZC+SgZtpwg
 8XvhvpvQ1EhzRWrbNr/+A0E0M1d5t9pmRChb7s7aUOv26EnDtn8jVi8q4SD+sEsBYTCajJEQGat
 tG3V7TCb4vOT9rKfU4yteWOTyOYwCIPFk6OKlfeUlqO4m28rR6XSizP/HK+1iiGKfMyMMyAx09z
 KKFv7ys7hAbHQa+UT8RzxEGI+oCD+70C4io4aG3UgWeyvzQpJKaeUfMRoX8O9n0qvNlOOQPHZsi
 CsfXpJ11P7dtkOdij5pw6pLLCrmZQrP0K2N8wArsZfxQ3VKB46buDHW28ZEc3B8rsF7zM2BCXAm
 EWVntz7+F/QpWJ0pNkw==
X-Authority-Analysis: v=2.4 cv=JK82csKb c=1 sm=1 tr=0 ts=69a841db cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=QXpS1DXcpoi-XtrU5MQA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: uN1Zg7EpkqxQEAyfYblbKMopQ-qK6NEt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040117
X-Rspamd-Queue-Id: AA454201F6F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271081-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 01:58:49PM +0100, Krzysztof Kozlowski wrote:
> Add support for DPU (v12.4) on Qualcomm Eliza SoC, with one
> incomplete/skipped part: HDMI interface (INT_4).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Drop stale comment
> 2. Fix INTF_3 controller_id -> DP0 (Dmitry)
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_4_eliza.h | 365 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 368 insertions(+)
> 
> +	}, {
> +		.name = "intf_3", .id = INTF_3,
> +		.base = 0x37000, .len = 0x4bc,
> +		.type = INTF_DP,

This should be INTF_NONE until we support MST.

> +		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
> +		.prog_fetch_lines_worst_case = 24,
> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 31),
> +	}
> +};
> +

-- 
With best wishes
Dmitry

