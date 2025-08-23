Return-Path: <devicetree+bounces-208436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA12B327B6
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 10:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8753F7B1F3F
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 08:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A19235C17;
	Sat, 23 Aug 2025 08:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HyudJt84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A61E1B6CE9
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 08:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755938835; cv=none; b=txcMk7Urs+kDmdP1kc/+tTcVeRauGw7U2mbCY3rWe+TYY9NpObuG+8zl6fF423YQOO/N8aGQ6ByHxHvyoC/kxdkh6qFTzhMZKfRNMD+KieuhKGQI2QVTFfHdpUSIdM0MiVeOTC3CgSyk+9tavLfmn843vzWRozENp4AngfdEddQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755938835; c=relaxed/simple;
	bh=psW7PnbWYtOYOHOIG8rSs5vCB83txsjAyHIx7fbljxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HEXvCnIkUhh698h53jgTZnPQ+GrcFlSJUKvG3CqyKtEjly++HHtG2slf3jt8dZDIEhLjPIJA1oecvisDhjaSLb3XWEhv6MnwmA8QkBKj3YA177R+GxAtMhR6kx66tbsMsp9mBvO8IfcEbziKL/KLILIPLi0EwIX70HFMVqvIA6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HyudJt84; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afdf4bb0e5cso37078066b.2
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 01:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755938831; x=1756543631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=63rf6UW69I7dzJvUbjS/g+o800Qui00mrJJtWDKwN9I=;
        b=HyudJt84KvoUNGhW48ffr2cdS2o/IOR4FERU8ERrN/AiyvJRfZoz3p3mU2D2Ko6CtH
         fY9jD+IzVwt4Xc8E66gBKy8T5xpab6nIwK+0UoAJMs2S2aAP2/I3Vf/HGnbLKCbCDIcT
         5cSyoAo6CTXo242xkeU6g2Mbb5oHe+A6HmMSVZmqoiO/W3BQI2oiiocc7VM3giP5Hsst
         CnQ04vVWbjLAt8t1pjd48cyiGC6blq32AHnOUwnlOv+/2/3kpO/LA/cV+EusKW+gmWvR
         pQCW+xxUD7LMFW0zRIGghDjzMsSlPVNNqkP5d/YNEIZXyL3JQahnk5YV7U3tv4fAWJFc
         4fGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755938831; x=1756543631;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=63rf6UW69I7dzJvUbjS/g+o800Qui00mrJJtWDKwN9I=;
        b=UuR1xHNL/u2Zb9+jS4jktfIcHH+DHzenR2Lxu/Txup/OQxISY+T+WVfP0T7hl0nN11
         ynFQiE7P3la+8k1X6bK/wvsKoicMT4o76YCawsqWuXF8f1IWqnAlyUkpD4iyAlK1ouCJ
         01Pnyet+LXL2x8ElNOb3ZaqbeAy9by1UyxSSs6Y/+hG6TcTUgIbnozdjkrpwDuWLh+AO
         ruSUJK0+RcgezxBKh/rqqtPU4ttUGrw5QV4ECsHShjvRn89RRbPKttcn6E+SnTUihhS5
         ahZYOOMqteKbFtDFilrDeEtfJuvF4M3qUeNaLbYbG3aI0gw0AIVUnwzt7wuc7NLjZJEt
         cU3A==
X-Forwarded-Encrypted: i=1; AJvYcCXjx4m1E/x7UYsf9iBURP6oeNmPFbrxrEGpVWvIdPXIBiEV3gbIUZ+FNJVlf6ZKrhZqUDKzv/FNdYHf@vger.kernel.org
X-Gm-Message-State: AOJu0YzgCLTaNDehoAgBJAfaJO/9aVzZOPJ0IVHrJwA8JxFvPoW8PH/X
	ONeWywUwMHBzlZg6lzPVa39ek1hnDHkywktTHnKw8RisI9kTvsK3o4KhjxqgAo1piUM=
X-Gm-Gg: ASbGnctAg6o+PGYRcGsdKR/eesVJSnqXSXeR7b+2t10FtJNiEguLeG9xvXjaSjtcsEF
	MdyPM0H5NRJjzswAaUnqfU2ACuT7C+XHJKKEbRS7uggkbW771UOsAZWm9XoBo1kK+/BlCy6shfk
	ehERnauq82FzMrpNiCl0axZm/1xzQ8q1H2/G/kaAeirOfH1k0GXMLC6P1S3AiORnndRaA8MsWvM
	zEb3n/f2HnWKIvfUrlNX6ALzIW/06RZJR94zdb596gpNUUTbdOslliakb1guYfvPizyzPhAkyHr
	3jS48V6ymTHwZy+VUPrerN6x/yQ9KPma/3LZMT9bkBmZcMIkgG97JZ1Q3fHL5u11Fu7A3ofI6wK
	hmojRjZqTW+DVSyYL0iWd5KFg1oN2m/mCN4rN/V/nSp0=
X-Google-Smtp-Source: AGHT+IGTEJ8SbKPY7zKGNwC0BrMP8HgDH2XNiA3vCklY0PS5TihvmIa43Qo9BCTwLKgAiIe+jA7kiA==
X-Received: by 2002:a17:906:4fd2:b0:ae0:da2d:44bb with SMTP id a640c23a62f3a-afe28f07324mr255351566b.1.1755938831294;
        Sat, 23 Aug 2025 01:47:11 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe4900a18asm133130666b.49.2025.08.23.01.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 01:47:10 -0700 (PDT)
Message-ID: <ee241506-96a1-431e-a7a7-2e5848fce0e0@linaro.org>
Date: Sat, 23 Aug 2025 10:47:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: marvell: armada-cp11x: Add default ICU
 address cells
To: Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250822133329.312326-3-krzysztof.kozlowski@linaro.org>
 <20250822133329.312326-4-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250822133329.312326-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/08/2025 15:33, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to the ICU interrupt node to silence W=1
> warning:
> 
>   armada-cp11x.dtsi:547.3-47: Warning (interrupt_map): /cp0-bus/pcie@f2600000:interrupt-map:
>     Missing property '#address-cells' in node /cp0-bus/bus@f2000000/interrupt-controller@1e0000/interrupt-controller@10, using 0 as fallback
> 
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=0)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/marvell/armada-cp11x.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> index a057e119492f..d9d409eac259 100644
> --- a/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
> @@ -202,6 +202,7 @@ CP11X_LABEL(icu): interrupt-controller@1e0000 {
>  			CP11X_LABEL(icu_nsr): interrupt-controller@10 {
>  				compatible = "marvell,cp110-icu-nsr";
>  				reg = <0x10 0x20>;
> +				#address-cells = <0>;
This is not GIC, so it might need bindings adjustment. LKP reported:

interrupt-controller@1e0000 (marvell,cp110-icu):
interrupt-controller@10: '#address-cells' does not match any of the
regexes: '^pinctrl-[0-9]+$'

Best regards,
Krzysztof

