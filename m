Return-Path: <devicetree+bounces-9712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E277CE13F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 744341C20A8C
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A45D38BDE;
	Wed, 18 Oct 2023 15:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a8O67gN4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB2127700
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:34:14 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E53111;
	Wed, 18 Oct 2023 08:34:11 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-581e92f615fso838050eaf.2;
        Wed, 18 Oct 2023 08:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697643251; x=1698248051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6tQJZrmwh77q4KJG6d4/vwBiNQFUJwablon8OTMlyfA=;
        b=a8O67gN4R1090TEuHQEAADcW1YIy4CvfnSRlSoHHslvq4pJ3SilqrvR2UmUuc/RYXY
         KhSst6cMf77AVAnAk8p2qHePcXFLiPBjfhzezqZpZQd/fl/E6XgdeDx7qIgDByJBU+Gp
         vABEbB9CpdYn/xSGNTFwF2ECUEFr09jHfXETRGXZvyd5hOlQelddk31/AaVaD9pMKk0m
         yZPtToN/ky4w/xQZuLc3y4C79OvmL+v72MBtUvTow7+QstEQXoIDwavD0QMXUe5xhvuu
         e1HajBSpy3OD8aWlPQql08BUnoDlCRO7ITKAfgD5nLMN4zn9HFdqj42KbO+KHRLnCaBS
         WaWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697643251; x=1698248051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tQJZrmwh77q4KJG6d4/vwBiNQFUJwablon8OTMlyfA=;
        b=JrM2m+hfw2JpUnrYPUYpCNvQ0IIZCMP3OPYJ14A81CL1qeQYpNK7g0Or+tRGxs7hZa
         maL/pcAKDWvfJLL7jD8qNJdbSMOiXKvbqONuUKEy04196POlDGRu65o1sGTPtsXV1zUf
         SaDAJht2N+BMOxi3ZVpprt35Xfwi2N1Sbh+i7ee6xL0Ugyqd9kAzY39vbP+FsaJxR5Xb
         KNPmvYLFzbQ1n2V+vWsj0CanFnByZfKCziR9BmOtFE4PZ/0FkzN1zVxMRErSpB71wTg1
         LNdrxervQWdGZxa3oDAKfk+Dfj/8uPVdkLBgSUDazb5FXlzy9Q38+kX7qzAQK0WZtmcD
         0vKQ==
X-Gm-Message-State: AOJu0YwEFGBuHX3eNRoEC3QMffNGeVT+mxjed5ELxsFi8nx5IQsxYDGs
	kxCp+bg9KRSleYdASQ/ZvxM=
X-Google-Smtp-Source: AGHT+IFTBAebvUI3C/PnjHyGd/EVx2sycdpXqSQObZD9ieoQ4sejU2vINPA6JY+WSFXYippZGc5xDg==
X-Received: by 2002:a4a:dc8f:0:b0:57b:6ab1:87c9 with SMTP id g15-20020a4adc8f000000b0057b6ab187c9mr5965150oou.0.1697643250979;
        Wed, 18 Oct 2023 08:34:10 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h16-20020a4ad750000000b00581e090fd1fsm523782oot.8.2023.10.18.08.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 08:34:08 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Fixes for RGB30
Date: Wed, 18 Oct 2023 10:33:54 -0500
Message-Id: <20231018153357.343142-1-macroalpha82@gmail.com>
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

After preliminary testing, a few users requested that I see if I can
make the panel run at precisely 60hz. As the device is typically used
for retro gaming, getting the panel to refresh as close to 60hz as
possible is important.

Additionally, I accidentially left the UART2 enabled, even though this
device does not have an exposed serial port on the board. Disable the
UART in the device tree.

This patch series applies on top of the already applied commit here:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=for-next&id=1e9ac3e8a6a9d4da9efbad2d8e95cc1140e0e23f

Chris Morgan (3):
  clk: rockchip: rk3568: Add PLL rate for 292.5MHz
  arm64: dts: rockchip: Update VPLL Frequency for RGB30
  arm64: dts: rockchip: Remove UART2 from RGB30

 .../arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts | 11 ++++++++++-
 drivers/clk/rockchip/clk-rk3568.c                     |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.34.1


