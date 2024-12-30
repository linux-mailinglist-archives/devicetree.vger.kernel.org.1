Return-Path: <devicetree+bounces-134711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B764D9FE5A0
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C3AB3A22CD
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97491A08DF;
	Mon, 30 Dec 2024 11:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnjBNjd+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08062594BB;
	Mon, 30 Dec 2024 11:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735558048; cv=none; b=FZf83qk25CaL1/Bp+SkKiZiC2KlNOysId3AvJoQaXDNw25qH1ntVcbK+rhUOsE+CbHhxY0ZWmWzK4Chw0mQjAMtvVFM4GzjUmqmi2qPn6A1PIc2ffUOYvkpz4rVYFJlL0O9DUxPLxRQHZcLZh0WVv3Vsu9fiJrFugETSu1FsEFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735558048; c=relaxed/simple;
	bh=6WfBbLO8l/DSBCM9iZaCcofqhgPzgpMjjT2nUx2Rgfs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pbCOCcHGY5baGzgVxOzpMYknjg3m6Sng1+ZQn2ryOrRfBzwUtrKr9+x8jekPrkh4++ZYQZyPhzcbN0nkOBAAlDx6tSCfJn9pj7AKycHKrZMW8EPs9Iu53ycrIsp5FQrbqwWK00/sktXHK9XWd0XfLzt7ncCjEQACsZMrZ+9Llxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnjBNjd+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0509C4CED0;
	Mon, 30 Dec 2024 11:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735558048;
	bh=6WfBbLO8l/DSBCM9iZaCcofqhgPzgpMjjT2nUx2Rgfs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gnjBNjd+KLoiW3+BpBj8wJRLK8/7MO2+9sEySsh/hZZIqrEAB9X/lA6qEzOrOTavd
	 U5V2390wqPAAjVH3zZn/U+jKMTt67FOPpt9SINCmxT9OCOd4wENY4wqSPh8Ffm2Bu2
	 sSwlo5NOqSyRMqRDsmuBXL+Y0xikKhwUHItJ/5WNxmA1ino+mlV9Idh5L3klP7w1NM
	 yUN1/29NPArRUqhGSa61iPfL4zLuDkWYNeefv97B+qVf7XBJ3tyj1koHIytGc5ulsy
	 I0iI8ZYkbPfkhjtlJupUjD2y0kWF7cSxarV9ug5YgPMS/Golq00hMXGkiKP/IAm1yV
	 FLWERzK/iSAOA==
Message-ID: <0e66efd9-6507-4c58-8ad5-d27e9e334238@kernel.org>
Date: Mon, 30 Dec 2024 12:27:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mfd: add support for P1 from SpacemiT
To: Troy Mitchell <troymitchell988@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
 <20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/12/2024 11:02, Troy Mitchell wrote:
> +
> +properties:
> +  compatible:
> +    const: spacemit,p1-pmic


spacemit,p1

Unless this can be something else?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: pmic,p1-regulator

Drop compatible, regulators are not re-usable blocks.

> +
> +    required:
> +      - compatible
> +
> +    patternProperties:
> +      "^(dcdc-reg[1-6]|aldo-reg[1-4]|dldo-reg[1-7]|switch)$":

You can drop all "reg" suffixes.

> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +
> +    unevaluatedProperties: false
> +
> +  pinctrl:

pinctrl or gpio?

> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: pmic,p1-pinctrl
> +
> +      "#gpio-cells":
> +        const: 2
> +
> +      gpio-controller: true
> +
> +    required:
> +      - compatible
> +      - "#gpio-cells"
> +      - gpio-controller
> +
> +    unevaluatedProperties: false

No $ref? Then additionalProperties and put it after type: ... but if you
do not have here pinctrl, then just fold the node into parent.


> +
> +  pwrkey:
> +    type: object
> +    $ref: /schemas/input/input.yaml#
> +
> +    properties:
> +      compatible:
> +        const: pmic,p1-pwrkey
> +
> +    required:
> +      - compatible


No resources here, fold the device into parent.


> +
> +    unevaluatedProperties: false
> +
> +  rtc:
> +    type: object
> +    $ref: /schemas/rtc/rtc.yaml#


No resources here, fold the device into parent.

> +
> +    properties:
> +      compatible:
> +        const: pmic,p1-rtc
> +
> +    required:
> +      - compatible
> +
> +    unevaluatedProperties: false
> +
> +

Only one blank line

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false


example-schema explains when to use unevaluated/additionalProps.


Best regards,
Krzysztof

