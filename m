Return-Path: <devicetree+bounces-16936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D630D7F0737
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A95CFB2096E
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 15:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E39B11CB1;
	Sun, 19 Nov 2023 15:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15F3E83;
	Sun, 19 Nov 2023 07:33:06 -0800 (PST)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58786e23d38so2270399eaf.3;
        Sun, 19 Nov 2023 07:33:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700407986; x=1701012786;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kMU08ksxciypMg2cafusPvHmfZUM2THw/Wr0jFPWQkA=;
        b=m3R3CVo/VRpsC52aMeSMA4tXDzlInPvituE/7Hl6R9xhhjEMzDwFOWa15VyUIvA+E8
         1Q6kpo8lsZmUp9ktcYrtK1OmTCXbAB6fckzH4uo24nsv7gPtf1/0Nv8zn4gu+2xIZBcK
         QUlpbu/ve0rV7epljz4XkYBzlhnF9c8fTiU4O3QWvsiybRZzNT+3nrE4lZN1IMCkyp1b
         Vjy8ssaB2bXuMD3zL9Ko2zTPJWxcBINwd//Yy+rQTKe3Fv6VPQFgYVbSRnTgwqMZ324V
         xZTt9Ph+4hgXwcM79AIIa3i+1V/7UHCRYLjrB3F1oo7jY9Q9XiRcgLsZOvwq7AbjM5uT
         LWKg==
X-Gm-Message-State: AOJu0Yw1f9ir+oFoInnWzy9YsFj9BPUWcKTMGuKgmeW7czXaikm9UsNt
	Rj5i7Xyb9UUcW3eI0S8Brg==
X-Google-Smtp-Source: AGHT+IExABufMmUJEvUlY0EWmwdDBQyAl3khdEyyRjfwJe6bame2wZuLIdHI94aTyaZhFmNMeo+0Cg==
X-Received: by 2002:a05:6820:1502:b0:58a:231d:750d with SMTP id ay2-20020a056820150200b0058a231d750dmr5737572oob.9.1700407986253;
        Sun, 19 Nov 2023 07:33:06 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id u3-20020a4aae83000000b0057327cecdd8sm1052307oon.10.2023.11.19.07.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 07:33:03 -0800 (PST)
Received: (nullmailer pid 234287 invoked by uid 1000);
	Sun, 19 Nov 2023 15:33:00 -0000
Date: Sun, 19 Nov 2023 09:33:00 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-mediatek@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, "Rafael J . Wysocki" <rafael@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, linux-kernel@vger.kernel.org, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH V3] dt-bindings: thermal: convert Mediatek Thermal to the
 json-schema
Message-ID: <170040797960.234232.1151056488223755530.robh@kernel.org>
References: <20231117052214.24554-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231117052214.24554-1-zajec5@gmail.com>


On Fri, 17 Nov 2023 06:22:14 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files. Introduced changes:
> 1. Improved title
> 2. Simplified description (dropped "This describes the device tree...")
> 3. Dropped undocumented "reset-names" from example
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Add "maintainers"
> V3: Introduce changes described in commit body
>     Fix schema syntax
>     Move unevaluatedProperties to the bottom
>     Rename file to match compatible more closely
> 
> I'm totally sorry for sending broken schema patch yesterday. Brainfart.
> There is no excuse for sth that doesn't even pass dt_binding_check.
>   DTEX    Documentation/devicetree/bindings/thermal/mediatek,thermal.example.dts
>   DTC_CHK Documentation/devicetree/bindings/thermal/mediatek,thermal.example.dtb
> 
>  .../bindings/thermal/mediatek,thermal.yaml    | 99 +++++++++++++++++++
>  .../bindings/thermal/mediatek-thermal.txt     | 52 ----------
>  2 files changed, 99 insertions(+), 52 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/mediatek,thermal.yaml
>  delete mode 100644 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


