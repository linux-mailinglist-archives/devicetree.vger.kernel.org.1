Return-Path: <devicetree+bounces-54141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6888FB81
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 806B429E3A7
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BD8657CE;
	Thu, 28 Mar 2024 09:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXh1Qm3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89205657C6
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618250; cv=none; b=UNZ56fy88KEQ9Ui3wzRIMR28/XiudlJ54AxzuS1N1t95HlJN+iJ0usTdnhDKnl432CIoMlO9xsnWOhUzMemyBmz+0nDQ2+cUTQyKOJvEN8lC1NJm34DVOaFBgLj7hM/Zw+VwCIRbyrkFQ/szFZ2B5oX9ehCKFZOwnKHjcqMfIAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618250; c=relaxed/simple;
	bh=qILyuXef1T5T+9XtbIGpdYCUWCcqKesyXlOX7ih5FsQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ctAFHcoKAmYU13m9eKN7qr3vcVZkPvzMBHmFv6xwopBFYitaB1fVlcnAIJLkT34Vq1WFWnijkqVWSIkD1VMy0JalcMzc0KLalR/Ys8NEbzRb5j4STgYSQAw6OO1ySpTxfR4Z8qZcNTGOQoyx/z0TJjBf2mz5XPRTK8f+Eb2Xgso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dXh1Qm3k; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d6fc3adaacso10032031fa.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711618247; x=1712223047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zrJOmgHHyhwtHTcRJ5QXJysxFGUXFh033YVUOIYyTo4=;
        b=dXh1Qm3kWXfVu0fZQ4ttf799o/vg+xaNQso9B+X/6QvTGX7QKTcVUhRVlSxgTadoe4
         DOYrdfiXHJ5aVn3bsO/IR3EAptM+3e+sET7HyDfaWAFE7X2zg3uGocFkfAH/mepT7Kq3
         ok4fzlK85HvrPy71+xJjTn8PNwEctQSu59HOkXLogwb4HZQpAjvC8sQHX9fWiRIUBDmN
         WW98YdaqftBe3cBnsKlCiJ4pXyeqBYNG8HbPTfha4SmZwnRu04D1Zqf7vcuBgM+abf0N
         WZo+w/GpvcDj5bUlZUZBBnv8tFhUXlhMCiD7NpLcJLlySuKKJnPzbYsM1mLnAWPK+90V
         3QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618247; x=1712223047;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zrJOmgHHyhwtHTcRJ5QXJysxFGUXFh033YVUOIYyTo4=;
        b=ryAh6nJgMLYG8QfQRaz295+TTKPQl42t1Mh9wGMHpj7/qajkU/PwmJTBbJw0x71u1B
         XzwDhlpprZyLEhA45JmPrBt2pOPECHbFZ8mhKWeUCC/27pb6JO016j5ye1ZzC0Mw5gEI
         K9h1/k6J3HGiYizqE4Rn6zSJsFGtL984FfBVTwiJ1rmIzHXdsaYYyNGnpWjMk5V3YpUn
         OvVgSstgGe7mGlcycEnIqryAe9n0CqoBOpyG/8t98uiTAm6VIOsnWl+NYyz1MWm8hENF
         h5uPeTt6wjHRMdOMp7SLlGoHpLFYSp1aJERohTHuq+54gsy1wNe2KYOeHJh4PgZios8v
         BRNA==
X-Forwarded-Encrypted: i=1; AJvYcCUmPELc1a5RF3wiaWKFQgsnQ+H579VMDJTf3GPit+y+ra3cik/akB4YqQt25rhHOKVpQDaeIGvXpDzUPwE0F13eiFTsVjL1+o6soQ==
X-Gm-Message-State: AOJu0YyZrFQVECmtxZzjm2Ys1rCKTns1mSQTbBolEhxEEVGZafbbBp82
	vPTTDVGyz+kOWU+VTXoelgUXdwZq66qLpXZxQgzIwJ14g/rxbNm6bxHw4d2jv4s=
X-Google-Smtp-Source: AGHT+IHT3HTyA5R/JNYHIEMjib7viwDIhrMSJDJ2CEZ8vjVZpq1agOPEJKM5KOEr8asv6SZy/gqgbw==
X-Received: by 2002:a2e:800c:0:b0:2d6:d536:41ca with SMTP id j12-20020a2e800c000000b002d6d53641camr1895841ljg.4.1711618246715;
        Thu, 28 Mar 2024 02:30:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.148])
        by smtp.gmail.com with ESMTPSA id bi25-20020a05600c3d9900b00415481edde3sm726781wmb.9.2024.03.28.02.30.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 02:30:46 -0700 (PDT)
Message-ID: <81184a20-41a2-486a-9d99-e53ec87e9f41@linaro.org>
Date: Thu, 28 Mar 2024 10:30:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] ARM: dts: omap3: fix ssi-port node name
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240327-hsi-dt-binding-v2-0-110fab4c32ae@collabora.com>
 <20240327-hsi-dt-binding-v2-5-110fab4c32ae@collabora.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240327-hsi-dt-binding-v2-5-110fab4c32ae@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/03/2024 20:11, Sebastian Reichel wrote:
> The DT binding specifies, that the node names for the SSI ports should
> be just 'port@<address>' instead of 'ssi-port@<address>'.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


