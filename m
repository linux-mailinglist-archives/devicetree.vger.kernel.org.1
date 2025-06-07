Return-Path: <devicetree+bounces-183482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1CAAD0D1A
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:40:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB1AA7A89C4
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1272220F34;
	Sat,  7 Jun 2025 11:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EzkfRxVu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF871F151C
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296451; cv=none; b=AtPvqxLNY0acEEu8Zt8YkcaLzCjutPZlI68MiPFzNlgjVF6vX7tB0M5FkcpdG6tIQ+/Gj4bt6bZwxDpI99e/bfHyW7BZ19wcqnfuhFvJ6uogrphG/bY1NGnQGPIwtf7OWWqb5E2wEgc9PcKu1kkrHrTy0rMqm/yzWHAwzOUvCTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296451; c=relaxed/simple;
	bh=ubJJtE7i8YMPz9SRvgygJqN81AJ/lnwSeX3JzR7GieA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HsADGBAVjLxCGENhN8SEwM+6zT0PazaN0FMH50FWYqBtyvVXLrAF9CdOtGs3GcYwNzM9mNN/cJ+yGUr2PqDbH6sQDjb356HyTF8AGsNPZw32dXKmLX6KtH8CHSdt0PC3fnZjb9trnM4NKZael+aLwzLb69sa1ncN1YKEdsH0yV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EzkfRxVu; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ad8826c05f2so542173266b.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749296448; x=1749901248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JiKPxyE+L/mL7ntMB6eAW2AGGkAO+xZvdmfN92Ddt1o=;
        b=EzkfRxVuzuJi3pL622gzlOW9f+US+z153IKlduDkd2FOWJp6wK7e33ej7Ljvk9niIY
         +MWoRwBLv3mmE8awEfIVyjrCFtimM7gBo/Y+ZpMCyBVOTFut/yHiNF3K8seYaGFyYi2c
         Ms7C4oJ8+IfvT5PScg0QtoD+/VG4p1hyd9BB9cMcHbwEKp3LkvAhs6OgWyux7IQaFVd5
         dS2YfT26JulgirJyW+z1w+CfQ5o2JSHhDwffSVfXlAHrtZ+gc5KX6vfA5nUfsW2/Nw/s
         /zDAPdyNu4ZpETD5q2eiDXfO06BJC8/nlOvKFb344ZIMagnnAYxRQsD8m/fp42pBhz8B
         LkBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749296448; x=1749901248;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JiKPxyE+L/mL7ntMB6eAW2AGGkAO+xZvdmfN92Ddt1o=;
        b=Wpg8xGAM6felka8z0xlx0K61mT5LASnbDgAjrzUBXA+xX5d/BJa1Y7jCVKBx0dY8Fc
         McRKpZ2NIkwLrdq1tGQRn1Jg470RpfiHPvrn0BW9ejvmWM5ofuGSfu3NKVU8n3heWTdx
         pcMOPm0SkRWMHH1nj9+yXOSgkB9pOh9jB6YoXnBKNfD/sJwB0ong0vgbCByHBTXJofTN
         2zzcqyaYWkkjk5NmBtxHZ0f52bk9An7qpAQ8ith9cUxsK93vGzx+eJb73kT++7yk3Q5z
         EnTxT5aEe85qwds3bCmgS+9Ca12HRnb3aXGqEhoxn+ljy5vscKhk6iqtgRzocKseRu/U
         QvyQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/pmOHYxYa/xmASNXByjrxR5TDAHURm8tu/U5CxL27CVooTuUTulNFfqfTq+0maCJJs8mvXFt9SinM@vger.kernel.org
X-Gm-Message-State: AOJu0YyIZBt6tXnRy8CM6lqldvk33gRn1aRoospd0tAWOVPC3FwrFVjd
	/Sk80koWUDnUutXW0Nm0zQsHPeomjZ0PPXzkTd4xj8Fq0XWJQHSRicrd2l2Ghw78+Wk=
X-Gm-Gg: ASbGncuuTOZQiuXGIKNp700gpS1xLMaD+NRjeCPmIdX3vo/EowC3FbHmqv4ExNp/Lf4
	wKeUkrDBGJMsYKXUeKDsRKwqknA/eu+MAuaF3b6hRZ1fKdQ9pozUwuApCN8Ly52gG7nsHpjHgNT
	qjhow1wjla30rLBsRtYo7ZSyCL7UrbtHaDTIuCKqFDwpOeoV/NiLyUSINJ74ZMPqWTOJDcuR+5f
	wyGJYBTJYnJPXlbDkX/JXNFfU9qA0BYKTgDR8C8ffLILan3k7ZMV/aIRh/OMJJFoBTcgDLAdP4P
	LcUN4JpM7AClrXRnDW7+BDFsGSj653E2Bv5/ThTh9eE8i8y/p8vIHfvABFvfBzGw047y/wKUse/
	NAzpNdA==
X-Google-Smtp-Source: AGHT+IFH+/W+aC/DziM0dgJNs2fwK23eiIJdn/dAFXAJM2ZH6flXjX0d+7niB19viLz/Kl7VwDI7TQ==
X-Received: by 2002:a17:906:ef0b:b0:acf:15d:2385 with SMTP id a640c23a62f3a-ade1a9fd850mr693582666b.16.1749296448424;
        Sat, 07 Jun 2025 04:40:48 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc7b3b6sm268238766b.173.2025.06.07.04.40.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:40:47 -0700 (PDT)
Message-ID: <f03c5c49-e890-428d-9c5c-649bad512170@tuxon.dev>
Date: Sat, 7 Jun 2025 14:40:46 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: crypto: add sama7d65 in Atmel AES
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1747077616.git.Ryan.Wanner@microchip.com>
 <a5509576e211bcf528e088f78e619575a26bbd8f.1747077616.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <a5509576e211bcf528e088f78e619575a26bbd8f.1747077616.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 12.05.2025 22:27, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add DT bindings for SAMA7D65 SoC in atmel AES.

Would be good to improve the description here, e.g., specify differences,
similarities b/w SAMA7D65 and SAM9X7 or SAM9G46. Same for other similar
patches in this series.

Thank you,
Claudiu

> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml     | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> index 7dc0748444fd..1de4ee70a05f 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> +++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> @@ -15,7 +15,9 @@ properties:
>      oneOf:
>        - const: atmel,at91sam9g46-aes
>        - items:
> -          - const: microchip,sam9x7-aes
> +          - enum:
> +            - microchip,sam9x7-aes
> +            - microchip,sama7d65-aes
>            - const: atmel,at91sam9g46-aes
>  
>    reg:


