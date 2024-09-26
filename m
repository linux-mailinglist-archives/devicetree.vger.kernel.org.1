Return-Path: <devicetree+bounces-105585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDEB98725C
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 807141C2501F
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C61C1AED38;
	Thu, 26 Sep 2024 11:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ClBzpTiW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5201AE867
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 11:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727348855; cv=none; b=HzPQ30e6P9fuxSfEJ6YGXyUJhtLZR+MajDYRxOGw8VDjaFPwSy3362b+QHxICpbfSVMA6SAnPAZoabvIOPVo+OsTSWYiVHhu8cr35SJd3Ni0wrFGynSlJKZO3Jkca/iHH+bTs0kfGIYuNViXSpeoGC59Hp5N/d18U6bDOOBast4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727348855; c=relaxed/simple;
	bh=hU3Pty4eYDHA03390TMR2BJtdl/7EFI2cK7IkmHw2Zc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hSPa9mpJP9+t9mBKl7c86AQSZqW8PXbc0cPm6WvG+IqqZaDGemOWK0IJRL77hyKlCSsL6J6F2TNTR22mf6NA3liD1HtXf4V4Pbx/waYeYQgtcKPKWDto/Fs0s7kMwT7SN+BDiTCZ0fwcDpZZWc2WQH5Dfad0etphF7GXq5S+AUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=ClBzpTiW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=kJePYFvauoMgNk88ckHLNwEKGfKuioFAnD8qiMfDACc=; b=ClBzpT
	iWEtAwM1tUGeeecjy4KP8SNA82bm4zq2ad+W+LmHAMp4N2EiMSk93QIJd+QQ4Au4
	9syGqdwqVzRd0VqrfvvpnL37J4tYWN31T8ypQA0Fyhtq/cMN7rgM0V81EA31NNCK
	pjRfL4I8RdoyRx/lPCXHt0dNTxVZpX/5aMbuDtJDCyFgUqtorgS8nJ0GqFcXYxg9
	TboiGelFn9ubY10R97JL1glgWSIWyv5hBLuXE3c5vgOkTsZeMzhRQv/678oVav3Q
	4fXcsa5iG4hYpYrbOx7o/YpGXwJhwDVcGp0HjtMTI/5Dpxrz9TLU9arQigk1rLFf
	hcIH4IUwzWTd/PYg==
Received: (qmail 960878 invoked from network); 26 Sep 2024 13:07:29 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Sep 2024 13:07:29 +0200
X-UD-Smtp-Session: l3s3148p1@r9SWvgMj8MwgAwDPXzRXADDuo30Z+IZ9
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: renesas: kzm9d: use proper node names for keys
Date: Thu, 26 Sep 2024 13:07:21 +0200
Message-ID: <20240926110718.20519-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926110718.20519-5-wsa+renesas@sang-engineering.com>
References: <20240926110718.20519-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Avoids 'keyboard: 'four', 'one', 'three', 'two' do not match any of the
regexes: ...

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/emev2-kzm9d.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/emev2-kzm9d.dts b/arch/arm/boot/dts/renesas/emev2-kzm9d.dts
index 89495dd37358..4e797ac27628 100644
--- a/arch/arm/boot/dts/renesas/emev2-kzm9d.dts
+++ b/arch/arm/boot/dts/renesas/emev2-kzm9d.dts
@@ -31,28 +31,28 @@ chosen {
 
 	gpio_keys {
 		compatible = "gpio-keys";
-		one {
+		key-1 {
 			debounce-interval = <50>;
 			wakeup-source;
 			label = "DSW2-1";
 			linux,code = <KEY_1>;
 			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
 		};
-		two {
+		key-2 {
 			debounce-interval = <50>;
 			wakeup-source;
 			label = "DSW2-2";
 			linux,code = <KEY_2>;
 			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
 		};
-		three {
+		key-3 {
 			debounce-interval = <50>;
 			wakeup-source;
 			label = "DSW2-3";
 			linux,code = <KEY_3>;
 			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
 		};
-		four {
+		key-4 {
 			debounce-interval = <50>;
 			wakeup-source;
 			label = "DSW2-4";
-- 
2.45.2


