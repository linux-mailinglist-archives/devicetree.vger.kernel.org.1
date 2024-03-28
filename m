Return-Path: <devicetree+bounces-50308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D796887AEBD
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FA542843C4
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 18:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A20D671B2E;
	Wed, 13 Mar 2024 17:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCknBJRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D1070CD8
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 17:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710349355; cv=none; b=L1PxVFmN5cCXz0kz6B1eVJ+tlWP4lBPdIOlGj2TLUyMIUoc/HuH+HShLH/tNqCZAo0aaM1JmEmf7gCvL2JqmVWkDGZY7AeqGCCNvcl5hetuTPcRbqEE/zCnde9iaCPtPoBriupSHGkXLbGSdVe+gyWYrS5+0cTzHZHtZicYYNMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710349355; c=relaxed/simple;
	bh=gnWt97N0MWhBhJBOvY3xLCADK7jA5BPKqMqs0khz10M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aCAcpyKuuKYZ9eUOvfhuwbj+vlVlbF6BgQKwGOPFmWzO1muKbMvKjF5UGTD/6bdGYw2U502OxwE/bR2oczLpJTH33AFqqUI6QmT9RrlE6uJwLcwyfDaEXgybaAx/1E7w8vJQJeWalvF35ztyuCg6+tKee+byWJ7S7EUhxRJuU/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tCknBJRm; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-512b3b04995so86800e87.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710349351; x=1710954151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+9REqdyVJCPaxF/QFzZUI49fWh+vvq7XURXHwZ7KPgk=;
        b=tCknBJRmgtrJUfSWZ5IqU3IoAaCgI7ZfFcgWo4yJvHziTrKdw4znsNlujCw0dq9gRK
         sBaT/1v1GXPNrsNCU02w1vgcCO9vCjMxMtig411Fi2YcKYJU5SD+Nb+QQIhzPauBAdt3
         lyFjK3QGOCxkC5EUjVbnh8EZafbd5+ZT9kqp4A/sAHxsWJQRBXtae+Rp3ex2kHoxEJ+j
         /QXCNsoo4e7c7W0lbxMMLUXlGlPnXZQnG2b+6LAzI8RWsSIm+O0Mx2QQ7pRJP4OvIYze
         1/39QEDjqRlzlzigCkgC6HXOdAH9I6OVEvH01RCq4roOfRrlGP2TJk9g1wZzSoh/fWQ9
         6v3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710349351; x=1710954151;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+9REqdyVJCPaxF/QFzZUI49fWh+vvq7XURXHwZ7KPgk=;
        b=olOTpDgPaNvdWps68AmYpD1TbTOBlosqyXWaLolODz1gqR9ZyQp6xEIv3G3C6Bvn9B
         9pJS3GI+nf95mFzjEh3cJ51Y1c2zjJi7PfHAx/vMMzSKq4yfiNMPOARceCFH4r1gXsYj
         dTrp0U9t3rdFXeHZA9BqJ4oscZQiQn9tF+1PD1WMTmXcZRCUJAE5QNbKiL+RM7IVR/2h
         y7HOzvj9mb4ZACCAcnBS9WL9S1uK8myX3rU4F4UDcEQaPn+lan/kZRmc01YzN70xGtkb
         sIET5594vI4D1kcyDvghUD2lh3vKzU/d4Ndg/JIrpDTLWDUBqJ9TLigiyp3GpyLocfCX
         iWZA==
X-Forwarded-Encrypted: i=1; AJvYcCUGfNfzRa9iJre2zk2uWI350EG1rAS4n0UUYRXNMdXP+VHqKvDw/aBB7XP3hGlEiO1c/hsIBd1XyvHbMNav5FDHy95tAiA2PDCCmw==
X-Gm-Message-State: AOJu0YzcUs5L8NcIHhNpZCs7YSIYVJ5dMMOm3mfLZVOmEeeasw+6HYrX
	xdtTWdEGB9FMQpu1fWPUQxpGV33ppj83X3MZeV1tP9aGBDnArxLNj49Ku+8aCc4=
X-Google-Smtp-Source: AGHT+IFy/3wZWBx4Q7j2p4z5zUxh2obQ2qtiY2xiTAgMK/7Qr2gIHrL3Iq3MJRPK3GhpROlz3LG+Zw==
X-Received: by 2002:a05:6512:1cd:b0:513:ca99:5908 with SMTP id f13-20020a05651201cd00b00513ca995908mr1590859lfp.26.1710349350737;
        Wed, 13 Mar 2024 10:02:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id u19-20020a05600c19d300b004101f27737asm2813344wmq.29.2024.03.13.10.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 10:02:30 -0700 (PDT)
Message-ID: <619c6117-d9b2-4520-9138-311327b17a8e@linaro.org>
Date: Wed, 13 Mar 2024 18:02:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pinctrl: renesas,rzg2l-pinctrl: Allow
 'input' and 'output-enable' properties
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240313083828.5048-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240313083828.5048-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/03/2024 09:38, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> On the RZ/G3S SMARC platform, the 'input' property is utilized in gpio-hog
> nodes, and the 'output-enable' property is used for ETH0/1 TXC pins. Update
> the binding documentation to include these properties, addressing the
> following dtbs_check warnings:
> 
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: pinctrl@11030000: key-1-gpio-hog: 'anyOf' conditional failed, one must be fixed:
> 	'input' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	True is not of type 'object'
> 	[[144, 1]] is not of type 'object'
> 	['key-1-gpio-irq'] is not of type 'object'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/renesas,rzg2l-pinctrl.yaml#
> 
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: pinctrl@11030000: eth0: 'anyOf' conditional failed, one must be fixed:
> 	'mux', 'tx_ctl', 'txc' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	'output-enable' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/renesas,rzg2l-pinctrl.yaml#
> 

In the future, please trim the error messages only to relevant parts, e.g.

arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: pinctrl@11030000: key-1-gpio-hog: 'anyOf' conditional failed, one must be fixed:
	'input' does not match any of the regexes: 'pinctrl-[0-9]+'

Because all other four lines are really not helping.

Anyway, no need to resend just for that:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


