Return-Path: <devicetree+bounces-68176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CA28CB11A
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 17:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A787DB23D50
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 15:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0D714431F;
	Tue, 21 May 2024 15:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KtVL0Mge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50201143C61
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 15:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716304507; cv=none; b=NJHfuEqta+61zDCB/NTQ2ES7wnagLcU8Bx4I+y2K5RizXl+G5y0z9SBJqwKqksuksee0Zjd1JnUCb3Z8T/miljWcmZUmQvbhmZRosfoje8ZAankxhYPk4wpv1C+99vt3SS17Q2o3xcBhbUsGOAPYn739aHCzbNDUuRdTU1AoYQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716304507; c=relaxed/simple;
	bh=T2ifjglhleACoGzA3W9qXBAebw1S+BJei9x62Qvf8W0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l70t1tE5yE33tEHxZUi5NTUcwsW2X0kA6mrt0brQoz+P+C/HR7gVFomGHwkYl7nlFCpoWkEg7AoV/t+q/3aKSNXk5eBl+Cy/1Cn5ZCa2l9wy4c7BUeNtBcQgEzEMATDjG6YDnEeKhoejE9T9iOHtvkHFU3An8k4TMd+fEXidHB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KtVL0Mge; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-34e28e32ea4so3170460f8f.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 08:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716304503; x=1716909303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=azoi0SbFupGMIvxO9VUZWv367nSnqyR1kY4+4A+MoAo=;
        b=KtVL0Mge2ByDNHYggnfmglBChA+JGjzaod2ars9PGT9VViMqRFvI35HAehMRtoezQK
         OXqRJrCM+Hg9bslSckEpF1oEZuDY5zfs68ZhNEId/I6CcER6HBc//JA0iUoKLqtV3F63
         HxjoqvAtGYNRaL0OUViuKmi1XED2Dojtuj6C+GAW+LHfQJBUVbG4G3/f7kLd6J1EeVIq
         yXH6m5oPISxG29zd3gPlxsg+Mw8ftcK5+f9lH/eK9aybc5GXaBEtJaY+0RYc2Zoth7a8
         Cmlop6Sgl8LGt7Cii8Bq/vb/RDzHFXUXNSPpxT+Bxuv4xUCfXXin4xp/sEdRO+fAqrud
         LmMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716304503; x=1716909303;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=azoi0SbFupGMIvxO9VUZWv367nSnqyR1kY4+4A+MoAo=;
        b=eZ//FMNPSUhSH/3hz8fkHeTs3dN57WOXHqmXu7olaPCHByoRepUIZFrnU9jyVHus1W
         HIqQ33psyzD4BSQ+nfiwIfXSIQAlmDwRxuKJyk0AE1YmxGZHFCpRRSArL6fo2GiyIZ57
         V+fDVBWEq3CbE/EKofNPqTa1oI+BbUX2vcsqVhIoBFoKtmYJjX+PPUSIGu6ePBjWQvO7
         EndUxGjFy8PQPI53wgxHDeeuuotaGamjdd2f5/HtTL+TJq8wyUVOXD3XWOchY/BD2azM
         fhzGcMAhyWzLWcDPEhPhCEydkraDwqsyLcWTzUEhdKQOI9i+rpdhA1lpoIEBgxFqkBSQ
         OyKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsN5loqW8k6bfyBSlVL4DHfb9J0yC9wdzqGPbSCRrdM5tNNzuwfFRXtpKlaRKf3k61wq9MZKmbEUbmzH+2gsEbDMxUg4D8dsTRJw==
X-Gm-Message-State: AOJu0YwQnOjtaKXBcEwqF/LtcWwgdcBrA4kFDzQKw+lXLDqdzS5webbd
	yAMkKxbiR0oIS9y9FsNnlq8nLwoLiHr6nWsdJan6vtNkaPC5JRUOOSAVP14eMxYOYcviVi7Bgo6
	c
X-Google-Smtp-Source: AGHT+IHzU0JxpZXXr7W5GwpCcwxi3Tw1/SjViLUKB8R4tz6z4ILHBs6/Na/3Bpr6mcnETmijNu9iHg==
X-Received: by 2002:a5d:4569:0:b0:352:9e0c:f9d3 with SMTP id ffacd0b85a97d-3529e0d09cemr8052347f8f.31.1716304502724;
        Tue, 21 May 2024 08:15:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-351da8877ccsm14396247f8f.55.2024.05.21.08.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 08:15:02 -0700 (PDT)
Message-ID: <20f234f2-37c0-400e-b918-dc7a4602beb7@linaro.org>
Date: Tue, 21 May 2024 17:15:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: gpio: lsi,zevio-gpio: convert to dtschema
To: Pratik Farkase <pratikfarkase94@gmail.com>
Cc: Pratik Farkase <pratik.farkase@wsisweden.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240521132849.34647-1-pratik.farkase@wsisweden.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240521132849.34647-1-pratik.farkase@wsisweden.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/05/2024 15:28, Pratik Farkase wrote:
> Convert Zevio GPIO Controller from text to dtschema.
> 
> Signed-off-by: Pratik Farkase <pratik.farkase@wsisweden.com>
> ---
> Changes in v3:
> - Updated relative path filename to match actual path filename
> - Added `interrupts` property

Why?

It wasn't present before, so please mention changes done during
conversion in the commit msg with short explanation why.


> Changes in v2:
> - Renamed file from `gpio-zevio.yaml` to `lsi,zevio-gpio.yaml`
> - Fixed the space indentation in example
> ---
> ---


Best regards,
Krzysztof


