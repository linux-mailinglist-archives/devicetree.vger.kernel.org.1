Return-Path: <devicetree+bounces-227521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2113BE240F
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3ED8C18905BC
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B443530CD91;
	Thu, 16 Oct 2025 08:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="liTSSZtn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4EA30C63F
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605136; cv=none; b=tVi47/tjIEPHB1VfebiQ1qviwErXiKmUcBHB/lhvGGSVIpCj+YAW+koT3n+aYcBBkdhGShyNOWvhnH4vAfQTooz/fbRbzy4MFxlCTDNIua/SEbQAsQVuaGAzVBAs62DHgvICzcX9i8rFZoTcifGUCpJWecz0Q0WZUSmKnH1RvKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605136; c=relaxed/simple;
	bh=I+cdi9WS/MhoICe/pzQWKuIcK23mXlzVly0ZHU2RQTw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tajn00Cl/cld2UfGGWVMdsoGNvD4VC8WIVkq+mzVM6daxQ/tLY9lUdeyaHRAR1Vt1Y03/fysoJjp2+0T3VNZvaH6EAJaYBrzt2efTOx/2fuWiTlOpLlRN/dZCK1s2aS3ZtVGaUKBtcgXoh+Q599DW7CJNDTeXOc8CgbG0vWDQ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=liTSSZtn; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DE8953F72D
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1760605124;
	bh=9ahU9OdbDocKDvc07Qj5/lY6cHzOHOb3fbgPU7Jnmq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=liTSSZtng4c0G1puCWaHoROZDxjAVj6Vil/RLaqwi6dBKEmDukCbRIJergEgZHzFI
	 82XXx7zGwhv0gxfKHFV2UACeo5grK2CdYwOVi2Kqdp+ss5GD9chQVtYCq444MOZiDG
	 LRjHVG544bDqwKHQMsUhsmgdYXnQN1Z9eoRvyApIMmXuht/h6ZYfIZERviLg4IkgTX
	 D23n7e+6f62dBCjScwKoCx2jtKCUAszvF5eVHHtfkPHnHrHRsNCHupXdSYz3OpCENQ
	 y0gpAYOGyfKEB383TFs0Oo7rKyqu89B8YL5zeQuT2I77nwct9F3EmPcKQbeKnlLh7e
	 kkP0+N0nXEHsq0xb+uVB+twXptiQUA7g/CNjqRNuzwXvy8ZX3ilEIi1iC+wff1GZ05
	 IOAigeY8w5VGsHJlZomENTowkAYch7QKIZhYcr2iliWRNKTEqNCb8loXhnD8W6H+cA
	 T3v4w2yIuw34lQVJEqOREX+y7C+XDj3iGvsDvMyFQKmYxCT/mkwIgIAuuP9YSlzRC7
	 as+uiGClVKQdZN/+ReybH9GRAGxWDzx/tddiNBb2yvbiYZl/LxUZmkAPcmM3Asb2Yu
	 e/HLDBOcorxqzvyytDwurbLH0YXwE6h/oGoMujC3W5mvCkblvt2HhGMHaSGYncnY2H
	 hGFr7ODpw128zmj159MimIFA=
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-471125c8bc1so6242655e9.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:58:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760605124; x=1761209924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ahU9OdbDocKDvc07Qj5/lY6cHzOHOb3fbgPU7Jnmq4=;
        b=p//PY+hvIW3313kZQE/cvVhCWerYEsLHCH1x7vJMxSFwdiZVmPMj4V7D1vD5OzyNd3
         bfoUaAi+OTyjhKW4clmIASXiDHEIoj4aCXBxUcrUzsFCUln/K9+P5cE+XLCBizfW7Uyl
         +NT1x2bzY5Kwq+s14H1ANBYBjCygQdAse9ZaoZUgjKyFGmRHKYYTxcnleKThaMMtyq8M
         /4LMUKrMrWxug+4PlUrDu8mmx1+AA84rnGB0y4tOHA+LCcmwaIRPmQ/+f8ww68QUxbOZ
         zSYV3hcNiD+ISQhnf9Lp6pdyxNH+SbbU2NPai8KWNLZTVAsAOe66OKRqxapTttHph3Dm
         a/ig==
X-Gm-Message-State: AOJu0YwB23VrORXezIhebQgUtNJ2D3FARycps1qH+9hZejtnUbrp+vSI
	HAWj7YuK+U5hT6bvKdKmB9EPXf6aC2XSjwwsqj0mKXcNlj6SXmzn9i6UZhCVJDxWiIoUpRho+6M
	ZTUcecaLf8XFMPFbjrisVwogn1LEDVp8rFdZexWqiJrzaADxduniAYIUqVedbzUbHZtv4qtD+Zg
	H20mA=
X-Gm-Gg: ASbGncvKLBxRczB+t4VD1AqJNhdx5UGk/oXXwPTcIqU39HO9R4U1Db4lPZv6rsQL80+
	lxGo0gqyz5qerAcyAsbjbPdTcK1BXtcwgnUtPe3yhgbyRGvaE7P92+nltO3X293b1gUICL330QZ
	uN9fkoOAXM5jz0WD7HqfjcHVsawuAwc5YCL0VCwEf/1KC2U5mQWDLIcT9W7yiwQV//zFjUPLM4X
	mNlU/zPFYi2m4TZNLnGauq0Wx4y6xVTz7oEXZxBRlsKc3uzvRzPQ/iq53JLo7P4ss+tLtqNHfx4
	V3Q0PCo5RAp9GWM70SZ82QZumhu0SH4Gx+tG1/GhIsCq5bDfjda/Jj6FErWRQpzUTifg7yarVUr
	VY1fyP7JwJpTd1RTL0fWpsGt/g1I7oUHKNVetbVsXDw5aYoo6+Hq6f0fPZgncOb45YTOf+Guq
X-Received: by 2002:a05:600c:548d:b0:46e:49fd:5e30 with SMTP id 5b1f17b1804b1-46fa9a8f4e3mr242027545e9.6.1760605123693;
        Thu, 16 Oct 2025 01:58:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFascJJzEL6t6HgTISBwE+c0s63Iq7ev5oNUTb431XUwDd7m3F5ONlxv+Pvfs4GHfcbeXxcPg==
X-Received: by 2002:a05:600c:548d:b0:46e:49fd:5e30 with SMTP id 5b1f17b1804b1-46fa9a8f4e3mr242027245e9.6.1760605123256;
        Thu, 16 Oct 2025 01:58:43 -0700 (PDT)
Received: from [192.168.103.116] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144d1765sm18286875e9.17.2025.10.16.01.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:58:42 -0700 (PDT)
Message-ID: <a4c5e7fd-a37d-4729-ad58-81523f813fb3@canonical.com>
Date: Thu, 16 Oct 2025 10:58:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/7] dt-bindings: PCI: starfive,jh7110-pcie: Add
 enable-gpios property
To: Hal Feng <hal.feng@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 E Shattow <e@freeshell.de>, Paul Walmsley <pjw@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
References: <20251016080054.12484-1-hal.feng@starfivetech.com>
 <20251016080054.12484-3-hal.feng@starfivetech.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251016080054.12484-3-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 10:00, Hal Feng wrote:
> Add enable-gpios property for controlling the PCI bus device power.
> This property had been supported in the driver but not added in the
> dt-bindings.
> 
> Fixes: 22fe32239770 ("dt-bindings: PCI: Add StarFive JH7110 PCIe controller")
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>   .../devicetree/bindings/pci/starfive,jh7110-pcie.yaml         | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> index 5f432452c815..f254c7111837 100644
> --- a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> @@ -60,6 +60,10 @@ properties:
>       description:
>         The phandle to System Register Controller syscon node.
>   
> +  enable-gpios:
> +    description: GPIO used to enable the PCI bus device power
> +    maxItems: 1
> +

Shouldn't we try to keep the entries alphabetically ordered?

Otherwise looks good.

Best regards

Heinrich

>     perst-gpios:
>       description: GPIO controlled connection to PERST# signal
>       maxItems: 1


