Return-Path: <devicetree+bounces-214799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE30B4A6F4
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E45F179E36
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 09:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5724E27FB21;
	Tue,  9 Sep 2025 09:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j91VP4Gv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B5527A93D
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 09:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757409135; cv=none; b=LyMrZg9k2Y3amygkASs8WCu8e16sy3bHt3cGVZBWCAisCMvYl58hoGkvhKX49Gv98J+N0gFeRh2hiHe8Mve8W6EhgrfhUNjMSze8+ygmc3ZY03bR/nNKUHsTa3e3vQReQzNuW6EgGoKMzZ3LZHSJ8IgL6h3sX6LOAT2uqZ0WYXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757409135; c=relaxed/simple;
	bh=luaWj8YLVt/GHe7gdqZ+kOjyKtBzDcdnU6RugbywhPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c7vpkezwS93ysje4AeHRn5RJ+WbNClkYN5ZpYPYIXo+tlnQA+UCpklAMHJCcnXYJxYjB2gJXfme9xX3SSPBH82fBiGe7RWZ1aAr4BcJrsDrm73gDEkKXVH4ODR8FcDMy/G6BsbE2T9EvEhugBoZq0rk/0GyGIrIdbbagUAnDziY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j91VP4Gv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896T4Wj029227
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 09:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7/LZ7jld6Mn4TzxL+e3wR4fKEsF+dhJ3GAlByrhuIjw=; b=j91VP4GvonjXVqJG
	g7UJdf4R4krV5SI1hisRHQTgpAYDp99pUNmaH0VbNzRwikm4gD+lpc/O97k/rzaZ
	ldmX0ZDowjWc8kfCWE2m6WJoUqn7gM8RWHgHbMlXcJ+ZoyJYcNUozb/gAWa3ys6E
	xQJA91IUsus+fR4iYRPl7qWpOpSfp6ut6oIJbGYYeopXtVI6IQjHVme9nJRTOck3
	Bc7TSKCQavDYO8j1+qu+zLdk0sHDEDq9C90RRR1XuXUW+yj2pZTx5rQypvKhiEPc
	fMH03JwEx6Q8l5+DjRi9+rhY6OUHB7Rl4JQZwS34qhVLbA8/NARnpTmQI/Golbfx
	TJDfeQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfygb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 09:12:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b6023952f6so11622171cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 02:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757409132; x=1758013932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7/LZ7jld6Mn4TzxL+e3wR4fKEsF+dhJ3GAlByrhuIjw=;
        b=SqPxyc1C9GNO6C1YLT/CkR2TqI6LgMcrLKX/DGSfM64lfZqi5tPNWg+IDPj3YTNhNL
         h4JxIzfxbwrenVzAErsSLr4376u0+vdV2FQTuiZ16Vf4o9JMTaf+jpZu9mnanKWeYDq0
         +gkLtZk+YeHUjrL2O4dma2UpiK/ETxt/2yyJvPGXwc6bMntybe8EUYlXVaMBlIl9bzZu
         HUAWVloCb9CHcKPRwRmTUnUT2e/plz1ynvJ6EPBF2qO+ff69ba8C8xwpOZiAhCtHr1Kb
         bgNySJVcEN+2Kq/vFDPh1z8B5dweOL2kx0+Cfru4wzeD7ucdnb5kTFkMJL1EOjma2eMr
         k+cA==
X-Forwarded-Encrypted: i=1; AJvYcCXEquS9c8tX5Gp+x6dMtQBUOzDwYZYYTyT1sxeYEKbtYfP+vkSlH6r69JxunIJyPFNE6J0Gq3Xaw00C@vger.kernel.org
X-Gm-Message-State: AOJu0YxPExn42KHa+8JFIkjq83NutFbXhmznOTPSQM80w+Yb4uWvD+T1
	EFX4eTzFKiahuSbLCHbfjtmb4A09Vu4vUb/IKmcmIF64fCnM8s98WoHSGDJd42H+najryvxhzv2
	Vb/IDo/qOaCZOix0cOn24bbGhAssWOUHfxjjyqK/qflhYv3qWXWzS2UmfTV/KFztk
X-Gm-Gg: ASbGncsqYMvXIVA53JAET9WIjBYZVq7DfOjxvyyFsQozxaIbtniLKP2g9hAYZSxO+xo
	3hwKDjR1LFzc0SG41RMB/ANSAxwSssFPLPTxjCHQRf2lARVjTvBQAiDaJV1XHJanxV8nA7zCgcr
	2mIywtbomprj/CTYAciOA4N0NKkgyfCk+XGR1QuyJnQrycwmGLPXM3wyjaqJkixJXXpg1lRjZ/l
	C0Tznfj1T7GyB7CQnOk5K1Q6Md1dGpWihji61pQiiJCHB27CIb/Hr557FRLzVTg67D0zoI6PQXn
	9VN4a/YhXaLGERd+gN0ZC6yvGORfWiMjBHTi8Z4cJHctbgeaQ+H2YUNdBC9q5UgJlBXjIDmJahN
	6WL6mTQTbPprlvW5bRPaXyA==
X-Received: by 2002:a05:622a:199a:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b5f847af12mr81429521cf.6.1757409131424;
        Tue, 09 Sep 2025 02:12:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT8WcnSygf6bNTgYYy0/PkzY2w1a4gXks9/FKqoCWfWHg07YtEpBTM6SSkzd5fxyaeTOsD6w==
X-Received: by 2002:a05:622a:199a:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b5f847af12mr81429211cf.6.1757409130769;
        Tue, 09 Sep 2025 02:12:10 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b047373afcesm1359797266b.57.2025.09.09.02.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 02:12:10 -0700 (PDT)
Message-ID: <25df0f78-68a0-4459-a5a1-eb035b0a5395@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 11:12:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
 <20250909-a663-gpu-support-v5-3-761fa0a876bf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-3-761fa0a876bf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0ukTUC7lD30X7fcCnzWZ2h2p2v3sJTOi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX3lCgIKBF2FxK
 n0JHWUQnsCx0F+vEaTKWq4LTdQP9dH/0K51+V1LNCUT7MVXTrqCxWQB2jiEy6usLU7Louu1mjIG
 OSmVBCx9lk0T/OO+Ted2DJtrnla0Z9ZIiLDznGjZOLuB5STFMLamMrpwbTBPUjFaLTpWFzo2KTZ
 y6OOqj0qIS1P16DNQqqQYON2/y9O8Ef6Z/yMp+Jz+OWeJZlZylFj3ntWlsLYl4bUMyyvmswPd/e
 43vA1YDgkC2waza99ME+1vbE3B/6cziIfEHnLQ5PgimNeLcFCssnVxOdnUxavBvRbve//sMZ3rg
 QRECi/Ch6RvSc19IWosBXp/p4vXaGZdGF99uLxO6u/lZ9iyYc0SESq1lFLr+2VdO7dZgdrzllzD
 7WlNf5yE
X-Proofpoint-GUID: 0ukTUC7lD30X7fcCnzWZ2h2p2v3sJTOi
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bfef6d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=bBjZtXtOduL1R7AEkPMA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/8/25 9:39 PM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. Also, add the speedbin
> qfprom node and wire it up with GPU node.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

None of my comments on v4 were addressed (we agreed to drop the
GMU MMIO range one but others still stand)

https://lore.kernel.org/all/f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com/

Konrad

