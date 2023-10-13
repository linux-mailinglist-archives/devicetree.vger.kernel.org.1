Return-Path: <devicetree+bounces-8392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A38017C7ECF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 09:46:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEDAA1C2083E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 07:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7DA101EC;
	Fri, 13 Oct 2023 07:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2PvP0qX1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26115692
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 07:46:30 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A793BE
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 00:46:28 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5068692b0d9so2307120e87.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 00:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697183187; x=1697787987; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=wP8hZWh4qXyybXYLkSLcCZu/0fSSL+752WobzxTNboE=;
        b=2PvP0qX1Kb/XjDabWI/PzKNPTRta7BnboXvRCqD9rHVAAgruwu4lsxR7lOFyvR2ez1
         JE4wfU3K8lotvUF2dG88RTSTt6B7rivBrW39Fq49PqL9xUSD4ycIZKR8Qf13bmkVqWQR
         kxFGMGMnxH0ug9B+JLi/JXqcDYTJyhTvZ0Tzd0kneivrFCUjc+t7gKj6NP+CcWgLWBWA
         ZVrqX+cIQC49b3zgjKB8VfsDgr9YHsju9ODo5bCy0QP68GJ4eGCtaJWsHHSjoCjr46XV
         egfobmFMV1y3ngEnwQY+75aYdvBxPA3JHsLca8PHCBOcJe9R+VraEaOErKLPzdBWwF3/
         anYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697183187; x=1697787987;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wP8hZWh4qXyybXYLkSLcCZu/0fSSL+752WobzxTNboE=;
        b=Lgp9KU4IYq/ELReRWNaSohkaPJ0bbGVCIISPCIQWGxGWxRZRc7g4NKOxrDxXGbPypD
         nOr0DLEUcsMUMSBeh1398gX5yDzGs87oCRBzL4gpnznH4hhYLuVuTI2M08IHEYmCFOvT
         Q+hRmavcX3rTGk5luoMoSupwzW9/0rpDndHLEfwEs2FTUkAahUiFuv31NMZaPJiHOtOu
         eEBtjSfQNvOw8q6LqhsEsiiFNXSOD10Ujd/uXBnZk1Ga32wTtBj9bYGekuq22fvlpzuk
         JX/zz5tgFZ/Zf8n/MhQq4a0Jtmnu8FPkvQj7hf8kxPe0+kdqQe2HmBvIunKvE2DaY226
         pUjw==
X-Gm-Message-State: AOJu0Yxh3dM0q++yyw/iHSFawb0Op8n2IyuA67zWgL8EdDZyoH1YYh/m
	1ZfMZ0rgGMwMC6jdQ8u/F4jJgw==
X-Google-Smtp-Source: AGHT+IEkyEN8zAQ5/dhZe4B9ajTP0EDEK/rSt7LjwGLHX2RHEZPT+iFlTiLC7YassaX2zhaMHUp92A==
X-Received: by 2002:a19:5f04:0:b0:4fb:94c6:fd63 with SMTP id t4-20020a195f04000000b004fb94c6fd63mr16394959lfb.17.1697183186650;
        Fri, 13 Oct 2023 00:46:26 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:b50c:c5d5:8b1b:e06d])
        by smtp.gmail.com with ESMTPSA id r6-20020a5d4946000000b0032da022855fsm252248wrs.111.2023.10.13.00.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 00:46:26 -0700 (PDT)
References: <20231010062917.3624223-1-xianwei.zhao@amlogic.com>
 <20231010062917.3624223-5-xianwei.zhao@amlogic.com>
 <5e0bd4bba88701dd1a7a3e89d18412f0.sboyd@kernel.org>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>, Xianwei Zhao
 <xianwei.zhao@amlogic.com>, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Michael Turquette
 <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kevin Hilman
 <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Chuan Liu <chuan.liu@amlogic.com>
Subject: Re: [PATCH V2 4/4] clk: meson: c3: add c3 clock peripherals
 controller driver
Date: Fri, 13 Oct 2023 09:38:14 +0200
In-reply-to: <5e0bd4bba88701dd1a7a3e89d18412f0.sboyd@kernel.org>
Message-ID: <1jmswnvub2.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Thu 12 Oct 2023 at 16:51, Stephen Boyd <sboyd@kernel.org> wrote:

> Quoting Xianwei Zhao (2023-10-09 23:29:17)
>> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
>> index 76be4bbd2afb..c8d59d28c8ff 100644
>> --- a/drivers/clk/meson/Kconfig
>> +++ b/drivers/clk/meson/Kconfig
>> @@ -140,6 +140,19 @@ config COMMON_CLK_C3_PLL
>>           Say Y if you want the board to work, because PLLs are the parent of most
>>           peripherals.
>>  
>> +config COMMON_CLK_C3_PERIPHERALS
>> +       tristate "Amlogic C3 peripherals clock controller"
>> +       default y
>
> Why are these default y? They should depend on something like ARM64 and
> even then I don't see why we want to enable them by default if we're
> building the ARM64 kernel.

Should indeed depend on ARM64.

Those are the main clock controllers. Like for other AML SoC families,
they are necessary to boot the device which is why they use 'default y'

Is it a problem ?

The whole meson directory depends on ARCH_MESON, so the drivers will go
away if Amlogic support is removed on ARM64.

