Return-Path: <devicetree+bounces-136969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8180AA071E7
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15C8F188A511
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92EAF215F73;
	Thu,  9 Jan 2025 09:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="TC4IHJCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13D215782
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 09:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736415914; cv=none; b=Zm5KKLq6y/M6Lr1xU3lOlFOk3P3vNeEG7IAyfgI4rLJuDt68mA5IkoTLG580DFM1sy/fn3ODiIjXRMyvxOX8KgYrLga/V5XYJZkXFwZ9h1rc68FwobhGx4Ji0WgyfJqxToMCmhHj0BEwzx2A22QMGZYuRzBjmIx5kDmWMY+MYWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736415914; c=relaxed/simple;
	bh=R6mwAl9baUgnw3ojda9dPNWRWNJoGpQ5aTw/9M5eh5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=StP8wM5ISgjvjC6WYInEJGU2S5yyT/pFZffBweRmsldoT74uUIao0zcPMMD6FlnEZwADQAOGjodj4eiR0wpuqZgaC9pghLKdcbdYueC88s5vg/y3770qQDG9SLitlK3AZiB2z7jIAO7BznX4t5J+/yMpLcizujnDhtRvu3cAxNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=TC4IHJCn; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385dece873cso358404f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 01:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736415909; x=1737020709; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QjUrbd/qyBIrwVYguIl0LkFHj1ajciZuIbkp22FfPvk=;
        b=TC4IHJCngwcGELYSzU0EyXoauSXCPtafJHUvbrz2/Od/TLwKO5QGLgjC5RrKkChFTd
         +xWolMHyFYOsqxmW3+H/+3/u8Ws1IbC/8HIxt1vdhZds2hpOeGnt3PwoMROJpDCVqtrQ
         DMrxNg7YWtCMsugZQEXKZMK5RZosio4X+0GDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736415909; x=1737020709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QjUrbd/qyBIrwVYguIl0LkFHj1ajciZuIbkp22FfPvk=;
        b=wsobw9aGeLbdLsGkR5wD8bivNpNHPtu0UXKq859y/Se2jXrEzQoW/HKR3OR1dQ9Vx3
         QDQqt9I0QbNQI4WlGwfubhNqKL0Q4IBStbefZApooXd/QqAB7tiy6h2njAJ5+IWH0AtW
         FjDlwGnjqlqOymNl5W1+uVPtT7wDAFCIgfhxM2YxXnIvIbT5ShgvQWcnp+msBItXwAn2
         bnnBPjs+mWAsSuqQbDRTs6WqIyYlAvD6/HxN01N8M5rOIiXtTGs4xzHYOsQ7GuOxxo5C
         8/ZYo7L/US/SUnr7/7yRgR1IT56IkJvNrNyM71z+5IEYHvPEZaJLKWJy2VIdUe3H74DY
         h1YA==
X-Gm-Message-State: AOJu0YznIk98b7NApXC77s5pxW/wncSQnH6hJ82U1JJHvFQp6Iu3IgoJ
	o+Ks2GXp2EFU1xqJVDkVbH4t8IaejQlCdAo7ulZLSYBT5qV/lf8WWyDUrKPpc0g=
X-Gm-Gg: ASbGncuPTrqx9t0TxYxn5e1agKv4ms7/5aKRQW1btvQ+F38tGEGybcgCd+NdOwbMvQg
	h2+CF+0fG64WPxeYqoNI1ZRi6E7t0X7dDm7rNlX//2QT3OFO8f9cSebOZZ9Z/0ClEYXQenX8go9
	5MXDiqdX1ev9F/40KcQQBoleas2uyIQqad7yqg2ZeRp9hvPJHMh+YGGpb3jZ5iVSwyjBP9qxZVk
	NG3wZyMuB7EgXOse2aJlSCw9vgrI8/mc9PiFfxmIDRWWD1qBb2gbwVY0Tszmad3YlkMivj18nld
	lagSR+A51shVpRFblofc+N0pubo71nycFrNyM4zFjCLOrXbzTkBkvcYUtZXDZe4nmHSWP93Xh11
	CMlhe3LFVwzctMt+K
X-Google-Smtp-Source: AGHT+IEXiuvVkmJ7AL2tGOF6iA49ygnCOhlUmGSUVyATTE58C1L+r6gHuct2aTzJUUjQraxsDuGRkA==
X-Received: by 2002:a5d:47a6:0:b0:385:d7a7:ad60 with SMTP id ffacd0b85a97d-38a872f6a32mr5249989f8f.3.1736415909241;
        Thu, 09 Jan 2025 01:45:09 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e385026sm1317325f8f.42.2025.01.09.01.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:45:08 -0800 (PST)
Message-ID: <728922f4-7e83-4117-ac9d-623680e6e87a@smile.fr>
Date: Thu, 9 Jan 2025 10:45:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mfd: syscon: Fix
 ti,j784s4-acspcie-proxy-ctrl compatible
To: Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Siddharth Vadapalli
 <s-vadapalli@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 Romain Naour <romain.naour@skf.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250103174524.28768-1-afd@ti.com>
 <20250103174524.28768-2-afd@ti.com>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <20250103174524.28768-2-afd@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrew, All,

Le 03/01/2025 à 18:45, Andrew Davis a écrit :
> This compatible was only added to the list for compatibility with older
> dtschema (<2024.02). Add it to the other list also so both new and old
> tools work.
> 
> Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
> Signed-off-by: Andrew Davis <afd@ti.com>

Reviewed-by: Romain Naour <romain.naour@smile.fr>

Best regards,
Romain


> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 032cdd30d95f1..717b616349e3d 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -214,6 +214,7 @@ properties:
>            - ti,am625-dss-oldi-io-ctrl
>            - ti,am62p-cpsw-mac-efuse
>            - ti,am654-dss-oldi-io-ctrl
> +          - ti,j784s4-acspcie-proxy-ctrl
>            - ti,j784s4-pcie-ctrl
>            - ti,keystone-pllctrl
>        - const: syscon


