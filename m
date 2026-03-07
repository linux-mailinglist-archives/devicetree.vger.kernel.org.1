Return-Path: <devicetree+bounces-272445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Sx5tOIs2rGkbnAEAu9opvQ
	(envelope-from <devicetree+bounces-272445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:30:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166022C2A5
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E77B3020A44
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4412701B6;
	Sat,  7 Mar 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pSN96MJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B21A6826
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 14:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772893832; cv=none; b=ZD5fO7g3TfS2RKVrueO/Dpnq2e60I4wPBPCYj7cfAgGNQ1TuO70cgIq4EzqsifT4mWtZbavjICe2Jl7KVM2phcP/DJensW2CRUBcTHVn5JpQiPRoFJn6jrFFIlPrkgeml/VAAlRiZNYLo2zZu8JKnYucTi1djlEKh2Z8d5LbcWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772893832; c=relaxed/simple;
	bh=Wsaji5daTtrajUtPh6H6XqT4oGz7tAS4CTE1BfAkM6Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LBKcQ2kcOTxAln7UG7NVmwdha0gtNnLTj/2IflLz+/AM80koC6mezLAbZLd/QTrl0Q9ZcnSJc7aJyFadUoeFaDbX34C9NFCl9dht0UuVbkB55tramOBIGLPgqr441nj+5uldSXaQXVM3ahRYpz1pUSCnboptSW41amxcv9AzrIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pSN96MJh; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439c6fc2910so2852047f8f.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 06:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772893829; x=1773498629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nt8RfuXfLilpcqlvNT92IvW29HEK82voPpFW48omjd4=;
        b=pSN96MJhMMn8Rv/m/CK3aK+c+rGhQpLixCt3Yv6ugey/12ypxeKVaR9pZCGmmjKkLo
         i3ko5BWAIuDPcVoHtayawxNfRi29suMRFr4KYyryrR0RNfh6FDnWS+AtgS1YBQGojBcl
         na0ZgHYPhjC3UaQn5y7NrkyHjkJ4DA/v3rD2MWfDjTUxNdJbtiRIJC9V/yOh2lamlRF4
         r+FT+F1EAfK3vSGyCRUadN046v45s7JjDOe4inAZwf9y3mK36lzxGL2/Lw+Kq9M4opLm
         PR0NvZJkQeXUxVukJ76YIiu143B6fcKTZEIZI6OqarxW580yaJZOUhZaTiMY0p8h0RKG
         Si4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772893829; x=1773498629;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nt8RfuXfLilpcqlvNT92IvW29HEK82voPpFW48omjd4=;
        b=fM4Hci7HTyIRpyveraMSdfd0nWKotoMLEb3FLGmNW3FCVqfUYcXL6iCHFXlTox5dA3
         YCTDgLQ+Qjtu6nmJb7SM9X7yuzYmI96uJD3NId1jDLr+SGO8deuUNXmcDW/d4e7r/ftW
         4t0kSqSXn7X8ZfmqC7391akdxH93LlAbdHMnW9MBcjYjvbBkP+Uy1XFY+e8tEXD4X4vf
         jILzZmBb/JSFxuIqR901ojSMYTuYjREQPykCWqgIgNhOO91QscgOc5S0kOikBY8qpSAn
         aQ3oB6nDdmU/QqjeapD6n9kyYVKXJkuX0dSVZBiwX3aam/16w0HoUhBh4zgTYMnwtZz2
         S1iQ==
X-Gm-Message-State: AOJu0Yzj+XdKZw77qQiL/vAaUXIUvKBQXslCUTp9XdplxWeOYa+mhW7U
	ghRdZjuhPgAyfIHbXedjlsIuxsRq0LQoI6KLTTZD72bqpwWbMLArC3PsiRcskf+CBrM=
X-Gm-Gg: ATEYQzw8a28hh9/tvNUu5llUSECZc7By248h6sA7z34WkhidCZgwKcs8bqnEW+5vz1g
	om+h+OgPwluL+vV7WuMr+DkmG9p0eBd1vpJ3VVe+BP64lpizvzdiF7Q+/rlijIRosQzJ1GczQ9M
	Q7YJx+j+3ZfmfRWYbWF56YP8o5d1t3TfSapNva/nlz/lycnm+qaUvsGz/avq7ionD4hTcQbRRG+
	rV1k8/5GmFaORgoHmNlHGEUsdVgNClW0DYb/AAL7leciOEOxQg6/owmVyw5ZQXj81prdwFueCW2
	TyMtQC76qPP4kTq3Cp8YYQKAlzcbV0wtYnuTEX4TSqUvmG0BVX8Lk/aYiLCL/BDjbl/6+PFOX9G
	TGYxRZNlNp0+uxsE8C5SnlVfywvkq31fcMHCd0k9Z3Php/YkWQUUsIT5xfjXsIkGHud06Gunkzd
	xFCxG4yuoOt+TOvup6xHWXK2+mZTmKREPoD0CLNN7J
X-Received: by 2002:a05:600c:34d3:b0:483:bf23:1915 with SMTP id 5b1f17b1804b1-4852690f5afmr96314755e9.2.1772893829028;
        Sat, 07 Mar 2026 06:30:29 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fae00absm188167565e9.4.2026.03.07.06.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 06:30:27 -0800 (PST)
Message-ID: <5a983df1-fe80-49ab-a37a-58b6c4989548@tuxon.dev>
Date: Sat, 7 Mar 2026 16:30:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: microchip,sama7g5-chipid :
 convert to DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-1-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-1-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2166022C2A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272445-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.973];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fc069000:email,tuxon.dev:dkim,tuxon.dev:email,tuxon.dev:mid]
X-Rspamd-Action: no action

Hi, Akhila,

On 2/27/26 17:14, Akhila YS wrote:
> Convert Atmel system registers binding to YAML format.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>   .../devicetree/bindings/arm/atmel-sysregs.txt      |  5 ---
>   .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
>   2 files changed, 41 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> index 5ce54f9befe6..4ee18112586d 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> +++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
> @@ -1,10 +1,5 @@
>   Atmel system registers
>   
> -Chipid required properties:
> -- compatible: Should be "atmel,sama5d2-chipid" or "microchip,sama7g5-chipid"
> -			"microchip,sama7d65-chipid"
> -- reg : Should contain registers location and length
> -
>   PIT Timer required properties:
>   - compatible: Should be "atmel,at91sam9260-pit"
>   - reg: Should contain registers location and length
> diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
> new file mode 100644
> index 000000000000..4fdb068be929
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel/Microchip RAMC SDRAM/DDR Controller
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
> +
> +description:
> +  This binding describes the Atmel/Microchip Chip ID register block used
> +  for SoC identification and revision information. It requires compatible
> +  strings matching specific SoC families and a reg property defining the
> +  register address and size.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - atmel,sama5d2-chipid
> +      - microchip,sama7g5-chipid
> +      - microchip,sama7d65-chipid

I'll keep this alphanumerically sorted, thus "microchip,sama7d64-chipid" in the 
middle. I'll adjust it while applying. Other than that:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    chipid@fc069000 {
> +        compatible = "atmel,sama5d2-chipid";
> +        reg = <0xfc069000 0x8>;
> +    };
> +...
> 


