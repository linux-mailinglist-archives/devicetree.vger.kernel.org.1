Return-Path: <devicetree+bounces-45883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78A867235
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79EDF287403
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E7F5339A;
	Mon, 26 Feb 2024 10:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m0xcIq2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797A65338C
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708944625; cv=none; b=fiDmdxqbfMURVTx3mPuhYtJaOynWaIALq+fycCmfdvNfBxoOIRStE3amWDrneiqDfE8Nvjq0EFh3pwBUD3wpLkT/15zFfYrheJQiwx8jPMv/u/BYkPBVCtTwrwuvjyaFXOLUYX31qLk88qyW47GnRsbcX5cYpS4/ExH+WbQo30o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708944625; c=relaxed/simple;
	bh=TnWezItpRX3QXk0vaU7tgxY0SF4ZWcKlx4yiMvYwytc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Q83rdQX5EEpaC1gYEjjwQODPgNvxVFFHb+IfgbWXiR+T5zF2WkxFTbITGvydP95nZZhWa3MdFi6OnXkZaLBBt7VGJiu4U5ThHSpa5KURzgiiXmP6MOFIgAcw8ElxPSzujg1vAFx/uwml0qLoqTZy5Y4BnHj16J31wxYd41fDv6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m0xcIq2V; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3d484a58f6so402015766b.3
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 02:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708944622; x=1709549422; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xBT9V29Fvhbl7QrG/iTPiZ9Bl8O04XdpPk2BEY7RJK0=;
        b=m0xcIq2VWp3QnL66J2g0W7ZYW20h9X2X7Zhd96y+KjVeCiJKmq0PrNzslIvLEMx7mj
         XtslPvVpG3qnQEEka1EHDRsA/epn/JwZHkwysW437YvV+xRtgs8yfGSl8IfagbEjwltv
         3aW5FjhvbFj4ehou5JQZSYj8lCAgBRLVEUm+TEm9CTVEITyNTTuSqqdOhKdBQzBxgMgL
         jQuFovKen4LnEJfcyjyEfF7AT1GzOlktbO1yw3GOJY1x/aiYLu2Zsqb+7ExqxNo84okd
         p5Y8271OpByRKExl8793TcTuO+dGgfrmfF5KyV0jxFgp3Se5dLWIE1Mi6WqOyDUuZe2m
         sZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708944622; x=1709549422;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xBT9V29Fvhbl7QrG/iTPiZ9Bl8O04XdpPk2BEY7RJK0=;
        b=Ja1kbvrExlbOvcy4RHdL86Lh3v1d9+zZUFiUKkkBavnRXGfqWwrZLa621N0Wg0SMOn
         lQ995MJeFQjzC1mRKITRllAh2Z5WN5DEaMP0z3X5VFyWa/g0jE8aRRLHrTc5x9Bu9oiR
         Od+NHSJpLVzVU2o5+dndDvoRj5AjZHUmhZdFkAhR8DrohTWe50gK6id4Petlq+2uRcRu
         ilFezRyETs2dmqdlCl/fG3lGVZXrpsU2YZAlUEloJCE8LGNK1k4oFj8L5vjAjz2Tann2
         a2Kg+Vf+X/xo/OBV4E41ZEwoTijV1011lXWDlSr+F8FwvUcuNJH4GmF2eLD2dSNa92Lk
         DlcA==
X-Forwarded-Encrypted: i=1; AJvYcCUC8rZ21DpmIi5R/XoVaSOpcQkPMEqPSjivbMDspPklEXVXYut5nGD+uHVuhnhsGShPLsoD5MDRdUnvLvscnRJJUi1cfWErIotFzw==
X-Gm-Message-State: AOJu0YwVB2hD4rchQiAWr1GEa8GVzLm/BLlsld35zTfAsk18X59/8k/x
	fUN1shi1VpmcdnewKfKlJH+IkyDCqYjPsjQ0hqu8IFFeLarVrLdMg78Is7k+djdNv2KvRWy9qjN
	A1ak=
X-Google-Smtp-Source: AGHT+IFRWL4GcLMvA10Nigh3AuTwZ8smPM19YRAc/aZDjNZS/hLq6skJGqWSNeCccQE6GbJafPsKiA==
X-Received: by 2002:a17:906:f28e:b0:a42:fcf2:1077 with SMTP id gu14-20020a170906f28e00b00a42fcf21077mr3227524ejb.23.1708944621871;
        Mon, 26 Feb 2024 02:50:21 -0800 (PST)
Received: from [192.168.105.72] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id hw21-20020a170907a0d500b00a432f3bc3a5sm1268890ejc.76.2024.02.26.02.50.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 02:50:21 -0800 (PST)
Message-ID: <05fc36e3-534a-4e48-ad83-e86ed8d43ef3@linaro.org>
Date: Mon, 26 Feb 2024 11:50:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] leds: qcom-lpg: Add support for PMI8950 PWM
To: Gianluca Boiano <morf3089@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <d17121a0-ca14-41fd-9802-bb4118629e34@linaro.org>
 <20240226093732.3478845-1-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240226093732.3478845-1-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26.02.2024 10:37, Gianluca Boiano wrote:
> The PMI8950 PMIC contains 1 PWM channel
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---

Please don't send v2 as a reply to v1, start a new thread instead.

Konrad

