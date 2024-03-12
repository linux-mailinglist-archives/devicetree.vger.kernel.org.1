Return-Path: <devicetree+bounces-50095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63718798C7
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 17:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 435E62831BD
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 16:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9AA7CF29;
	Tue, 12 Mar 2024 16:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RbqLxMnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10C557318
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 16:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710260277; cv=none; b=hY9nhwLv6F9i2jFHrV9vf1x9BEn8P5nXWRwlZGjF4qTAT67WvyhnMSPB7MJcAnVjyPPyYz3TYbljQuNb91Rg8RG428Ncx2olS4H66oCfW096YeJsG7XPq/NKFYn2PX8Sy40bCqsnXfh60msjfzII06iVrpJA1ZRy4YavCNk4Ymk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710260277; c=relaxed/simple;
	bh=puwGsRCxFi11DwK8T54DXLlBOi0M0mCHDblRzoXdv/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=qV2YDpfgCY5crPtDMDf1uv/QHyycLiAp3hPTPv/SQh90iDdVjoBYgJnlQrD2H2LPNdhK18cp7CsES6tcWupHtv3vjMff8MUrcoUrb9Dbt21p/tzFzzQoyPyGgzt6vQR3rq84oZXwc/CwJrBid9dIasK5oRbWjwspHOKdoK3x3OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RbqLxMnT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-413328344acso7604645e9.3
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 09:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710260274; x=1710865074; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aEFJ5wwsPRgYLJ/zls1RTW6GGXMQul4o1BjDTwcDMHs=;
        b=RbqLxMnTbSkTrjn00dLArkotKn+fOP1XjdPV3JGBvZPZLedP5DkTPCbkL+a9NCJfuT
         /U5Li7Cf7lGHE5VdC9YbiPpTCxoJAViMy46NrnwIjDoPKd9hL3wmB7fvsvyKgnV2DAFv
         qfAN3e+Lp8c+0SQuqfJ52HOcUYhpjc/lS9AXpZ7e+0paplM9LgP5sfjm2Gw0rutA+89b
         524qOmVzCLL+SDIMVI/L+vba6q8aX55huOcyxExFdrE/zB9stJpND64Wa8Glv6HWgRFM
         H15Hwq8nc3bQVNaV8dPtThPx4aTkDIBtBmJ+aSZxuY5RgINJXlT45gogJ31ywfdUWbHn
         1C5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710260274; x=1710865074;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aEFJ5wwsPRgYLJ/zls1RTW6GGXMQul4o1BjDTwcDMHs=;
        b=PZwJRFJc4ufYssezErtOR+bj2vGkbOArlfX3TYnugB3KGa5FCIdNTDPnsI+Geduy7Z
         91Sn+SXt7G8WTa0mjnViLrCPVwU+8LLo0YQ/uWQVqkE6COUg4ylqNVoaNUuYrla7aJZ4
         1SuHepiZHNNraOVquoELB/u/7oNZG7Rcb4PdRoymxl878l+l2je+6rYGl4SpS4+qe8gn
         qRg3C3FLIPz0TmMWME2gsuoNUouB5r/3uKfPv73c4huq7JGFNrrKEO8QOxf3YchLS55w
         cMRjlOseqZAfP1qSR5U5ZB5/pxlza7xu23jCETaU6CCxlZqE1rVUG9coWJcKLo/zvvQy
         Ay8A==
X-Forwarded-Encrypted: i=1; AJvYcCXglUczbl5SsdxTGMpZxMEou1FpadcUP9aKsno+afboQ3HMhrcAcz7GZjabM7O6ZY9EHttu02K0nWWP7fX85bVxPUSA0LzHEK+xtg==
X-Gm-Message-State: AOJu0YxqEuUo03NJFsxq7PZYiDVS1pCrTHAaegRn8zOteE4LQrwm2jq5
	2Jvmsh4PUihwPWrrlvpp3T3ooJJxAHtYbZQGntx8p8Z4U99g5UQjoSzVL8YGJVMYrPQuO+B7mXJ
	n
X-Google-Smtp-Source: AGHT+IE8FeFJIEhLQhMGEdXZ+7zYdUNyxJ/R+YxA4bnqkHsvm9Y/GIeMqK7/zxH2QMk8zU8ppy9Twg==
X-Received: by 2002:a05:6000:1cd0:b0:33e:76a1:d031 with SMTP id bf16-20020a0560001cd000b0033e76a1d031mr5339992wrb.50.1710260273815;
        Tue, 12 Mar 2024 09:17:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id h17-20020adf9cd1000000b0033e97f3a479sm4934469wre.19.2024.03.12.09.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 09:17:53 -0700 (PDT)
Message-ID: <cd4fb265-8788-4309-9d9e-9676d76c1fe8@linaro.org>
Date: Tue, 12 Mar 2024 17:17:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] dt-bindings: dma: Added bcm2711-dma
Content-Language: en-US
To: Andrea della Porta <andrea.porta@suse.com>, Vinod Koul
 <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>,
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dave.stevenson@raspberrypi.com
References: <cover.1710226514.git.andrea.porta@suse.com>
 <346611b3ec6f47cb10e538d6cbe52056f535f965.1710226514.git.andrea.porta@suse.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <346611b3ec6f47cb10e538d6cbe52056f535f965.1710226514.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/03/2024 10:12, Andrea della Porta wrote:
> Add BCM2711 dma engine compatible.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---
>  Documentation/devicetree/bindings/dma/brcm,bcm2835-dma.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/brcm,bcm2835-dma.yaml b/Documentation/devicetree/bindings/dma/brcm,bcm2835-dma.yaml
> index c9b9a5490826..4271a6fedf54 100644
> --- a/Documentation/devicetree/bindings/dma/brcm,bcm2835-dma.yaml
> +++ b/Documentation/devicetree/bindings/dma/brcm,bcm2835-dma.yaml
> @@ -20,7 +20,9 @@ allOf:
>  
>  properties:
>    compatible:
> -    const: brcm,bcm2835-dma
> +    enum:
> +      - brcm,bcm2835-dma
> +      - brcm,bcm2711-dma

Please keep the entries alphabetically sorted. Probably same comment
applies to your driver device ID table.

With sorting fixed:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


