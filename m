Return-Path: <devicetree+bounces-233120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CEDC1F3F8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AEF418956D9
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A25342CA2;
	Thu, 30 Oct 2025 09:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WnN+qUfS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dh8hocC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D2D337BB8
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815916; cv=none; b=Ka6uc+zf3I7I5vir6WhrN3srBvg/9U4GfS1BjWe5T2g5T4QSv4m583VaGCiTvbKSna8uJ3UxER9mLVTkFLPfSTrmU1vVDL2LBgrX333WlIq+HQkPRPcCPvXMX5ddtjX3CkLBkFJBdU+6ihvuBCR1xRt6Ai5nMSGzswVfvFSo3ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815916; c=relaxed/simple;
	bh=X7ILzCECf3H8UUnRWySC0tpXkeSAn5oZR3ZqEfON2eo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oMi8JPttDNnjYQjAHt2K4sqlEgJwtfYre/SW1b0PMQsKFgjWRBKwk+weFXzpciWVxmEpwDMGvXEfK7Oucu2XHxJdoKIWD4S6OUgYs8Rg+PpHuq5Hky/RWYLzVp8+3yg0pTvzqtMeVUgTgcl1v/zqNfOpCga4aSKWLXjeDiHfP38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WnN+qUfS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dh8hocC6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7QYRP1578937
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:18:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HIb99wMfqBRmzqLt4TerM4AEHn1832mxc0+HjrXIUdQ=; b=WnN+qUfSPIP6UeXT
	XHylrDpOJWAK8vNluPmyt7e0oEK3LktbOMK9udQuwKuPwyrHW2SYRiv+jl90Lt98
	Da2bAH/mr+yeVdJMQeUvXDoHBTCmHxrHGX8fdtpVQlKrjnTWewsOqu5u30tivxxs
	vVKdv9/tQx9eU8sd5OYkxL71Qcci2nvSTKoxSDa7OfulVxNxuLvWXukvlhiS1W4I
	arueGt5BgazcxUgxj30gcycYuFgMdMicW33TTLn89ziW4edtKYJry3qKQLQEsB4S
	rmPQySyMF4GVWBvNlYw5/3wfhIiNoVy9YGcqEjKwM71M7/FJgz8ZiI5CXg2ib2LJ
	DULE9w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tjehsje-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:18:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-293058097c4so2053815ad.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761815913; x=1762420713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HIb99wMfqBRmzqLt4TerM4AEHn1832mxc0+HjrXIUdQ=;
        b=dh8hocC6YZWvlMzQulwEOFJayXXiOF/SFtRNijT0PaDaaku5gLJNQPR85T0JQ8VbIA
         /05Tr6r5NX9zTqSmHtAXOVjVi6wKtMkSVt6K2DFf6feBTMffJh4VWyThpIgglkPa4nAR
         8cJrSDGGs38XeWB+KYvCygI9f9Vmoc/o9aNybPPOUekSoUwg9X9KcvECd8knQazfuDFZ
         4gZ5uWluwLku0PNmjhO4/kAmHxcToXFWI5TmkA/qH+3wunwkGvAJ+b030UOqqy/iS3yD
         I1OzO9x9CxX6Mogo3RWALwcSALmDHM6UYojegQNs9wDQtQT53muYFbTCi4HDRObgMdQq
         Sq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815913; x=1762420713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HIb99wMfqBRmzqLt4TerM4AEHn1832mxc0+HjrXIUdQ=;
        b=JgyDd1ccM1RFkN2p7nupIO4YDjVVPokKePWmSQYug6sypLFJKuMk19UClIaKYPPbP0
         3NLv9JKplYC8QJNB2YIwF4vJSsY842xzpGb9/j+zS9jck4ElfxPD0xjNQfo/IrSLUtLv
         sBGDmnUiHfrfKP8g0rfsBlU8q3+Dg9gePtXtYu9vQJTOYRlRewpvZoMOSTr3fnclRFY5
         zK5dqJzkIh+RD5QFgk+Bz9px7+7/JDiS7ihKZW7Gf+80KmoHsVkqotdVGW8m1r6kHh+1
         6xxnvn4hBaA3/l7W2bpH0kKb5+lWDWNmuwinokEnrwPYTYNbKllZr0FRnUi1psXGPPTD
         dq8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWx0AqEUN3C+SX4bwMGGEFQRSXsJINf3I3TEeuzb9AWFwDX59BugTTUbVAP82bTVKnkUQ/zMA6NNtO6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2owgO1XxzUeV4+UN2v0mu/QeUJN9METCOODp2GJCuo3R/8te7
	T8fHJ0Sey1qX9kAodiJ6k9RjufVmlZKxHVLDCOUZMZUGOk0oq5VN0EzjJow371u+BE/Khic/UF3
	cW/dfNRJxKUZCPPpfaobPCRpGAeUVI3ZWzpSqXX5YecujhNjWkUydR9B7rae79ez1
X-Gm-Gg: ASbGncuaIc88PMcdG0nrM/UXrAeS4wXGZoEhmW+wmzVgPH++unYdlF1ROg2SFlbHIqa
	6svhYPvxptUpq/x07FneKFuqhH6yZoNSNCeXGjRXVhD51Mx9rpiVeN+jKqx2u910dY+QslBZ+ok
	iZk0AQq3NjNrOg1yYH43qVhWcbL6g3qpJgRuT3/6cqFHl977NDiWJd3ttrN253R3HEJ884U3KzS
	Kz1ys3s/EzbJ06fzN+bC7+7yvDTFNIylNwHof1Dll9M/1/QTBv5VaPZi4+Ii4nd1eOJyNgs6Fpw
	DjKqcvzGpB4QcYREFkvApgFqMCeBsCxGbM+GGiGGRemwW2AbnrnXWO/VI0yTm0901qOE1bPlm7U
	2KDexWDwpFWIfjoGV8u205B7nA2o3bc4m5mGQgzxtFKXYpubAZznaaJ7g
X-Received: by 2002:a05:6214:23c5:b0:87c:cec:70c8 with SMTP id 6a1803df08f44-88009c19ccbmr49168626d6.7.1761815213107;
        Thu, 30 Oct 2025 02:06:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgvsyWzB5+BObIPZCH/c4u0+NukSV+lTB2L5w6KrqKL76+JE7wKJWY/APuk/ewwXv5qVpOQQ==
X-Received: by 2002:a05:6214:23c5:b0:87c:cec:70c8 with SMTP id 6a1803df08f44-88009c19ccbmr49168366d6.7.1761815212685;
        Thu, 30 Oct 2025 02:06:52 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85413b88sm1669495266b.55.2025.10.30.02.06.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 02:06:52 -0700 (PDT)
Message-ID: <312b62d9-c95e-4364-b7e8-55ebb82fd104@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 10:06:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ASoC: codecs: lpass-tx-macro: fix SM6115 support
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Stable@vger.kernel.org
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
 <20251029160101.423209-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251029160101.423209-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RV6TtIaK-KFF4xlZOB4Z_hswN6AwhphN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA3NSBTYWx0ZWRfX/GLJ6tANrrHG
 jlKFYVGXu9T3gM4IByo/la2botyPU4QZI8A0gen+EPa5ERiaojrh/UbG0HmWHdtkOgb+ZQS7s4x
 laJYVomDiM1BBk9cF0DhfZiPRdFCwabNy328hArZ8c5zJY3BDL1bjPjPoWYrl21gXM9Y5m0RJGm
 s/8cMgJVt8o0sA6sl/uAc1pR4ZgkkCS/GHdRinQsA7FiyeR8gmNhdMAWYswK/CEv3RO5h5aMB5d
 aiuJNMpoqAacztDApZ129xXoJl2VlAbjzKZmb6O7S6hMdFHxoGtJV4k+Ootj8g2mBbLkTG0PQJd
 DESY0vDBnYZhi1rToooklKqp4jlwo1nSbBfJ0fPSEwtJLK0qZBTKkoUgzL0IGNS8bMtImRA4y1C
 0Sph28uZzSlfysAwX/qWKsGeLOUinA==
X-Authority-Analysis: v=2.4 cv=a/Q9NESF c=1 sm=1 tr=0 ts=69032d6a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=jFCpiT4AGmqPEWX61NoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: RV6TtIaK-KFF4xlZOB4Z_hswN6AwhphN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300075

On 10/29/25 5:00 PM, Srinivas Kandagatla wrote:
> SM6115 is compatible with SM8450 and SM6115 does have soundwire
> controller in tx. For some reason we ended up with this incorrect patch.
> 
> Fix this by removing it from the codec compatible list and let dt use
> sm8450 as compatible codec for sm6115 SoC.
> 
> Fixes: 510c46884299 ("ASoC: codecs: lpass-tx-macro: Add SM6115 support")
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  sound/soc/codecs/lpass-tx-macro.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/sound/soc/codecs/lpass-tx-macro.c b/sound/soc/codecs/lpass-tx-macro.c
> index 1aefd3bde818..1f8fe87b310a 100644
> --- a/sound/soc/codecs/lpass-tx-macro.c
> +++ b/sound/soc/codecs/lpass-tx-macro.c
> @@ -2472,15 +2472,6 @@ static const struct tx_macro_data lpass_ver_9_2 = {
>  	.extra_routes_num	= ARRAY_SIZE(tx_audio_map_v9_2),
>  };
>  
> -static const struct tx_macro_data lpass_ver_10_sm6115 = {
> -	.flags			= LPASS_MACRO_FLAG_HAS_NPL_CLOCK,

8450 has | LPASS_MACRO_FLAG_RESET_SWR here
> -	.ver			= LPASS_VER_10_0_0,

and the version differs (the driver behavior doesn't)

Konrad

