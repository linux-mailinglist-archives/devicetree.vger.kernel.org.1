Return-Path: <devicetree+bounces-254350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B44E9D1779F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6541D3008C70
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE573803FD;
	Tue, 13 Jan 2026 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j07oL6bb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GWnc9bTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCD4315760
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295063; cv=none; b=kqKwpUVhsMsqWA5VHI0aw34Qe5qax+5nR3DoBJ5JfTUMIm8rRwmtuuUEtZCc/tge+0gbqzbvlA57SHzO2KGfGD4IW9Pvqjd2D80JzxDGytPrWfTzirLfIXl9bXRcjw1T/bVDDnQfpNFTFmZg8+mDPwlsn9HWuMpQj4ESvrB7zMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295063; c=relaxed/simple;
	bh=cAiRA8VnHy8NpbdBHJfFhImwLZhorozI/fCXrTGU8DY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K7Kr7YAhv3QxN4gUeDO4eNiVJjspkhHUA9ZxRFQbaZGCUXUBmk+TPTWCh8R4h0bwaLRjNyd7vNG67Qa0NifyYNTxx0ytG09AUmraF78teaVTAZnjSmcZQXKBh/jlHgaz4k/E6Q5T5aLIzMcfiuVIFfO0C5+WD50/vD4ElBeIvpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j07oL6bb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GWnc9bTx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7hv9u1935377
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:04:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S6U2zzx+CM3OCN0Nqvjy1sgA23QBGijn2sPKVe71GUo=; b=j07oL6bbqowPGQha
	w760vPlnsuEd5fgI4VVeM53emhmwb0hcccytCMvgXND6ajRyLput6uu/Std5o0CS
	1uw8EF3wpcv92NkDgLRbB5We4C4bP3ezcv4EdoQ3IzHQ/i2o9Kh7Oq8jXE9eKqEj
	bJZ8GLFT10z1AMUCcIbAx4nPCJW5d4sz1SaaVpYzoxXb5uAW+CEfmA3hWuHRMWc8
	pmeLPljEqYSoNo1NHvifWj/+iumagZ7HFr4+I+Gr6qaQKg8eb9JbTK3ju4161tMK
	Ef/z9rW7K9tffrWod3JAsDNl1dRya9xDhgPzxNk4kZrUDzI9OJ1fgj+xqItRDpe1
	vDpEdQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6cnj7tg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:04:20 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88fce043335so29977266d6.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768295060; x=1768899860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6U2zzx+CM3OCN0Nqvjy1sgA23QBGijn2sPKVe71GUo=;
        b=GWnc9bTxwGTmadfE94dLs/RGNGL/DgUU0n+OX7orn1Exsv228t9YNS/iIFa0iL9XPK
         Mx8NlBrJ+3L/2dylePXaR+q0oWSbpMM1IiLNH9WzbiqFcqhSuY5RvqMZJbtvci+3Y+qO
         XLEbmgUPTTzRvSDR04OEuKWQCgOGpDgfIDLmwVqgNGZqDV0UVPcEYYx3xmoNUUsKbGGB
         7QEDUk5dJ5j5VJfCgYu993vCX00O09AmIseUpH6/6c/LQb9e4pfuBx/7Ag/4g0nQII9A
         o9mdYJdWsENQ2dzpj1UQNVRd/AcYosPQYDBXBN4SuSRyLYfEp6hiFHBSmiV31yGhupKa
         jywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295060; x=1768899860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6U2zzx+CM3OCN0Nqvjy1sgA23QBGijn2sPKVe71GUo=;
        b=UNunT5bFT3drg8ziNUXGVzpXQcvgHDFj5v7QmWLUgPb1eL1xgsECoVwVCcG9FSIUdK
         pR6XvCxklkjOlOSAq+1s7zR+UVHoJHcTY5Et39tcTRBezp09pVuvPYYz3kw90UvjlTxu
         dPIGdWXCf2q12AfLhOF+cBRrUvt0v08cT6CyDtU+BKAdXRRF8HYQr+/A/hkifsx1NzGM
         cjayuyC9wOuYs86oeuaziTUmNfOHvPxMuxM/FDc0W1GmKqlW0uv0Xjs8y6Y1haEuMzKU
         PYzZSCjlYg/wKw6+NHWpw8s3NckE9NzUtzUYF6Fps+ZJbfqF33SrZ3+dObXgu3WmJbdc
         xWtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhXUTHQ7/1orcJZoNtdcvAIN0NozzYkkiuH+ynABzT8XyLqeA/YtkLhyGX153VzI/CRS7U5CRu9WsF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2HOgXF+Q7w39NZ1leMJ+wxYE47mkgT015UOf5N7ytHOj0FnFj
	3zN+AfyQLrdJfEuV16em7zAHIwXRydoOGI7Xis6QZShCQd8/P0lrB+LuWTpGX85VQ21yntYRiQM
	HJU58hBPf1lEdsNUTw5yZJAsIOBro5w8gjnctKfAwjkWWv8w2tSdvTA3hZ5K3zynP
X-Gm-Gg: AY/fxX4SyMRYE8ULXhxjFs+FeALLmCX48vVvcVh/DjdgiH+JHnzLy+Gnjg+eXs1YWzP
	QmUxHko+9LNawTEywjEbI1kA71EHxmeY+Ari9mhgePrY11V87UwYQpZ7kKUWyGu4+Yjz0ZVHYSD
	cZR4cTCOTgH8gAESwYfgd/k0O6AiATPbrPssnRJ1daPhlioeBG6JsTCiB8cr67qHNks7cWoMx0/
	X9Rseykq3QA8eJBVxnbHwxwmhv03hmPi3qcpUbjCP3o6Cfe0l9T8rKQAj9B56P6LYW1hAMFCrUA
	m+CgAmmnrveuJQXZds2SgbeVrI5iat2GXRMF50kj1Gx5ncsIoC1HcZUle0DC0yW70LL2x6Agy2v
	0Ydm0G4i3dWOMAAqRBzPNtY9iKwpStQvnjkxVIt0S4xP3YP6tEK/Y8UFqS/7lUht7YGM=
X-Received: by 2002:a05:622a:4cd:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ffb4a8df70mr228904371cf.11.1768295059930;
        Tue, 13 Jan 2026 01:04:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG81zdvgtfuPU0V4bzWJ16GCidU6hrc3kmSP3yqz3p3XSCqaYyFKOMhzqc96T1a4+UOy/D7HA==
X-Received: by 2002:a05:622a:4cd:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ffb4a8df70mr228904071cf.11.1768295059548;
        Tue, 13 Jan 2026 01:04:19 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5d4sm19638250a12.32.2026.01.13.01.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:04:18 -0800 (PST)
Message-ID: <ff8fbdb9-dd03-4811-b9cc-4ec0dabf9353@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 10:04:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: cllI1aeYfVlIKnoHef-lQssAEHeebUHK
X-Authority-Analysis: v=2.4 cv=KK5XzVFo c=1 sm=1 tr=0 ts=69660a94 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8
 a=xi4TU-eyaB6qxKV2EVcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-ORIG-GUID: cllI1aeYfVlIKnoHef-lQssAEHeebUHK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NCBTYWx0ZWRfX1JRWWnvh9k8I
 kAG+ySVVrCp1gMIjhy5wxesS3ygkPubtOZlcUD4nDoPI9aUybqYKqW6EI8dDLS9nDTi5uSO44TF
 PMENesZtN72FynDiMGzF2+WIwSPH21v1x4QnIsoF6uRUYyt5+pe5kpu/0XsjIjwvn1x0ExarMGZ
 2XQ8P67erARK0xM4qKOeMLj9XW5iyjIG/eTb2pMdgNv2iNKeUdWP6rF6AUY412MQCBqfcebzbai
 ST2YlUNCCTg/VMZGrT7L2kZ5WJEolkiNKjSV8jFGXis9r51P/nBXlyv0LtEzdUXlSTkNul4xXz8
 99MZHpJA/eA96FCCSAYFmqAY3EWt7JjtGLuO0VY57Ldi48zeVOXNiRf/zUowAp6CIfvFfnp1nB6
 JKzoSnMatMgvV/gpVdLSfrcls6pTQGKRZ1dZUz23Ifm3lauvsXJDe74/0ptu96HZT78LIHUhsAV
 WiSZvADNzG2+SnJAKpA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130074

On 1/12/26 9:13 PM, Barnabás Czémán wrote:
> Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
> the only difference is willow have NFC.
> Make a common base from ginkgo devicetree for both device.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index 163ecdc7fd6c..70be19357d11 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -1,304 +1,12 @@
>  // SPDX-License-Identifier: BSD-3-Clause
>  /*
> - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
> + * Copyright (c) 2026, Barnabas Czeman

Is there a reason for you to remove Gabriel's copyright from the 5 LoC
that remain in this file?

Adding your own to an existing file in a commit that mostly moves code
around is also odd. It would look considerably better if you did so in
one of the previous commits that fixed things, as those contributions
are easier to perceive as non-trivial.

Konrad

