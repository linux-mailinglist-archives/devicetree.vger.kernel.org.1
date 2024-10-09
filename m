Return-Path: <devicetree+bounces-109532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 848A4996B4C
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B62D01C248DD
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F941957E7;
	Wed,  9 Oct 2024 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KGo/OZ7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D3C18E038
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 13:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478973; cv=none; b=ALpVEzTxE9ITphWr/j4kaTUTvFqWg8MhH2cKjCDACinrubHbJ1b1srJIaLyuTz2eV1d+No/c2Fe0KQMp9W+Fvgt6u9KXXjpu4MccXKFLPV6ROMVj6PGIrDmLPm0eJwOjWD8zo1njMQMyOCoxqAiJPokkzEn2CjpvoVQpcOr66uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478973; c=relaxed/simple;
	bh=GjnPV5sOZgTZMm2KQG/PI/BeyRDCSFbmBjidp8mCRPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lTA0FlCeC4ShcCxOEplHkekxfnrgXDhUXCpPBq/ewzP8KT3nUNIo7t4xl8v1rmmo0UhDkJAFefxX+Fk5yC5K62RPmZFGhY0m5jP+AbYysjQUTN4wsZuQUG2MVFWXu1HEeLtBOzxrgycYoGqTriHPPBXG4WC+xKObUYZcZQa5IZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KGo/OZ7C; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fad15b3eeeso72865791fa.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 06:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728478970; x=1729083770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XQ4P68ZRxv+hHVO0lABXJo+8ycp2fDd9E94BHF6XTqI=;
        b=KGo/OZ7CeSkYNepRjkbja0zq7ynXI/m82wP2RCVicKaN3jIUkehf2Cw8AqOiqOW7ja
         b1+nTpNCYkCvkim+AB0qAy5qaCkXGzX8eeWWdkWeNSc8Q8tbiCN06pS+QXXTyepLwHu2
         WqL5zhbb0/d5NtEi+HLRoIbU/dqq8UHAFeL4HDpvrsUGWHtV6oV66jWzUwPTd4bWzz17
         uAsyb3y+rY1lF/0r2sIQwEd8sqpdyMOKQ79dG0PK9rMoan/QkPFuSF35D6F7ImqsOnFH
         j7KOb/ylNcaZwDqNWSm3MtiHA7mRhuSFmWTDn7vAxwwqlXdhjE+ms5GwQbIJ8YIgOj9N
         bn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478970; x=1729083770;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XQ4P68ZRxv+hHVO0lABXJo+8ycp2fDd9E94BHF6XTqI=;
        b=wh4uaNgrQr//DL/y+z/t4psna5QaP4VLRM6jhGiyy7+WTINBfFzb1WOo179aSFnIjD
         43S5/g+3EtPrYY9NPdwzDWtIf6d1pFo5rJafUIeAT4biCLyj+conmhnQi7zERxu+LzOO
         +pAdrbwaL3QkMKuakfPNyNNJ8hGxfgK3NMTfUhFWRkkYyyzGLD/GK/vrf72QrjFwzoxp
         kHzEBsfbswQm53+yss+9ko3D0xddoog8aCs0uFKGVGdhRrCFhCzH8Pr9/GZdTWLxiXVZ
         Nex4DpFGp7BWUVu3o/8iIb4E4OCmG9yqPmK1jtjWNsPb467tOIlIX9c4GLwMrRIAVOf7
         Bp0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqBXZ8dOUNs0DMyQUGEQsDNH3DbVcZMY8P2Q4FWj7AKQKUsMwjGaAeG9kGYhLPVK2QdGpgKk6wbdcs@vger.kernel.org
X-Gm-Message-State: AOJu0YzjF1tjF2DMhW3KA27k0SniXPLUWONRD+23p1v5uPQvgTE7kWOj
	XC/2u3K2QzujZwcWYelPvXC7n6MalHfPgcdRG0oaAHp33xqJZJYcTR9Xmu+peM4=
X-Google-Smtp-Source: AGHT+IELZkj89u1afBb7PSQ9wwNotzJkcSezbWUcteXtw7nUEW52WKbZA04/L2zb0pBTJV+mK2zu8Q==
X-Received: by 2002:a2e:d1a:0:b0:2fa:de13:5c2a with SMTP id 38308e7fff4ca-2fb187a1883mr12341611fa.25.1728478969628;
        Wed, 09 Oct 2024 06:02:49 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05c0dc1sm5461539a12.52.2024.10.09.06.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 06:02:49 -0700 (PDT)
Message-ID: <58958e05-882d-4866-809b-1daec897f59a@linaro.org>
Date: Wed, 9 Oct 2024 14:02:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jason Chen <jason.z.chen@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241005-b4-master-24-11-25-ov08x40-v5-0-5f1eb2e11036@linaro.org>
 <20241005-b4-master-24-11-25-ov08x40-v5-2-5f1eb2e11036@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241005-b4-master-24-11-25-ov08x40-v5-2-5f1eb2e11036@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/10/2024 11:31, Bryan O'Donoghue wrote:
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            oneOf:
> +              - items:
> +                  - const: 1
> +                  - const: 2
> +              - items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +        required:
> +          - data-lanes
> +          - link-frequencies

I had some offline discussion with Laurent about this since, the logical 
conclusion of this would be anything from 
schemas/media/video-interfaces.yaml# would be valid.

And I'll admit I looked @ upstream examples and copied/pasted which also 
implies that the upstream examples aren't correct.

So, I'll v6 this with

    properties:
      endpoint:
        $ref: /schemas/media/video-interfaces.yaml#
        _additionalProperties_: false

        properties:
          link-frequencies: true
          data-lanes:
            oneOf:
              - items:
                  - const: 1
                  - const: 2
              - items:
                  - const: 1
                  - const: 2
                  - const: 3
                  - const: 4

        required:
          - data-lanes
          - link-frequencies

and then change the relevant upstream examples of unevaluatedProperties: 
false to additionalProperties: false.

---
bod

