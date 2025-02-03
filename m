Return-Path: <devicetree+bounces-142465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFA4A257E0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 12:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2377166F36
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 11:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF43202C45;
	Mon,  3 Feb 2025 11:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJ3ovVOT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4AE20127C
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738581325; cv=none; b=ZRfLgKUjB7+vQEe0/GBCD9SvGImjgo5UkkTg34bLFbaFnb4kpG3iXtoyqDJDAclsgV2+NGzmJfODJts5BgKnyClsA386ibYOONqwcUNoPrsSUcqc5QjjvVRQrbKtAMmIIPNCK54tYvI2WPrNf/c58Mi2DKvvb6F73cyxDyIuN64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738581325; c=relaxed/simple;
	bh=T80w7BkG2m6vIvdm6mq3B3WVt4JOXOwX+Qh6CYQEdqg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QJNjmuqvj2hM4KCDn5z6BO9kUtfGh4Ge6RU8CVsMmJIQS2jtdiwW6GYvnOgrPfX2zGQZcK7MYLyQ54Phayd6nQX9WfqrTJSBw6W/MR9Y7j8RWEZ6gZehW1UTOhoZWjphyFxhn162y556UczpYNYppyM7EfbC3B6qVtjqp39drhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJ3ovVOT; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38bec08834dso302248f8f.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 03:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738581322; x=1739186122; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2I05FnXwePPK2x14MUovWBwSWvEf3brju7YBi1Uiv0M=;
        b=aJ3ovVOTY3UJlH8UbrnKwwm+jWATTC/JOCJ/LxEEKYyvk2geGDJThu4uWdRrFE0B2p
         TLHCPf28AZvYRUN23UR94l7aTeFNXUgh+UnlCkqAcMpl1+6NIKQUxKAKVTylw92APWm3
         vmfdaR9O8JOySWfchVz7jN7Rv66Knfhkjoy8w20/udN1rwxxPHMdlJoE0JoxzBsgNvcN
         GQAEmiDoOhNLhfzmWqLCuvY34anM5TA38/ikX/ONTCgfE9Mzn0AfJcZrBgfBjdXVjAfn
         rrWFSTFfo+VltjSJF9iooBExEDz6ljpzDENTQaku3JvlN0mvYuIJYAbErIFudyEYcMQf
         Sbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738581322; x=1739186122;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2I05FnXwePPK2x14MUovWBwSWvEf3brju7YBi1Uiv0M=;
        b=KaGZwZuYwKU4ZSS8i6R0v3xcS47eU3f+ZH1sTlKaJhxz3OikQrldHnYp+dZMr/i+hF
         /PZOr8JwFOLDovK3u/N1rIZihvq+GKT5LNNOEVIsybvEbthLgdRHC4Agw4q1do9y+o5U
         9kCNVtnS+JXF51jlWYrmVJovbxgjy7A2P3HmdNQyyhlLNvlI+qZiOUi0tCTGrX+iljLG
         MZVqMlJLwSPfa606zSBpgbXZfy7UkwAfkGXJKv1d43lsxt267Qz2IfgWU3sO4GDGpQ1p
         7s7cni3lBhmMNEsouzVxxKoS54izDyl+NI7OMbHVzbCzYxv9qF2qTKyPU66lWO2aOZEQ
         qXfg==
X-Forwarded-Encrypted: i=1; AJvYcCXRwvwBxs3li0XQbQ+6BskuEpg8bojwQr9sF/cjiFpBAeKX7po1VpsRYRYs0Eb9UaTYHrNy3yp6l/mU@vger.kernel.org
X-Gm-Message-State: AOJu0YywEQMfFTZXWr8gHa9FsxsXjquDa+BRbW8nWKc/hnzcnjwIAWjF
	6Z8Rq10AwfUYQgGjlk4thMSY7FtD3C3DDiitsMy404/nt3b0X1WQOaPfStetD0o=
X-Gm-Gg: ASbGncs3M5BM+CxlSqEZ7w01cE3LVPhSot0gQfv73PHrtE6reF4ihCpoDwlETbkfFlS
	sSvoVbhuySWR58YjDqYeL0T8dnDKtVO6DIChRVFzwlslBy5ef5uifnMo6BwwypHH6TPVuYxeV2h
	3IUkyb/ZY5kwQR8CtHKsWLUsTrj0DuuutRpNV4p8gLSNIuJbNuRap4JaPgUIhkrFPUl52h3pzPA
	FNVNV9cGKJKQaA/xl3kD8WLD1iIX7JzQr0Ruc/9Wdqu/TI1Tab47qW0KUpTUswJBX6aUbvwcrr7
	eilrp7lFwHIaV8k19pf0PXpO2l+eF6s+TBY=
X-Google-Smtp-Source: AGHT+IEqTdJ3vMl7WdQXK311XZpu1rz8QDwYH5G0N6B8sqD73wjRm+XqFyg9hzmD23ebvrJ1zla04Q==
X-Received: by 2002:a05:6000:4a0f:b0:38c:28d0:7517 with SMTP id ffacd0b85a97d-38c5195cd12mr6052541f8f.6.1738581322237;
        Mon, 03 Feb 2025 03:15:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438e23e6860sm151085645e9.20.2025.02.03.03.15.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 03:15:21 -0800 (PST)
Message-ID: <cdae10e0-5580-4152-84b3-8552ebf87b63@linaro.org>
Date: Mon, 3 Feb 2025 12:15:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: firmware: stratix10: Convert to
 json-schema
To: Mahesh Rao <mahesh.rao@intel.com>, Rob Herring <robh@kernel.org>
Cc: Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
 Tom Rix <trix@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Wu Hao <hao.wu@intel.com>, Ho Yin <adrian.ho.yin.ng@altera.com>,
 Niravkumar L Rabara <nirav.rabara@altera.com>, linux-fpga@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mahesh Rao <mahesh.rao@altera.com>
References: <20250131-socfpga_sip_svc_misc-v2-0-eeed4ebc35f9@intel.com>
 <20250131-socfpga_sip_svc_misc-v2-2-eeed4ebc35f9@intel.com>
 <20250131152636.GA3454395-robh@kernel.org>
 <48c715c2-64ac-4e24-973c-515c8814ea07@intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <48c715c2-64ac-4e24-973c-515c8814ea07@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 03/02/2025 11:42, Mahesh Rao wrote:
> OK, will add the change.
>>> +  memory-region:
>>> +    maxItems: 1
>>> +    description:
>>> +      phandle to a reserved memory region for the service layer driver to
>>> +      communicate with the secure device manager. For more details see
>>> +      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt.
>> Please read what that file says.
> 
> reserved-memory is moved to dtschema, shall I change this to the following?
> 
> memory-region:
>      maxItems: 1
>      description:
>        Phandle to a reserved memory region for the service layer driver to
>        communicate with the secure device manager.
>        (See reserved-memory in dtschema project.)
> 
> Is this what is required?

Drop:
"Phandle to a"
"(See reserved-memory in dtschema project.)"

They are redundant, because this cannot be anything else than phandle
and there is no need to say where each property is. You don't add such
statement about clocks, interrupts, reg or compatible, so no need for
memory-region.

Removal makes the description actually nicely compact and accurate. Just
how efficient text and code should be.


Best regards,
Krzysztof

