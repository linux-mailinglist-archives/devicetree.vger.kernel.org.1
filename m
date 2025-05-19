Return-Path: <devicetree+bounces-178410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CC5ABBBA2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20820189BF50
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BFF9274640;
	Mon, 19 May 2025 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SHd7AOVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD9027464D
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652334; cv=none; b=NnKxT6M67NqoPOeIYIqLkk1+uxOD+C3vB27AkadyOiAiuuytwDOBLSDD+j3ZQhoYy5oSeisk8KSbJ+2K+oq4JVXIn9f3ctXZnlxZsVVoLlqvGQhy9jq431HugG8gvZAKQk3hlnwESOFcuR31l8WcGArwMq/IfAPvKi4JNehpkbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652334; c=relaxed/simple;
	bh=k+dXzlqMIg75u0mEM2Z8oVwbF0JGO6yHXhkMZsH6N+o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PHp4qoL3A0M4RuyQVQNPqVlpJer/j433cyWMUxwsZaREvO5M5LfcwKkeFQsv7DSoU9jMrgnqhbcnmVA/tC2ZYmtHi7eTVIh9H9CC1ZQ7SqVriyQE7BpdLABXA4KGBI2MribduOxGiGEgMcgzRt7J5SYi9+XLOeGlrirDfaZI+UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SHd7AOVs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9CYaZ001829
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	86cBgxAbBj1uawgk6dKg3/xrbG+UFcgr07uuksYBAN8=; b=SHd7AOVs/dj+b+CH
	C0DqMZTpuZePwmK8MfQxgGgSX62LuWE60uRxDKBJXXvPecR3Ouc9yzNv2R4TaL0T
	yycGhVWuYVoitxHTUEZ3vGsGRjSQMekr6lXAtrTC+qIPAcy2307UcnuOEBm5+X3L
	RbqlZMGaH7Y0DJ0tvTygIvDw/o65/Qf0egGyymBhuegpGq2hXUljiNYr5+YC6q8m
	qgWXBxAjsPDDWC5JvcEmoLpYA25AhBOKoA//7A3tPt7AiVftM9kOcu5eqvdU69B0
	igmNlV2HsNiP7goxxfQ0yhsu3Yr3xPmJSeCiqVPwE/FoZE+c0X3585kMF5jsMbfD
	tm1gSw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7c2xk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:58:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so1503836285a.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652328; x=1748257128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=86cBgxAbBj1uawgk6dKg3/xrbG+UFcgr07uuksYBAN8=;
        b=w54PwZKgd41ENpwdxeuByPUrx+1REReG/dtVvj7X4LDx+c/0Q4JwZpiCThKQwdCQb/
         CCi3asIn95NsmYOkRcgJD5O8FWsWtqeqLn7VF1SsudjkxArGQD8Es6K0Xr/kXEzjcLCx
         IW8nlfKZ2U5GGlBGEWrQMF8NeN/UeNW00qRdah0pmAsu88AOOLO9cAZB63SsRqd4OKw9
         twCXa2l/EnX0y0ClhZ6JlS40+FspBNPoBkc7qGrpdHUz02kUAuxpMD89R49eT4+gSSHB
         0JdvHyibALP9NPD7NSoN/UMUNxfyi3CegzsM2f+ohFfytK9w5QBaRB/7ggo63DvTpnEd
         zENg==
X-Forwarded-Encrypted: i=1; AJvYcCX7t0NbuQopj1KBHAN1D5IetqkmDGvuwF94ymtfmbI19rexcudX5FAho6aG6To5ysJY1/lQyqEyZjju@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Ds+qiTUvUwt+5gn0R6RmLqdeU442CCaT54eB3h9qovvGdgSb
	qW3GGmQKl7wyu94XYEyXzX4ygDfJkGb3xAyv7vS0MTFV5Q6TJYv62LWajX+WcDWVFQBKVUoqaRD
	c51Fhgse1CIIzwNbBSwPAgN/QmJybooGaiIIELX6rHNsOGDFe+W9FBdWrHTTtpxA1
X-Gm-Gg: ASbGnctoQZwr9NygxfjKmLXoGgVrlDpLkO/asKzK7s3UT4/nyBvEOUgdGga4n8MlQvQ
	f2I09DHgaq+TvpH414g5lGq6hZV6iWgmlV5yKQirbBiGycAV0iiYUZs9YxEbaLaVVpo2js0eY9n
	R2U0F7bZ0xWG06Vbqyy4jL1c/SUZM4omMDohWBJBmpAhRFM+dzHqCxs+BVTCG/AKdft5NJ6mpH6
	TxABW/aUwPZxKB3MfjKAYaqYJJlTQYnn9i0K1vGFMmU9TS2l+h5WkKC2CjFV5HbSdHNUDUuyGhb
	ljqf534p1LgD0+HRImVP4V4tuz4j7cUOBVvjicK35uKwVinyIpTQHLHsOJuF1xaPU191Wkod85N
	G0C8RcGoob1t3U0ROoRQsO+IK
X-Received: by 2002:a05:620a:248c:b0:7c5:562d:ccf4 with SMTP id af79cd13be357-7cd47f0004amr1688582785a.4.1747652327966;
        Mon, 19 May 2025 03:58:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC0Dkz5uT81kjybYAt3wNQ4m8l4BP7fLJQGKLKFt5m0JWT/MZxJVQhBDzIpWZrb3G3Vyxmbw==
X-Received: by 2002:a05:620a:248c:b0:7c5:562d:ccf4 with SMTP id af79cd13be357-7cd47f0004amr1688580085a.4.1747652327658;
        Mon, 19 May 2025 03:58:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f314a2sm1801140e87.77.2025.05.19.03.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:58:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
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
        Dmitry Baryshkov <lumag@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/7] drm/msm/mdp4: rework LVDS/LCDC panel support
Date: Mon, 19 May 2025 13:58:33 +0300
Message-Id: <174637445761.1385605.15776598312432418446.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
References: <20250425-fd-mdp4-lvds-v4-0-6b212160b44c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682b0eeb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=JuEGTYreKb10gHM5aT0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: yfsdF1i-v3OXOUWPkzFHWv2Evg56nmRr
X-Proofpoint-GUID: yfsdF1i-v3OXOUWPkzFHWv2Evg56nmRr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwNCBTYWx0ZWRfX88x6lxdmzuEs
 RUoxPAs2fpE8Vcec30ckLXQAH8VcQ55jX7s0iK6+hNzKnE/Nxoc1nzmxjIgMhqjY5VErrrMxhjP
 JE7emljQjoSC+d/XcAslsDP2j10N2j8Bhi/HuOxnjBkbfo62RpEgdBKlBpgasi4Ou7U7mlxX9cf
 M6EMBGrIVU3QiwOcG/iHUO0YJWRwkMaku32lI+O7KH69H1C9Pog5C8BVOoHto6WLOYbAwockNsl
 xh5tbNN1qVG9cR1ero64CSol5RPZY7u/cOwG2GveqC+PVOZRNkYnaU4bs+YCaGabN5QBDExS8WB
 OnVjb3owf9yxJSBaQki9TUNQA3LrNlD/zc3F9tnn+SSeAwdq2IMadExsoCWSF3WMTCTRYTy8Tbb
 IYCimkVVFtnBW+dE8yfLN/0SaQldOrhH0S1HGtcllwfs8hni1eNQhqmYBYLJawBiJvfANP4x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=980 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190104


On Fri, 25 Apr 2025 12:51:50 +0300, Dmitry Baryshkov wrote:
> The LCDC controller uses pixel clock provided by the multimedia clock
> controller (mmcc) instead of using LVDS PHY clock directly. Link LVDS
> clocks properly, taking MMCC into account.
> 
> MDP4 uses custom code to handle LVDS panel. It predates handling
> EPROBE_DEFER, it tries to work when the panel device is not available,
> etc. Switch MDP4 LCDC code to use drm_panel_bridge/drm_bridge_connector
> to follow contemporary DRM practices.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: display: msm: mdp4: add LCDC clock and PLL source
      https://gitlab.freedesktop.org/lumag/msm/-/commit/2f1d131147aa
[2/7] drm/msm/mdp4: drop mpd4_lvds_pll_init stub
      https://gitlab.freedesktop.org/lumag/msm/-/commit/f6720d64d8eb
[3/7] drm/msm/mdp4: register the LVDS PLL as a clock provider
      https://gitlab.freedesktop.org/lumag/msm/-/commit/9c2f63da6a70
[4/7] drm/msm/mdp4: use parent_data for LVDS PLL
      https://gitlab.freedesktop.org/lumag/msm/-/commit/b641bf534cf4
[5/7] drm/msm/mdp4: move move_valid callback to lcdc_encoder
      https://gitlab.freedesktop.org/lumag/msm/-/commit/f26b80359bc7
[6/7] drm/msm/mdp4: switch LVDS to use drm_bridge/_connector
      https://gitlab.freedesktop.org/lumag/msm/-/commit/9b565edc44b6

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

