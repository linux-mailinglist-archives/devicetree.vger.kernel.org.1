Return-Path: <devicetree+bounces-135344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2139FA0095D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9704163F58
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB7E1FA165;
	Fri,  3 Jan 2025 12:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cJ6t4GHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963EF1A8409
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907983; cv=none; b=HShdh8EYrYngjHBzYCDy5srxQ15SoCpDvLdjAWU6jfOZE0mKxd3p8Zo/ttNiUcdHVOc0mUkQr8sKPT8gc9aH2ih481Z52V6pLj+jFHDnwzeOsbmroxvSK8Y2Qpkv3L0nUuTwjK/hw/wLs51fpKsDGOVhiDayUdobjYFivNCfDpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907983; c=relaxed/simple;
	bh=+D/2I74qUnLCXLMzPRoFaIC/hGxKY9/KK+LLg+RYVUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nEWTi9dVCZ+1fMKdkW0gDaSx8+0HV0ku2w9xr/fmbzayV18Kbzo9H+9OVeA0xnq4ShMK/RUYAmLYHA4un+rq5XC8hhY0AkSOnsbtkXf+h1edthcMf9Ls3G0o17AKtUSifVpa5/hbY3Inf91OCDBKB8T3TM3tve8wKeVJtU4bSnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cJ6t4GHI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5036Yc81010380
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:39:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lZwRh4PseLrHdLpqPBaflijRPt0Pr7IOxsOt0iWXhpA=; b=cJ6t4GHI6o5SsFAB
	OBjd647yfxLWmY4GJSY2O2f8qhUwSfZbY3ruB4AVdGlNPvsoBhppAywvPQpDZaSI
	CqSpjYTJScad1Sp7Mz5iXOfFgvgRPj4sEm0xfwu0wsXshr9xkLSgg64Zw1KK64Lj
	11ALx/y/01RtDaO7cDYBr9+Iz9SGdjcryeLbbc6zrgatqQuQsuacbT2MN3Aextji
	W4YRs1WWNYaZkA0QEvkAL3rRLiLCgE1N6sYY6q/uJh6LudBuRSsWqZCujNggP7NB
	VFzRNcOfBSj3c7quArXxaKT0Bp5zX5ISVCyxtobAyZWqkz2IpftwlxnttwteFRjr
	CJlqUg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xardgru7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:39:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6fee34f95so28489485a.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:39:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907980; x=1736512780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lZwRh4PseLrHdLpqPBaflijRPt0Pr7IOxsOt0iWXhpA=;
        b=jXw+bONaqy8c61z16aQG0dLhwlHWMmJTBfMK2bXBNM0urH6dqaAyzwsBlqrBqPbA0k
         PN8DLQqaIuq8mtN+zNfBq5fSRXblN2lmuXGEcGubmKbRBry7DLwi8/QTOvmGfaX4VRmZ
         bgIC/jhPK0wZo5bqpnih8JS99556k8HzYpO1upnU3ckj1PVMJoaBv1aMkZYRVBow5DFb
         juJheTT/a5329yk9mOBsGyF6l5ARTR5EV08V67q5hhvSXwKbmLxv3+1WhCeIMFDtMo0t
         twN7i4H2D02t7LTS+esryEL1MMoWPBhlDjFJfXNqM1CTBGzonZh2y8hD00APctMGsIe5
         ailw==
X-Forwarded-Encrypted: i=1; AJvYcCW9ddAgEqW1qa357/f3kKeytsBMkUo084cpKKnp/SRLzVozgCJvdiffXcDdpS3R8Pge4u0BPVPac3l4@vger.kernel.org
X-Gm-Message-State: AOJu0YzFn/3nVgwhY5akr8qIMsb39hxD+D/668ZQ/S5hAboFQB5sj82X
	zXKbDW0PKwuhKH8jI6w14K+zs0fR0RWSDwLcMbFls1iO81uxlAl2rypKmICxbBHoTE1ZLQ9ijk1
	jXtjwbNc3tsYo18B5xJlJoSnNbS+FEd4FbLkUadCZCmV6Iu91QI0z/UIeI+Ql
X-Gm-Gg: ASbGnct6xR9vSUhRAtEXBK3bra656QXTvhl87ri4Lfg9iD8NjlffwTFjHTW+73242ih
	GYtT2R0tDpLhS3XDF3zC40REsjrZsqQ8I/eXLIfrcoi5F/It0KwXMzr3Lc0OkzklUqbYH3xmr7h
	EMETaOwd4T4O5itaxChHvTuzJ7Kw6MoYzkn+MhSUy4XJDUGMmqFXGOZZzJsgBQBPRrh5lYfhBAO
	Atruk+RznKL7XNozJBnDnLCtuKbcvpAUDWjkH/FCy4iKZ+GWY/6olDA+5a/C9aLMlJHvL4IjCRn
	Jo4VQEwOD/hIxXV9vAxwxuuhDQCvKutmPwY=
X-Received: by 2002:ac8:7fc1:0:b0:462:b46b:8bf8 with SMTP id d75a77b69052e-46a4a9b7558mr309385431cf.14.1735907979738;
        Fri, 03 Jan 2025 04:39:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9T35sLA9E07WaPbgvB2yIVdP5SW11rIxHrqYYRBRo/hP/Iuy8WbY9t+3R/LoFsXxymado1w==
X-Received: by 2002:ac8:7fc1:0:b0:462:b46b:8bf8 with SMTP id d75a77b69052e-46a4a9b7558mr309385091cf.14.1735907979439;
        Fri, 03 Jan 2025 04:39:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe41a6sm1914071966b.102.2025.01.03.04.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:39:39 -0800 (PST)
Message-ID: <da74c183-9f4a-4b11-b747-35fc21252a4d@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:39:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] drm/msm: a6x: Rework qmp_get() error handling
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20241231-gpu-acd-v3-0-3ba73660e9ca@quicinc.com>
 <20241231-gpu-acd-v3-2-3ba73660e9ca@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241231-gpu-acd-v3-2-3ba73660e9ca@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PZjB9iyMVmfxlFJMiMUqIgL7G2dc7w5Q
X-Proofpoint-ORIG-GUID: PZjB9iyMVmfxlFJMiMUqIgL7G2dc7w5Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 suspectscore=0 clxscore=1015 mlxlogscore=801 impostorscore=0 phishscore=0
 spamscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501030111

On 30.12.2024 10:11 PM, Akhil P Oommen wrote:
> Fix the following for qmp_get() errors:
> 
> 1. Correctly handle probe defer for A6x GPUs
> 2. Ignore other errors because those are okay when GPU ACD is
> not required. They are checked again during gpu acd probe.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

I think this looks right

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

