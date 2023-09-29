Return-Path: <devicetree+bounces-4659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E8E7B35F2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 74955289160
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2145C516D8;
	Fri, 29 Sep 2023 14:45:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D8841ABA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:44:58 +0000 (UTC)
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32BE7F9
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:57 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6c4d625da40so6830556a34.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998696; x=1696603496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=01y5cNCvPfb4OYfK837xZCqnHz3VLWbPQC7xgt5H0hY=;
        b=USi8X/xESxMYrvfXnT0bg75iLYEYnUYqyKbVDjC1zhzZS+IOoxd1fNoqUC1YyzW681
         idIhyj3bnaA/8s/a9RydTrw1NBV8lwr8jklgoyWGCn5li4/+vLJTQwCOFKD0RBXzataO
         S8xtiqaGG6GIBUbhfWM0wd1KaNy8FhxXJnnvwK7sUwk6pb3dH3mo/NekdxE8Rt4urR1d
         ZvGYzrTqqpPbdVCje3eVlfnOWNYBnAIj+I853xgXdInxCL0lCD4Fri5BaXWkGox1jNw6
         ILCbuiESCSdjH6CRq1D2HwSeWzZ7ZIfgumxbjIGPc3+gabvqaVYVAX6hGq9aDX6FomDU
         BznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998696; x=1696603496;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01y5cNCvPfb4OYfK837xZCqnHz3VLWbPQC7xgt5H0hY=;
        b=gkPDFKLgmvLL9VKU6aykbsbpRdECWf/FN++cQdkfImlwYioWR2ek6oCJPvabXVxelk
         KuRROzxdq6fgd9dVcWXs0YPp0z+RVHFh/7kNPAnt3O+D9sfZzlE7rHcA7Ns4x0XAX4Kx
         knL0f5YhG8C5pLytDf0o/S8T1rGv9ukhxq4Th2XzZsmzEdAkvYI/ujZJbYCdX6l4hy6y
         Baj1OuquwFZxgh/RE+q64p53fixdS3LQRq9/ZR8aSCuAG5Ztn+HfKBCJ/ptQX4FKjrvg
         PAHaAiXlC/oWUqBv8PbdjQNZKVFwQvP0LpVH/z3YF9LlXMQ7XcZbzr3O+PvlhFF9YJWp
         fqaA==
X-Gm-Message-State: AOJu0YxF22hYIi2zixE6AuLRq+DS5uGhnuJd+BoNDx1gD/CF2Gb/eK5j
	mrlZop0UwKvSx88YA8mR7eo=
X-Google-Smtp-Source: AGHT+IGQY5b4wIfQSmEpUS1OvVhEEtNueVAhRKUSvWsaW7sBuL6FsYyljX1MHvy7nxV1C0XW/1Uh7Q==
X-Received: by 2002:a9d:6a50:0:b0:6bc:8cd2:dd9c with SMTP id h16-20020a9d6a50000000b006bc8cd2dd9cmr4976738otn.36.1695998696296;
        Fri, 29 Sep 2023 07:44:56 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6653000000b006b753685cc5sm3012619otm.79.2023.09.29.07.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:44:55 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 0/4] Add Anbernic RG-Nano
Date: Fri, 29 Sep 2023 09:44:37 -0500
Message-Id: <20230929144441.3409-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-Nano handheld gaming device

Changes since V5:
 - Removed references to "driver" in comments in device tree.

Changes since V4:
 - Rebased off main branch as some patches had been pulled into main.
 - Re-enabled the internal RTC based on advice from maintainers.
 - Removed "clocks" property from internal RTC based on advice from
 - maintainers.
 - Gave external RTC alias of rtc0 and internal RTC alias of rtc1 so
   priority would be given to the external RTC. The external RTC keeps
   accurate time, while the internal RTC lost 8 hours for me in a 24
   hour period.

Changes since V3:
 - Added PHY to the OHCI and EHCI nodes. Note that the PHY driver
   currently forces the PHY to host mode always; a correction to
   the PHY driver or removal of the phy values from the OHCI and EHCI
   nodes are necessary to get otg mode working properly.
 - Disabled SoC RTC in favor of external clock. The SoC RTC is not
   set up correctly in hardware and runs fast, whereas the external RTC
   keeps accurate time. This matches the BSP.
 - Added labels to GPIO pins to aid in readability.

Changes since V2:
 - Add display support.
 - Add USB host support.
 - Removed CPU frequency and voltage parameters, as CPU regulator may
   be tied into additional areas that need further testing.
 - Added regulator names back, as they appear to have been accidentally
   dropped in v2.
 - Updated notes to denote all hardware tested and working.

Changes since V1:
 - Added additional pwm pin configs to sun8i-v3s.dtsi and removed
   default config for pwm0 in lieu of defining it for each board.
 - Noted in patch notes that additional hardware of UART debug port,
   USB port (in gadget mode) also work, and that USB host mode does
   not work.
 - Identified GPIO responsible for enabling external speaker amplifier
   and defined it, allowing onboard audio to work.
 - Removed ac_power_supply node.
 - Set regulator min and max values to the same value as defined in the
   schematics.
 - Removed definition for reg_ldo1. This regulator is hardware
   configured so the value did not affect anything, however the driver
   must be updated to support the correct value of 3.3v in this case.
 - Removed usb0_id_det-gpios as I cannot confirm these are correct.

Chris Morgan (4):
  arm: dts: sun8i: V3s: Add pinctrl for pwm
  ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
  dt-bindings: arm: sunxi: add Anbernic RG-Nano
  ARM: dts: sunxi: add support for Anbernic RG-Nano

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 276 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |  35 +++
 4 files changed, 317 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts

-- 
2.34.1


