Return-Path: <devicetree+bounces-6474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D18F7BB7A2
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DE5F282369
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC1714AA6;
	Fri,  6 Oct 2023 12:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i2mlEtJr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442351D53F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:30:28 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C1FB12A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:30:19 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52fe27898e9so3838622a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696595417; x=1697200217; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sYSZgor/RBGjf4wuXsOz+ucEbF12Vj/yAHNRuHZ3l+Q=;
        b=i2mlEtJrA7fE5xNLnVS42Kxq7T87YxagT0s9Bdw76j2ejWhNdyBX3+3j3NLxrVP8wV
         +FRzwA37aXtuiSKsOxqgS0Tj81X6C8JnZaJkrbfD50KwyeafelCUedU9+ogwmiCOZ/tO
         gojugn+AEy/C5/E/1kHQ2paOQcU748fZtErmhCEEzrBFFbGDOJYopfKtL4/9RG0kYQvR
         45+PR/bvWAHlCprhCaMR+FMGYgr4oe743UmWA4OcrYPvZtTvR9n83IY7trakfPe9sHdA
         CQHRc1g6ZHgIh4FUdJK0tiq5n0nmN17zh3XlseHWoV548/asSm2fLvsBZk1PJ00NRv7c
         Mlqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696595417; x=1697200217;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sYSZgor/RBGjf4wuXsOz+ucEbF12Vj/yAHNRuHZ3l+Q=;
        b=bZqpXXkxkhUDwTOPKH2TltdwLojMm+4dI4MCrKgO1eQa2aSJK5T/TGvJAaCW9wnlAd
         SU5M/1aWwojOf8/04SVt4kht5aF1SoKESUsX+yhSBceir1R/a4xwgFFoHp2kS6HWn3fw
         fOua7Hfwx+jiRVB3cg3k6c9coelX6PS0aRHixRy3J2UMtmPCr9uLAuCN0gfOh/atiNY7
         S94KIOCEjjDs/kwv/yfy5e+bROkQxhykdmn12FHv4hckypWuHMFwnkkT3F56nQ9ooB2V
         VD8x84bqrBdEa3jw1mftRdPMlGHvak/9WXqFmOJ54YMhCH3PWU8XFmwyND1Rlksi4EOp
         F4yg==
X-Gm-Message-State: AOJu0YxPgnB6oLRdgTCWDM4R6fzo+Me073qmSPrO8SHug2rnLfI/Y8Dn
	wnJn3NVpR5/03QlZCR3sj6Tkbg==
X-Google-Smtp-Source: AGHT+IHTOw/VY6TBFq65jsChMS223mo3Uv9ez720nz2z/rFj0PF94m9QIFEGrTuIdcUQuzYKV9Ty9Q==
X-Received: by 2002:a50:ee91:0:b0:51e:53eb:88a3 with SMTP id f17-20020a50ee91000000b0051e53eb88a3mr6699147edr.25.1696595417011;
        Fri, 06 Oct 2023 05:30:17 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id v4-20020aa7d9c4000000b0052284228e3bsm2511897eds.8.2023.10.06.05.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:30:16 -0700 (PDT)
Date: Fri, 6 Oct 2023 13:30:14 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Karel Balej <balejk@matfyz.cz>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/2] dt-bindings: backlight: add Kinetic KTD2801 binding
Message-ID: <20231006123014.GA96854@aspen.lan>
References: <20231005-ktd2801-v1-0-43cd85b0629a@skole.hr>
 <20231005-ktd2801-v1-1-43cd85b0629a@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231005-ktd2801-v1-1-43cd85b0629a@skole.hr>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 05, 2023 at 08:49:08PM +0200, Duje Mihanović wrote:
> Add the dt binding for the Kinetic KTD2801 backlight driver.
>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
> ---
>  .../bindings/leds/backlight/kinetic,ktd2801.yaml   | 46 ++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd2801.yaml b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd2801.yaml
> new file mode 100644
> index 000000000000..970d54bac18e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd2801.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/backlight/kinetic,ktd2801.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Kinetic Technologies KTD2801 one-wire backlight
> +
> +maintainers:
> +  - Duje Mihanović <duje.mihanovic@skole.hr>
> +
> +description: |
> +  The Kinetic Technologies KTD2801 is a LED backlight driver controlled
> +  by a single GPIO line. The driver can be controlled with a PWM signal
> +  or by pulsing the GPIO line to set the backlight level. This is called
> +  "ExpressWire".
> +
> +allOf:
> +  - $ref: common.yaml#
> +
> +properties:
> +  compatible:
> +    const: kinetic,ktd2801
> +
> +  enable-gpios:
> +    maxItems: 1

Why "enable"? This is the line we are going to us to bitbang the
ExpressWire protocol. Doesn't that make it a control or data pin?


Daniel.

