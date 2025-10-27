Return-Path: <devicetree+bounces-231455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D461CC0D4E8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C918F4071BE
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAEA2FFFB6;
	Mon, 27 Oct 2025 11:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hz/nCLCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09472FFF9D
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565662; cv=none; b=iJE9AYGra1hYYP+pKLhw2B0KvPnILQIKe4wToWgvJvi7UjW1o39K+NojVddwEUCs5s4gqIPhclumpb/U8jvZ4ciObzG5HckWgJbBR6xGrR/3yWdyEsEhw1OuTTgDCBkE57QTWUUAA0iAaIlEd2tp4Gk00yeGlUT/r3eGU1lCWH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565662; c=relaxed/simple;
	bh=gjeT9bDglpMQa+8nRsoJxSuRqqUVmizcoxLrAXmV8+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XzM1x2z9fq9ojq1lPdMCeWyfefNynwpYOo0AyPUnHGaKvvDPJ2wdDUTO0+3GvWUvBH1a1DSJVb7NcM9aLDmnAMziSilepPJ7Se/+/ErN2p+PpsxNZcGIuXp2TKwMf5g0SMyyUowBeuVF13JH56TxCZqN15msd8o2tFmmeC1pVXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hz/nCLCj; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b403bb7843eso994666666b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761565659; x=1762170459; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3dA7DNOvN9+GRkIwpdijEck/U9WrX/wU0vswNS4MOK8=;
        b=hz/nCLCjb8cVkDdBsvQmfsVsf1H0QNjKHupBZireRSXDaaWw8RL4gxhNjF7d6MiE28
         QejjwBORYRjPUBS+IXODV8F3goVSl5MH25pRS6DOURubAxfW5+vTvudiR1CWVSaG3bmA
         avuZerX6U5tlvGNURadmzeJ8LjzGeffTemyGjX8pNunAjFaPrPoBQ5GDRaV0rUIlrHzc
         PKLf1vDuxM99xS9Y2bvjvkY5tgmrnoaoRJND/thFJ7yf8Y3sGjX6HzrqX+y4HRxRjd17
         5umJQGXfvR8ECGRVfsyFSb5M+R558LAC5De86WDWEkLSOY1iH2/hpdQFLdM9k4TQkBU/
         19iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761565659; x=1762170459;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3dA7DNOvN9+GRkIwpdijEck/U9WrX/wU0vswNS4MOK8=;
        b=lGh7XUhou5swHPSDQl1p4DLG6B9/52UVRegumuu7kAGvMokFjZE/aQ7Qq1rmy0mcfH
         GvG6/SQWPz9Rj5La1pOavhK/ZFgWhz5OSgG2WwZAWwj0+nH4m30/SZyaQ3R7Ul+51Qzf
         lrxRJUlueRhMngJFqawIB9vtOG9Qq0/df0zdbZ2T33eTF3T+rXMNDscmFjU9Csi6Ke2z
         C1S8KtPvBCbbJlMNgItWlOqTY4zvpIbpBcxk3RLl93ezZFKrTFKpg4Z3SG+141iF5T61
         HNeB06OENgS0VAHRHEK6QOMU6uBysNEgTnesRRIbTjY8nu+qP1AOlwoozPLyGq2XViYE
         2E9w==
X-Forwarded-Encrypted: i=1; AJvYcCU9tFn9oglnUe+ylV71OTGK4Y93OAbN/mt7CvKV6ZpmSXyhjtI/9jSYkekojoJ/l97LiTJf+268kBiJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/yG2M+uGaDrD5kY0S7CChg84hZbQ60oERU/tFvhDydsEJg2/d
	/bHqu+aAM1dOFW7674xzcIVx2d55BL+sTh4BOsatzjjo1skIE2uwPp/p
X-Gm-Gg: ASbGncvgqPqz9qalot4iBhAgWGBVH7vf4QHe1g6+KaMmXrtoT1vBEhJr2Wv+emqJcuC
	rKPVP2B7zwEOvt3fAnxVglNy+qEknA9BHor1MzHsmzOAbIu4zMJVw0xZerFBctoH0rs9zusNcoc
	BAnQIfqfKECJyKq2q+5HNhCjk87g00ny7ZRO+7mO1gLg/d2wSPIwjSCDhBYGswQTqtsTqfrtVFS
	W6Jtw9H4c9PK9k0jjfT/J1fgd0/R54h1K9eV/TGm/WHHSAgdhsX0UoKXZW5jjihZfA9nU5FMKiz
	IpZcZS4NaWCaK5z7yPRm3qhvFXfE6ffb/Ja/7zsSgqaLsfobmLb8aU6N+jjkoabjagml2/Pq7yv
	gMp0nZ+pPjf93QnvxbbTFNYpldovaVDVpjIX/a6JA6buFI0Fe+EtS59Q4aO0BV8uJXuNHRrIw2G
	s3W0TqyveLYG+NeuxYukgmbVtLIOG0xeDE301Kj4jKzAJ45oR05dNN76/oGyQNxqDJrkpQXM5vI
	rY4AIVp5hklNg==
X-Google-Smtp-Source: AGHT+IFy8Sej3CcOEkpdvrCVde08UILRMDmtaKTdqCDrNYAJ47XcANLENt/DJ4RukrNXPpjXNZXRqA==
X-Received: by 2002:a17:906:9c82:b0:b38:6689:b9fe with SMTP id a640c23a62f3a-b6471d45a01mr4021916866b.7.1761565658699;
        Mon, 27 Oct 2025 04:47:38 -0700 (PDT)
Received: from ?IPV6:2001:9e8:f10f:3501:4457:58fa:e678:17cf? ([2001:9e8:f10f:3501:4457:58fa:e678:17cf])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853c5bd8sm737774466b.38.2025.10.27.04.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:47:38 -0700 (PDT)
Message-ID: <70574ef0-6518-4320-b6f2-dee9e01b2cab@gmail.com>
Date: Mon, 27 Oct 2025 12:47:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-line-mux controller
Content-Language: en-US
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Peter Rosin <peda@axentia.se>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-gpio@vger.kernel.org
References: <20251026231754.2368904-1-jelonek.jonas@gmail.com>
 <20251026231754.2368904-2-jelonek.jonas@gmail.com>
 <176156516117.3074175.12049051744005094692.robh@kernel.org>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <176156516117.3074175.12049051744005094692.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 27.10.25 12:39, Rob Herring (Arm) wrote:
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml: gpio-line-mux-states: missing type definition
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: gpio-mux (gpio-mux): $nodename:0: 'gpio-mux' does not match '^mux-controller(@.*|-([0-9]|[1-9][0-9]+))?$'
> 	from schema $id: http://devicetree.org/schemas/mux/mux-controller.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:0: 0 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:1: 1 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:2: 3 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): mux-controls: [[1]] is not of type 'object'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpio/gpio-line-mux.example.dtb: sfp-p1 (sff,sfp): 'i2c-bus' is a required property
> 	from schema $id: http://devicetree.org/schemas/net/sff,sfp.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mux/gpio-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:0: 0 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mux/gpio-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:1: 1 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mux/gpio-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): gpio-line-mux-states:2: 2 is not of type 'string'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mux/gpio-mux.example.dtb: sfp-gpio-1 (gpio-line-mux): mux-controls: [[2]] is not of type 'object'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-line-mux.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mux/gpio-mux.example.dtb: sfp-p0 (sff,sfp): 'i2c-bus' is a required property
> 	from schema $id: http://devicetree.org/schemas/net/sff,sfp.yaml
>
sorry for these silly errors, I'll fix them in the next iteration.

Best,
Jonas

