Return-Path: <devicetree+bounces-127558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1F39E5BCC
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AB4E18867B5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBB7224AEB;
	Thu,  5 Dec 2024 16:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A3LpffG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D2222584
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733416979; cv=none; b=O0Rx4KRXpVjTF1p0fO3cZfAT2ewkXdkE6bBxbdRMQP6tTwmGqIBcuStURMQN4pgr/nbpLVKOgQTqJDJLqUvCd6moUv4lZIpbK0XmbNC47iwHEX0iqoC7buECIkIY+6qZtRZizPo6mVDGN4Wh3H9r81n0iCwpHM3A60TGaSg8PYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733416979; c=relaxed/simple;
	bh=1woZyoDF9P0sdHsZk4MkB/fTFaWP7i9Vf+cWCL5tku8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T2hkTOcwCCqkWC68DF/7Q3yaTI4TKnNHdMUBwZ/fdFVMuPGekjVLxAw2b9tSCuaX+70AC+0VyTVKh8jmt/ku/mCrIIgBDesxddPKH2X3JJk2vaXooLIMxXZ44RXg+n9SR26ua2FhAlIAFONyD6bAIAaj/whYAdIsD16+ZGiV7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A3LpffG4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5FEmlf003245
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2UVCkmNVqIcfCWxpUv4lx27vKhXYtKQRJm/QunDoZ8Y=; b=A3LpffG47PZ+FJUl
	U0Vsx58LGu4iEcqPDtXKDpSTAqOBWmpWzKSjuO06qiQh6lLFVxYyKPo6Fhs4+UHN
	+4oLJa/Q3irrwmQ6UcLOOXeG+5D3hqefo/OkVLm0yFFGaxrq6wss/FFBw7g8CHP6
	rVa5lMjqULT/2W78dhnMVdLwT7Prvh49iSP8IdCz/YjQu6k4VABaGc3nlJQ0NyyR
	+0TETRu5hhiCpx1jpGXuPQr4HLkQuTRy1N1TEEddF7K5pOF+LxKYPp5RzcVnKEZM
	H1pHjYyBKEIqGR5Qro1G6oul5O2S9dyaU3vW5ijyRQQKjXA8xCmP7RMnMd4iI/Pc
	ZC5sGw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ben888xx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:42:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6635bf76eso3649685a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:42:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416975; x=1734021775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2UVCkmNVqIcfCWxpUv4lx27vKhXYtKQRJm/QunDoZ8Y=;
        b=A7707ZmYON5hMXowcG9DF1srjJHiUmuAOVRtPe1w0CXJLkfjUvSymh2hUEovXtQGxK
         S52iyxkiBNR/1hq7m6pvpyt9W9704LjnPWW+NcPAYEOyNL36SKSKdsV/A5M/S4bdr02Z
         Yzivq3ySFNUAf+/5GPe0cYGLxoTbcSGfgqyQ14WoZIedjqXrzBUomyeg6O4vKMniKWMn
         GXpbNsR0/62xA9LXHhZwUbA3+4bVDI+4ClMor6BkZhYlmWXvbxdNSZmcgYBj2i2OcAYY
         pyEBP8ZMPI1im9tuqC5fHvQO6tsdopdyUL3xcSjnkqdzrxzDMUpehRdW9BOVhHwq4xdv
         KMRg==
X-Forwarded-Encrypted: i=1; AJvYcCUsqj6Ry6CgSqf0hLfx0VFEz1Zd3W0fNPInDnON0Jz0ys1CqTdxQ5Wrl7cpb+Kt5f/znV7PwABL9HOy@vger.kernel.org
X-Gm-Message-State: AOJu0YylaUuQ3hcXGvxGvKMtod/cWYu4vk6NKcONQ2w2CtE60ubtvGvM
	/LaD2Xf6n+vXpR7dHdVuht2v0ieUQpoxRpdj8RJAF486OjLs0+R2IZZgeMx5BnKQwSjJCJdsYCu
	Hfyw62xy7iakX8DRR16O+OXwt1RK/GeaXF0kMoL4muwFK5uxpIEhRWo88umFt
X-Gm-Gg: ASbGncu4Lj8Sif1s8AKXPIWZvFyBme06xMQkPONg5hs6295dEcelKFeVADaPKqOX7Ru
	4cyLxJJS+sTqYoAiRIk7Ee+4gCtOyRpuLcoS+/3Ch1JfdBFgzZDq4jd4J9gcFbYjjqw5vHXvxMA
	SZdcPXauy7CRXf1vLHxWYxDYaqdAKMWkNzGB40Ue+Kj5iDe/BWtfgWD0cBOi340n4KzAe7o/e77
	ie84NUiP+vxUrJZbci2qHfJItcgLlPfX5bZtan6sT4lGw00le0CL2uzkxgTrPh9Mlf6H13px8Kb
	IqQY3HcHVom3mydeJIBf0gSYHagTpnI=
X-Received: by 2002:a05:620a:4105:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b6a61c2b40mr640292085a.10.1733416974978;
        Thu, 05 Dec 2024 08:42:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFz4s6BZ/AMqBrX8dAY/bSXYspXdKLNVKImqfKDTHyYmPTqys2RcW8YWgE6HfamzZm127xSQ==
X-Received: by 2002:a05:620a:4105:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b6a61c2b40mr640290885a.10.1733416974693;
        Thu, 05 Dec 2024 08:42:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4db2dsm113715066b.9.2024.12.05.08.42.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:42:54 -0800 (PST)
Message-ID: <e9befb17-c225-463a-a7d6-2abb8b88e220@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:42:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 11/14] arm64: dts: qcom: sdm845-starqltechn: add
 touchscreen support
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241205-starqltechn_integration_upstream-v7-0-84f9a3547803@gmail.com>
 <20241205-starqltechn_integration_upstream-v7-11-84f9a3547803@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205-starqltechn_integration_upstream-v7-11-84f9a3547803@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oF_zqJhzog81k0r2KEu1dsYC9GFZjAjM
X-Proofpoint-GUID: oF_zqJhzog81k0r2KEu1dsYC9GFZjAjM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=736 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050121

On 4.12.2024 10:34 PM, Dzmitry Sankouski wrote:
> Add support for samsung,s6sy761 touchscreen.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

