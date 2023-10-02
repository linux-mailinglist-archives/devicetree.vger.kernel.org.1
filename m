Return-Path: <devicetree+bounces-5205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7637B5986
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:09:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C210728287F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98BC1EA76;
	Mon,  2 Oct 2023 18:09:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1A01E538
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:09:31 +0000 (UTC)
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A41C8B7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:09:29 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-77574c6cab0so5698285a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1696270169; x=1696874969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NfCq6MAu8bRwi9TEgatpoY4BVdbPJq248wgHhwcLCxU=;
        b=o4IDCPuTM8iyeYj8RegdYI1xVjbpUCBHKWJXxY37aNY4dpbT3l0sPIoh+rKuDDRw+8
         bPpPesxNPTMPMM5TJCKsQWxG5Cr0oVocEO5vfZFLTmh0RDl8fUvSchVFArSFLYhap/v3
         2I/F7mh+85TUWvxMMFChlOr7Wp8CiwrvMq6FLo4tCDFK2U+OFPucTnZ5fCDD9nAiW2+V
         66tRvMqNJFNe2zgJpxOPLCex4rB9ydbdMaZwF/u4c6irMu6TVAALJO+yT14Hbu6uew5U
         MmnFEvbmHoqTyaW69kW5qWsKLgSKnm+XWfeGf309RayaU/6RbMnkhGvmMvxKREpUIzWA
         K+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696270169; x=1696874969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NfCq6MAu8bRwi9TEgatpoY4BVdbPJq248wgHhwcLCxU=;
        b=ESg9SUkOEUsvgsh2oeI9SQcJuXG7stLICTZPhy69/nk2ZWmeqEiie7cAEp6m9kEUkl
         Zs0mC5VuloEHRhtRawepBe1qMfaRyDoatPOJPd7LtjJmVcUL1R9i4LJSjz55JtcHx4SQ
         czpjodUsC7IgmO2VMHoSms1c8wsyJVPeN6zenqdw8LXDBbN0UZ+i5LEXzSuNngAlfW24
         P31WS4oe88G308NYO5Syb2o/OY8EDkRCAFvnPzqbcGa7YX7a/snyKV5bAvLWrwn0aQ4r
         yjwD32SN76sRNDVggavTn89/Cg0keAcCiejIEURStMfUroOCMkX4d4HjqV9rSXTtY6ke
         g88A==
X-Gm-Message-State: AOJu0Yzk9H2P5N4i5RAlErILD8yO7Qvl70nxPvqe0+AY43Vayh5+cDec
	G/v7k+1Wg3D8oYO6skGhtWVVhg==
X-Google-Smtp-Source: AGHT+IHop+Asiy9bLSfXRnllAQF/F67qbTBnzT0eLQO8TWH47NHOTuxYVaMToaBRfrPoZTYvNxMALg==
X-Received: by 2002:a05:620a:40c4:b0:774:1ac2:79be with SMTP id g4-20020a05620a40c400b007741ac279bemr16806248qko.53.1696270168810;
        Mon, 02 Oct 2023 11:09:28 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id w15-20020ae9e50f000000b0077423f849c3sm7390255qkf.24.2023.10.02.11.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:09:28 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 0/2] ARM: stm32: add clock for pwrcfg syscon
Date: Mon,  2 Oct 2023 14:08:52 -0400
Message-ID: <20231002180854.1603452-1-ben.wolsieffer@hefring.com>
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

The STM32F4/7 pwrcfg syscon was missing its clock, making it impossible
to use after clk_disable_unused(). Simply adding the clock creates a
circular dependency, because the syscon is used by the clock driver.
This series resolves this dependency and then adds the clock.

I tested this on a STM32F746 and verified that syscon writes now
succeed even after clk_disable_unused().

Ben Wolsieffer (2):
  clk: stm32: initialize syscon after clocks are registered
  ARM: dts: stm32: add pwrcfg clock for stm32f4/7

 arch/arm/boot/dts/st/stm32f429.dtsi |  1 +
 arch/arm/boot/dts/st/stm32f746.dtsi |  1 +
 drivers/clk/clk-stm32f4.c           | 12 ++++++------
 3 files changed, 8 insertions(+), 6 deletions(-)

-- 
2.42.0


