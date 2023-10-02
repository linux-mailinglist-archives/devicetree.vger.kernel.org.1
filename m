Return-Path: <devicetree+bounces-5184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5457B58A5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DD4841C20835
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C73D1DDE2;
	Mon,  2 Oct 2023 17:14:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9EA1A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:14:12 +0000 (UTC)
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67E3AC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:14:10 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-7741bffd123so3366385a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1696266850; x=1696871650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2vIApzqx7RSqfv9G4qO6eh847tMk8NOWVGPEc61q9ek=;
        b=hyHGKvKu0WUl0mYMLep4im3oeXdVijVjlL/T3dd3whaKcDs121krpwqDDXLTTGEtP7
         Tw99tkUqHTS3ruXr5JfD40ZeLD8RRMCXgt2OBbhl39GR3YkwkhdDew1SOmzQyEs705N+
         LO2pHT7pFcb51hgcfkxeFWVUw05eq75GeZvu/KGYp2Vok7mevg+VzCA9fP2PlMHyH4z/
         zzxr0s43W0C6lwgiPz6E119N7QKXVrfe0ZjCoWC8za92UDGucobPeIxLn8hcRr1T11ES
         pxbTP8FYmg7vvi42nfBij87HHI4bXK3nvZ3CLd6AnPjrD4eYfVMjHoFZmAI+OAWe7uB8
         UR+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266850; x=1696871650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vIApzqx7RSqfv9G4qO6eh847tMk8NOWVGPEc61q9ek=;
        b=WJWG1EFrumJTNtXXfUdb3NLd/duQ/HHnVNrVLC+A+Q3WGG2qGllg0IwhOeO6IgYAAQ
         UMH25ftQtk9AEat/uJz+t/e+zr2luLai5I9PrgHmVWFRxnIfHH5jJyEHEMF2ZKvphFmZ
         gV++X6tCnB0ujFZo5lic/tP7bgGiKDgW6wtT0Gs7qO64F/afdJINPkaNDeQ3i0+6pJYf
         vABfTExtEMEE4nGxRCqjsqAhhX30Q47QzAHaVZfDvnDO1618/untC+oQGD4w/rYzlf/N
         RLCXHYKfObfKRew19DmyFz+Coj36iIQHlCwpt49GwfaPwz/CaqGcfqsHlLuv/DDOWGNX
         KI2Q==
X-Gm-Message-State: AOJu0Yzb0+NNM5oo5stPFLH8SUtE8500gT467gE+AMY6iIbtXMTldAGT
	yzh0AjHJkGUMZ/uX9zCxSGHfcg==
X-Google-Smtp-Source: AGHT+IFZurT7JngeQirwA2jtLYPng4babEnnQLl5D2Ptls5BdYYfh6ahjHWl685659a+Wn7KA9QJDA==
X-Received: by 2002:a05:620a:31a5:b0:775:8040:ede6 with SMTP id bi37-20020a05620a31a500b007758040ede6mr14551196qkb.21.1696266849865;
        Mon, 02 Oct 2023 10:14:09 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dy52-20020a05620a60f400b007678973eaa1sm9132660qkb.127.2023.10.02.10.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:14:09 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 0/2] ARM: dts: stm32: add SDIO pinctrl sleep support on stm32f7
Date: Mon,  2 Oct 2023 13:13:37 -0400
Message-ID: <20231002171339.1594470-1-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for switching the SDIO pins on the STM32F7 series to analog
mode when not in use to save power.

I don't have any of the disco/eval boards to test, but I have tested
this on an Emcraft STM32F746 SOM with a UCL-SOM-BSB carrier (using an
out-of-tree DT) and our custom carrier board.

Ben Wolsieffer (2):
  ARM: dts: stm32: add stm32f7 SDIO sleep pins
  ARM: dts: stm32: add SDIO pinctrl sleep support on stm32f7 boards

 arch/arm/boot/dts/st/stm32746g-eval.dts   |  3 ++-
 arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi | 22 ++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32f746-disco.dts  |  3 ++-
 arch/arm/boot/dts/st/stm32f769-disco.dts  |  3 ++-
 4 files changed, 28 insertions(+), 3 deletions(-)

-- 
2.42.0


