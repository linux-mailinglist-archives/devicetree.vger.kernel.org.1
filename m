Return-Path: <devicetree+bounces-156532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC90A5C238
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 14:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10558188F297
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 13:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5671F187554;
	Tue, 11 Mar 2025 13:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfQY5RTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D26149DFF
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 13:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741699002; cv=none; b=M9nU/htpsMgOgAn98XE1rxyR73zfmO9RRKMTcDieZ4HXzUo02qXOqCd8RiXHDeLnUK5+VE44nrwAshLlmuCS0AKjE23TPFyWMgetfrpApYz2JvNVIJXwbfaL8a13B9yOcPARimf3YYLJ3EID2uuBTHjTSU/MjDd+hhUBSk6tl3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741699002; c=relaxed/simple;
	bh=X3FGCdS9xaj5Pnm0E6RoFIi0kxKuxdWu0AxRIwE5nfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LqFWBBmtzj7NdP7bTVoCRefnpJi7mR4Iq4d5WY0lbEELXGiihT5x2B0CGUuigoDsWIztRT3NVfQVuOZ1mLrn/xejowgt0LJnnrcpAOuZSiabdA8jc/LCJ2SIoTBpChs8a0Aws+NmpRK46tcrCHxw2w5BMqEGXqjwFMc8i+9bBOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfQY5RTH; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e4d18a2c51so646414a12.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 06:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741698997; x=1742303797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l+TN31oAXynxfgn4SEM/dsCUQmjv4pWoDPubrSn3XNk=;
        b=FfQY5RTHF26kcuC8DlW3xxgVPyzEM3OFJbAB9oai+TIxDJAj2RixVDXXMPXrkJfXke
         mCCuxkDgtuuQXOXjmzqbiYEpX5UXqXp1mGIOUWZLydoQfmISOgvVrFAbyLmCpkn4IYbK
         7ZtIL9LvepRoMtldckShER9ZQpKc4h4LPXK1uQmtn6JIUC5tUPF7It5ETUI3rU9MO/AP
         DY89F/Wd5RQwq1+3OuoNuzCojLXLQuenIGqSDWgxgI2MA3Con5Rw3cEEkAKer6mffNG4
         AIylnXDpQm1GCsCD9Xtcz/fy5VaHilXN97QHs0N+1O1UOFh6pmKAco9PTLSf+fZeajxy
         qzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741698997; x=1742303797;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l+TN31oAXynxfgn4SEM/dsCUQmjv4pWoDPubrSn3XNk=;
        b=C2NMyYJuerYpt4ArkGCEf7QXnEa5Lg6J8McvY+renWTp7shWBl9xTX+r8ealBVN2E5
         jdjcN2GylE8zTZMyfEU3w7AUJWSQanzgzqiDJXPYPNVHlXFCFJ9reCb0i5fyHhILSFlj
         r2Q2WcD1mpaZeKMNuJdvYUOnUTL8G3JU5j5Fa7E0AU7wKFqBSaH2KRhaMZnBuiinZsFV
         igcd449Kx7Fr522or+q9h1sjOdUcztUWJyQ2qgiwSYs4FTgJYiEiYYjBu1s2BwJ0z2L+
         hjj0Z/nIZCgmZqABr+GPBn7COcBN2ilu+3Yat5c5HOQwQ3lB1mQ2iCgxe4U4KdtOLuVS
         BKHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfhbFaSIj9oAxCO6b8WahM0E8vX0OJnEteiP0z4zs7dGcwemTcb+8cJ5vfLl4iV5lY96CixyArIYvy@vger.kernel.org
X-Gm-Message-State: AOJu0YxSK0NLPuYA3VOBIFYhGNt/UE/0yp++0AVwJB2XMLqkPWwrKmKo
	NHuujWj8jZzO7Znwet3rtD8vHBTX9v5aPwuLS8VxONrV3/EI3ti2RD0ecZof0hQ=
X-Gm-Gg: ASbGnculKkN0IdPci9jjO4jRz6mngTDfbneVRDaj+8vOweC6iRbahjk9Bc/CUi26AuD
	5/VX6D53WGyqykfNmNa64RfjGaJ4EH8aADRFfgydXHXfs0rSRyWoZ/SAU08fH+rMM3BIs42ct0+
	SLU5lKVApy43LapuVTrLzXi09/Wn+/a6uI66d3OilXig+dPGN0+wfij5YSoVhlukWv/YH2LMm5g
	Xqw0DD1srqnZ1+rQdknH/gJ31h7WOoOLhHsIRthL0HhNwJWsROvXV9a0jOy/aqOrn/aYgaNh/kw
	QJuG6EBKXqsEpN/MdCa1OsibFJfQF+zxw3pyJHo1yuOnI0fqBjPFTtbYg7gc2h0=
X-Google-Smtp-Source: AGHT+IHDl9bEuZPBLJEU8iNN9l9SyPqlOxCoNYVDjA7p92nEVa1ym2FhJkKekiyZ7ninSqU2Atyspg==
X-Received: by 2002:a05:6402:268f:b0:5e0:36fa:ac1c with SMTP id 4fb4d7f45d1cf-5e75f983d16mr1567613a12.9.1741698997500;
        Tue, 11 Mar 2025 06:16:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c7473ea1sm8395088a12.29.2025.03.11.06.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 06:16:36 -0700 (PDT)
Message-ID: <553c738b-123c-4b79-81f7-de1a89c1572b@linaro.org>
Date: Tue, 11 Mar 2025 14:16:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: input: Remove bindings for Azoteq
 IQS269A and IQS626A
To: Jeff LaBundy <jeff@labundy.com>, dmitry.torokhov@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org
References: <Z89ugIeYkJ7rAzJP@nixie71> <Z89u5UBMDXtMw/Hq@nixie71>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z89u5UBMDXtMw/Hq@nixie71>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/03/2025 23:59, Jeff LaBundy wrote:
> The vendor no longer recommends IQS269A for new designs, and no
> longer manufacturers the highly similar IQS626A. No new product
> development will use either device.

What about all existing users? It does not metter if vendor recommends
if we have users. Intel does not recommend any of its CPUs older than
two years, so shall we drop support for the instruction set in my 3
years old laptop?

> 
> Remove both bindings to prune unused documentation and avoid the
> need for any further maintenance.
> 
> Signed-off-by: Jeff LaBundy <jeff@labundy.com>

You CC-ed an address, which suggests you do not work on mainline kernel
or you do not use get_maintainers.pl/b4/patman. Please rebase and always
work on mainline or start using mentioned tools, so correct addresses
will be used.


Best regards,
Krzysztof

