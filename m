Return-Path: <devicetree+bounces-169073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A87A95689
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 21:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 843E718898E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3361EDA3E;
	Mon, 21 Apr 2025 19:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="L1+m4H5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEAD1EC006
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745262683; cv=none; b=bzInQzB8936o7zIzLisE7OSswKMJ+ZG2MLoh8SxrPdi8ZiLn3eOj7XOkP2t5wWVKkDQHVnA+w0D2siAxjRAC7zQoNQ4Kqnk5ao1NxfWKQmsdtzKyBmpW+qjIkJ32DMPMmCG/n2K5FgwCaMEV+JDfdicmuNIXKYugTnIGju5McDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745262683; c=relaxed/simple;
	bh=8PYakAlyro5zJa4mSrGo6B1JdD1Wy5Jt8irra5IfyBI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mVeZApy8sg678OsWFFuveZ1bAAdD6iUqAiJcCUHM1iNrD/RRnlACfUowSwrssveWewdePAXSJczFOtNcLjGKuf1yb0wuyvwH9S3itW2GUNO0gws16ASs0Yah6pToEU6DERpr4Of5UTycSsXgxRUeWG3qhkmBBtH/qAmyo3y/+ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=L1+m4H5Q; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4766cb762b6so44001451cf.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 12:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745262677; x=1745867477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wxyUs0OyB6PY4ktlF6VOi53xW7dyCbW5pgQaVkoPnVQ=;
        b=L1+m4H5QksqPuVnjhjlNhPJVN3ad9fnKtt5TCKCop8dFcFBuzA62pasdgTVObmdyX7
         yZZD456fHjCEkh52E1sZ0mFxIvXCb9Nh06klOlxqj5WkKXWsKPHxhiqOPt7KOgIPO82i
         v94naqfOGXbHtK3NX0Zuix0hRIOHL/lDIAkQ5KKatO88At6yHhvkLWGBr+LGRl+9bYAL
         Cw1559TdbuXqxKeCR+FULzcPn34UdAUZP5Mr0J9CeyIWTWRTHbY3Gz4QaIkXAnnrvcwj
         MC+fkYsX2lXZSLocAVs9IETFnf3B1fQeUunc1/yTdxkM2fNpmaiM9hwWyhwVcGAGaQIz
         6WIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745262677; x=1745867477;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wxyUs0OyB6PY4ktlF6VOi53xW7dyCbW5pgQaVkoPnVQ=;
        b=tPmqfPJl2qZE2jgP/OUQd7C2yaDazj7r1M1uk+0ysLkyAsZZ73YQmmx1BgjhdGvQxY
         BArSB3Kj0LD0bMChUWBu965B6WoWlJoBqXC2U5pwFxcduF34qF8pR029bNxUOYSvAdLQ
         1K2rI3iU4SOI+tchAOT0fdwSSZU7dOerlO2Cj2AMSALjPECvdKWaIDUDVDYS4CuTNUtH
         pGrg9Lh9fIQYWwt8plFfzOqBini7EgSCBwmowdCZ4I9OmxkcZaL7Tl8C3Ro29Lgr3eZC
         54EaABgBVGOQ/pQqSWkYTeXDewTQYZasCzh7ZibiXwO7A5ZcoWwiBDwDh2YvhUMj32bo
         b5Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVijakvKdqp2Phplp0p5SwN3A2McYId1PubGY+GtInIqp7zqlRXk2AOH1X52bXGlWSqA62S4JgGo4w7@vger.kernel.org
X-Gm-Message-State: AOJu0YyIFcIi++xXgb2LJ1cPG/n1aLHWPl9F3CL71Axzw4iH/JxMcQmE
	7flsKCA4VWjTV7yKraFa2T7QuPnP/dESv8aNQkcF7q+1dZn1mc1Ps8pgAyH7OpM=
X-Gm-Gg: ASbGncuKi4+eHFzImV9zboluGv/MQPqoHzbNMX6z1tyQ/l9P/aNp6e2CjyBupqmimQt
	M1RT/fhUnPdyPuvLsQB/LODqNA0rLDOpPLqWxPD5R6KC/sbzf0xQbXijWuH0+15R2m8yrcx3CB8
	Xj3wNgMXJ14SaX8qCyYisfT4i6OfWdRosEO7CEfREw6KeCVnBElLZTsOnL49slrOScL6CT5UofU
	EAShXUyuWdzI3NoMQHbVhbKbrhXZ902bpOEHjAVpKp0773PzjixlXH+K7JLMzQPpDNoeefZbDYh
	9PRLTutrn9jgdmoyKPdjOs8OZT6f6eLE9rogqGZAir3Jnam2ymo8/RsmQEZL82kkYvQNbyUdoQx
	e6THC
X-Google-Smtp-Source: AGHT+IE8DZnLBNjUXN98eE0o/f4gMGDTtMaO/BL+aNlsPXo+fPOuUfQ1NdNuqmT1zTZSez0uNY8scA==
X-Received: by 2002:a05:622a:1c19:b0:477:84f5:a0b with SMTP id d75a77b69052e-47ae96515c1mr236320951cf.2.1745262677629;
        Mon, 21 Apr 2025 12:11:17 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9c188a8sm45206481cf.8.2025.04.21.12.11.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Apr 2025 12:11:17 -0700 (PDT)
Message-ID: <8e7cdada-6623-41ee-8839-b6db1d24050f@riscstar.com>
Date: Mon, 21 Apr 2025 14:11:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: spacemit: add clock and
 reset property
To: Yixun Lan <dlan@gentoo.org>, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250416-02-k1-pinctrl-clk-v2-0-2b5fcbd4183c@gentoo.org>
 <20250416-02-k1-pinctrl-clk-v2-1-2b5fcbd4183c@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250416-02-k1-pinctrl-clk-v2-1-2b5fcbd4183c@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/15/25 7:15 PM, Yixun Lan wrote:
> SpacemiT K1 SoC's pinctrl controller requires two clocks in order
> to work properly, also has one reset line from hardware perspective.

You mention the reset line here but that isn't implemented
by this patch (or the next).

I assume the reset series will be merged soon, and if that's
the case, maybe you can add two more patches to incorporate
that in the next version of this series.

Other than the description, this looks good to me.  You'll
want one of the DT maintainers to sign off, though.

					-Alex

> 
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---
>   .../bindings/pinctrl/spacemit,k1-pinctrl.yaml          | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> index b01ecd83b71b5e9f47256adde23bc8b183bef05e..d80e88aa07b45f4a3d90e8217caf93d32655927d 100644
> --- a/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/spacemit,k1-pinctrl.yaml
> @@ -17,6 +17,19 @@ properties:
>       items:
>         - description: pinctrl io memory base
>   
> +  clocks:
> +    items:
> +      - description: Functional Clock
> +      - description: Bus Clock
> +
> +  clock-names:
> +    items:
> +      - const: func
> +      - const: bus
> +
> +  resets:
> +    maxItems: 1
> +
>   patternProperties:
>     '-cfg$':
>       type: object
> @@ -94,6 +107,8 @@ patternProperties:
>   required:
>     - compatible
>     - reg
> +  - clocks
> +  - clock-names
>   
>   additionalProperties: false
>   
> @@ -108,6 +123,9 @@ examples:
>           pinctrl@d401e000 {
>               compatible = "spacemit,k1-pinctrl";
>               reg = <0x0 0xd401e000 0x0 0x400>;
> +            clocks = <&syscon_apbc 42>,
> +                     <&syscon_apbc 94>;
> +            clock-names = "func", "bus";
>   
>               uart0_2_cfg: uart0-2-cfg {
>                   uart0-2-pins {
> 


