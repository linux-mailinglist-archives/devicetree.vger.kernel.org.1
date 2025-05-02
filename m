Return-Path: <devicetree+bounces-173206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C79B0AA7C6A
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DFFA27A2047
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5FC21FF4C;
	Fri,  2 May 2025 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eLsXxWq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7237F1F4C92
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746226103; cv=none; b=bwIVZFV8GTjNjGHyEEaRoOeBl0iK2yibGCmQ3xYPXhK1bnq/r0xsETBsOheQRdVtEZshtrWDAq35xZIlrTSVZbwrmmwR6/9sxaksQV81Y4o9OEwkXjl915FuUT0eRe5yNBwgzpmrtedgIYG2I/Gbq3cc9l5f/l6U0wIooym9h5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746226103; c=relaxed/simple;
	bh=Yzfu3tcE7pGAm4ed9l1L6RZuyGcZnvl2Kch+QsjHBgo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n7AYVYWOmmDWCDA0nK2xbJzD4eeZQgVIE0TX18Xi+EI9+i3+R2fJamPP8WX8wmLYHmt8Fwdq16sp0Q/9ZEtz0uX6O6zEXD/+nnr1+zRBzCUYTv3jfMOnqFsB+kRg5kQdfoshS5jk1PZipfZfFzVIWV4k2jPzyW7RMpUz6bVEADk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eLsXxWq/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KAqhf015485
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:48:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eleFOyC3fOtiERUR0ch/uTI7
	FND8UmJHhoCAGFzcQJU=; b=eLsXxWq/CovyGDefzgsC83Ma03HfEVHyVuNYVy6L
	yPDK82DlulowW/tsmLvam7BTRo1DdnJxxGJB91LGYdzH6/7g1dqkus/cYjeO8Z/O
	lJxBwSqnAsGHA0KpQEoFAHpkGW7sRjbV5EgdqhP+eFy/wlzm+J9w7dBRCmesjILA
	4f6kgbAs29w8V5CTubgnQjpCSe2auxetfeV37XeSVRKWbi+rAwuYWI3H5iEMabzg
	g0UH/UTARw3Mtx/cyRd9DJBeiqLQjaR1qyb9+RC9IXb9cZbQt9xEOloowIgmAnhM
	V+m8TTAdE8OM8TjgYTwo5cBBJTu2Dh1FzumCo9+mK7fxiQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u81jkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:48:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c09f73873fso385171985a.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:48:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746226098; x=1746830898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eleFOyC3fOtiERUR0ch/uTI7FND8UmJHhoCAGFzcQJU=;
        b=mmlQg4UZfJ6LeE0DEV0eSG/by0nzeWLAPWqfOrrmshvLoHU9BsYy+2E6cz7m5YcrN7
         gEmhT23DEW/BU/+VTvgFD7+Em8pSpP59sQGb1kz9cudgyZkgBFBpINhvOmjdErXZ9dLP
         9+atv03rdYLb07xarHONUOzx8VeOlafYuJHBSnCLZKC9FPAtCTDYJ1Gp74IEp4to8j8w
         ZqNnUJzLi82K/Fdw+lFGt+Qcy7zD0oawpzJwXkiquVAuuAcG+A4ZnW4DL3ZqoHH2vQdv
         Me8T7JGDHAtdnSXRu20PrEtB57jsd3Piu0qVkc3BHsDqdJXfQUfMFxu1bP6mTTUBq46B
         iVlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxS3sX2EznaGevfLMosr1+U5rBEFU9jTPSj8Q8klnr4ND/SGeScIkW9WoiCJSodPtr1O6BP2lBVXTB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxku3ol8zib5ntihkgHVblzKoeWmBu06GRq7QRm4doSTrmXU9OK
	/2QYPmAICZEXhdQcwZInETCc6Z4mS38Fb0MwYQ7ka/8txu8PWLAZWNsnyupqCLwBfR+bsrYukJK
	lOY+l4sSOAMoZjPt9j7OC9oLARJaNWlk5bLTevGPgHW+/RXnNxXBgvCVoy5wI
X-Gm-Gg: ASbGnctv38+gX1leZ8RzJrU2bCfbjyW3uDL6TEDpbQ1Hes/5icWevRmn8YXs8RjheEm
	a8Co/OSBjGu8wxHvItCtzUYif0EkqD/nHSFPzsG5vEnTcFAN0VooHEf4Gjr3lpxDq45v2HnwWuy
	Dw3g9Uu/Oye/dBRaj7yvxch4Ub1HTIXCg5jbgCvF2ocEtSaSpHCc845tlkpSfiqefvXS3IVokg5
	dy3kOeM3juWeA/7ReEEtBJabFKuYvu8nEp7/hEkxIx/IpU6CQ+c8cCFeHj94YbK7tCljs4eW8ec
	WNuHPK4HCZo7ABLOqwcN3ou96DcrWXTi2njG3GLZ+Y126rZ754M3W6RRBA8jYJMjkmVMrIXod/A
	=
X-Received: by 2002:a05:620a:2903:b0:7c9:443e:7026 with SMTP id af79cd13be357-7cad5b2093dmr658528985a.8.1746226098371;
        Fri, 02 May 2025 15:48:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxvVUCE28kLO4ASUoCbxheAfyetz9Jt5+OUgHDim+9B4loVIqn+DtUk4rE7DTKtJgIyo0Arw==
X-Received: by 2002:a05:620a:2903:b0:7c9:443e:7026 with SMTP id af79cd13be357-7cad5b2093dmr658527185a.8.1746226098052;
        Fri, 02 May 2025 15:48:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f69cfsm511823e87.227.2025.05.02.15.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 15:48:15 -0700 (PDT)
Date: Sat, 3 May 2025 01:48:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 17/24] drm/msm/dsi/phy: Fix missing initial VCO rate
Message-ID: <sz4kbwy5nwsebgf64ia7uq4ee7wbsa5uy3xmlqwcstsbntzcov@ew3dcyjdzmi2>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-17-8cab30c3e4df@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-b4-sm8750-display-v5-17-8cab30c3e4df@linaro.org>
X-Authority-Analysis: v=2.4 cv=Ldc86ifi c=1 sm=1 tr=0 ts=68154bb3 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3iPOKqzCR-5T2sWUWG0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 4liNQVXuolcLrNtV_fz-N57Op8b_zyFp
X-Proofpoint-ORIG-GUID: 4liNQVXuolcLrNtV_fz-N57Op8b_zyFp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4NyBTYWx0ZWRfXx0kv4qb1F0UD WdnKc7htULlc7UWSQqYP8ffp8S5sNKsA04v09nZz0HGAf0c5sdWoOS+6wTzamD4BFpRwq0aprus InbUWrY2GsbbyXUUWVl1mesfX7DJr00JNzRDSfkQp/kyXU9ToXh3T6iFsiFdcY8McaCr/QxH2a3
 4460q37x05ekEgWuo4hONzGlTZZzRNbw03Uoa0VoWVkdh0okgo4mSFUsfr8K2nhod3yIEf+8bjx Wsq0W9q4Cvb1th8eMo3GUN73b+pSUaBP0o8k5uGujV8sxsMp+GzGs+I81kj0awTBP17B9/TUFbt ssgwWg24MM8Ae/OOJ6pQ/zRpVY9BZhCOop1OszxYtsDBosgpLcgSs1+fLHLnPvjI7gsskvA7u9S
 fFvsiPBFNdM0RBv2mx94ObbAMeG1PbQqHGmocG6yZPXC8wYADsyIetZG0Vs9aIGrsZR1TFAf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 spamscore=0
 bulkscore=0 mlxlogscore=625 malwarescore=0 mlxscore=0 suspectscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020187

On Wed, Apr 30, 2025 at 03:00:47PM +0200, Krzysztof Kozlowski wrote:
> Driver unconditionally saves current state on first init in
> dsi_pll_7nm_init(), but does not save the VCO rate, only some of the
> divider registers.  The state is then restored during probe/enable via
> msm_dsi_phy_enable() -> msm_dsi_phy_pll_restore_state() ->
> dsi_7nm_pll_restore_state().
> 
> Restoring calls dsi_pll_7nm_vco_set_rate() with
> pll_7nm->vco_current_rate=0, which basically overwrites existing rate of
> VCO and messes with clock hierarchy, by setting frequency to 0 to clock
> tree.  This makes anyway little sense - VCO rate was not saved, so
> should not be restored.
> 
> If PLL was not configured configure it to minimum rate to avoid glitches
> and configuring entire in clock hierarchy to 0 Hz.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v5:
> 1. New patch
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Please implement similar change into the 10nm driver.

An alternative approach might be to do something like (14nm):

        cached_state->vco_rate = clk_hw_get_rate(phy->vco_hw);


-- 
With best wishes
Dmitry

