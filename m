Return-Path: <devicetree+bounces-52950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A1888A846
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1EA21F3878D
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6376CDC8;
	Mon, 25 Mar 2024 13:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WUyA8LPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C64B5490D
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374609; cv=none; b=rRVlE2Hxr9wCfIAysU14B7LJUbqj4o0ji0lOTENqaBatHU+dIlVJRv7DJfC7/DXYjLM6ZEztHLRMc6PqKZLu/eEefUWI+juglxLCRYFDVkFkD50WOqwbo10JbwKAMfQgX/o8JQBjH5YSu8GeZKH4esUGyf6QjPh4nPOhIdn/Uac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374609; c=relaxed/simple;
	bh=IHxvsFny4yDLBa0KNPDKPyi62gMH873tsfNUiZtTjYU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KyVLZjaRT1rE0u1HriNCUVvUJam8nDXvSJvKFmVJshzr/pZpiHpFV1kxLiHdCG3aACBzlhkIM4n5LURAzP1Q9IcOZNBVYDTeoKuRMJl2Fxdzdyzka3SnRsKyuZNMF6K5osDMn2JC8tgjewK81q/CsvCXJxFfN1oCX2sq4f3O8Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WUyA8LPm; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2220a3b3871so2146588fac.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374607; x=1711979407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TZEm7dLC7DLgBBuXFeLiLeXWBBGx7yk8NhEbIQaE86A=;
        b=WUyA8LPmiD5mwiL42fveaDVC2SWgU9Qc1fmYl7bxUSZP+EW77DFr4WKDTbjiuTtf/e
         yu0VPULQJZVJ87DpAgpnjgKJ3IQuPuEjVqLPyDIg1yLNRJJmtPqO951Jc3EHFugxoaFn
         MUmOn9PfeJoca46aG+CTrB/vwdasFcvtK+3yReFwrn0CUu7E4NpVGBFq2u7ARlslcLur
         GbDPXi9RpvKTh2BB3W/5rdfDLgb1K4cD9JDX5GY3MyVKyzoz7taRLkhulqficmHIvthy
         +vYRydAuBJkRqxSGM4HvpF5VoEzLsjnpj6xO7GUcfDpyAZxsn6z5FIVPrtCtOefOrL9p
         y0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374607; x=1711979407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TZEm7dLC7DLgBBuXFeLiLeXWBBGx7yk8NhEbIQaE86A=;
        b=j6PVwaBe7qadbl74Qvex5cVYVdyVWvBAs6wdKIRfm3SwypUTBMm2fgL3jfR8EeZAJu
         OXUXQQVhdq6ENK0aV3xa1ntibH5fcBeToYZ+Gusq2fr/MUHkJZjpKWgPmfoH45HmdbUD
         BF29f1jZ2zqG5VqqyXK9jMh6IEfKnJBScqi2EuooRJNoG7yhKK2N6GjAz8PKYwF8OF5x
         0wPShePgKVjVAhZTRN0Cpxa1+xtP5EGquZcTKPB7jHQS05kAEcxBozMR5Rpb11syqPPY
         gLM6v1VbvGLHbVxOr1GhY/Q/EdjYdJ0VVpT6hKAo1ztFUmFS+I69qfvzioW7ieCCIqG/
         UaTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWp4niHyiovztVkbFx20WOQeSiHl7kJjERKkPRDeE3rP6L3H82aB5aBlL3myS3UATAEWTZT3cV8/ly8wRABkUqtH2d55IWJK/wHmQ==
X-Gm-Message-State: AOJu0YwxUWdo5K5+I5DRx9E6xzpRU1y3awJUJr3D0lE6+r55USjWyvRG
	dzuQM+L+Ai/YMjNpHgZCan75NG7IYN7Rz5dCdJFYHR5fEkfLMuXO
X-Google-Smtp-Source: AGHT+IEuxzOZwBoIMGZhGDau9fYZ1S9BgGTKCMVOyBdlostVlEY2F4PkvLWDocaBgYB5mDFwp371nw==
X-Received: by 2002:a05:6870:2251:b0:221:5739:a144 with SMTP id j17-20020a056870225100b002215739a144mr7518495oaf.37.1711374607232;
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Add Support for RK3326 GameForce Chi
Date: Mon, 25 Mar 2024 08:49:54 -0500
Message-Id: <20240325134959.11807-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the GameForce Chi [1].

The GameForce Chi has the following hardware:
Tested:
 - 3.5" dual lane 640x480 DSI display.
 - 15 GPIO based face buttons.
 - 2 ADC based face buttons.
 - 1 ADC joystick (left) connected to internal SARADC.
 - RGB LED arrays for key backlighting
 - Dual internal speakers.
 - Realtek RTL8723BS SDIO WiFi.
 - Single SDMMC slot.

Not Working (with notes in device-tree):
 - Bluetooth - missing firmware
 - 1 ADC joystick (right) connected to unknown UART based ADC.

[1] https://gameforce.fun/pages/gallery-of-gameforce-retro-gaming-handheld

Chris Morgan (5):
  dt-bindings: vendor-prefix: Add prefix for GameForce
  dt-bindings: display: Add GameForce Chi Panel
  drm/panel: st7703: Add GameForce Chi Panel Support
  dt-bindings: arm: rockchip: Add GameForce Chi
  arm64: dts: rockchip: Add GameForce Chi

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-gameforce-chi.dts     | 811 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-sitronix-st7703.c |  87 ++
 6 files changed, 908 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-gameforce-chi.dts

-- 
2.34.1


