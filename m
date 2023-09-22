Return-Path: <devicetree+bounces-2536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1FA7AB32D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:57:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 7EFA0B20A59
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A5D3D96F;
	Fri, 22 Sep 2023 13:57:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4F4200BE
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 13:57:01 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63EC0E8;
	Fri, 22 Sep 2023 06:57:00 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40537481094so17402745e9.0;
        Fri, 22 Sep 2023 06:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695391019; x=1695995819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uYmcQp7vI7x84q3XTY7R5Vsp8JpMVN4Mce8y4Mffa3s=;
        b=Q9hdSOsHsqjqAEKmXHujqTx3TGxNo8mrXztWOXrRIAVdmRMALv2q3VIppe2I9i/EoD
         lCMTzFkfgT6FSH7Qed12Y3cyovLxlVsUk9tc/jitWTwPuAuorgwvzUs1Wh8O3Fz8V8jc
         NVXlSDOje31/NyiO4UDBAqJK+4nqzGyMizYS2peKz9SvDBHMw3UCC7DgaLRTBIX/hATJ
         oIfiIjRZigrX7Q80D+W9vKMQMyQqL5lxDUVh2SejsK9yH5fSF1nhyVoMm9eBdoEvZZvw
         3kZD9FwLEi2dz4yGEdWNa6B+HqEPIiNMKL9T/lCWdn7BFnkNXOP7meseQto954ZSJ1cO
         4CLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695391019; x=1695995819;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uYmcQp7vI7x84q3XTY7R5Vsp8JpMVN4Mce8y4Mffa3s=;
        b=K8dbvjy59LnKPMhma5NnIcdtYlgYelWm+w+vjhcROJtG91tLgSH+L/20KDmk9VNJag
         mJesPGInOzoi1ovZgk+Izu4PKlLX5myMrJ7wgmyEYAvn76mcf8XfP8gEukW3htlBoVuY
         Ni94f9rTO5h8ePx198PwvFOsaViPrVfWN03emIWhSH6f4aKw/iLA4YMaSL+be2Pbf9zp
         cfrf8FORPAgAxEsnRaG7IpqMzEInvtgessxF8lIDIDChMPDDyiKeTpoZmVkzVZCqWcjq
         d1M1E6QhUZv/u4kXTcexsLivB0sg5PfCAAj9rTmfXVqXLrpG7EvdV1NQJqqsFx6yE9EQ
         +Iqw==
X-Gm-Message-State: AOJu0YxzWv1Wd2N+MzBrynP73OvYUlqgx0c244pzEHh8MMhjKSBKvanV
	ZgYMGR3vQTAvBtZSmY0p82Y=
X-Google-Smtp-Source: AGHT+IHETahtZVL/bYzSY6bMwgQV/TMYomewYLE+hdM2b2wIWq+JY9YvTsNAagOx7mEnUcaGH/8z7w==
X-Received: by 2002:a05:600c:2304:b0:402:8896:bb7b with SMTP id 4-20020a05600c230400b004028896bb7bmr7939578wmo.6.1695391018517;
        Fri, 22 Sep 2023 06:56:58 -0700 (PDT)
Received: from [192.168.0.84] ([178.233.24.52])
        by smtp.gmail.com with ESMTPSA id b12-20020adff90c000000b0031fb91f23e9sm4498772wrr.43.2023.09.22.06.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 06:56:57 -0700 (PDT)
Message-ID: <e045afaa-bc38-4fed-966e-a034e106c86c@gmail.com>
Date: Fri, 22 Sep 2023 16:56:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
Content-Language: en-US, tr, en-GB
To: Simon Glass <sjg@chromium.org>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
 linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dhruva Gole <d-gole@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
In-Reply-To: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-09-21 21:45 +03:00, Simon Glass wrote:
> Binman[1] is a tool for creating firmware images. It allows you to
> combine various binaries and place them in an output file.
> 
> Binman uses a DT schema to describe an image, in enough detail that
> it can be automatically built from component parts, disassembled,
> replaced, listed, etc.
> 
> Images are typically stored in flash, which is why this binding is
> targeted at mtd. Previous discussion is at [2] [3].
> 
> [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
> [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.org/
> [3] https://www.spinics.net/lists/devicetree/msg626149.html
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  .../bindings/mtd/partitions/binman.yaml       | 50 +++++++++++++++
>  .../bindings/mtd/partitions/binman/entry.yaml | 61 +++++++++++++++++++
>  .../bindings/mtd/partitions/partitions.yaml   |  1 +
>  MAINTAINERS                                   |  5 ++
>  4 files changed, 117 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml

This doesn't match the schema in [2], but seems more like v1 of that. Is
that intentional?

