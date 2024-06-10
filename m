Return-Path: <devicetree+bounces-74092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCE8901F15
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 282E6284BD5
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 10:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8659E77F2F;
	Mon, 10 Jun 2024 10:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UwrvYW4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6AA74077
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718014698; cv=none; b=TcBcZQBvSowCasOZHsH+7zBHyqzSkF4nETRzjs4oQCTQ6vMHBR4Cv0u4GDMWIHbzIbieZacSqU5pY2nIfiow+YfkNkeAKYbIbEO5Dp4cSwvO2zynEhUbjK+slKxXvhH9HFEzkpECxn7WU8n3YO9HhPZB7n+w9t3LVzQY9AepHFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718014698; c=relaxed/simple;
	bh=bU0QRfMdxvxnL9Pf3HaFUEYdRMEntUbq+rb/+m2ioBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jKBOyXq0PVKwctqPnm0qtlpWu9IC866RWiPT4mvZWmmfc/RZ5Uhe0/RYU0V05omBJGJbDcrUC1hT3A7Mn3TimlB5Yt/ICHjrBKHN7MSuJ91Qb1dNw0i+yKpgUbExwwwnZKW6Nmt53rJXT2EqdcrmlgmIrwQ7QYYx8X+0ulEqOD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UwrvYW4Y; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42172ed3597so15548625e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 03:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718014695; x=1718619495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kZRNFShDdxZxS3Em6K9Vt2yxmOJifwD8f2zwVfTplMo=;
        b=UwrvYW4YyxQPOuCoSX43LgqnQAL+EAzuazpE/xY61oLeAZ2ZIi6xtQibO4OabQX4zM
         eUAg/pxLUnHVtpqCphJD5eVaPyZ6PcnUzaScKlU4GjwSMaKFgaANbhdDTk6Wj2WXr4Br
         Lacal3aSvDMlmCht+MSiahmafPZPJ9XK24mp9kmjLX4F5v25awnVF7vJtUGNMJ1b62H4
         33h16BupToQwiQvFsZoKT4N9gZgOPJSIYUW1RZJhJOLUSnMERSvEn06LooO6qAWbcvzG
         meWyFRFAc4NTLuKQZxx753CKN5AHzLQfPaBU4G19h0MMf07NSXJT9sYHqGiIjB34Slo+
         BkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718014695; x=1718619495;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kZRNFShDdxZxS3Em6K9Vt2yxmOJifwD8f2zwVfTplMo=;
        b=VAf6cVRjyCuydcEMXOXbWc1pU47nY4ZD1H6FTnWxMinnGdzG/AnLhF8T+6aE7p/WxB
         H7bC9rTPYaYjbjx1COWPGJx03RgEk05+CMchqxl7/2sxaFHyw8gjtTY3U/VlYbgN5CY3
         T3iWyNiTpsUyIdNEQ6yH2HzByy1f0AsN9aR+ONujGsIHhoqg/xTtZiCFR0qvPErqgZJG
         uHuUZyd61BTrdKt3KGSOspOGMr4lyySnb87381SHCDAeiD3PHOOIIyb4Ww6+FLZ5TUtv
         Ca1AE/4Lt1fsFn5nC59tZSqoyPXun3U636dK7BiJMlmaLVf/PrQtMujINrk2OfbK7BZP
         eRgw==
X-Forwarded-Encrypted: i=1; AJvYcCW/fJIB051UB096k+8J+qfzwF3pBjVBnOb7OsZ2CH52GwoMnO8oq3rZaVIwcV7B5YaelDwBr3u79I0UI/9p9Jm2KCluvsNDcclhNQ==
X-Gm-Message-State: AOJu0YzbqVuqKioitKZLZ0QhSAdXJaLutxvquwl6+zgh4SJaJbxkIrF8
	ZNgRZv0tDGYLF/Li2Oge+UWazlUkh38vDG3VezqIA8B7wxcP+MzQHr7tfkNed08=
X-Google-Smtp-Source: AGHT+IGM/nuz7hCKAXXBKt2yTlHsvTlSPhw+ji5Stjs/FSX3udKvi9sWt/QUB6qH2Q/4H8ME6c0Zzw==
X-Received: by 2002:a05:600c:1c16:b0:421:805f:ab3c with SMTP id 5b1f17b1804b1-421805faeecmr42591635e9.14.1718014695145;
        Mon, 10 Jun 2024 03:18:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42211c7b680sm9872755e9.45.2024.06.10.03.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jun 2024 03:18:14 -0700 (PDT)
Message-ID: <e9a44b0b-1930-42fa-ab5e-a7eac1470041@linaro.org>
Date: Mon, 10 Jun 2024 12:18:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: media: add mediatek ISP3.0 sensor
 interface
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julien Stephan <jstephan@baylibre.com>, Louis Kuo
 <louis.kuo@mediatek.com>, Phi-Bang Nguyen <pnguyen@baylibre.com>,
 Andy Hsieh <andy.hsieh@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Florian Sylvestre <fsylvestre@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Paul Elder <paul.elder@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>
References: <20240110141443.364655-1-jstephan@baylibre.com>
 <20240110141443.364655-2-jstephan@baylibre.com>
 <e0bf8667-cbb8-49ba-bb44-3edf93b019b8@linaro.org>
 <CAEHHSvYt-aqFahi=B_si=duJH8xDgy_9nndgR-P0+U5THX69uw@mail.gmail.com>
 <20240607144154.GD18479@pendragon.ideasonboard.com>
 <cf49fbb3-9de6-4e57-bc38-d720f76118a7@linaro.org>
 <20240610085424.GH26663@pendragon.ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240610085424.GH26663@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/06/2024 10:54, Laurent Pinchart wrote:
>>
>>> There's also the camsv IP in the same series that needs a generic name.
>>> I really don't know what to propose for it. Could you recommend
>>> something that would make you happy ?
>>
>> Sorry,that's almost half year old thread. Not present in my inbox.
> 
> I remember someone presenting a talk titled "Beginner Linux kernel
> maintainer's toolbox" in Prague last year. The talk mentioned a tool
> call b4. I highly recommend it ;-)

Wouldn't solve it. I would need to download the thread and import to
mailbox (several clicks needed) or open in some other tool just to see
the email. Or find it on lore.kernel.org - anyway just not convenient.

Best regards,
Krzysztof


