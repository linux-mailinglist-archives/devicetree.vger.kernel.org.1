Return-Path: <devicetree+bounces-2852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 740BA7ACBB4
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:50:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 253E028125D
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A82DF45;
	Sun, 24 Sep 2023 19:50:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FA5DF43
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:50:51 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0015EFA;
	Sun, 24 Sep 2023 12:50:49 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9aa2c6f0806so623159266b.3;
        Sun, 24 Sep 2023 12:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695585048; x=1696189848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b0ZBqIoDYKMVCzgLuvboaux6shOrM5HIrW6ijoQ1dls=;
        b=W+d8e8CnuBYzNUMLvdHbm1e8ekL1oZ+fPJHI2UTQAfZO7KaNQNjKvqfn6t5hk2fCU8
         NkVhFfeiOACZhEajm/KMo6Xj7CwgdZDjwWYv/gaAjmzDffmtBpYvc5wY3Xx/I96dIO1g
         Um91DnBV757MiuiJneMi6CHrkViKdJT0FKlrpDB2+vPvemDB1jTQBKbkGmIQ9tyhGesl
         HF6ynFiQCNfPJ44aipfXWKEKxEQ4b0Pgq+LchpznwsQaLI9/nAjM9BEh5oKZ7Ah6o6tI
         gur5+S5LnVPEYsW0Kvk8zyuEx10redZfGD67e/FquULZ/5snG6Ts90kIqtzSxwWXHArF
         SJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695585048; x=1696189848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b0ZBqIoDYKMVCzgLuvboaux6shOrM5HIrW6ijoQ1dls=;
        b=DjlLi9J5qwsk9jmOUJnfi2dLRBa0YvthkZgMWipcqW6eBFAbdfTvSuLA6UM7aszVZe
         IOa5u03MpLITX/Pbq9FAIyjIPdRdAZ/QXB5dOp4Ah78/XjgENZZC82CkDlq3Zx2ww1Pt
         Ssv/eE8LH6z3jGo20Vo9voHI/3MYMAi8PEgOijM8+FzOziBWK6w/bOZ9PjhjPgV96p2v
         D7w7LPIBymsxHXl9ha7qVaiNyHo/c8LElZdJVg/SCV3zXTEBQPCA2aNvF+CBJuiv6LgI
         W8dMJO5qx0In94TRtpn7iHUcxCzqT/20UFpkxTVMHel41OjhPK2WwhBWdZZpEmvaZVCn
         5XbA==
X-Gm-Message-State: AOJu0Ywp3DVdCMONoiUQX/MzuXum9PIP1uHlok4PULNBVZMeXvuNewhx
	aAaS/Gi6SB0R641HdwPm9l/r5AW/i5i5eQ==
X-Google-Smtp-Source: AGHT+IHLYgqMybMHGPeaqhZNmoe5ADooSVrZz1GsWPUqF2lfGpcVEHt34hg0NCrjDiXTINlAK7E+8g==
X-Received: by 2002:a17:906:68c9:b0:9ae:7387:897b with SMTP id y9-20020a17090668c900b009ae7387897bmr3799726ejr.30.1695585048383;
        Sun, 24 Sep 2023 12:50:48 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id s2-20020a170906354200b0098ec690e6d7sm5338376eja.73.2023.09.24.12.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:50:48 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Lee Jones <lee@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, Mark Brown <broonie@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Shengyu Qu <wiagn233@outlook.com>,
 Martin Botka <martin.botka1@gmail.com>,
 Matthew Croughan <matthew.croughan@nix.how>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v3 1/2] dt-bindings: mfd: x-powers,axp152: make interrupt optional
 for more chips
Date: Sun, 24 Sep 2023 21:50:46 +0200
Message-ID: <2900712.e9J7NaK4W3@jernej-laptop>
In-Reply-To: <20230919103913.463156-2-andre.przywara@arm.com>
References:
 <20230919103913.463156-1-andre.przywara@arm.com>
 <20230919103913.463156-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne torek, 19. september 2023 ob 12:39:12 CEST je Andre Przywara napisal(a):
> All X-Powers PMICs described by this binding have an IRQ pin, and so
> far (almost) all boards connected this to some NMI pin or GPIO on the SoC
> they are connected to.
> However we start to see boards that omit this connection, and technically
> the IRQ pin is not essential to the basic PMIC operation.
> 
> The existing Linux driver allows skipping the IRQ pin setup for two chips
> already, so update the binding to also make the DT property optional for
> the missing chip. And while we are at it, add the AXP313a to that list,
> as they are actually boards out there not connecting the IRQ pin.
> 
> This allows to have DTs correctly describing those boards not wiring up
> the interrupt.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Should I pick this patch through sunxi tree?

Best regards,
Jernej

> ---
>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index 9ad55746133b5..06f1779835a1e 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -67,7 +67,10 @@ allOf:
>          properties:
>            compatible:
>              contains:
> -              const: x-powers,axp305
> +              enum:
> +                - x-powers,axp15060
> +                - x-powers,axp305
> +                - x-powers,axp313a
>  
>      then:
>        required:
> 





