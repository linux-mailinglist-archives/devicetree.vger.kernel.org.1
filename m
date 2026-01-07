Return-Path: <devicetree+bounces-252392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 192CECFE4A1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CEBF3127AB8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5E43385AE;
	Wed,  7 Jan 2026 14:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DrmMxHN9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HlJtf0EY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345E0324713
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767795195; cv=none; b=D50rJzOkB7zwZcOW0Z1Pf6l8n379h6Tuu6tOplKvkkYR7CDRg69VWdrNKYW6uqs622tCkQCgkDUn4EOqkeFyhOrl46Kas/Kx5RoXWaPr7O+P8t6JAJQ2sdE/umwetrqVN/xDUBWgj+6EnaSdy115hmOpdRa9IQOo2tf13yQkXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767795195; c=relaxed/simple;
	bh=rV7uwDQK9sVXXMMSbCrFkdiROsOoC7NEJyUS/32GXfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m6rmqUqPmJCjYsHnV2Ke9+imY3f9s8hHeuJb92TdlXtwIKdZiisjfJrX4aO1mVStSmSrwILVzUKBj/fg/yIXmOjxGtM8JFzPtU7MtGeZVpzPgZrWfgWgLvGjU381a63JWa7Q6lmIxhPMN/V4olCGELJSADCtjePvkVxc89XrEY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DrmMxHN9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HlJtf0EY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078e64L2578359
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 14:13:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i88csJUcM2ULCrqraGjde9aKEzx82JPtrxGeziCgzEU=; b=DrmMxHN9fMHEppWv
	Xj5gayauNSS8e1mPVGpyWWqwnIjNqm9W5d4QjFtObGKEPP1wy0h0EnFKuDkDQl50
	kNcvZPQ0qyHGhvJMw5K1IKBzBgtt1mhs077WbJAYYq7oY4FNnDiISvtSiLjd9Bwr
	Irc4BojmDTTiDWqAAzQF/qayX/cDJBoax+NPc749Upi4dZyJnT2E330Ln+CAvQl2
	edV9ikj04F0s7Wugk77UXB3uNeBqKdnqAWj3axGFzw9DHseUOMjBFhJAf8ViX7SG
	BdnyNPiM7YGN5LTry9r3HsjuSXCzg90FdtgcY22XBDMEr4qtDday3GjwNYnkOOLk
	Tokrrg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhm658ykh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 14:13:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f77be4f283so3215391cf.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767795189; x=1768399989; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i88csJUcM2ULCrqraGjde9aKEzx82JPtrxGeziCgzEU=;
        b=HlJtf0EYNkI3kCfJCUIMu3i/0JPjQHFKYnVDDPqsy+blESUiHX6gMEHb4NRtu1UXlE
         jK3ywHztRJNMWFCn68Oaopvmj8r9aHc97FTelQ8UaWKKQnRpCIiuMcqGn27BD/+/fp3a
         Qx+hoKylqqBE/zKHGBMaKr1sJ7HyGhKuhmoXxjVwbxrmItZ/kEbnxcNuXptQKVjPunAn
         AQ645X0aYMxb9i2aIXtDc2ih8cgwPlJo47dzx2RJxINu2+pHcQtR2kFTYlz6VFkjNgVV
         dGnC4Km+v5gkHtr6pi4TNprzNFkWWJq+Hkfu4z5zOdXZ/alLzXfjWjZmNwQg5p1pJ6LF
         x3Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767795189; x=1768399989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i88csJUcM2ULCrqraGjde9aKEzx82JPtrxGeziCgzEU=;
        b=MeuSOxyEXRoEbAAKrCq5bM/p94NOmuyyA89eeQWiye8sz7znyxhvozX4Yth8T0vp+/
         Lc3VJh5gp6z5/j6MkhLxLr6C0PbQn3IKA4XNNJmvYQ1LIKfcFjJMMzZIIzUrYmBo6wXa
         RCfCADIAASy/zE/2K1/omBlQS+AtNQ7QqqQSVqYn6vtj9KyR521AlZg9cedm0VnBtR91
         nVC5ScDHJg5pRoyWE2Fqq9bwDCKjeSlIfoMzG30RkGxCRNU41GYuxVEqq4JWAlI/jmzO
         fQz4xPI5lcCFUkVDmC/IgxRmdYvzX+VV+qLC9NBtulQatWOkMZyvbFiBhFXyxVCliuX8
         rTlg==
X-Forwarded-Encrypted: i=1; AJvYcCWcdRfAHnO01OoNHOQo13Wn/1+yVVIgAJ6hv4W9yFSvxtE4BjH5ovBh+PZy0HV6mJCR9ToGREiTPmHB@vger.kernel.org
X-Gm-Message-State: AOJu0YzaLZP8fkyj8zXxlqjhD9UMeYjJiMB/texcvDI7sxvbnFMbEqWg
	DcQaXjwvRkJ2oMcBEkxyQALdOa/pwk3nw5001QKDYtPCaxGthTDHsc9MncBJQ2o3IHq04N1GCfP
	dVjDYvQNhoB8kYDYWREBeNf17MmeatGjdjo6bHTwUyvjhermHMpGRk5FASyptLWT7
X-Gm-Gg: AY/fxX5awcfH5kndAbXf6E4FGhSC5l3F3kUw0uoMkmdRY754tLUsRbkLU5nUUTWAUoG
	xScA49tVXOzdy1L9AKQvWABFEoXuF6GonBDntvHyYaItOv3lxaHM9UZshjChCsMtFTnraspH/Hb
	uV/V+Np25NnCExHj7pGBsXdrlMRlhHtlxa84hW77AFMpKyBA8CSP3OvLLfm3rqt1HgiGGP8WHpY
	iB61ntmVRpuBTjT9L9QeXb2r/99zo7U3eZCz88skJiQ4XLzx/+JupG+uUObn69B5t3cy5PcmJPY
	GFHF81gfc/2B/L26r7fgZobohCPR4T6FjRCPWaW9ekE4RaRwzzYhllQuRTkU013aB5BlnwQCkVE
	FEa7mgYZ55zVujyd62/mhDR7gwBCQXS+46mgKtZDbvke9dzfBgDi1EF/uWvYxl9N14iU=
X-Received: by 2002:a05:622a:4cd:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ffb4a8df70mr25633541cf.11.1767795189079;
        Wed, 07 Jan 2026 06:13:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBwq+C7m0bosWHj3HTwVxZmMkUGfTBcl5hp78f4iYACKooL8OU/CX/+Ny3sPLi5gByEeejsQ==
X-Received: by 2002:a05:622a:4cd:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ffb4a8df70mr25632931cf.11.1767795188359;
        Wed, 07 Jan 2026 06:13:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d89csm4659986a12.35.2026.01.07.06.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 06:13:07 -0800 (PST)
Message-ID: <db0ee006-44bb-4587-b4d5-3f767cedc3cc@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 15:13:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: msm8953-xiaomi-daisy: fix backlight
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260107-pmi8950-wled-v1-0-5e52f5caa39c@mainlining.org>
 <20260107-pmi8950-wled-v1-5-5e52f5caa39c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-pmi8950-wled-v1-5-5e52f5caa39c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XpL3+FF9 c=1 sm=1 tr=0 ts=695e69f5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=tgJsgVuRmq43osI8c0oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: OTpLr27W07p9SKGUD57R51h-itLYXUL3
X-Proofpoint-GUID: OTpLr27W07p9SKGUD57R51h-itLYXUL3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwOSBTYWx0ZWRfX9q7t1DzkLSDX
 AbbuNkI93RPMX/bf6YkrC771NW4M756b4DwdyqGxiUiZnLCt3utDE0Uvw2xIthkkLmSuk5mdK6f
 c6HCU7nlhKVtq+GLTeYJLvwihmKHsKV5s8+YmaP4CgF5jyaWTYbRxCBFNuNO3xhCHhfmOLrFG/i
 9h0/Z9dz13tVwBlYIQ5PlMA6VpAmJh0SY5t7BB1uVnNLa6/bjp/j6ZpTLJ/S5t5tMk688byx/ut
 6/bmpQq5KDp7BDZ1tpiZzlNjMF6KUcfISh1yjNWYtIGunzG4tQShZ6JQCVva93KXFLzGAnJiBXR
 KbHO63j2yTu/sLqxComIaYN8gFesZNu37EhtgsWW+v0iMVUcLtFBuAv+2uYDPrXnTc5M8PE0Nb1
 inCM/t9ZJL+8jjKnf8MOFjF7j+l8DnaDFE+KyA5EsJqyWzb15YsB5doBp587D4hK2CA45EiHv9J
 eusJV7BrRy8mLUyGytw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070109

On 1/7/26 2:31 PM, Barnabás Czémán wrote:
> Set qcom,num-strings to 3 instead of 2 for avoid stripes.

"""
The backlight on this device is connected via 3 strings. Currently,
the DT claims only two are present, which results in visible stripes
on the display (since every third backlight string remains unconfigured).

Fix the number of strings to avoid that
"""

Konrad

> 
> Fixes: 38d779c26395 ("arm64: dts: qcom: msm8953: Add device tree for Xiaomi Mi A2 Lite")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8953-xiaomi-daisy.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953-xiaomi-daisy.dts b/arch/arm64/boot/dts/qcom/msm8953-xiaomi-daisy.dts
> index ddd7af616794..59f873a06e4d 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953-xiaomi-daisy.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8953-xiaomi-daisy.dts
> @@ -157,7 +157,7 @@ &pm8953_resin {
>  
>  &pmi8950_wled {
>  	qcom,current-limit-microamp = <20000>;
> -	qcom,num-strings = <2>;
> +	qcom,num-strings = <3>;
>  
>  	status = "okay";
>  };
> 

