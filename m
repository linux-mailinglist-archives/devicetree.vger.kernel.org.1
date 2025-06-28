Return-Path: <devicetree+bounces-190708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C100EAEC786
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:02:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77F401BC2A77
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E8F21E0AF;
	Sat, 28 Jun 2025 14:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f1+cmURx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BE41A0703
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751119350; cv=none; b=kzZS1wmz0LWa8CfIFFWgRkxySRp6gEtHvrXh551H0aHocGvR8/AtJcX3GYLrma5mu1Kr9mpEjR9k3X3bFnpZ28TeI0wmBLUBygbRX/Von+z4njYj48UWBbKtRW8u7WLSoBgxnMfBaAdLztjpnwn9Df3wVZauVOE4uGmzz34nhjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751119350; c=relaxed/simple;
	bh=76cTA5dhjIgLc0kQ61Km1dduokY52iB0ODeYTMZIjfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VIW7WoqFvX0FSspU7bKfKKxHMhc2s0TtUhZM5ZEMh/DkBqz4WJZwQWU3c/DpIcMCaHwshiLE2KF5gxs4YhQHdCee5OZF4kZvTItlmz82bcNdOQtLsZvNFaFh4R2Vss2WUmOCB7dCB2IpgQl9BNsKGAc3RZbZzTEotupwCuNt0IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f1+cmURx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55SDxGSt020263
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:02:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YUVDKJVoWS0hkADGlcPQRi4yplUlvInid/KHKpX5DjA=; b=f1+cmURxwE7I3hZo
	XnCzpKbvRVGZOaw/EjpkGt11sm1MaA0EmbfPcbg704HmTDv3wIXLOEvsrdZYk8Ei
	ixrkP2Gp0Fdbj75GTOjYTWuViSDGtDncv9iphEwBkgmBJHuK4GynMBHuG/6FAgYQ
	LCDVuxuOKKewe73j6xCDEV5SvatZgecZHf6h63IEHKzqvaf0qHtvWX8tQuPgzXGw
	eMkaEkFO1QfS+PGGlINbngjnNkvtOKg9jPc0CmOOYq0/0Sjg8uXu8737S0kfbe5a
	Jji04dJGjc3mPqxLt/BPAUMLdAe0AdaQRWIasTWQoyIeBKpoGuNqa5gxsPhfZDpl
	gAPDiA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7d9rspn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:02:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3ea727700so42981385a.3
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 07:02:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751119347; x=1751724147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YUVDKJVoWS0hkADGlcPQRi4yplUlvInid/KHKpX5DjA=;
        b=hmlVHYA/n+ZA6Hve2ZY6BtsDjVt1MTFzPsBmngm945gMK/brBYK+rlwBUdlet0V7OX
         JLId8fKxxAVJhMPs2QnHXeByNfdvxlVYs6XIVh2V55p2Rd/TbaVWpCgOPqEXXbzxJ0fm
         Am7tn1L9ZKJaIqKo/rdp43rbRzTPurSwUD9yDmhiRTS7ydZEStUmmxdM83eoqQc01K3v
         VMM+c4+FmJA/5H3rgzEZWFdg/NcbAAxvdyknSZmYu/e8rvZdJQ1PDHCVCQy30E0uciF+
         Bacby2A7+BHDnkI7ZMvAqFgdYz5CuqDZbUP3NWrS4qFwx/53zlTLSBhg9xVUy3/2Q40H
         mfuw==
X-Forwarded-Encrypted: i=1; AJvYcCUnrDgmcgl3FxCTHBtvjo5MEI0NS3KMyfOZu9+FNHJwOsiwuTAiDDwTWhO5Tvdfg61GXgCmtbmXNHxm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk/c1EwFkJeXPLrIxLz/b2s3iP5858RT3gaCGdMEr7/HPAujq6
	lINyfoh5vGtfJinhRc7aeHaKrT2I1HOmLAhMYPIlyxETLPRrO1xAiyBYMTYus48r8kMamJz2fqZ
	Cn0zmU07VdvMOkA5ofHVTHkxNwMk3dfHCNLWSJhvIPNxb9PNVYnwfLJuPWvDCszOT
X-Gm-Gg: ASbGncusteZzS488faneUxrm/B/EwjzoYqhfflayQeQ4eu170ZzbQFpyDv0vyYN/LZh
	pf+wI/8APwCZrDKPfrAHlDNsN7RoIPUQY99eHwOKx/zUl0pDxp0BpfXJOtxQ4ezunuvdSlm/HoX
	mEH1Fm4JHSM8NMfAaVd6oG4/xJiijYUQiE1qBilxFB/Dt2X+q518pz9sdjzORkLx1Ehrz5QRsRl
	m+PPJO1Wqx+BcLZzw4tcoIIIX0noMjJf/XMApfBTfetOGbi6AqmUmfH2dWbuHd61Z2JplZqnpt7
	yXrm6yqEZPyn/vtIoRQYRrqgbJCGlsRd9UA9fTIKTQI+hBcnliNx5J6i0X4asKarPR/pWzfkSsQ
	NlHc=
X-Received: by 2002:a05:620a:2911:b0:7c7:a574:c6d2 with SMTP id af79cd13be357-7d44c26c479mr159332585a.9.1751119347386;
        Sat, 28 Jun 2025 07:02:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7wuqAnLzb6/uFSg6oL9C//BE7uB/PxoedUfxOubcNg8iAM3IahQGLP9T9ZqdE0mT6FVoRNA==
X-Received: by 2002:a05:620a:2911:b0:7c7:a574:c6d2 with SMTP id af79cd13be357-7d44c26c479mr159328085a.9.1751119346578;
        Sat, 28 Jun 2025 07:02:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca0fdasm319419366b.147.2025.06.28.07.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jun 2025 07:02:26 -0700 (PDT)
Message-ID: <7b7c970f-f94c-4b38-9693-65f969b992b5@oss.qualcomm.com>
Date: Sat, 28 Jun 2025 16:02:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: display/msm/gpu: account for 7xx GPUs in
 clocks conditions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
 <20250628-rework-msm-gpu-schema-v1-1-89f818c51b6a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250628-rework-msm-gpu-schema-v1-1-89f818c51b6a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDExNyBTYWx0ZWRfX0l1uL1Igcx6m
 6Lplnnlco39lnRCjW0zjqwfSVygM931qlhqusoduMNprcwJcnlhuedX3RH87SntY5O9Wnzc9/Yu
 DSKwDSYGidmMoicixzLO4ntoB/kET4YQnh/gvTot6egEjcpDBB1x9RVTCIPrvOIhmPLIw5AKSkU
 oVH2XctbhbXsBIo0iife9OWOPo6lFxd3z9tY7IrGGs+iXDrZsizA3zJle4apTQ5UF8co+Ew17Lo
 Coe6EY0kk8QOIDqZ1UHGfl+Kipll49ptmxaXEqEXOS4Dr/8fjzfuHvx/iXsWCGgnnDV4WFaKECN
 RGHqjKmon+aQYg8niHyVsd4ebl+611z4tESpbsX3BdvlVumgntgG0FQj+Qapbk0RqooCfKrI2C1
 QqKY5U6TAiOzyWQklKqjv9pOJArQ16963ppFdgeRfRxaukwF2q40WK2EJW03DWdgqAd3yQW4
X-Proofpoint-GUID: Okhq090_mXE6xHYfKZIfrJAVVu4u0DTr
X-Authority-Analysis: v=2.4 cv=RrbFLDmK c=1 sm=1 tr=0 ts=685ff5f4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=fA9TbEmd_Wx33vs1QK8A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Okhq090_mXE6xHYfKZIfrJAVVu4u0DTr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=721 adultscore=0 clxscore=1015 suspectscore=0
 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280117

On 6/28/25 5:02 AM, Dmitry Baryshkov wrote:
> Handle two cases for Adreno 7xx:
> - Adreno 702 follows A610 and A619 example and has clocks in the GPU
>   node.
> - Newer 7xx GPUs use a different pattern for the compatibles and did not
>   match currently.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

