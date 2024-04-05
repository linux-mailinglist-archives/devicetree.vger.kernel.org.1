Return-Path: <devicetree+bounces-56467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD628899619
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AA331F22D24
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9031028E39;
	Fri,  5 Apr 2024 07:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vsQ3bkED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB880286A6
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 07:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712300420; cv=none; b=M7G/4Sx2MHl6NBNIt/wb5SiW8g8W8J45i9ByMdDkD8lqQaZVFK+snY9ULlw2A5yMSBYn6jmu7f8h8msgdAjIlpYKKr89KgS3wlkjDe2LP8yrgsp1fWdG+fl2fNMzWU4lZxzLh96XzeXDerQq0jGxEdhi9swlHHayGcMezyfLr/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712300420; c=relaxed/simple;
	bh=He25dF93eEeP/tvULsqq4OPNWx3qudUhhHKhTTHMrTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nhXDINNx1VTm/JKOs1T7+O0c9r9kFLJHp6kjO9cvxjIQXlNCXxYLkVXcBij/gNkTKrsa7IYJ2kG6a6t+aryJmUFnRM7nIuckrZRYQTukD9sFatpYNT/XmRFRv2yzVaDlzDuxa4AYZfgf1ue6dOMl8qg0KC5X/goJn82DIxHKqOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vsQ3bkED; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a5193f56986so137409466b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 00:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712300414; x=1712905214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CGT0Ijlvcv5eaM6r+MkEViBswYDZ/kqhi7l1v4j8eGw=;
        b=vsQ3bkED8dBkcZRXz9N8V/oqD23lGmj+/zOc1of+pvRrLhAvYNw1/fxGhGzBA9S9uh
         RM5MWdHJAsbqP/8u0zuVnHI2wWQbdXi6YOTWHthq+NGIM6+aO3wbpT901eHRP+tDPlZY
         ql3JfopZgjFsqnkBDs88eGe562a/kPOcsY8HROU4sghk8ua4EIUy/Hy3EdQdK2tt3otO
         NwH4/yiudaEtsIvdIpVJZ/sybzCRDFlw2jx5hmA4xbiej21fuMBSjNDm2Bo6tkxc9aji
         hBATTsX65Xhi7RmTr1VLm1F5i9O9uo0F1g80Qs5L9SaIBsOhv6ObvQSKycp7eI8Rf0sQ
         BYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712300414; x=1712905214;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CGT0Ijlvcv5eaM6r+MkEViBswYDZ/kqhi7l1v4j8eGw=;
        b=irG7nHS+rlAQNn6lRbhF3CY/POUOODUKf6+52GRT1kM6+5DmfHhKIrXgUAADF+RRbO
         auyFd1b5vOf6hqD7AaTJFy1xCkNAKNyLYjwmRK6lGYwxh7xpIW8HNR8PeHKfsu9AFLmB
         y8vUIaexuD1ttjO+2wXD+t053x4lDdhrmSw4DtqVP5YRuquFkHha3UuEskcP0QUGwckZ
         3VPNNl6JbIKu2W7r2B4qiGnU0jQg8WaR4Q/ntwD9WTRss1+9QuGhJ25rBIufDIl6JD4P
         XARwJi/yR8WkKytCCTwpLtQZGaeDVIKgO+KGMCdDWAgKyltbPHVgduxoR6+cDtFfwJp4
         nRRw==
X-Forwarded-Encrypted: i=1; AJvYcCXFHZzQRI1y5M7EHejb2pfzl5KnCP/VEHf0lJgEZJVOQDC/iw+q6FnS+SCTWHrJ9QWtyKVZmCCTlDWvGUcMU6+s3w5+1SxsNEdY7Q==
X-Gm-Message-State: AOJu0YwrxUeJnLPgrNxPyHOWB1UlktW/eEhir9CCpHSPVmVJeoEgcJ0B
	Nha6uuV6ahnG/7AnNhxl+hSCdw/kIaDC2GMhGul47HFjrhKhUZ5GZyu5l+WW2V0=
X-Google-Smtp-Source: AGHT+IHysIvcoux1RyNznZ6xWUpLx8QHWBK1Sj3//rjGKvHvF6DFDZ7o1ID+mHKHmHPAHog3M9hVUQ==
X-Received: by 2002:a17:907:a48:b0:a51:aad5:8c48 with SMTP id be8-20020a1709070a4800b00a51aad58c48mr216513ejc.53.1712300414283;
        Fri, 05 Apr 2024 00:00:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id h12-20020a17090634cc00b00a46f95f5849sm489330ejb.106.2024.04.05.00.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 00:00:13 -0700 (PDT)
Message-ID: <afa9a1e7-9db2-4c79-8e12-c26b02964ee2@linaro.org>
Date: Fri, 5 Apr 2024 09:00:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] mfd: rohm-bd71828: Add software-compatible variant
 BD71879
To: Andreas Kemnade <andreas@kemnade.info>, lee@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mazziesaccount@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240404195423.666446-1-andreas@kemnade.info>
 <20240404195423.666446-3-andreas@kemnade.info>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240404195423.666446-3-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/2024 21:54, Andreas Kemnade wrote:
> Add the BD71879 PMIC which is software-compatible to the BD71828, so reuse
> the same device_type enum.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> Suggested-by: Matti Vaittinen <mazziesaccount@gmail.com>
> Acked-by: Matti Vaittinen <mazziesaccount@gmail.com>
> ---

Now you can drop this patch. The benefit of the compatibility is to drop
this code.

Best regards,
Krzysztof


