Return-Path: <devicetree+bounces-179014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B94CABE5F6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A81C73BCC8F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BCD2586CF;
	Tue, 20 May 2025 21:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PVO7/Jae"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6712571AD
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747776190; cv=none; b=O9lBld1hmb3OWZtMgwkWbLVs+bNJc6ZmwQKVCqaaQDlyzTCmnJomFGsrGZzdNNLGwWFq2E0mMSqkH1aXhInsBhaPt1NdUknErOCCHi8xG3xEv5JK/6PAewqYrRd2Fchvbh69jacZC3E0z/NqbZPGQSAB5bjp0Ng2vWtfQV1XCuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747776190; c=relaxed/simple;
	bh=8phxA+rA8ZVD5fB/k6NMb1aeG+s6n/6ayNF5WXF8gCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UXodlHLRLiSUZwnd3k76CxtOeGICsRRmdyZmIHkrLbw3f32ZpfbmGzDJeilOx8/BD/ZxcmHrTWp0lWKC+cbGTLnmd2f0NOSzTtWvcEbjjVFJ/fpFa391mi8bJwPnueqrGPsg1wnqeNHZT9jEYjfICRp5+CS3WWNe0TKpqybYtoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PVO7/Jae; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGiP8P019199
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:23:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PJTTKnBKjzIZMKSIryiRh8vV
	CPHt6pjQ+IbbYXOR+bs=; b=PVO7/Jaekzn6FyDP88eo2rAwY4jev+tP0JzYkC6i
	Nm1iVFwMn+ZBhdN+Wa/sBk6UarR8VW6LRQNQRR5bvzVJFruzrSaB+1o7wHMFR2YG
	UA+bfQYSbormVehAN6UZJQ593KF3me35XXm6ARsov4IgPgzOiISUK2AGDbPswb7t
	C6Q8Ksvwz6nfZHvagM1mssjXCV/G0hy0cOoNqXq6/pSCVn2ikDPLyqzExyc3hpTw
	2SYey1mfByN1hSJIMFNmUUcXi3UWrXUT//hiUlqzhp2iHj4Y+dqV3yvQeSpk0d23
	/7KenO/Hb2X6hDNRo8fdaBSBe+uex8YeZiKHudeUIG9Q4w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh58ny9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:23:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8d8f77d4fso48486006d6.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747776185; x=1748380985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PJTTKnBKjzIZMKSIryiRh8vVCPHt6pjQ+IbbYXOR+bs=;
        b=sXWDm4J+gjl7QiYAaAigoNeNC9K80tQww7x7Ba3E+NQ+Yxfy+5FbYJFhJqwQRkXl/o
         6to/LTP8dWT4hU2qt4SS5ozVPOfUFOdZkbtnCdKDSgmaY15im05Qtxr0HhL/+7T3JstN
         DCiFe6oizbHyLgMPAU1uivJWjDLf7pw9Uh3XKD78i9FPo/aFkeZrycTOsMS3R5C8eXAD
         heRhZ+3kHYNJ+8py1T3PYT5smmWUkAKse1XcLAvVzlrOB25KSmmW5Zekmu8vEhRF0shs
         0fuMEdLjXKBV+YCOJWI5skBzVICGfsdrBoDj0fCT63/gSj4mHJNOHfUppN8z4a5dK8fa
         Nqsw==
X-Forwarded-Encrypted: i=1; AJvYcCXe2TJeffCCI9gS70DbEayh9deXutPT2Xwp5L39ZBWIMhmNzFGngDJcZ+hB9BTdEy+XOIu9sup8WkzC@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRv5f9Jh0D0jnyMmtsVyM6ivsGbdvULdHjsig+qa7g7L+HpFI
	Zf1un3WT8QfRhvB6XpGFhhFXRurMeTASul3GPvRVfFl00YCOd+1bS5a6UsySB7GiYxErxixYqRA
	LfaGqi3jkn543gySlC0+JyHp4SAXQDFbfk3p0DuWmNRm65jRubCnnJTZZSpjaGpLw6gfSHdICKn
	8=
X-Gm-Gg: ASbGncsBq0YOxIlSnloe2PQ4DR+zMlsne23vaqiBKCVtqEDBRD9hLb69HcU4iDDiVVJ
	BeQQHNjkCYVMjpcGJFTGosJED+9myf4iaJ6ETqCM9NDsjL8AVj+gWhgPTBjiOcgFVHpuMyD/a4k
	chNRQhaQXVYNHiggyK3GvZjHru9QOf6MVcnMaUyP7EyI1g+yvzCMh1YrDFoW+QIWWxNoK4+yj7d
	GI6WONwSN97byb7Xkmz0OePKb91UzO8GklcdUxtqvDYMgrKtM1eri+jVaWz2cH0k9pOKtus9iYa
	f/4TnzIY8bP4aYaolCdNEKUThXpo+4i8PEj7Wx17xIUSQdRpAJ65UxnPpccQ8lEUxOEBgk0rE3c
	=
X-Received: by 2002:a05:6214:1302:b0:6f8:ac7b:c1ab with SMTP id 6a1803df08f44-6f8b08bfa84mr302151296d6.34.1747776185550;
        Tue, 20 May 2025 14:23:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSNH/J3cdOwkKYoEGIk9Q5AXGp27fsWVQp+pVM4ZLDvbwZD5a2qcj2J/WGs8mI5wFvjVD1oA==
X-Received: by 2002:a05:6214:1302:b0:6f8:ac7b:c1ab with SMTP id 6a1803df08f44-6f8b08bfa84mr302150946d6.34.1747776185076;
        Tue, 20 May 2025 14:23:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084cbbcasm25005051fa.46.2025.05.20.14.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:23:04 -0700 (PDT)
Date: Wed, 21 May 2025 00:23:02 +0300
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
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 15/24] drm/msm/dsi/phy: Define PHY_CMN_CTRL_0 bitfields
Message-ID: <f4ciopex6fo6u77shetfa3hjb3ehvy3brkocyjcbd6xchkmgxs@v6xfxhye24hg>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-15-8cab30c3e4df@linaro.org>
 <j47udhqq3ldsza3cr6a6rd5dq7uxjgpolbmdhmpzvzt7glpuva@v5tgkydlywag>
 <b4f68273-6c3d-4ca5-8b8d-8837f3f03683@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b4f68273-6c3d-4ca5-8b8d-8837f3f03683@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE3MyBTYWx0ZWRfX5HzGr/oWOwyK
 LTj1MJ8ZKIuTDyUCox/2cL5T3W+pd+heSP5hGKU9qMRmsAXoqWN3no+FnW5+p9pxzLJch3hqELF
 qhZ+W3kQRsLxuKGJCHncC049+rMGnPP4YR9QTH5G6FYYedAkrG32cUNJ9hzbb371U96eDPl3oId
 qSJRytCp6q3yJI5x+o5T144nv4z0KS7Oz53PPBe26o7e7jJFZmKd++0n/dK4t2iLMNboCDintPr
 J1Dx8UP5CPSh/0k9j4i4xkcnNBmz1qPt19AF5P1T9kXW5lTUD4TEo14ay+0Iv6kogniwiDuoCs3
 F6JhgBNMeonTV5KvCpNfCtePwjAWdBTipJILtlzZJPwa+KMlmsjBs7VReUht4mjf00n3Q5hspR6
 zjG7xLBgMr1/l05u47yytU+CLJwTu7AoLscD7hE7ka4k4+8tvsjhOeUAMFxziK98nXpolywq
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682cf2bb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=SyEZ2-kNlmUJddv_52kA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 2HwIf4WfrAL_NNqYn4HeeFycctHe-N_B
X-Proofpoint-ORIG-GUID: 2HwIf4WfrAL_NNqYn4HeeFycctHe-N_B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200173

On Tue, May 20, 2025 at 12:57:25PM +0200, Krzysztof Kozlowski wrote:
> On 03/05/2025 00:44, Dmitry Baryshkov wrote:
> > On Wed, Apr 30, 2025 at 03:00:45PM +0200, Krzysztof Kozlowski wrote:
> >> Add bitfields for PHY_CMN_CTRL_0 registers to avoid hard-coding bit
> >> masks and shifts and make the code a bit more readable.
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> ---
> >>
> >> Changes in v5:
> >> 1. New patch
> >> ---
> >>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c             |  9 ++++++---
> >>  drivers/gpu/drm/msm/registers/display/dsi_phy_7nm.xml | 11 ++++++++++-
> >>  2 files changed, 16 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> >> index ca1a120f630a3650bf6d9f9d426cccea88c22e7f..7ef0aa7ff41b7d10d2630405c3d2f541957f19ea 100644
> >> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> >> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> >> @@ -362,17 +362,19 @@ static int dsi_pll_7nm_lock_status(struct dsi_pll_7nm *pll)
> >>  static void dsi_pll_disable_pll_bias(struct dsi_pll_7nm *pll)
> >>  {
> >>  	u32 data = readl(pll->phy->base + REG_DSI_7nm_PHY_CMN_CTRL_0);
> > 
> > This (and several following functions) should be triggering a warning
> > regarding empty line after variable declaration block.
> 
> Hey Dmitry,
> 
> I am implementing all the feedback and probably rebasing but to clarify
> this part:
> 
> There is no checkpatch --strict warning here exactly for the reason I
> was saying. For readability there should be no empty line after because
> such statements are expected to be together. I don't mind of course
> adding one, so I will implement the change.

I'd prefer this:

u32 data;

data = readl();
data &= foo;;

> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

