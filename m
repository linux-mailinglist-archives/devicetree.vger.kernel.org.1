Return-Path: <devicetree+bounces-52628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5353F887828
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 11:57:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCF39B217AE
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 10:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D6F12E6C;
	Sat, 23 Mar 2024 10:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJcwOCRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F512E4E
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 10:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711191417; cv=none; b=qFgj/qlgvtip5K48IyPPiritCK8twcAVSP+t/3Or1vSPVO5qGI+hjvd1M3r8/Ni/WtcwEXUlcaiIEW7Ln1k0WbPZ/zLmNzmciwtAZb5StoC8fhjbRENKzcrr6W48s8esjLsTzXFdhyueLBUUUxj6cVDElVl9oolpaT3AIp0b0A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711191417; c=relaxed/simple;
	bh=VIbLes27jEf6JgKHt/toUQiJfAIhjL2eEIUnni/VzOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WL+jY5utMsmA095pVcEcFGtB+DcB9yMyUTmoFublZBMfb4L0TDTU7Nmqn0hfDq7tw14EcHJLwXMLqW2sF+ikSNp0cR+Pxeaz32PbEwVlXmg0OVjFJn/RP6bMH7Zeoi8FfgAF0ONsTzgDEyF9wl7Jit/T+eOUHf30wdN/U4Vj9e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJcwOCRN; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a46f0da1b4fso378099766b.2
        for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 03:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711191414; x=1711796214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6qH44GpyQ2Dg0uH2aL2PD4YJ+8tvrIK4vagX1Nu+PVY=;
        b=oJcwOCRNhCbhbFuY38MXrqu6vj/xUYzGrHy8U6rHF0NIiLQjqm9pwt1vihligSD+Q2
         1qSZ8LoM5OwR8q6bWeOTEHeM0fpsI4ppaEQAdlcBCLFE5+y63PTjDJGPyGCBIrZfMV9w
         lgjlObwq+Kvtv8KcLOlcd7XOhgL7T15leVbIqDl9zAh9SmQZVDe4ha2x5M6fwuusd2oe
         T/6Z0nT4KHoHS0DPOznh4RcPMbNJ4qZ+n7yZRmXPj4r6+iLHds3HHgcVJqdBXtPp7nSs
         bT/TfCz25n+3ElQ92EqTPyWRYvUcWVzr7imwW5gFOE8ypoVKn3B5JepM14orNSVDmgxL
         5RFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711191414; x=1711796214;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qH44GpyQ2Dg0uH2aL2PD4YJ+8tvrIK4vagX1Nu+PVY=;
        b=wJpDBr97AZU16Ad/m0ZHfLGozppWJmoF+4kDJ3apElfGUDcUldLxKGpedQ1K5q2qAl
         epD3XJEbFedrOkUBPO0/Zq7SPPY1BBesUvtP9gBzkyScutaRSiQMb+QI0CIKVVZ60nnS
         IcfSn3XGyVP3TWmor9SFOkSFwnHhi/Y4rHBS//RgIygC74lKCU61H5WJ8xbmJMbDCNd3
         vcdxhfIXFD6yT6ermxqIV026LkZLtvm1U4Ba8HAsXNkS/j6d5wGG6latXckN4nHRPbBw
         0l1cI9Fjt+1P+yBLiQEFLFf4Pq6+jUFI4r/EHivavqdVndqiiM3JvgmoVzlCP4Wu8k17
         Psng==
X-Forwarded-Encrypted: i=1; AJvYcCWwwkoz985z6UxmM6rTsu6+F+KQs2huYaUVlY3UC6CmELk9pfMIc4LcnNHZDLNlkI/BDD367W0LTicgEqFI9QRJTvmZdk4GCzINLw==
X-Gm-Message-State: AOJu0YznnXFVpnYB56N+rnPCdNUjJqX/vZZK8OU+vHbUYSd6qOSC0XZ4
	X/P02bXRSPMrk1KOBCxEGBkQ48XI6biLx9NsNAOzgTY49KWrqfBEqGyZzmlcQ6w=
X-Google-Smtp-Source: AGHT+IG63vyL6z9bDMXxeqqWG7+SobFku2bTTks4vtGbGTq5M25d0VdGa3mPoDK2Lx3O7hKiLKvhYQ==
X-Received: by 2002:a17:906:528c:b0:a46:5d40:eb97 with SMTP id c12-20020a170906528c00b00a465d40eb97mr1409296ejm.70.1711191414450;
        Sat, 23 Mar 2024 03:56:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id h13-20020a1709063c0d00b00a472688a9ffsm782954ejg.219.2024.03.23.03.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 03:56:53 -0700 (PDT)
Message-ID: <a4bcfc72-5b81-4460-9bd1-fbb3e0cb1ec0@linaro.org>
Date: Sat, 23 Mar 2024 11:56:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: add LED_FUNCTION_MOBILE for
 mobile network
To: INAGAKI Hiroshi <musashino.open@gmail.com>, pavel@ucw.cz, lee@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>
References: <20240323074326.1428-1-musashino.open@gmail.com>
 <20240323074326.1428-2-musashino.open@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240323074326.1428-2-musashino.open@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/03/2024 08:36, INAGAKI Hiroshi wrote:
> Add LED_FUNCTION_MOBILE for LEDs that indicate status of mobile network
> connection. This is useful to distinguish those LEDs from LEDs that
> indicates status of wired "wan" connection.
> 
> example (on stock fw):
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


