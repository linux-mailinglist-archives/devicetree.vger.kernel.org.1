Return-Path: <devicetree+bounces-35258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F5F83CD48
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 840601F22FB8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01AB13666D;
	Thu, 25 Jan 2024 20:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CZ4Gf9E7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732CA1B945
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213992; cv=none; b=O8Hq+BwyjvWFSrhFaL5NpC77eqQogwVB5rK0KRf9G5OI6AJgj4MO7X80sRIJ3F0OhQlYYI0QsQNjQq8cKjwphngb491UN8I0RtklT0NGvI5zKrYMxAg7rd4yNQ74/m/XbDHccVM9P+QYogmGeG3Okv+OSGBdVymFxmFA2A7FCQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213992; c=relaxed/simple;
	bh=grKV+GYtp6l2EvGqQi/MfbDfLQd9VaUf0a06b0sroFg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nQJBgqXKGpvheRfTjUDdrsFRuC+3OTPgaSgV/ESD+c9TpnYxebDYppUAt3v3kcF/IKnW78mvM05WImVzwcyID6p/q6Wi+vcWHk/WJVZXejr9Z/uVG4klwgYX4cALFXKGRStfAfwN6RZWKrvuIQGqBHyLBxE1ylcPfeTvtNu0i7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CZ4Gf9E7; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3bd5c4cffefso7040967b6e.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213990; x=1706818790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=56wPjQ9/BRbgVLBB4JRK41C6UocXPzyOlVCkMWFEC8A=;
        b=CZ4Gf9E7h+8TkZZvTnD49OVQfkwYABZyHp+6zI5s+1uZiakGD8Tbr7LA+HBXJ7WMN4
         4MZleespiQxqyJ0wuhbNlhVSWdX7vVZDqizHewTAmVIqGE2HWCCssOgW9rofSnh3p4bF
         yW7hGyGlSsOPenqtmuy+PLafHZ5t6ReGLjcae0ejfwUJZxTAoY6wSRynDnOSydtToz4E
         toqqIwgyPBqoO1vTmy66rB2cBTfe+F9f5PCgrpq7ZcA4BfdC+q19AoY797q1eBHYW/Ue
         KEwnRRzGYSBJe58YvzGH2pRJ24mzg2kYRcZYx7eeLCzRtr5/hnKeWMSI/Kt0fU0JASbU
         BRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213990; x=1706818790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=56wPjQ9/BRbgVLBB4JRK41C6UocXPzyOlVCkMWFEC8A=;
        b=sDZAtlyOQKTJVMKRBvrdpIDLn4yOgzapHPMjKoe3J7U+i9F2D+5pCss7vWt8U55ZZO
         uV0GKEjcEaSyb7JyGT5UnRGucWIzowR3OENLM4ZeIoTHoN45Rq4hG5IhxLWs7tQ2TKSs
         DNPFzmdSuux8GT4gNDh+8CYm0Qf8+sMLD8zY89c6Zh6WDt9JC/8eJxoH9y2AR5RxI/LZ
         5pxXi0iellHagIIrJdQpM1bF9NjuuINNR2oquij+gWWiO9+vIdZF3P3MVZ/PbR6Fajtf
         mlP2wCKEkoTmtRSrPMxt3KB6DUJu3nydD60hBTDhuYhdx5Tw1gdI/z92+AcNRx7wuR5m
         jS5A==
X-Gm-Message-State: AOJu0YxzHvGwc1KmNEzG085HyjRjJrlP1t0Xqh+7T0PSL25riQSTdOIu
	c+RzfmKwxpVyAaInEGHljPwiArnU+qtBrNUT1VpFKqeGl6hWemtSgFgZ9fHf
X-Google-Smtp-Source: AGHT+IGoTao9dDVsscK7tafju+PZ1LILnhfFEKw3jBvFJvRj4DI881eP7BU3Rva6qXVnOGWoQRUbXw==
X-Received: by 2002:a05:6870:b6a3:b0:206:bc0d:9274 with SMTP id cy35-20020a056870b6a300b00206bc0d9274mr197127oab.91.1706213990426;
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Updates for Indiedroid Nova
Date: Thu, 25 Jan 2024 14:19:41 -0600
Message-Id: <20240125201943.90476-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Correct a problem with the GPIO names on the Indiedroid Nova, activate
the full size USB 3.0 ports.

Chris Morgan (2):
  arm64: dts: rockchip: Correct Indiedroid GPIO Names
  arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts   | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.34.1


