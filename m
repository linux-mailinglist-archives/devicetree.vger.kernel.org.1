Return-Path: <devicetree+bounces-180473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE1FAC3B87
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFFE718959E4
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 08:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2232E1E51FA;
	Mon, 26 May 2025 08:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mL/Mozhh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CE91DF97C
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 08:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748247627; cv=none; b=DEwZXJ0fEBTNNxB69jd4nCbXti3pVkzIwDJ/N96OJHe5eLCTgvwBFykdS7V7gHtmkd1xcqwuSUEwKl1wD1Kdz4TEilGnYDrF7WM82sJ8l1nic3kbxo2a4Eajak8PEGRRFzVuSiOHTqBCwVuB8nyqzqjiOm0l+EXFd3rjzjL+ndc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748247627; c=relaxed/simple;
	bh=kiIkXPF0mzMsp0+vmMLj34FpGFqIHfWevMok9dqiXjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rRmb6PIjgSPJADf4wMs9uu0YOXDwh5crhg53wKyijksmDGQPlOWHXyrrcFuKOmETq+nAXxndjthA6TS923nb0x4O+p+CgBZ6lKl92t4AAt94rCL9byVlv97GPfdOBO/Ezfox6W8hVJaTdgNtdtXKcVNKkVnD04gBtpUZBIS0gJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mL/Mozhh; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-44a57d08bbfso14703475e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 01:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748247622; x=1748852422; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iYw0GGZr4tuoIVzPkfyLk2cYyXtNoRutkozNOrmk44g=;
        b=mL/MozhhkVuofUlbor+IFY+2NwW0ZELSrO8K+CBs/PwGDlRlzoB+q6m8IwEVyCNUVO
         W3Sn2BV9YGJHWkqNRPUxL5I2Lwda7/z38Td17Q6OT7BPRFW6nHk+TUashFQTiNFuUJ8w
         Mef3p7U/WyofrZEnMdnOF222b87UNcwidNq6z7P0GkrU9x5ZgKEGvccXAJup0DveNEYq
         Izi62BwCIXfGfmk1SL3mKUeFcIqi1ddOnSXHg66Im28lYvJqLUeicfZggYB+pBiyWJuk
         NbXgOPrfwRrZHDqsTU2x9jI5z/BR2uwA+vrUeE/9ajCxX9aEQeFBKUFTHral7BpaP2X9
         bboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748247622; x=1748852422;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iYw0GGZr4tuoIVzPkfyLk2cYyXtNoRutkozNOrmk44g=;
        b=d4jINm9rGjgnTEGkXm41nCd7uFaNuv7OqQPqpAUZeldRxZMN+Kkd2ZuhlxMJBOuEmE
         mcuhA4wBZc7j9x41W8eV04w+RcqKKPvqQ88KQQ2JhoD/5soMukAxtJA/7Hy/74+GU0Ng
         84I8bL1eOV0AzQbDI4cs/njGqSXRLEFDyRBlhESg5EkkyB3XiDW06pSjq/egjUkJL3Yx
         PD6icIXDsgCCuKCgBd7c/TgHLrdf6nuxLhPF8ADDRSLzdUv7ng3SgFgeIJkJD2+dyatC
         GX9fIg0fKpOx3HvsWOkx4o1GWg/pU2glGgl2PXijI0vQ6fCdUM5JWILJQBC/TBpMB25e
         vRMg==
X-Forwarded-Encrypted: i=1; AJvYcCXZCd8nQTTmzON6HJ67tj+cn4CN2fsoThbEL0w+CRRtpjjqi5Un4qkFTqR8F+0H70mk+eTH0ovcALfk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1FZwE5Ii7JZVzuw0+fIa8siMCR40M+yUr2LnbncePNQQohJKX
	qCmp2/QsQVvbuF2uLCR1JOzlcbL7D7ibKVdNHE9I3q0dlbtmi9qXzQH89oMhpVvlv0c=
X-Gm-Gg: ASbGnctUVrwFiBcTuDrwQ/9k6EV7MqoMuzVrnRjCZRSVEoVNqIeSsAiAK4mXIlJIKDM
	55I0lWQ9l1dOM4IgOa1GWksMsd01vkUepjcs5kk4v4yhAf3oBXQjMCGF9ruxqGeb+5UGKLzdLnV
	fCB9JpxSfTfACRCZtLp00QbSlUbVzhohwNsZJNMHKGtAG1tXl1ucqKnnhLgleEfIU6NiN5/Jp+0
	2uyK5iucASpl6Rlz+RTWQHvH7l4m8tlWeuukiJsUMK4Nc9v1CDYNdom0xZswCNM9R6bOGv5jfP8
	+Bjh0PqXkJwvmXRJ/PlIeOEDcb91OnBkV6Mvs1gnO5Ah3lKyq2tBHAXKIkCF4bGTkXD4+ZtcUXT
	/z1qr+ROiJkJ2zX/7
X-Google-Smtp-Source: AGHT+IFp4oweCau504HUSsYtRlu63mwxtFVBOtfguUvjdqDFiDjl115gPPjk6xM6N13cuUqyj7SIPA==
X-Received: by 2002:a05:600c:5249:b0:442:f990:3ce7 with SMTP id 5b1f17b1804b1-44c9465cecfmr71103325e9.16.1748247622533;
        Mon, 26 May 2025 01:20:22 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d1fasm16458356f8f.1.2025.05.26.01.20.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 01:20:22 -0700 (PDT)
Message-ID: <cc43d9b7-13ba-44ea-9b37-fc54c0d1f2e0@linaro.org>
Date: Mon, 26 May 2025 09:20:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: qcom: camss: Add support for MSM8939
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
 <20250525-camss-8x39-vbif-v2-2-6d3d5c5af456@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250525-camss-8x39-vbif-v2-2-6d3d5c5af456@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/05/2025 20:25, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> The camera subsystem for the MSM8939 is the same as MSM8916 except with
> 3 CSID instead of 2, and some higher clock rates.
> 
> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
> This fixes black stripes across sensor and garbage in CSID TPG outputs.
> 
> Add support for the MSM8939 camera subsystem.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>   drivers/media/platform/qcom/camss/camss-csiphy.c   |   1 +
>   drivers/media/platform/qcom/camss/camss-ispif.c    |   8 +-
>   drivers/media/platform/qcom/camss/camss-vfe-vbif.c |   7 +
>   drivers/media/platform/qcom/camss/camss-vfe.c      |   1 +
>   drivers/media/platform/qcom/camss/camss.c          | 157 +++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h          |   1 +
>   6 files changed, 173 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index c622efcc92ff3781d7fc3ace0253c2d64c91e847..6311fc2975aa1345e430a477c8a6476f1d7e5663 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -605,6 +605,7 @@ int msm_csiphy_subdev_init(struct camss *camss,
>   		return PTR_ERR(csiphy->base);
>   
>   	if (camss->res->version == CAMSS_8x16 ||
> +	    camss->res->version == CAMSS_8x39 ||
>   	    camss->res->version == CAMSS_8x53 ||
>   	    camss->res->version == CAMSS_8x96) {
>   		csiphy->base_clk_mux =
> diff --git a/drivers/media/platform/qcom/camss/camss-ispif.c b/drivers/media/platform/qcom/camss/camss-ispif.c
> index 2dc585c6123dd248a5bacd9c7a88cb5375644311..aaf3caa42d33dcb641651e7f5bc0c2a564d85bfa 100644
> --- a/drivers/media/platform/qcom/camss/camss-ispif.c
> +++ b/drivers/media/platform/qcom/camss/camss-ispif.c
> @@ -1112,6 +1112,8 @@ int msm_ispif_subdev_init(struct camss *camss,
>   	/* Number of ISPIF lines - same as number of CSID hardware modules */
>   	if (camss->res->version == CAMSS_8x16)
>   		ispif->line_num = 2;
> +	else if (camss->res->version == CAMSS_8x39)
> +		ispif->line_num = 3;

> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 3,

Hmm should we really be setting line_num inline in the code ?

I don't believe we should.

These parameters should be passed from the resources structures.

---
bod

