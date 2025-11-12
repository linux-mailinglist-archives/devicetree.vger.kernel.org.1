Return-Path: <devicetree+bounces-237837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B54BFC54DCD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 00:55:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6DC3F4E146D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CB62ECD1B;
	Wed, 12 Nov 2025 23:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gE+G7Uko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752042E54D7
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 23:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991663; cv=none; b=GzphmVIdN4jHLrUN7wfNb6yp7PAsSry+KbuWWprdhwfSXR3L20+pcbhWOgrn792fW4v5OiXD+SRaMx3BdL7I7ybuu8iEJ4MCKB/tGkDCedv6jv3dQRTRTL33pPGuOcZjWoZRJp0tvl8JHwpRf//fxGHzuZ5vvZg9HG/nzQCw+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991663; c=relaxed/simple;
	bh=TNhOm2+mPi4NYVbMtUGere0nf/f+uNkQNxC2/uwPVYg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oBhJMeiOfHgYRMr5pYaxZfiXVV/mAd3JkfwQtMkVrKk/iiAdBZW4hZX3dTYRZMG8BqPqi3Btrn+7rtHalTk7pb0hEcb5dl3NlDGcBPBA20BpK5jGgKBji3XdWzk7lSGKJElcsD28G6wVKj5UTizVrj5XdLNDLx9mJTV0fRIlbWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gE+G7Uko; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7aa9be9f03aso164713b3a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762991662; x=1763596462; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vpaElP4SSyxGWg0zUUZ3WOwjT1Hm+DZrZlFdZZBBlhY=;
        b=gE+G7UkoRQtabQ0asKFVnbIToeZWA4fHOG85Zlqtn9n+Z3W8N5J5piJKOHSkSDSZk6
         w/FCC6C5U0gTeoRlLb9McGR7hm3kV0rOMMAfuPKZYwcUmZ9LpH1Nvnvq6AVJXtnP7H9J
         RvezCnvyR1MIBMSOGcoQEIMurIYD5UQ6P8tHXWJLDLK7CaY3MS6fUhRtNI93qip8PkVp
         rtH2j+Y8v0UZ/kejoNOEa6AATJHerN9OS9HbblZcvUMqjDFWS8NkZbiVe05CiOMYdjes
         2nVi5yLjyoAL7YISZMftp/tmqowOm2rJ7jvFaDf7DYMHMA3lf2yItgdSYwmwmTm1GLWc
         nx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762991662; x=1763596462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vpaElP4SSyxGWg0zUUZ3WOwjT1Hm+DZrZlFdZZBBlhY=;
        b=OJY9RWvmmy9sLfh+0fsq/tvcNq9TJqBVBlYrVt7YS1OwUF/ErJxpLm9+XfycmP7A6Y
         QsLbV1EuF9vkr22BXQVCa9pOFpOUuX4N9uYTRh7gZMWhplNN8hjmMcY3B+opGfIbrcyG
         YlZyHp3JRGJL8ybPwDnVIjysfvTr5RFzusTOsSYH2AI7djI9t0XYVCLgATlOdOI2nq4W
         73N4qfLLSaMHLW6oG+7ySBvWQfnRaLB/NXzDrcmlrAGqhrbfxPasl6zteD1DQYaVhH89
         Jh0cEwHtxiAOISptBwkKeKqDxfpoHKyuwfTFBWGzpagGZHZhzR+aXBR0gzulHNffs3WK
         Bpag==
X-Forwarded-Encrypted: i=1; AJvYcCVAg4vkqjRT9B5153AiBS68lKGvjImwYQiarPOL/QF/MQ6UXWu4kHDjWd1G2AuGt6VO87t5DMik0B7X@vger.kernel.org
X-Gm-Message-State: AOJu0YxnOPJAtk7j13wEz3EumisDHlbFif9A3urXchHW8U/0VJdGHPQ1
	42s8fnBpkq+y5by7TfNwq5TgwAqLdkWDQcmrJSmDtCziR3bITuhZ31/3
X-Gm-Gg: ASbGncsKgaHwxhyMQKVGWb2g7yIMKoSUoNzukI096gyMkHBJ7PePk9+sc7TnjJaQImo
	zHeF47IExN1h5tMT1/oi+7JPj50k4aD+SMDLZj8tl6FVBsvj1+RC4CsG2JjfTigGY+VFwWNEd5H
	ERzOkLYUIQEtuexFuadefLnENKeG0X6KcEod8agRqfJ6ocLa/UWq6WcX6CXiEeWcHzdGeXNRaP/
	6d5HUE5+6xshlY765BdrVIXRM70o7Og/ZUOR1w8VM0bqjuCbuRCN0D+UNH+XJobKb96UurLNlDd
	f8GzBKhJ/dcDrr54tUnvQO9d2i1l5QLJa2GIdw13D8VYLHa09OK2FrKcCThLhlSgWwUAvjEt4RV
	uxfadzEHH88w14JTnl0apCFhB5rCbJCd2gNgr1SvaTJuj2fWKUe3Kh2Ai1WdxNym0ezQfH0Kiyn
	7ReANFVB02s4qPlAwIrYlYHUQ=
X-Google-Smtp-Source: AGHT+IF7PKzf4wmRkdlJ3ART/JVas17yQj7OdtVc/pskXFKFVjPEcGqQ4iNAzKkyOOk75HL3arI3zw==
X-Received: by 2002:aa7:8714:0:b0:7b8:1a40:c47 with SMTP id d2e1a72fcca58-7b81a4010bbmr3446982b3a.16.1762991661744;
        Wed, 12 Nov 2025 15:54:21 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b92772fa72sm200624b3a.55.2025.11.12.15.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 15:54:21 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 15:54:20 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 4/5] dt-bindings: watchdog: loongson,ls1x-wdt: Add
 ls2k0300-wdt compatible
Message-ID: <de06b5f8-1c57-4795-8ac1-8182be6175d1@roeck-us.net>
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
 <a1f64f3d3816620b690aaff7b87162ba9e5b155f.1762482089.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a1f64f3d3816620b690aaff7b87162ba9e5b155f.1762482089.git.zhoubinbin@loongson.cn>

On Fri, Nov 07, 2025 at 02:01:50PM +0800, Binbin Zhou wrote:
> Add "loongson,ls2k0300-wdt" compatible to the dt-schema document, which
> is similar to Loongson-1 watchdog, but with differences in some register
> offsets and bit definitions.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml        | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml b/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> index 81690d4b62a6..50a9b468c4a3 100644
> --- a/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/loongson,ls1x-wdt.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/watchdog/loongson,ls1x-wdt.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Loongson-1 Watchdog Timer
> +title: Loongson Watchdog Timer
>  
>  maintainers:
>    - Keguang Zhang <keguang.zhang@gmail.com>
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - loongson,ls1b-wdt
>        - loongson,ls1c-wdt
> +      - loongson,ls2k0300-wdt
>  
>    reg:
>      maxItems: 1
> -- 
> 2.47.3
> 

