Return-Path: <devicetree+bounces-148933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2D8A3DC4F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CCC016F81E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346641F8916;
	Thu, 20 Feb 2025 14:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k+FnlPVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECC31FBE8D
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740060984; cv=none; b=Cq2uIFE9brF6TSlmgPbO6Y96BRKfkwcnTKc/CKExRc2zBi4HOIyOqVzz9VoaBhAzEW2lfDlHCJWtLSL+uzj08X10TjBomSmu8nkA5YUT2dLGXMohMlcEmeboe1Q00RGZ+IOHNEIg0s6hLDEBMkRMuCrCngmhwIeAlthl4O+ESqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740060984; c=relaxed/simple;
	bh=YKoE3C8XckkPijkVeqGKcv6Cd5mV1W7QWYCHmbo0e3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FW5uqeBncQhvKuN8NaZI6bigPlwoUtBWE02sBHc/WQrbdQBqDNAfr7nQBaUboiLzNr0BGOiBdHb01qF/ta4NOJF9YZiFDiPehBGgiOxskLj4uKm9LVw4xd9W+ESIQbkDEMHBUuAv/CYhzO6Ud/m8VYUrry8X+hLBfsAGoTm62J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k+FnlPVz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K5taFx015154
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:16:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JuYdE4dlbQ4IVCBmM2eClz9fsFF9FHokS9b6ozmwZV4=; b=k+FnlPVzYzdZ2PE6
	Kroj/0BmRoWTMqyMDL74lahz3z0gUJEHra+1atu0vb92f2OmCzhuUwgwubYsaH9K
	kZIijV8sXs4gJd9882zuZr9MDEh8UUUWfjgxceNdpuv0JkcEh1psJ72Vl57W8TET
	6uX9aq//ihEVPSyatHS9FU4PpQjNzu61Ea94TK3akqkIXp3VKOi08OHQ0ftKO2x7
	gFwI3B10Ahan1UtT6vu7pXJTpTM8rTP75+nznsOj+SdU7WYzjUDQ8dNc9e4JhVX7
	qNssf5RV1Li7Ii6Dx4PWwnJOTpW4S03QSjt4nNqlZMn9+Nhk3tKlqe0RUzvnIE6I
	1BiaYQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy4edb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:16:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e19bfc2025so1864516d6.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 06:16:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740060980; x=1740665780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JuYdE4dlbQ4IVCBmM2eClz9fsFF9FHokS9b6ozmwZV4=;
        b=jVxt7BbAZxv4/wN2bJ0DbPsPZjB/VjPGRtBM5lDY/HTTsr0+lmISK9oHjjnIyKp0Bw
         wD2Xu6CVTE6AsvQ4eFnnTBaDjz4irPBe/Ps3+JJnBxpeK2AHCbu5/bIurvGk2RBZpLHu
         skntNFVNCTfDK9LpRLdguV3DcvIG2W6CiUniyfLMsWqctWOs2NBB4E3+LDIqMYVSIg7U
         m3lCP1yZ/cMvT2seCVTDnnLGZZJXNXfxn9xMgs/RTuPmalMyEQ31/tIb3ffNCo93CDH/
         0BMnzqKn7HWrn3ovzyn/T59WA8aGjdcmAXVpnwMmIN/t+T3EO3giEA508LbxLYnAc76p
         zXdg==
X-Forwarded-Encrypted: i=1; AJvYcCXWp755rOeBkdrBjluvZ9ZDIZOoA07HvOwy/zTnuSQoOUCBEczcfNi+SeR2Kpr83WOmLD+PdVtRAkxs@vger.kernel.org
X-Gm-Message-State: AOJu0YymQrrBLlkcTvG5+wZybt07Ow7iozplmqXfmVBowXb4HBHKVOR3
	FoXHVj61NOc2r9fqrAoi2y2XNJs2AuHxsT3R6OssDsWwtxFYA70zpGUo7UirAd8Njl5L1oQdlUW
	pHcxilqt0obbaYNNwoB/bYSO0KNpBIE3pAKeZKxP1gkew5yb2UBwyKm+v7Zo3
X-Gm-Gg: ASbGncsdJ/6GVfdhGLpr8i9JakHTUCbL/ODr/TNhAK5ZoEjX29Ub1Lo5Jd/Uomr3qaM
	PeLcxmzppD8ghMk/HmpS1NkSefY1fpUiv+dJf8Es4YqdCZtWV8Y4GZZiRb9DP9k+WpBB03Zq87U
	vx7xceDCRoPX4gSyPcE4RfYQiUpWpbUzjMdIgqSKfuD0WEWDON7DfGKfYSe2w/fJJ7d4zua3hIU
	WBKno++HJ9dZXTmCePL1D/0MkxAF7Ou2OSe8W73Hjvk1kWSFktJKGt1c6GmifKpqIvDorDLvmb+
	XXM6+qxQ3j0z+OZhvW14TC63aq3QwModJnCFs4rgllELK02iY7NmQGy7Vzc=
X-Received: by 2002:a05:6214:daa:b0:6d4:d1c:47d with SMTP id 6a1803df08f44-6e66cc81ee6mr117329776d6.2.1740060980166;
        Thu, 20 Feb 2025 06:16:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/rtxy8V+ibsuKKWTYNnpHRyUUiiKw18tEiKCIKFtweF7nc0fiGiUTgniZ2kAyBjdw0RVwQA==
X-Received: by 2002:a05:6214:daa:b0:6d4:d1c:47d with SMTP id 6a1803df08f44-6e66cc81ee6mr117329606d6.2.1740060979770;
        Thu, 20 Feb 2025 06:16:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532322e6sm1462102766b.1.2025.02.20.06.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 06:16:19 -0800 (PST)
Message-ID: <bbb099ae-2389-4b7c-9161-83d8fe94b45d@oss.qualcomm.com>
Date: Thu, 20 Feb 2025 15:16:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] drm/msm/mdp4: drop mpd4_lvds_pll_init stub
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
 <20250220-fd-mdp4-lvds-v2-2-15afe5578a31@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-2-15afe5578a31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dkJXHAYUkLAuawO825UciSyfyLSL5Z1o
X-Proofpoint-ORIG-GUID: dkJXHAYUkLAuawO825UciSyfyLSL5Z1o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=780 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200103

On 20.02.2025 12:14 PM, Dmitry Baryshkov wrote:
> Drop the !COMMON_CLK stub for mpd4_lvds_pll_init(), the DRM_MSM driver
> depends on COMMON_CLK.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Ha, nice bit of archeology

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

