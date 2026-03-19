Return-Path: <devicetree+bounces-277527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GKLCupfu2lujQIAu9opvQ
	(envelope-from <devicetree+bounces-277527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:31:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB6E2C4FE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF23E3079500
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 02:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD103859CF;
	Thu, 19 Mar 2026 02:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ik6rhIdt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UvSDaIdU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E595435DA67
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773887264; cv=none; b=RL+9yXvI0aG42O/Vt5wCyJktWIsHxAonJ9prajjnt7buJYajqZJhKgT7ZyUn2QM3kQbTMGHsB4wY+BjCcHo5yJ3V0Ojo9a9zFmtF4zQaJAS4ACa+ZxzVIekt9EScw5cnVEXTfSGXSKfG9XNj+8ZHIntlQrNyv+HuZKGX47ihB1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773887264; c=relaxed/simple;
	bh=CLYx9OzveIAuHQzq0XKepFAds20XZEpP2l86LsmmhGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pYXOD7rCVjNKrdNpyRpnvs7XmGgedYldcYixj+JQNtX8PwToSAE2rjmKkm3O+0rzvqNPualgZJe06kzg4THSSDl+ywyQZolxr/C24oSdicf+ZgL4fZe1xVIKKSM9p2d/8qlYeX6NoTjoUmTIa3ihaBBxODYuYxLlWDgeR+nXck0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ik6rhIdt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UvSDaIdU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J0luAI1928644
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8O84MM7Ovnlu/0HHNNMnw5tm
	T7h2j1DRydnOIymi1eY=; b=ik6rhIdtW3S0mmxlnkCXTE2Z/iGoZUIH5akFpEFm
	cZ2IKtDAvWMdBNaPjUYQL3qtaBgCuuMED1NZxOCyDR0gHgd/Cvgj9GI6LuHUn7T6
	6eHzQnmntDvNWonmKiLZ73cbPYuaauU1ZeP1hPl+pnneoOSFPlHspBUFeuatxsA+
	pGXvF9YcK5AwymsnNhA1BNookp4zexMEdJ2e/jwhlm0+ViETWgI+v70TXFkQFAs+
	lwsJUD5VwOyBlVs0NoGJ74LXESRPVg+KN77QlXZ3tQLglnSnUg6hzz7MRTQ+R/ho
	oaeZaFRVdEMQLu6ydHLQ1V9ANPKOCyHp/DfZ7JSVdfVDAA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut1apfe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:27:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a0684d05dso103732016d6.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773887261; x=1774492061; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8O84MM7Ovnlu/0HHNNMnw5tmT7h2j1DRydnOIymi1eY=;
        b=UvSDaIdUZ9x/kI+6V8XusJiWVyGOAb2cdAdIdAF2/RLfQ4ogM6O99JbscvJJviG6/m
         K/uoHjft+CZhctOhz/9cuLh1BsXd4e9UUCpwuo4N27VRaZ2Nj+e5fl81S9XAOOd0GiYN
         83RFutz3f0u5cJ2G4Tdai+1pp+0iwd6B5R56VyoSx1TWI5efhhn9yjgzNPJkGAbH9Q6A
         RZ285ygllnt80oqCO6JUI9OHszPrntHgqURBZPLzdXMW6Cs232hI3jmDY2Za37MS1BGu
         Vy8VeZdZ51lEu3p3AQ45/SG+gSM4ktfkXMTd7z/+rHG5iZ7kuImEZmrkbVo6pgnrURm2
         Qw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773887261; x=1774492061;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8O84MM7Ovnlu/0HHNNMnw5tmT7h2j1DRydnOIymi1eY=;
        b=bT9JOvQhwCTeZmc5hW6t1IK7PEd5/+qQtaDWnrOI/o9esAMBKmFivKcTyc+FliOTCQ
         3NweN/a6XKx74Yw8rApqglWSul+p0ji5dOzBVQ11D8+dtaXoH5+xC/l35EF5iHf+BYqK
         9Z7cUvqOlAbY1cpx8qXATrq9vMeCqevAs/bSWkR4pQgiZKVthVWftxHLXcb6NNHbdMHF
         xh2zytCJoF5IaoV+KVbvj0lbzAHgzCQuRsqdrSGrQKBcX5kmHILsmKB/mvkdMTm72sZ3
         30HeD+poslfMekqvG5awvB4l2XGIS64HXDvfAXUj93pY1vOeYgqZJxlTl46+w155/rDE
         lgQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOkOBFfrHptKKmx+ZSykPMS8W8Oamhgiy9l1qxXyLunVFcXCOL3n4uwS5eL1HSVDSXjBdBc0mRVQ1b@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5YmAwD70s8RVAhKfLSNbHEg/VNnBRQ5dmkPXfKFQfyNTxVoNL
	8Vdd7ChJLi5njHd2Ugb4CqikKPT0AkcS/J2r84IPw2d69wDKZenPqmmoh7Ccqdo2KAAuuBNGGl1
	GGwUmeMudLQMsiq5cQo3vzJrQYmFGTE0ubH0lECH6coCdTsv3LAVi5DEfVJw4VPFL
X-Gm-Gg: ATEYQzySqP3nGtTUhB8lQsgMcVsgjDOX0yYwmOq/lrMAt3ysyEcOG/2+PJ8zDd0vEXq
	AK85uEVjG0shTXyKbsEwWV2C+b54zWdbIGbPR+ExIiVUj4zTGaazU+t/TK+2ZqexaLBVrPi8qFs
	/QOPnXEA+oYluk4k3wuMR3ulFHwX/vKDYrFs9PAmLicA853EcLeunResfy0kltCg8XBkH5eAdBo
	4VyiZoPtwHYm0KqYFUWnOcnNHOlxH7OnGMF/YCOH7MpzXZCo2g2FISa4odNJ03cF/naivjTjRf4
	fCnCIFTYvGMHFgiMUcvo5rRN6ulkjulHeGiBoLX+9xjTYeTLk1DOIbsKj1ZaOPqgPPjwYcgRZXl
	WNCZtjO8Rxukbt48gnD3tqrVYBgXlLgOQO46q9FNsvFWBwlnWqsbPPk2IrklLEji4AJj9Ed8q1s
	qwR7ybArlN1JwdGFSWv53KIUPX1XM7RsOs/jE=
X-Received: by 2002:a05:622a:10:b0:4ee:1bdb:a547 with SMTP id d75a77b69052e-50b2461a932mr27523581cf.14.1773887261236;
        Wed, 18 Mar 2026 19:27:41 -0700 (PDT)
X-Received: by 2002:a05:622a:10:b0:4ee:1bdb:a547 with SMTP id d75a77b69052e-50b2461a932mr27523291cf.14.1773887260769;
        Wed, 18 Mar 2026 19:27:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c2d266sm873523e87.29.2026.03.18.19.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 19:27:38 -0700 (PDT)
Date: Thu, 19 Mar 2026 04:27:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci@protonmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
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
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] drm/panel: Add driver for Novatek NT35532
Message-ID: <byxrw5g4t23vivbt4xxpyfcsbrmlaju4lqqwsc75iqizoqmt4n@ltuwlggbitye>
References: <20260318-rimob-new-features-v2-0-c1bf8917449e@protonmail.com>
 <20260318-rimob-new-features-v2-2-c1bf8917449e@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-rimob-new-features-v2-2-c1bf8917449e@protonmail.com>
X-Proofpoint-GUID: In_QoiI6Rde9UcZBJAfHfV94NauprqRr
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69bb5f1d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=sfOm8-O8AAAA:8
 a=EUspDBNiAAAA:8 a=f_kZLxWr8KFBRA8n9fgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: In_QoiI6Rde9UcZBJAfHfV94NauprqRr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAxNyBTYWx0ZWRfX98ZikBYQOEXY
 rQbpiHCyPAGuSB2/UJhzV6X+KqShCJzjRHw3N0pO7A0dftDUfEo3Zpv1ar2r2c2bYSEYToL7XGw
 h8Jfa7Hfu/9zceOzvJU70+qkhf84Qf8dlLOKvbgs/Dvxs8fUsUiRiwGCvYI4CO086eokacEo7AW
 62iFcrRkzTW4fZYiffCfv1vKWiG+eNlgCA2nmDGi5EzVKofQlsMrQEqsEZcIzCKunQn+lRyqPt5
 nQZuYi+ugk302yqJRzG92ttuedFkaCMKe+cYaC5wMjdX8jlujXLny8T0b6+AJ/gbiX2sKRYP4dy
 f7dDxO0Wp3xsTAeORiLRfhppgwBX0LgBLeblBwbNlAWj5INZLp54n6gXM8Hq1SDj2rJzZiyfj6q
 uEf/n6/i8HYuMMKBk2Xz8DLCvGAVSoOAujm0v/qE7gkMJKiKgfsdWxUxg3uZJ5Q2gHiUDxhbisP
 Bv+WoLY596xCjg+PbmQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190017
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
	TAGGED_FROM(0.00)[bounces-277527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.964];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7EB6E2C4FE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:28:10PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Add support for Novatek NT35532-based 1080p video mode DSI panel.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/gpu/drm/panel/Kconfig                 |  11 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-novatek-nt35532.c | 779 ++++++++++++++++++++++++++
>  4 files changed, 792 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

