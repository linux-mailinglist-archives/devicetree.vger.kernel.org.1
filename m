Return-Path: <devicetree+bounces-105854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C78FE9881ED
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 11:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FA511F241DA
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 09:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6A31BAEF6;
	Fri, 27 Sep 2024 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="YgEDxGie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CFF1BB690
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727430874; cv=none; b=X+wq6H/vnkf0oG8siqIoTcoSVsfViwA+leM01kyolnlpjsCbq/Lz9qF/Zpzil98IF+SDwuc8E3kSbvELA+UZ/KuSTA9FqwJ5Di+nPN6hL0757gww4BafEYxQRwV2AGjDq/wnKaV75OE2cOxfCDz43pNjuKKp/z8cV+diRE5nd6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727430874; c=relaxed/simple;
	bh=5axcWPbEb0x+VIIWN535+xhEtrw7AucW68gd5TpUBfY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jja12sL644GvFYntkgH9bo7tr/kXjjwfJRJi4LmMWFxQ5xrDhbV6bpZKQ7sOw/vB8c4Ei6QgGNtMR+aVtELCvVGhri3WObZ8aEs8ZQZymk2A6JZ62/8QmJYykt5oa+kHWS2WotAwJ66v4/KnCFdhtDD756Q5tETFfy1o7WID8bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=YgEDxGie; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=4gL1fOCjS1lQsADp7GzCdvV9np2yt6piuUaHJ9SRsL8=; b=YgEDxG
	iescSibFL14IJWuo2eSbH+IvjKRrssYfwMjkovbY2weHhU7DdqrSWIp4Qv1mLkAL
	TmN9QzIwc7jjq5ZIyuCWd25AM2viezXeRiPAt+UuheQNiAhCJH4olfpICTLwBUOQ
	cd79R3t4hWD3+amgjNfFN/kGwaxccWqExVlHGghXKl8cThrHB33owWOPMZOrwIEA
	qRi+H8LCFOUyG3Pdvx+wGg/rN6S8MpuTrkk7Pn39sxP7WR098ksYGdBYvVEogFhO
	2i6tFyRX0qQ63CTYCUp8dbynxHGIGlk0pPnb9P3KZEvQSD4zEZpH1RzjrnUVAELO
	yg/zt2o7JWm/kAZw==
Received: (qmail 1283507 invoked from network); 27 Sep 2024 11:54:29 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 27 Sep 2024 11:54:29 +0200
X-UD-Smtp-Session: l3s3148p1@hzNR1xYjkwdtKPLv
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: renesas: rskrza1: use interrupts-extended for gpio-keys
Date: Fri, 27 Sep 2024 11:54:17 +0200
Message-ID: <20240927095414.10241-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927095414.10241-6-wsa+renesas@sang-engineering.com>
References: <20240927095414.10241-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the more concise interrupts-extended property to fully describe the
interrupt.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts b/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
index b547216d4801..9ff3f04c1b02 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
@@ -78,24 +78,21 @@ keyboard {
 		pinctrl-0 = <&keyboard_pins>;
 
 		key-1 {
-			interrupt-parent = <&irqc>;
-			interrupts = <3 IRQ_TYPE_EDGE_BOTH>;
+			interrupts-extended = <&irqc 3 IRQ_TYPE_EDGE_BOTH>;
 			linux,code = <KEY_1>;
 			label = "SW1";
 			wakeup-source;
 		};
 
 		key-2 {
-			interrupt-parent = <&irqc>;
-			interrupts = <2 IRQ_TYPE_EDGE_BOTH>;
+			interrupts-extended = <&irqc 2 IRQ_TYPE_EDGE_BOTH>;
 			linux,code = <KEY_2>;
 			label = "SW2";
 			wakeup-source;
 		};
 
 		key-3 {
-			interrupt-parent = <&irqc>;
-			interrupts = <5 IRQ_TYPE_EDGE_BOTH>;
+			interrupts-extended = <&irqc 5 IRQ_TYPE_EDGE_BOTH>;
 			linux,code = <KEY_3>;
 			label = "SW3";
 			wakeup-source;
-- 
2.45.2


