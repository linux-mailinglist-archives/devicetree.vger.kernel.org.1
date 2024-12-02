Return-Path: <devicetree+bounces-126137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 142D59E0579
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C431F28A5B5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC70720A5E7;
	Mon,  2 Dec 2024 14:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K1MTDluf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E80B207A04
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150350; cv=none; b=hkACQZ7v0CltQEGUQ8HKyEH5/KImTw8AhlJ4B4YETh8DADw1GRnIN8BmYmgDIZRL3SbAumCviEYhmS9gLYGeXYZupYANm2mKX5Py4BmXBJRuiOTy43FsO6QosSWn02r8aLVu+iWV0iXTJZpJUCLnjnwt3BL3D3UU3S8XJy2Fi3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150350; c=relaxed/simple;
	bh=+NEcIZJgE7LLyCMgGbIR/QVszr+XGpIZ7fL//kOnjnk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FpdhkERE/orHj/b9Jjwddv8LxKGYhJqg1eP1uUoCoructgky4FLisI6jTKVDYq/Xfp8A8I1C/t2zqn4IFWzaLjdgd/GEyfHd3O+BCLf8VVTXmIbFriPU7nSw433/fsKY/s6W+Bk9DLJbJoyvtOgTE1Sbibolc0oUn7/vELbOU2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K1MTDluf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28NxID017303
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:39:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g6AHa+2hrNPXyHkYqMwv/F89CPs7fpLf/SFfF1BRFFI=; b=K1MTDlufvtvpJQmr
	OimYmvMcwTVI4zv5B+SND0p/IMTank1OPXf498JGJbQBrQ7Gne8DOSz0P4u39mCy
	Pv9tWOjALOS1a76F6HrM/7AJvOGrcOTcy7Jthl5qYlcVUshUyYcTzK2ZddmKnKt3
	Sbk5zWfCRDAS4RdDLXYPfNkIq7v1CwjObQluZIPrbo1JhjjNB2vNdxC8Gdur5n2J
	i7jts3cbkgEo9f2WmjP7+v9Pm9KYFgZZFRAur8dQ6yZrURcjhIP4ZB7MQmXFjUyM
	MlJS+1xS0U+x3U/5nwiNDpWTvfgIv6v584s1TeZ54vHAl4dDLxmfKeJpHw8u+mQx
	ZL7JlQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437r2mwb8d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:39:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668f2d0e50so6425361cf.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:39:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150347; x=1733755147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g6AHa+2hrNPXyHkYqMwv/F89CPs7fpLf/SFfF1BRFFI=;
        b=Sg13bhYZpKlgBg3Qlcnc3EUUvBFFUsFxBdm6cj3mqrly8Whyfjw2KEphplM0vL8yVQ
         hXR9ad6ZkUei081zCEoYq7wiH+Ch31ZPTn73BvubI3snq4pWttwisTawmbNtmjKGFmqx
         dcW+KB6eYo1PFDBIz7MtfsSvjYRlt5ZEBIrSuXq+LrHG+goC5mHj9BsCFlE4957usef7
         FBATcqsRQAjNUUZmPHNag9QTusFtQ9frJxMJ6ivKUV48LZxwZNrVZXftb27JuAzcnbP9
         mWrFnlvWDkdWcrgv2svCHv2zEemdIs9mnNFR+ROWFAo7uny9q+X5Uip2A6sZDjlOgI6K
         pPLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXU80bW/Mbpo994iVT152QxiGd5yjQeKC5OKtUFu4v51I//bbtD6ZXObna2vqW+jNsniwUAF5fdWrx@vger.kernel.org
X-Gm-Message-State: AOJu0YxfUQ2IsYsjseUbU9JPT0insMst+2EpORU0+xEMlgw8A86xfy87
	vCaqqbSBr2vWzHqhS7oiM5N5LlPSM4b7f7RGk1EPEs52LEwD6+FmZUj5GqwziI8VhE+qB0yvFH0
	IzB9oH4rn+qPz6au9KZ3+o8WqerTBtUqAc7Czlf5eydz+Q6f1MOkSJbCNDAJo
X-Gm-Gg: ASbGnctst3XsoYpN9jR22EaJGglfwiPw18vBxTVHLLwKElwVao7vS/BEnV3poWNK64s
	y0YGLb0epcxtmm/dslC14KBmZfMVs2kEMKDwW/LF+tDTowZWJ95ek4mqxO90/GsZeKyZV/Nfe9W
	HAR53q4awa1hWqCiL2uUGrTnuUWJgd3GiJAjeebaYagsy0LpdfJTubhSuYSx5k1XkgVJ3XTY5cH
	lSzQmOf/LTYlZtshidcoQbIxmfdc225a8rcENNuNfg7gbWU2ZGQ2QQ7NmYqKDgzvxOr9tud6Lz3
	tv86dQxelw4pOlW9J0Ji+69YIqYYkYc=
X-Received: by 2002:a05:622a:cf:b0:466:8033:7dd2 with SMTP id d75a77b69052e-466b365e8d0mr166007411cf.15.1733150347070;
        Mon, 02 Dec 2024 06:39:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRWwFbKz7t/fucB4yBe2bX2YgC+0oLMQnDi8dNTq6P8UMCq+YzXzq+ExBumA4HfzOz/BTPFQ==
X-Received: by 2002:a05:622a:cf:b0:466:8033:7dd2 with SMTP id d75a77b69052e-466b365e8d0mr166007091cf.15.1733150346436;
        Mon, 02 Dec 2024 06:39:06 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996de7fdsm514344466b.54.2024.12.02.06.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:39:06 -0800 (PST)
Message-ID: <d8e1c1d0-a375-4944-aada-2bbd6a4739ff@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:39:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8550: correct MDSS
 interconnects
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org,
        stable@kernel.org
References: <20241026-fix-sm8x50-mdp-icc-v2-0-fd8ddf755acc@linaro.org>
 <20241026-fix-sm8x50-mdp-icc-v2-1-fd8ddf755acc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241026-fix-sm8x50-mdp-icc-v2-1-fd8ddf755acc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1UE1aD_2BiWJZXt9laLhiI2AfG_WzS_6
X-Proofpoint-GUID: 1UE1aD_2BiWJZXt9laLhiI2AfG_WzS_6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=730 clxscore=1015 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020126

On 26.10.2024 7:59 PM, Dmitry Baryshkov wrote:
> SM8550 lists two interconnects for the display subsystem, mdp0-mem
> (between MDP and LLCC) and mdp1-mem (between LLCC and EBI, memory).
> The second interconnect is a misuse. mdpN-mem paths should be used for
> several outboud MDP interconnects rather than the path between LLCC and
> memory. This kind of misuse can result in bandwidth underflows, possibly
> degrading picture quality as the required memory bandwidth is divided
> between all mdpN-mem paths (and LLCC-EBI should not be a part of such
> division).
> 
> Drop the second path and use direct MDP-EBI path for mdp0-mem until we
> support separate MDP-LLCC and LLCC-EBI paths.
> 
> Fixes: d7da51db5b81 ("arm64: dts: qcom: sm8550: add display hardware devices")
> Cc: stable@kernel.org
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Feel free to use QCOM_ICC_TAG_ALWAYS, for both patches:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

