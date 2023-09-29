Return-Path: <devicetree+bounces-4711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E1F7B385F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 38CD71C20AB0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E7AC4CFC8;
	Fri, 29 Sep 2023 17:09:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF5C42C17
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:09:27 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 107B51AE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:09:25 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so976209566b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696007363; x=1696612163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujmc83yMXpLQs62oq9Ku7OlREc5p41OJ1IYLLDbMl+E=;
        b=GzxUxaCq/CqNJXVDMGZkiLwbSZLd8OiV2HTCLtef663KT7d6+C9GwHVveedEUCWq4B
         2ScP46pbIXWbN2N4/GRJMsHI5L+SNSKetuUbiPffOXoAUQ5Ug9htxIJY2CtDsMNkN8ya
         J/yw2oB7w86QIA1LlZpufqR7B/gKmfn/NgR94v/wzXbiGvogBRWdrArbN3uH2xcVz6F0
         MBFj8bz8pJUL17Jx+ly/AOjqVquiS8hTEk5MrmLkEMLoKV9FwlOy9Oguu2qQTTPsejmX
         j9AFAhUb67+/O4pB3HlQRp5hpCIBb9CgK8zqpbYp/1Ry2aSE8Q61dGj9dkBPEXmrmQz3
         3VeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696007363; x=1696612163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ujmc83yMXpLQs62oq9Ku7OlREc5p41OJ1IYLLDbMl+E=;
        b=hdLu+VyprR4ZQuV+svvKchPiSWkwufFdrAFANcM1PiqYKcmtd9DIV0kgYzx8dNGVLx
         DAcVfX9VeBx/a3OF53HMLIEFYecT1OC9+/p0OqZ63QjNDLM7Dgv4/erdP/lc3ipjMIlo
         6S4r7XpZN3ykGhNSTg0sd7jLLjPRughhNz4w8J2o+Y8u3MjCIRhrLtroaRcBx0p4KjXr
         MYYFUMdF5kYC3YU7goetouFNJhgui0zAWLNgabSJiy0uxZTh5F3X1EyrT8Qtrnq6b68j
         M8XwxNQFgiEb4MCeZ8Qux7ur75Zgg/0ZjNxTWpy2sn1INQ8SByVjlXRf2M0vumEPsv4w
         E3Fw==
X-Gm-Message-State: AOJu0YzSdU8ZhVMDN+MlfypgbM/0R7EALyZSYG7iz9quS6U2q8fYpsCy
	X03mDi0QTkMGuqQQ7KBgY/s=
X-Google-Smtp-Source: AGHT+IGqE2ODrXB51bwkoA2pZUpFK02WZje6PSamseE7PI4J+zgN/84WhvtDm7xPzh7WNHrV1ajI/w==
X-Received: by 2002:a17:907:78c4:b0:9ae:37d9:803e with SMTP id kv4-20020a17090778c400b009ae37d9803emr4842386ejc.8.1696007363114;
        Fri, 29 Sep 2023 10:09:23 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id rh27-20020a17090720fb00b0099b6becb107sm12766981ejb.95.2023.09.29.10.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:09:22 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
 samuel@sholland.org, wens@csie.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 andre.przywara@arm.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 0/4] Add Anbernic RG-Nano
Date: Fri, 29 Sep 2023 19:09:21 +0200
Message-ID: <12291999.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <20230929144441.3409-1-macroalpha82@gmail.com>
References: <20230929144441.3409-1-macroalpha82@gmail.com>
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

Dne petek, 29. september 2023 ob 16:44:37 CEST je Chris Morgan napisal(a):
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG-Nano handheld gaming device
> 
> Changes since V5:
>  - Removed references to "driver" in comments in device tree.
> 
> Changes since V4:
>  - Rebased off main branch as some patches had been pulled into main.
>  - Re-enabled the internal RTC based on advice from maintainers.
>  - Removed "clocks" property from internal RTC based on advice from
>  - maintainers.
>  - Gave external RTC alias of rtc0 and internal RTC alias of rtc1 so
>    priority would be given to the external RTC. The external RTC keeps
>    accurate time, while the internal RTC lost 8 hours for me in a 24
>    hour period.
> 
> Changes since V3:
>  - Added PHY to the OHCI and EHCI nodes. Note that the PHY driver
>    currently forces the PHY to host mode always; a correction to
>    the PHY driver or removal of the phy values from the OHCI and EHCI
>    nodes are necessary to get otg mode working properly.
>  - Disabled SoC RTC in favor of external clock. The SoC RTC is not
>    set up correctly in hardware and runs fast, whereas the external RTC
>    keeps accurate time. This matches the BSP.
>  - Added labels to GPIO pins to aid in readability.
> 
> Changes since V2:
>  - Add display support.
>  - Add USB host support.
>  - Removed CPU frequency and voltage parameters, as CPU regulator may
>    be tied into additional areas that need further testing.
>  - Added regulator names back, as they appear to have been accidentally
>    dropped in v2.
>  - Updated notes to denote all hardware tested and working.
> 
> Changes since V1:
>  - Added additional pwm pin configs to sun8i-v3s.dtsi and removed
>    default config for pwm0 in lieu of defining it for each board.
>  - Noted in patch notes that additional hardware of UART debug port,
>    USB port (in gadget mode) also work, and that USB host mode does
>    not work.
>  - Identified GPIO responsible for enabling external speaker amplifier
>    and defined it, allowing onboard audio to work.
>  - Removed ac_power_supply node.
>  - Set regulator min and max values to the same value as defined in the
>    schematics.
>  - Removed definition for reg_ldo1. This regulator is hardware
>    configured so the value did not affect anything, however the driver
>    must be updated to support the correct value of 3.3v in this case.
>  - Removed usb0_id_det-gpios as I cannot confirm these are correct.
> 
> Chris Morgan (4):
>   arm: dts: sun8i: V3s: Add pinctrl for pwm
>   ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
>   dt-bindings: arm: sunxi: add Anbernic RG-Nano
>   ARM: dts: sunxi: add support for Anbernic RG-Nano
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  arch/arm/boot/dts/allwinner/Makefile          |   1 +
>  .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 276 ++++++++++++++++++
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |  35 +++
>  4 files changed, 317 insertions(+)
>  create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> 

Applied, thanks!

Best regards,
Jernej




