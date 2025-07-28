Return-Path: <devicetree+bounces-200215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C3BB13C80
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 16:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37D787A5CD6
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E566926D4C2;
	Mon, 28 Jul 2025 14:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RH3MwOZd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65326B76D
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 14:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753711828; cv=none; b=tgluItVLrAV2M/Ozq27AuYTYHl44Ck6y2W1DQeHOhyk5a4uUHXY88Kd6ofR/T//CTbhAeG9zKYNkTnHFOLir8AqRmf89i1/s5vGkU9etcEz1TjKwvj+rPA6AVWNVrcnEvzxK0M8hkTWmxe6l51vKg9VjyIpHp+MCZEjPkFmBjKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753711828; c=relaxed/simple;
	bh=8QWt017xkISsAk3LCIBNjlD5r69fSzYxEYbKfuENFFk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RWAcIkOkC/qzOH0ZS4wb//xqK+/y/+VXBbjMig0gvgs9C6zsV7PGTbh8nBkQMVdevEPLc3yCrZniDUN5moAroL30Ysfh12qk4DqxlM/J6vuZ9BouvrVsDS4Gxsms/+hPjnbusqs9lbjFiqpocoZjxuRXLrOjdmOf0ePFbb0S8JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RH3MwOZd; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60c4521ae2cso7915335a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 07:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753711825; x=1754316625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g9JdoFB9stbK/NioU6pkTSDhv9DICLnnV4gmaBWeR9g=;
        b=RH3MwOZdFiMKMjOOi0PMYga09DUNVvtSFQfi35uL2Kh7amlQJM1InUPRmtsP6KmU4j
         jGtmfAhcGU9sRC31dT42wj+DasrUhxgnJUzbpdJNE6lENXli3lJDQ+N9NNNI24eiqOty
         IZ2HVnOm7/RiRincuISGf3LhKqTHaLMGyLZA6nAChTePPyclTz8uAlG9+dSxNdChx8Xi
         FtedShhRY4cvpS/fzFqtg1FlR+U+bNNO3dPkQkNTNEcLzaODwlSTZj2H5kPPzwi12hlP
         Z0OeYdqTCMgfR6MPldzL1DN41ZMddDtDbNkri6LeFoVxV/DsXhkexEWvxidal6Xh9n9c
         N7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753711825; x=1754316625;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g9JdoFB9stbK/NioU6pkTSDhv9DICLnnV4gmaBWeR9g=;
        b=gy5jRiHafzgb1z9fdbt29STpi/TLCOa/6TrV4SJusvn6XCDLMnwxgtYoh2aV30J06N
         4uouporoz/hfZFt6vEMqS0mVKvbGA2zt4thLSsGjvhW0oFT23UVgJyZMFZuW+F0hmE//
         rcFnAsWhRI50Cj6coMjGtAdBD5R36GryEz5lYTERuv84xAf6PdpjRgYF/EdF1gfNL88a
         zH8+QqucsQOX/oQJWOnjREm04Jq4pxyxhBMciPFAzRWuk3i3A71r6ft77Si0OXZtu6dm
         dptekX77FyFT1iY18v6qcTO2Y2f6YcgZdFa5nI0eZzo3vrylbCWhAwAI8B0Vg2ROujNs
         a8vA==
X-Forwarded-Encrypted: i=1; AJvYcCUX+NcuAgMC/4NKsvSrHw+n4mftEMhUiftm29ypVXWRCX1PE33/GlU3c+2Y9eWXaM8zuOc9ZZ4uEHWW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/7HkEFQYXuc/lXsKg3sFl8maYlpoFXvF3mis9sRoi8RllttE4
	DPDupHFBMmJXI1V4/spFGTmjWXFiXq7Hw+Lv8+U6J7cOHuoI9V3p8AJif4NTGIyccA8=
X-Gm-Gg: ASbGncs7LZU9DfLCxeRWrYcsiPtPoJf2iYELkGvc8KO6FyT/fqVFMMyK45IRW2ex/Ea
	pvtv+WGdcvUvLvryKxaKckOuyu5ArVFyNgzDO6u408TKoSzrYE/AMJtfYCKeml3KSZPf64FdtdL
	QUjXM7i1re+8oO/BcvSjh0TCJBkYkKzwMM4tWtrFgscEs3EzIlGM9DDyWJwrFs/31lK1zhqAUWS
	gonm9T25CYK44ONph5re4KnFx9vCYYWXV/opfEataQiQkHtEeH1uz+MkhKJkQ94DVIpXbNGiOl0
	/pQyJEMZPGLH0q75lSi+V2Q5APSwzf6ha/hBctmHLddLcrkkDibhWLUvHN9c9fX47o32jUDUwsw
	r5MoDXCH026mjBjvig47Cl5C5s7L1xOwGgM2kSJrhm6EQCFT0gGus0u8gSeh2Ug8=
X-Google-Smtp-Source: AGHT+IFw4HemneYmErhcNEVhL/wWhjoTApex97MjdvezqczWzvkDScv5n0Pf+ajLxJrV76XF66pw0A==
X-Received: by 2002:a17:907:c2a:b0:ae6:ae75:4ff6 with SMTP id a640c23a62f3a-af619aff29emr1265342966b.52.1753711825333;
        Mon, 28 Jul 2025 07:10:25 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635a669c8sm420485966b.72.2025.07.28.07.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 07:10:24 -0700 (PDT)
Message-ID: <5eba28a7-3d5a-4323-b74c-1bdbc738b9f4@linaro.org>
Date: Mon, 28 Jul 2025 15:10:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 9/9] media: qcom: camss: Enumerate resources for
 SA8775P
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250703171938.3606998-1-quic_vikramsa@quicinc.com>
 <20250703171938.3606998-10-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250703171938.3606998-10-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/07/2025 18:19, Vikram Sharma wrote:
> Enumerate csiphy, csid and vfe resources for SA8775P.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 3a11c0a98eb1..b6e80088d1df 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4185,7 +4185,14 @@ static const struct camss_resources msm8996_resources = {
>   static const struct camss_resources sa8775p_resources = {
>   	.version = CAMSS_8775P,
>   	.pd_name = "top",
> +	.csiphy_res = csiphy_res_8775p,
> +	.csid_res = csid_res_8775p,
> +	.csid_wrapper_res = &csid_wrapper_res_sa8775p,
> +	.vfe_res = vfe_res_8775p,
>   	.icc_res = icc_res_sa8775p,
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_8775p),
> +	.csid_num = ARRAY_SIZE(csid_res_8775p),
> +	.vfe_num = ARRAY_SIZE(vfe_res_8775p),
>   	.icc_path_num = ARRAY_SIZE(icc_res_sa8775p),
>   	.link_entities = camss_link_entities
>   };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

