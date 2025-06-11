Return-Path: <devicetree+bounces-184989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93362AD5F44
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 21:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 291B03AA1E2
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 19:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F08A29B772;
	Wed, 11 Jun 2025 19:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="f0qQuvqQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AA12874EA
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749671245; cv=none; b=um019XEE6fdvo4TCZpkb4hZnCsmNXxy5B6XWnKX3DLuj6oAM3HvUNc7Cef9EetPtI/GfzFdkE64aDcSAkba5HvpmJ6QWkm3em4vy6nP3JtSElxmJfK+ADDlOwidZhrbBaruHqyk8xPBV6PSSRQEgROf1p+rrwR9QK372zk6UCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749671245; c=relaxed/simple;
	bh=yALSl3ZOjJqSyDoayZqAZ1a4cnaC8rkPccsI3dD2xnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZDCUu9c2/4ZZEAJ02W/3guAHcOUfC7oUVCNr7C3L5iaduP63gPfhQlJ9mc7psLGQlq9o4LFWFNyBoxQbr3pwwUimsurEqs10KnGqxMF+lsjjKVnPdUbEMyPZN/OvxolNJtVSckz+Evfq5cgipjy4MDZrUqy3PyKF9FM6ocr2IEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=f0qQuvqQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so1655975e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 12:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749671242; x=1750276042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H34L9/PPU4puMsb7AXaUsBiKgaM12kK0RYs9+uPPes4=;
        b=f0qQuvqQOer6kio6QrtYvkPgrboltd/8bgttPx2sDQP7/VqndcdYTm3lJAFY9ww+cn
         0LzBNbJV5b2OIApAKaZZ0/CuVMNvN+od6qr7ZUmnU9Ib8xo1iWjMOEY7SmU6/yg04Y+B
         ZlcC3sQBFHUayciHIg4BBr17t5haTiDFy9cjSXJwkanLHlj/GVzvOpiu3fSxY6xEWNXM
         6FmdXZMXlFc55nQQP4wCh7prqigRs4YF7Ag/Hl5RsP/Xtm//dMvBWesLg6/YvVgv3ioK
         pSVvzdnQ1VToOpkilBT0+5HSF47J7qOB3fDzllvWN3CfSQky35YXgGshUGyzR9n9F1tt
         PhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749671242; x=1750276042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H34L9/PPU4puMsb7AXaUsBiKgaM12kK0RYs9+uPPes4=;
        b=Yip5S3UX+BY6P5qm2xEYADZZXIJy8Zrq6eY/oaP1ueibpHkg4XQ45kqu4xB9+4j02U
         ZRuoLqqsW1F72tcmHCQnqJRLHB7Qh7jlEUTf3r/lW7RU7CBYJsRReV04w/gZHo1yMiKq
         tA9zjSLcXbxbbDvWq7c9UDxwIOW5dysAs/fhuTWyj1fFxhUyqKC7a10u7j6jnapAdveP
         6y8r5ffnV+bSXMX7gQ/DlxwrCG64kmscB/1RL4yJq82XDBbsoPwjvprCzjC0paVPZBot
         q9emnA9v9mQX/Lr4i+P0FbiBCYhUOmQdg4L8Bkt4tvMofUTqm4vg0wNmtV54CNuoYFPE
         K0OQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC+Qh4ZMA5q06eRRLIrjfBQxqZKwbmZ3jcRT0qENhuh9qZ1umo707fSyc+ByoPm1x9J5+7dFbjM0YH@vger.kernel.org
X-Gm-Message-State: AOJu0YxxAIlX91kSj/qn02YDwVEJIzVXmjergak/4kbe8Aa27rfLvA7m
	HjXih9laJ8I3xm7LRI/gbHIDMztR4TNJuqAr5rfvjPDsni7z1kSAEp4l5koOFnfDCc8=
X-Gm-Gg: ASbGncs02M5Baac2PvSC2nzNv6ukdakyy/4WgpwXDhhIk8bG4Hy7RWCoXnsuTqK+xss
	exoOoVlYLkGNpR3JPh8i1N0raSpqez8pMOuKy9qBp3FzqUzpbeOtaAXKDA2kH5Jh0bVTQsUAVwW
	xyyFx7vbJAiskpC6bCnqTYlqjwknfYKH23iSP5i4d/Cqsl9w0WLQs/mMTlmuKknhkbIHNKculQf
	+0+LKbk/di4/2XvlMsncLEgY+ftgjpcwft8M01t30oimHyT9seaM4Lc7P2IafkinMhTjmzdUnwI
	3HeGRdbyARXu7TAkKm5DXB7LWVa1uGKlySD5PvFt7lllWNZ3Os5/5NfrZOo8
X-Google-Smtp-Source: AGHT+IFwer3jBySYzHYEOGNh9AVc1aj4LA0ULQoF8SN3NdtrBHd4ZAeZBJRO2JqrT6AiiriAEELEww==
X-Received: by 2002:a05:6000:2285:b0:3a4:d6ed:8e07 with SMTP id ffacd0b85a97d-3a558a27717mr3542886f8f.32.1749671242247;
        Wed, 11 Jun 2025 12:47:22 -0700 (PDT)
Received: from fraxinus.home ([2a02:21b4:9a83:1500:4cac:8ba0:e616:6d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244fceasm15949433f8f.82.2025.06.11.12.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 12:47:21 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 2/3] MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
Date: Wed, 11 Jun 2025 21:47:15 +0200
Message-ID: <20250611194716.302126-3-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611194716.302126-1-ezra@easyb.ch>
References: <20250611194716.302126-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Most notably, add the mediatek,sysctl phandle and remove the redundant
reset/interrupt-related properties from the watchdog node. This is in
line with the corresponding devicetree (mt7628an.dtsi) used by the
OpenWrt project.

This has been tested on the MT7688-based GARDENA smart Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 10221a41f02a..5d7a6cfa9e2b 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -134,13 +134,8 @@ pinmux_p4led_an_gpio: p4led-an-gpio-pins {
 
 		watchdog: watchdog@100 {
 			compatible = "mediatek,mt7621-wdt";
-			reg = <0x100 0x30>;
-
-			resets = <&sysc 8>;
-			reset-names = "wdt";
-
-			interrupt-parent = <&intc>;
-			interrupts = <24>;
+			reg = <0x100 0x100>;
+			mediatek,sysctl = <&sysc>;
 
 			status = "disabled";
 		};
-- 
2.43.0


