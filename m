Return-Path: <devicetree+bounces-233303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D08D9C20D55
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 16:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0ABA51A27CBE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72102E3387;
	Thu, 30 Oct 2025 15:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oiV6/yhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D6C2765D3
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761836687; cv=none; b=Xn4G0Tp/edeb5zO7GWh6ZrRoxHjqNaZ4PGFR9CeZIkQEGYq0gsNe7ArbP1gZaUH7MIurkYoq2gHiubhs909STRk3IXRyQaMGQq8h4hEcJxIEWdxNG3d3CkKoDtXGUWxM7DmlM2GNap1dGKIvZqdxJf1B302nfwIlWOlrRr49WZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761836687; c=relaxed/simple;
	bh=yZ8qgx02pM58nDeBJ5XZDWSQRkiLYL1A5DAkUR5VYsc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=epznib8w+C12ux3wvcZ/HmPSXYUxSJvWfpZqJQR2ZEKYfNonKNBjdXflFea106Xfy2FfOQpLQOzTFAI3ZH80lFZaTE09uWAhnvN6GyvXYsIctWzOF7WSHeZ94kXjWoA0QSUFMPN0Y+nvc4NVQPsui77FbxnpzfJEuOXK5F9+3nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oiV6/yhC; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-470ff9b5820so647995e9.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761836684; x=1762441484; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9IZiOaLTYWrn2PDbPpBMfkH3Yjtj8eLXjgw6zPQrEyE=;
        b=oiV6/yhCyPwOlUq10ETwIKhQJaAkKHCA7z3rxhS9RFYTUYkdS5SjjXJGaFspK/Ibz/
         0GbAqXniagJDn50hAZ6lZK+6PyLedOJ8kkzFmPEEHIbiJVcapYApMbAU6N9bQ9kmT2St
         KQvFO8kDez/zh1yNARISrxzHNjnMWrEvp8g8n70/mh02BPPPDCz/204Ju5WaK66GNyia
         Uc2f6DYWpWKAxw/YRHd8to4pKDuzwO0dcOp1huPtMweWTT6b9EfZZTXdGvlDrLX4KS0q
         4dwWAdrseYGEE4JrVOMqrpulqPhPtlT32lKmx4E0QFmQXzn2MaiZHzKA4ADOWqdmLBXj
         z3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761836684; x=1762441484;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9IZiOaLTYWrn2PDbPpBMfkH3Yjtj8eLXjgw6zPQrEyE=;
        b=YYIFzYf2TNF2l0xsDI1OjPhhfugU0jhFRo4HJtHm4SnjRINBs+sR1KN+KgxUOC9sBl
         Qj7ABly+GRK0luvkPsQiiL0LERTtEe8TYiGwHubT4rTsr55Z5n5eJpwbCNVKHWxBUiav
         xdWAI34RLHPuoMJrgXj+YisaKfM6D+vH4qUfddiCwzeQBDhuS5tZ3edLdwVnNayYmcva
         bKhh6R5xdZJoY/Euntyy0bx0H2cV8sV4cC12WkYl9sS+aiW+Wy8aQrjQSPPr2Okn2yun
         Q73dtnTiDQ/ySGd56eE4DR0Y2YPZEfDW353+/UmFXGfBo4huPTDi6w+8ew9laqFx27eD
         aXBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqb9Mnjq3I7XVerAn0LWzsUojwiqmtNptxGM2tHfnCMP/6GgRnxQjiWPRfHme9YZ6ZS98oK/j7cYtd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3iL1Og6BjYt6WVCvKmHZYbqGq/2InQapdAoJnlfMqVictq+LT
	OADYT8yYczq/Wn9rl4nTVICTpVICg97fDkiJhdWigJuEPzbiwUW1wR0t2Xsna1BxIpw=
X-Gm-Gg: ASbGncscZ8Ust9pieO0xPFBiTDI69kMFOKl8Z7GMWEOKbs3rum/5sDBbH3F401gi5IU
	LXlswPmmoqfuTCcFxT/agbUOZNKVjil7LyTrag/fPy0TNVKt/WUPYs+UBE+IUfHGyF3I1G3m78p
	1nCMDukT6Y74oOHnYNnG4GTLnYWHa4SIB4b6ByiW53X/xPT7YbCPuAeK795HQSUq7inhtUwaR8m
	HdMj++54bt1yrACCrBMLUf2sLZESnxrM+Env1kKPyXdicYyXIUa6Bq3jZT6N87IToWwrGa38zNa
	aulh6yUYqEpaOTP9QJIGmVB9pzuIC+6QFd2tskTAPFwkgcOqTP6AroV2U6LlmlvS1rGw8yXa36Y
	dQ0YdGBkYO/cTUwzKrngBiAO18vZAh4+1/cPxIYcxddRv3/ysXWF4COMZDuqhDP34ytB/1DOt7P
	zOcXnb20qtN1j0tYe52wuO
X-Google-Smtp-Source: AGHT+IHFpMD0eVnDwb5oVS94LvcYZChZWMQJPJhlP6HnGENuDl0EMyzMQMQXFK3G3pWhO/ZhJFfQEA==
X-Received: by 2002:a05:600c:4fd6:b0:476:84e9:b552 with SMTP id 5b1f17b1804b1-4771e1cc7f2mr30753005e9.4.1761836681829;
        Thu, 30 Oct 2025 08:04:41 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7a7csm32848290f8f.8.2025.10.30.08.04.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 08:04:40 -0700 (PDT)
Message-ID: <ad1bb032-6d58-435b-b2bc-04aa26d41d58@linaro.org>
Date: Thu, 30 Oct 2025 16:04:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/6] arm64: introduce Black Sesame Technologies C1200
 SoC and CDCU1.0 board
To: Albert Yang <yangzh0906@thundersoft.com>, krzk@kernel.org
Cc: krzk+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 arnd@arndb.de, robh@kernel.org, conor+dt@kernel.org, gordon.ge@bst.ai,
 bst-upstream@bstai.top, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 ulf.hansson@linaro.org
References: <20251016120558.2390960-1-yangzh0906@thundersoft.com>
 <20251030114007.302401-1-yangzh0906@thundersoft.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20251030114007.302401-1-yangzh0906@thundersoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2025 12:40, Albert Yang wrote:
> Hi Krzysztof,
> 
> Gentle ping on this series. It's been two weeks since v5 was posted.
> 
> This version addresses the DTS coding style and property ordering issues
> from our previous discussion [1]. Following Arnd's suggestion [2], the MMC
> patches have been removed and will be submitted separately.
> 
> Patch 2/6 (arm bindings) already has your Reviewed-by. The remaining
> patches (Kconfig, DTS, defconfig, and MAINTAINERS) are ready for review
> when you have time.

I don't understand this ping. You received the reviewed from me or other
maintainers, where we were responsible to give such review. Probably you
assume that my job is to review something else here, but sorry, that's
not my job at the time of this patchset was prepared (we don't count
here recent changes because that would mean you ping me after few days...).

Best regards,
Krzysztof

