Return-Path: <devicetree+bounces-83831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F6D92A05B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 12:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10401285C0B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 10:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3BD770F0;
	Mon,  8 Jul 2024 10:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TYAIOuus"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E739D757FD
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 10:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720435273; cv=none; b=s1pFlYHOXWjMTpC9qlSjblFTSVtSXklbd19Mj+UpWk3cmncjrsPIXMFqJOahFv3YwFPT6y8vLvJUxUMrRi/7KzSF7lU9tan1TZNwfldhWcu+ChYIvNN3fUO7wu4RwS4pC3WQXiCpgAfhD3R3/3hqZC7ovcMtfDpHVz+FUggjqPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720435273; c=relaxed/simple;
	bh=g0BkeEerFy/NvChqehgKpKH69kIduDgRIwUMTK16xOo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kgJkMfJolef3zuP6G9mAeHaybuwiZ9POn7eVZP7ecwivCgZi5HbHf8MdlBp/sovVAZi7+lOeNkrrslNiTG2Xp9cdq/SfDVdvV99w9QZPHWhNRX9SDTf8gBcccXzmAbtoyR07M5IucEb+h4tZG7VFp+Js6G0cBMKvFanG8RT0SLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TYAIOuus; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a6fd513f18bso349463966b.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 03:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720435270; x=1721040070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=W1HwdWtIaStdzfQg/QncZ0PV/8wd7K4eUd7Lp6rMbIc=;
        b=TYAIOuusQsDtw1/4Qcg/rK7/k/BCyfAX/z5V/Jo73EZrx+ZP+qjogw3KtTipuNUyM7
         pON+LcA5i9mhnpBZtsCYDOo0TMw++JsGQeo0zu5RT+srxB1gifBocrFyKxxkVJnlI2dB
         f6hIBtywRunGVu/eQfiPTEEtqDhlYcbPRFLzlwQwDcHFikmem3s563+vex1dW0mDCtWk
         1SrGFBKp1GH7oko49Hz4nq6oWiLdCXOhS8bJB4FBMDONpajguQi4A+Uh1Jnwd6WXr4XQ
         fxwOagI87YpzDbrcOdItVIaz07Uvnjg4oFKS8aJ7vv94l+gtz5R+zDimOb82ZvfxUJUh
         KcRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720435270; x=1721040070;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1HwdWtIaStdzfQg/QncZ0PV/8wd7K4eUd7Lp6rMbIc=;
        b=UrKoVnvXSmhi+p6m7ffzu/rEdJ6/Y/c/Iqt9Ocs0cm7u6pZsTIRoCXp9zPg21y/jke
         yTUG8rH8CI+OekGDaD/2II19nT3MjRgqH2I4EiW5fcg2+4GqDq4qEvX7fv8TyNVN4aLV
         aBAkNAPf3GOJSysHIMSRzD9WcY7hrKWb81tjCf0n4Wt3uGTPNJ92h4dMPpp+iTmjlsXY
         bF3p270UymDNFRYXD3VlplS2jUFqKVROm5jol8cjCU+s5lMUiBuDnA9tdoTSeCnc+97s
         IpR2bOf8JWXsPBqIcBYfrVn4FIvkWaIaZwfwh1xn7tDa+vVM6svv04x83TDaPdOayMSV
         9T2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMAJAo6qSVIWUIMy91nJGCKF9E7n83dyNlUVXeTK6+j5/QPNtsxMoV1KsRUDVrSuMQWznrHqoo7PSb8HwwwUxJH1WVchAICza/Ug==
X-Gm-Message-State: AOJu0YyefuFqcFaV6IoUPUbzH4N1tlGL+xQuDuW9y5OJB+aHy6vCm7FG
	oEQC0QQZWRmZEVZtNqmt2u69RY/lNFRV0vE7RLHANCifzJh2+2K5phK0B7AAMl8=
X-Google-Smtp-Source: AGHT+IFFb7GaOAzwzUeIpcCeRuHTWUzqxP+J/WonKHQ7E5A5A9OtIuO19M9vBcttixZ0xDIKDwjlRA==
X-Received: by 2002:a17:906:c292:b0:a77:e0ed:8bc with SMTP id a640c23a62f3a-a77e0ed0ab5mr427838066b.4.1720435269169;
        Mon, 08 Jul 2024 03:41:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77d7e1a008sm274715166b.146.2024.07.08.03.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 03:41:08 -0700 (PDT)
Message-ID: <5ff47cb2-5284-4d15-b759-64ebb01e1b06@linaro.org>
Date: Mon, 8 Jul 2024 12:41:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 00/23] Support more Amlogic SoC families in crypto
 driver
To: Alexey Romanov <avromanov@salutedevices.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "clabbe@baylibre.com" <clabbe@baylibre.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "jbrunet@baylibre.com" <jbrunet@baylibre.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>
Cc: "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20240607141242.2616580-1-avromanov@salutedevices.com>
 <20240708103736.a23yez2n3s526zdy@cab-wsm-0029881.sigma.sbrf.ru>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240708103736.a23yez2n3s526zdy@cab-wsm-0029881.sigma.sbrf.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/07/2024 12:37, Alexey Romanov wrote:
> Hi guys, ping.
> 

Whom do you ping? You received comments, so are you just going to ignore
them?

NAK

Best regards,
Krzysztof


