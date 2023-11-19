Return-Path: <devicetree+bounces-16937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3FA7F073F
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84276B2095C
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 15:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B541EADB;
	Sun, 19 Nov 2023 15:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A77C0
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 07:52:47 -0800 (PST)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5872b8323faso2097068eaf.1
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 07:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700409167; x=1701013967;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MPRqtY1zpT/Q/zxPJfMhR0FIAH4WhHFxsqt84FQQa7w=;
        b=BChFnL8+NstUiYRsO9cr0KUdl4/byvWdeYqCfH0HbeJoQF1J27qNg0QGeaiB4GmYsw
         sEDUuvX1VGKSewEuz7uJgT3xpx2r5Ah2+QpA3ncdh4FA7fO9uQisCV9ltPrayvDnt931
         ti2EqLnyj2Cwee4G6fci8ZFYHl7t7hZQeWhRZe8GmmNzrgXkzBsi1llzjFRh4N8ZVZSw
         4EPZ6K76gzrElmClOldfQ4iT+SaTHtacuvV5x7bM5Cy38JgQnA8MQQzX66iKEefiTi5t
         0JP7BdOieHymV2s1UPBo6xNsN2VRVdPo7V5ZNQ5PiMzFocKJopeRlqh9OTHwURJkzrM4
         Njdw==
X-Gm-Message-State: AOJu0YzYqemDova0nImNbXdpgGCHATbv4Yi+9vFNLLCpQncsQ6e7dHZw
	1C9eKs9ildQ9FIBmIB3cWg==
X-Google-Smtp-Source: AGHT+IHkoTGEBKV6rZZg7WiLGiP6+Mb7p3oHWf3C06rFydhcw0A24vcNXVCbjQuWR8Y0z9Ns2eOgLg==
X-Received: by 2002:a05:6820:2290:b0:587:2b3c:e11f with SMTP id ck16-20020a056820229000b005872b3ce11fmr6022465oob.0.1700409167085;
        Sun, 19 Nov 2023 07:52:47 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id eg11-20020a0568200b8b00b0057b6ac3922esm1084662oob.18.2023.11.19.07.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 07:52:46 -0800 (PST)
Received: (nullmailer pid 254995 invoked by uid 1000);
	Sun, 19 Nov 2023 15:52:43 -0000
Date: Sun, 19 Nov 2023 09:52:43 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Jianhui Zhao <zhaojh329@gmail.com>, Daniel Golle <daniel@makrotopia.org>, James Liao <jamesjj.liao@mediatek.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: arm: mediatek: convert ethsys controller to
 the json-schema
Message-ID: <20231119155243.GA235374-robh@kernel.org>
References: <20231117074926.10824-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231117074926.10824-1-zajec5@gmail.com>

On Fri, Nov 17, 2023 at 08:49:26AM +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files. The only introduced change was fixing
> "reg" value in example (1 address cell + 1 size cell).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> For the record I was trying to simplify "compatible" syntax with
> following but "oneOf" apparently can't be used as a single item.
> 
> items:
>   - oneOf:
>       - const: mediatek,mt2701-ethsys
>       - const: mediatek,mt7622-ethsys
>       - items:
>           - const: mediatek,mt7623-ethsys
>           - const: mediatek,mt2701-ethsys
>       - const: mediatek,mt7629-ethsys
>       - const: mediatek,mt7981-ethsys
>       - const: mediatek,mt7986-ethsys
>   - const: syscon

The problem is you have nested 'items' which forms a matrix.

You generally need a 'oneOf' for each possible length of an array unless 
the value of each index is always the same (i.e. only the size of the 
list varies).

> 
>  .../bindings/arm/mediatek/mediatek,ethsys.txt | 29 ----------
>  .../arm/mediatek/mediatek,ethsys.yaml         | 54 +++++++++++++++++++
>  2 files changed, 54 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.yaml

Can you move this to bindings/clock/

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

