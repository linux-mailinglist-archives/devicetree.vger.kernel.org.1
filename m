Return-Path: <devicetree+bounces-61961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CEB8AF3F9
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 18:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E86861C23BE9
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 16:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B3B11420BB;
	Tue, 23 Apr 2024 16:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z25gk13B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0806913D506
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 16:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713889485; cv=none; b=X8P+i/La+pihfujgcrA6TgMlrDQfzBeX3uVQ5HEms/frUXk2VX34WfKmtl3tQecdfY8QNYbxZMA28mnHJ1l2irML+6Q+FpW/XLmKDDI832GKeIBRFldShXamyq61y+HNNpvmkfub8GiVPrVm/a+FvoBcCV5J1zCoOiumdXHpfSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713889485; c=relaxed/simple;
	bh=nMKR1OXDh8uCh6abbAyeChszOoYX3SIBRNUDEpCnZJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=laQco9RLbRMN6mcn/WRQ3sfUXHybOAqkGXKKtCurWVSWYeajieni4qYeQ2vy9YGbk6ZQ6iBS9+ZoHJAzPb6hGGzri+kbakwEgHO20bI+wrSI9mK4wSlbVs3FMcqbytGWiNqKeI7S+AWHjhUEUnjcLpD/r958+mtNNmxD0CUZ5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z25gk13B; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-34b3374ae22so2044204f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713889481; x=1714494281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=e5NYtG6T0phEhzR89Dwb5uY89BKZqhxFNHYzmhXBBjU=;
        b=Z25gk13BycCubkW2aNc7YwFIO8vehFbvF6JEqADHnr3V0tUJxaWqWJUewOES0HcrIx
         K4LnB+dbnjKFIlRTrL6OtefWxpLuOzDvUd7bAtbzPlgc/7ytYjI5cGfk4rN99j2JUiNn
         Ujfk28O+DhdHOWFuYLFoHQE3Lp6RKFyJMzh4g25ytlD1yI7iLvDH7gQr9d7Alj8kbrli
         x3xMeN2r807t1wN0/WWtENJFxMiZ+RJMK+bSplvDSKDEZmlEZFN/BKx03u/Ob7oXuE4x
         3MFCJ8+SFAGCj6hmvWEkpm1j8DTIY9GdoWi7vj9uj2z8ATuwDVwCffNPrdZOFTtXlhB1
         7LMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713889481; x=1714494281;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e5NYtG6T0phEhzR89Dwb5uY89BKZqhxFNHYzmhXBBjU=;
        b=iakza0BPFxr250ep+8AJVs0sh6anX3ipXhEP1dVdq9YayEAGx1YmtTIlSu/0VvDf8v
         evTgkbnqyHMcjhnVxgjM2x2BIR8td98J3h02idHcujOHDDtESg8s/9Do5LaQDIX99jCK
         Va5MLKAT5iFPDosCGlyJPNmgki6AQW3Vq3rn/aU6C/ohrMW1yMgaMZ1vpBCFauahJ+oU
         HZcaTB/XEltMEdWd/sFsdUT6wB1kIQ5vwpw/pg91OMenvhll1EWteFKeu+bxs4h9ZeNB
         7WDc7VBtQFY4+qvPQAbtqN0t5EmUD3XHeFE/YEDlct2ITtAzAvbDoH+6PuGSPmcd70FV
         Icdg==
X-Forwarded-Encrypted: i=1; AJvYcCVTwrsF5/bApwqa+a0J/SI7qCBoaIpGt50PmLW7WH2cjux+6DC1RyRdppd5x0HX3XxX7O8KV2hrPHQdC1JyYXsMx+bv6R7zoT4qbA==
X-Gm-Message-State: AOJu0YwutwbYFYRh+4KxUjoonGwPiAAIOxtWVe997kR/9y/la3CE/Zev
	MQhQjButgsQ9MwNyXi71JCln+d6N7jI5RvHVp4INPIDFbluuyXg4kT/3lO33uxw=
X-Google-Smtp-Source: AGHT+IE0kDYNK5cdmgVSGMVcO42sLrbBXbj0okxZEe5JhrhK39yNNupVFUgyG9+PIaD8Io0Hr0eFnQ==
X-Received: by 2002:a5d:4ec1:0:b0:34a:e798:29fc with SMTP id s1-20020a5d4ec1000000b0034ae79829fcmr6891431wrv.52.1713889481235;
        Tue, 23 Apr 2024 09:24:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id w17-20020a5d6811000000b0034a2ba13588sm13871664wru.42.2024.04.23.09.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 09:24:40 -0700 (PDT)
Message-ID: <1dc47644-56c9-4fdc-80cf-756cf4cea54c@linaro.org>
Date: Tue, 23 Apr 2024 18:24:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: HID: i2c-hid: elan: add Elan eKTH5015M
To: Johan Hovold <johan+linaro@kernel.org>, Jiri Kosina <jikos@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240423134611.31979-1-johan+linaro@kernel.org>
 <20240423134611.31979-3-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240423134611.31979-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/04/2024 15:46, Johan Hovold wrote:
> Add a compatible string for the Elan eKTH5015M touch controller.
> 
> Judging from the current binding and commit bd3cba00dcc6 ("HID: i2c-hid:
> elan: Add support for Elan eKTH6915 i2c-hid touchscreens"), eKTH5015M
> appears to be compatible with eKTH6915. Notably the power-on sequence is
> the same.
> 
> While at it, drop a redundant label from the example.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/input/elan,ekth6915.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> index 3e2d216c6432..c3a6f901ff45 100644
> --- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> +++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> @@ -18,8 +18,13 @@ allOf:
>  
>  properties:
>    compatible:
> -    items:
> -      - const: elan,ekth6915
> +    oneOf:
> +      - items:
> +          - enum:
> +              - elan,ekth5015m
> +          - const: elan,ekth6915
> +      - items:

Don't re-add the items for this entry. Just const.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


