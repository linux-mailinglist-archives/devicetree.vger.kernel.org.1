Return-Path: <devicetree+bounces-88077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF0F93C03C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 12:43:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0E831F24649
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 10:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12521990CD;
	Thu, 25 Jul 2024 10:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Skj81P9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF611990C7
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 10:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721904146; cv=none; b=eyv6ziAmTomis79O7q8mKK+MaKyvOL5BW4NLQHgeKzzFed1G5IX9C2R0byr9jVfvPcGJLdXtJ73Cfsfx1vRaGioeDdHFfSAEQHiqGGYNB5EsIrs0GatdvpGfEFXP73fjjX8370yG1vBlxVhVzu6WvODdcphMbPxf3ybd2lOzUUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721904146; c=relaxed/simple;
	bh=hBWHhanp5v93mRE+6CgyY6sQ3nGUXDSgEqUzrVZrM60=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iEaKlaK2ZBLml60vqLZ23xbbUTj27Thxxwb0x0UndD59JI9YYAOiD4Re0BL9FYbZq3o2ga1SV4FI7jWhiE8LGU20jwryc9t9jZyQ+bHpmnVdWpPXTF1nsA0qGTmemcgEH+xioucllG7Rn3wOg0YPo3iEawkefWCsR5HiL9e2458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Skj81P9h; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a7abf92f57bso47984166b.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 03:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721904143; x=1722508943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LSedu4o+RehwKbH7EH/a7b5GRkdWu2O8vhTbRtLxeOE=;
        b=Skj81P9hhYr2a3Akz6tdysRYJVWz2TwS9ejBaO/0JVOYgAdl73qmbGIXQfLKl4p4ll
         FoKjKMhSnOasX1m+DDGUcNmMJTamo7ml9etj5w+je1fyqhTRmw6R81Eleyh79ajMYwQh
         WANO9UBf5j8g5MBltetiFEOTzx36ju6DncvoiuImCFGdepAEz2JGSv2R0CWjsgFR6jQ4
         qxPrHVXTX7HN2GZOCRFVVzeT+1SETKj3URYi6HsV+uwSct1WVf8kuAGUX/GkDpd2cRDn
         Hr8rLQJi1KhtkUcxyjjle3Nad1iLluaFrAqzk0El9C7bSisKhFOKYn+DX+bGJjhku2Jz
         7IWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721904143; x=1722508943;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LSedu4o+RehwKbH7EH/a7b5GRkdWu2O8vhTbRtLxeOE=;
        b=Bmcyqv/5/CKOeB9tss1+Zmo4D5b6Ky78f7FfwoPuyLSsCIYSvuzAaL28/GvqSckeRf
         JeDjzv5Gv+v/lBkjQtq2SFYpmbsVhfEP0UwpWxrFhvL+6ns+bs9hTpEK+67rzcVwLCdr
         7SgP/zZwlgNwag2I9DObomdkAEY6xom6Qb4dUFP++fUL5gNwOtVwDdOe9dOhIySo9drH
         4oV5Hn8iOT6uDoy4n1eSd9SYewKC2albf+adDjvbGNslhN9ZiunRSkRpw/Tynr9JE9ef
         LAmSPgF/1Lv0Xb8gHvqo7CzHt2FQbFnYfbZQJj3YdiTC5O46XqSR/vqrI6bU5JTIk9je
         vizA==
X-Forwarded-Encrypted: i=1; AJvYcCWm17VfJzuCusPjBVrSJ4vVgx7R5THv4gr6iq33bReS90A59FCZQWXnHv9Ax+3Mw5lJTtXONzS0UJ0TzMpKk4JZ87iEZyNM9E86oA==
X-Gm-Message-State: AOJu0YxTTl+hT/+JWQJLMNFQWM7TF1HUiVrL3Shm9NNbMrZXKqSrCqkn
	ZI3Gih4u2MAy04KUPDCuUcmInigKLDyksXFtnZJWlgenTHOoHMNv576274Z0f7M=
X-Google-Smtp-Source: AGHT+IFlJgJVoOS0uEZsdrNmrSuRnW95ejXLB9CriVHxMnIykADq1C3G0XPgRtgK5Z7JEmAY4Qzk+g==
X-Received: by 2002:a17:907:7b9f:b0:a7a:aa35:408c with SMTP id a640c23a62f3a-a7acb39703cmr142501966b.8.1721904143210;
        Thu, 25 Jul 2024 03:42:23 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad4148fsm58226366b.121.2024.07.25.03.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jul 2024 03:42:22 -0700 (PDT)
Message-ID: <90a16b1d-534f-4bfe-ba39-e0035b2f6a40@linaro.org>
Date: Thu, 25 Jul 2024 12:42:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] arm64: dts: qcom: sm6115-pro1x: Add Caps Lock
 LED
To: Dang Huynh <danct12@riseup.net>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240725-qx1050-feature-expansion-v2-0-5fac4bbd946f@riseup.net>
 <20240725-qx1050-feature-expansion-v2-4-5fac4bbd946f@riseup.net>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240725-qx1050-feature-expansion-v2-4-5fac4bbd946f@riseup.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25.07.2024 3:42 AM, Dang Huynh wrote:
> The Pro1X has a caps lock LED on the keyboard.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

