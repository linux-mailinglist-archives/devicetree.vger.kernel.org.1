Return-Path: <devicetree+bounces-2148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3AD7A9C2C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1ADBDB21ED4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044C53F4CA;
	Thu, 21 Sep 2023 18:10:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CE19BB9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:10:42 +0000 (UTC)
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 217ADAECCF
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:06:21 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-41206fd9717so7612061cf.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695319580; x=1695924380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xQnk/EukUl4gGn7jN6jFIM1Bdgyvc5pMRWDJFOFOqH4=;
        b=TzPP0JxsunXlzH3CGZmtAdOYwz5R4BNT/Tsi9E2Ht2Gcc+3JhvD0OacWXGz/zfqnAs
         YyVSeu0OU+yPP8p9csSyml5oPKv8d3RjJPpU2OOj5BwYV2AeTA+DLIGFQR/Jk6rurVU/
         Dg7KWzvJuSbe3IyF8Msbs4cmi9TsSyosVP4soEb7n4JWaiDTUjfTkA0q2EOCCmgVTAWy
         hGjgiAlqgFlVHy1G2HLsYHn2hrg7AWM5F2x4HDs90sCH5wFwv8ZOFBRd8S+v9LxglaPe
         fZchB38daUsY2uGpz7gVvIfNQfaW1rPCmVgpYyASh+9BZelGu4/y+eNUDD1Mt7xhThly
         +55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695319580; x=1695924380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQnk/EukUl4gGn7jN6jFIM1Bdgyvc5pMRWDJFOFOqH4=;
        b=abZ9gsveiy8FMCVXZK983g85ttiB5It+UAwbRk7001uiPk9UGYFVgQvAQPEGs3wTTS
         D6ELXh6+ZYHKtuPdey7WHQyJnIrjUWQtCvYwyBo/zgbmJyZsB5glsn7jxaisCEyCrW8y
         A/zh+auNtMzCW96d9cA0rMGmxgPQnddn+QfliNAm7N0X9hDgik79swRDQnVrudJ67xuZ
         2Mvl9MM6UG/2sM3gAE3Xlb4Lpxtp3ec29IksYA7bRQ68mhOXd2pcDzSwhqNMFWnB04r2
         tw6dYkkNMoJCBtDFsufPINl31vnUZcinwJL9/gjP2ZTfDScm0enhQMqxQEv0vt/lr8FJ
         zjNQ==
X-Gm-Message-State: AOJu0YxItRYfAl/ImMw093k4JuNZ8Ip3ZXcxwUAOQ6UxxPNnFSv1Vro0
	ullAxJxGl64Zd2u1OGY1jmVfYs9Va7A=
X-Google-Smtp-Source: AGHT+IGLbGu1Hl53B84DZYVc0hKVnYUWkHEkkbXYl9svuF2zdhPRlvJ1p4GV81ed7n4DuvYDgTXW5A==
X-Received: by 2002:a05:6871:6a7:b0:1d5:a3e5:ca1a with SMTP id l39-20020a05687106a700b001d5a3e5ca1amr5992821oao.16.1695304302133;
        Thu, 21 Sep 2023 06:51:42 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870e15300b001d7034bc222sm547064oaa.15.2023.09.21.06.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 06:51:41 -0700 (PDT)
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
Subject: [PATCH V5 0/4] Add Anbernic RG-Nano
Date: Thu, 21 Sep 2023 08:51:32 -0500
Message-Id: <20230921135136.97491-1-macroalpha82@gmail.com>
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
 .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 284 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |  35 +++
 4 files changed, 325 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts

-- 
2.34.1


