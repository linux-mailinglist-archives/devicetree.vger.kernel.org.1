Return-Path: <devicetree+bounces-6893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ADD7BD7AE
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B920C1C208D9
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7DE171B8;
	Mon,  9 Oct 2023 09:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cRlQLn/b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C10168D6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 09:52:19 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E31599
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 02:52:16 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-323168869daso4251928f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 02:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696845135; x=1697449935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KTlCqvJvWR1oqZWw+hzx3aeKDF9bM2oUn/096ZaKcwQ=;
        b=cRlQLn/bMrK+fOgp0JS65vtETwDuMcTZ7ySMj57YxmaGhmSisSu0y5zp4yLaoSoyDH
         klGcr2l7OxRwMdyi7k+/KThOguM4n7zRzwDzp4uFKIdVPkdsO0G68xtinxWMeItBcouy
         k22awPaoqmFYVDTU108dAkHkWNOd2Uw5sGmjpetmHNUzK3BvH5ImegB4cD+s80RZFcav
         sunuu8o1ORd5WpmcZaPpxSP7Mim4XuGXxf56GBCcFeHQ0ZRMXaY6nPiIN2DTVMZ0r7T9
         zlZ12TNNGkysQpvjyJQ+Fog0H8G5Grt5uHgfm1vyH4TfolMtT0V07lyWEZGWR3lkRT+9
         aF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696845135; x=1697449935;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KTlCqvJvWR1oqZWw+hzx3aeKDF9bM2oUn/096ZaKcwQ=;
        b=FtPR5tGVL+wtYL8PiQ4pLIbbjmPdDPu2dRWdJGGSB+TOGTzvijflsIQYd0j2o0COel
         WZgNQg5lIr6FuNFZiMTY23fl+xJ62HGZ/8Ri/EdjZYFCBTu9gjYUw2eTMfGv97AS429E
         Ty4Zbfh7bFHPzkVKbA/qH/Boh9OF9OySE5VSH1mzYL/uAQ/5f0Pr2ma0y8XPtRuK5NKP
         hIykKdoB2uPFn0CAkjYsNz2Q+8Xw2LXwP6uFY5gNtCfHd8fm8jqxQ4nUcS9qJx00grWY
         aR9yyi8wRZgDKD7YWi0pXYzG8kaZyOXG5HLJ+YidyTGEre09ym0NmqQE73e4rVRNXQix
         pQ2w==
X-Gm-Message-State: AOJu0YxKevA9G4rkt/a1nNRHGiYbUvNt1l4G90rGac4bEVZs+h4mxA0u
	A1/VP/3/RtwqykpSaydFF2rQ9w==
X-Google-Smtp-Source: AGHT+IHMPU/ttq6UzR4WDhz6H1sSoSmpPEbYEoiffHswXnHcX5EM8YUtNHk4AdOQOQliiw/LHSs02w==
X-Received: by 2002:adf:ec4d:0:b0:31f:b79a:c4b7 with SMTP id w13-20020adfec4d000000b0031fb79ac4b7mr13874817wrn.24.1696845134761;
        Mon, 09 Oct 2023 02:52:14 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:88ad:b7c0:92ba:cace? ([2a05:6e02:1041:c10:88ad:b7c0:92ba:cace])
        by smtp.googlemail.com with ESMTPSA id b16-20020adfe650000000b003266ece0fe2sm9026653wrn.98.2023.10.09.02.52.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 02:52:14 -0700 (PDT)
Message-ID: <576809c2-b7bc-4342-9c63-0662bfcecebf@linaro.org>
Date: Mon, 9 Oct 2023 11:52:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add RZ/G2UL MTU3a support
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Conor Dooley <conor@kernel.org>
References: <20230727081848.100834-1-biju.das.jz@bp.renesas.com>
 <20230831-iphone-muscular-7442cda2c39e@spud>
 <TYCPR01MB5933370B7660B8504B2D8D7386FBA@TYCPR01MB5933.jpnprd01.prod.outlook.com>
 <TYCPR01MB112697D67514D2E6FC690B9F886CEA@TYCPR01MB11269.jpnprd01.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <TYCPR01MB112697D67514D2E6FC690B9F886CEA@TYCPR01MB11269.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 09/10/2023 08:54, Biju Das wrote:
> Hi all,
> 
> Gentle ping. This patch is in the patch work for a while.
> It is acked/reviewed by Conor Dooley and Geert Uytterhoeven.
> 
> Can we apply to mainline if you are happy? Or do you want me
> to RESEND the patches? Please let me know.

Krzysztof ?


>>> On Thu, Jul 27, 2023 at 09:18:43AM +0100, Biju Das wrote:
>>>> This patch series aims to add MTU3a support for RZ/G2UL SMARC EVK.
>>>> Also it fixes overflow/underflow interrupt names.
>>>>
>>>> v2->v3:
>>>>   * Dropped patch#4, as it accepted for 6.5 fixes.
>>>>   * Moved patch#2 to patch#1 as it is fixes patch.
>>>>   * Added Rb tag from Geert for patch#1 and patch#3.
>>>>   * Updated the link to lore for Closes tag for patch#2.
>>>>   * Documented RZ/Five SoC as the same IP used in RZ/G2UL SoC.
>>>>
>>>> v1->v2:
>>>>   * Added Ack tags from Conor Dooley for binding patches
>>>>   * Updated commit description RZ/G2UL->RZ/{G2UL,Five} for patch#5.
>>>>   * Fixed build error reported by kernel test robot by replacing
>>>>     GIC_SPI x ->SOC_PERIPHERAL_IRQ(x) for patch#5.
>>>>
>>>> Biju Das (5):
>>>>    dt-bindings: timer: renesas,rz-mtu3: Fix overflow/underflow interrupt
>>>>      names
>>>>    dt-bindings: timer: renesas,rz-mtu3: Improve documentation
>>>>    dt-bindings: timer: renesas,rz-mtu3: Document RZ/{G2UL,Five} SoCs
>>>>    arm64: dts: renesas: r9a07g043: Add MTU3a node
>>>>    arm64: dts: renesas: rzg2ul-smarc: Add support for enabling MTU3
> 

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


