Return-Path: <devicetree+bounces-40374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1438504AF
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 15:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABB012840F9
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 14:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDF595473F;
	Sat, 10 Feb 2024 14:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XBhSaj4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1B05472A
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 14:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707574809; cv=none; b=WI2zop+Sc1qernk0Y9yfu4n2qXUtwrRgkXSIV+HdTOVopYdZGnPIrf7u4iuTT/qq3qFgcMHEzpYMow7XtlIMnxjPaXIRcXBJv9rwE0dB4eCdKKWOSX1oDB/+fa+ic+DyGcKPayiYyKxPgHbI+3MajMnlJFD73EBlih35BZm8OhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707574809; c=relaxed/simple;
	bh=JJeQNmVoicg69Hf75brIBRYAsZhv3CjVPhVLsH42ruI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jP+BotBqMBKw5rwRpgzs9rXE+X4WZV0EZyoDDQVBmkwf/Nyq3RAIgFfQ6C+yG8DUIMuikqqlxkG0hmw9NC5fLtGWktgqdaP4w3fugKKf+QbUAnCU/ySLOrIK1eVm/MfsvredtRc24Fzur4brlYHDgnwnxQ8tLjSsY81uLyz4Dss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XBhSaj4C; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a3c3be8c988so31614266b.1
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 06:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707574805; x=1708179605; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N6tj6pFq4vNzxv9pmKGjL/29KyKA1mP1XyWEer3ObuY=;
        b=XBhSaj4CXAjOXV16NyhDc4pgZXyEnA2VhtMLrNN9cPHUn8WR5kKf0sDRehUyXGbDmy
         a/mn5tXPKnx9goTHqdzYbVK2zRBJAfOfEHN5IpzZ35zmklPVbi/IKeNE9dScSqZqq1HK
         dHC19CdXuOChRYHTqeDuhHrmZnD6XSu/iRkmPgZBIZheBld7LGWUZkzT9rxlAWIkdZUN
         oGSqsKw4g4/DBm/A6me1XC9FsU+Cg77ZlqJmtCj4uT/nKsKSX75OV2GSjXT3ACgmR05r
         NAmoR0FJkxvRKaVZiFAItscSWr/rRbTMuCrCimDCYzoYs55PyrcvD+JvY34m1lgExCwZ
         F/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707574805; x=1708179605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6tj6pFq4vNzxv9pmKGjL/29KyKA1mP1XyWEer3ObuY=;
        b=nZyyOgaRBnBFyKDqdE3ax1USE/wuvBvwH4FT/ecfoPFsdFCK3pT0vl2wLh1N007Xke
         xsSac8vCWFRVYSLWPNlmdcugwY1oIMxbG9n4PpA9x3TrNXtiCJcdY5iagas2wg+jSucA
         +56J1paLbroqptsKypxqzrfUk/SyKKdXiiaY/ZwTHN8mOjV7akZXUEHcVkiAh/nZX1YL
         mya+HLYtB4TreMeJYH0a5WXFami0BHE0g9aUMY7WElkFaR0yauq3t9ncYBQOwr8DIIU3
         kpJj5ipOB0YDZnyPpgh3DRvqwzmxqKWnrrv5XxpZhDrhbIW/jrxKftpxMqA+eSuu7Obg
         fidw==
X-Gm-Message-State: AOJu0YwnskgfBH8cacf9OLVE+FD2gkXBBELGCNxJ7eyzL09sXEAulf5P
	j5OADX/u2DnA3FV6oZ0yEOKNui4ciwsvVVbM7CHLOtZ48rXRi6tAuIZ3LXu5aQI=
X-Google-Smtp-Source: AGHT+IFPtR890U93rfcpYVwpr91KR5MSymRvdn1CDR1euSTilFXoiHU6sUJF/yInkfFJsJ6ebqCbCw==
X-Received: by 2002:a17:906:354a:b0:a3c:6a8:e3c3 with SMTP id s10-20020a170906354a00b00a3c06a8e3c3mr1536823eja.1.1707574805228;
        Sat, 10 Feb 2024 06:20:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXkTG7yeG7cPTgqkNKF6BovSODqqUfJ9vaMapkqosjfge2vXayt2wNQNbYmmSvLMa7+9dm9QaH2CqUVH38jSFCW4D/KfM/+COnty9mxVBphzST5tLhSPhWbkmC7c6/S9iDLwAebDXFpthvXKsdQNIYzS9NcvdsvOKgWdAALamEm+qiwn+SLFp3PttUametEnsOBdC4ko4gvS1efMIFUQ0gO2MMQOBYA2nIsWZXX5SyZyW5kc4AX61eQ137Oa/mVXa2akMKSDHT3H5yG3ryMUgfWWlVHP1v775ueSd2u8dnAyF1gWzu0nLCvfvOgOOO4m3sbT+JXN+8OiYDFBphwiP6YZ4Ks6FJaQ2p/v9SmxUe7E+kHlU7075zhM24dRpZ+zQn6cCMqYCgIQ3zQUPZydq8R2TCnxhOfK64DtLWjIkB6jojqmu8fU3ZGCM9frrx27aUiGtp9J2NZ0Pkt2FBvnFDbilszuAEFt4u16LbrspSx8A==
Received: from [192.168.1.116] (abyl12.neoplus.adsl.tpnet.pl. [83.9.31.12])
        by smtp.gmail.com with ESMTPSA id ps2-20020a170906bf4200b00a35a8571419sm1828268ejb.135.2024.02.10.06.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Feb 2024 06:20:04 -0800 (PST)
Message-ID: <18ae7906-5089-42b3-a511-6e301f116e06@linaro.org>
Date: Sat, 10 Feb 2024 15:19:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] pmdomain: qcom: rpmpd: Add MSM8974+PM8841 power
 domains
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20240210-msm8974-rpmpd-v1-0-de9355e6842a@z3ntu.xyz>
 <20240210-msm8974-rpmpd-v1-2-de9355e6842a@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240210-msm8974-rpmpd-v1-2-de9355e6842a@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/10/24 15:12, Luca Weiss wrote:
> Add the power domains CX & GFX found on devices with MSM8974 and PM8841.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

[...]

> +static struct rpmpd gfx_s4b_corner_ao;
> +static struct rpmpd gfx_s4b_corner = {
> +	.pd = { .name = "gfx", },
> +	.peer = &gfx_s4b_corner_ao,
> +	.res_type = RPMPD_SMPB,
> +	.res_id = 4,
> +	.key = KEY_CORNER,
> +};
> +
> +static struct rpmpd gfx_s4b_corner_ao = {
> +	.pd = { .name = "gfx_ao", },
> +	.peer = &gfx_s4b_corner,
> +	.active_only = true,
> +	.res_type = RPMPD_SMPB,
> +	.res_id = 4,
> +	.key = KEY_CORNER,
> +};

I don't see a s4b_ao downstream.. Though it's very unfortunate we
didn't choose to add power-domain-cells or sth and set the bucket
through that..

Konrad

