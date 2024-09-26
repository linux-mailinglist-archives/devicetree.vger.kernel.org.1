Return-Path: <devicetree+bounces-105583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316D987265
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:08:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3129B29A44
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CA91AE871;
	Thu, 26 Sep 2024 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Qh393lcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9C81AE84F
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 11:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727348853; cv=none; b=M8FQtc7r0MLMLebt30k4a5OE7VABWBsNilLlkVd2/XexDMkzwvOmk4Ef8OoEYM92fxlSVMD2rKAl5DHcvs2kgMgP9WgKVVMKc1rE4qk4/71L7klP4n4rGSqJz+6kCJrUothe8RYVT3L2mQB1njAYk2pOuggQP0fp3YSqcgfL6Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727348853; c=relaxed/simple;
	bh=V9Ay8JAq4S8DENcsrnoXGlS9vimeAb8wlGRwmXwfMJk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W1ibpdQrh9/ymSUhN7uRq5Y51+WrPrdjCloDXFXF4PGRi84umZiMCQjoXcH59TObwN1rvIeu6bGxuvz7Ka7u3Pb//8S/kQqt/aneiCBw0QWPtKXfXciwCo0b37bO9lDpI0FxNe/HKCReG4wlFoFGw4N4DA+cSPh8SEgg71ByA6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Qh393lcb; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=a8DjMxCm0od+c3OPWc76GqeF31DstQ8paL8D6K89IPk=; b=Qh393l
	cb+cxYXD42iwJqU1LQh8VQHmWSxvgM0agIDp6tAahytdkbG/8Ap3E74GanXiV+K6
	cZzBG2QiKP2qoEYfJKU/ONus56SaETr4ZILubbNLShF9xtYmCmgFDm40TZ6VBwRx
	soavKhH3mtrVdnmqMQezDVu4bKK2TniBTXm0hq3PTAZP451cMmIdz2L6yCLo3pXV
	1n+Unia8rI0zNzfXpJ2PqI1OaJUmHHrq3rz3hLw0UplWlAV6hhmfet3xV8t0YFg1
	357yo81TN4AzDfCkgk8i7SO2PS3EhYm3FPsf37JIW0DLSQvvKnNOpO33jcxjOBv1
	t5qAw6K3wkz1QJRA==
Received: (qmail 960836 invoked from network); 26 Sep 2024 13:07:29 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Sep 2024 13:07:29 +0200
X-UD-Smtp-Session: l3s3148p1@B6yKvgMj6swgAwDPXzRXADDuo30Z+IZ9
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: renesas: alt: use proper node names for keys
Date: Thu, 26 Sep 2024 13:07:20 +0200
Message-ID: <20240926110718.20519-7-wsa+renesas@sang-engineering.com>
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
 arch/arm/boot/dts/renesas/r8a7794-alt.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7794-alt.dts b/arch/arm/boot/dts/renesas/r8a7794-alt.dts
index b5ecafbb2e4d..ac541c2af798 100644
--- a/arch/arm/boot/dts/renesas/r8a7794-alt.dts
+++ b/arch/arm/boot/dts/renesas/r8a7794-alt.dts
@@ -96,28 +96,28 @@ keyboard {
 		pinctrl-0 = <&keyboard_pins>;
 		pinctrl-names = "default";
 
-		one {
+		key-1 {
 			linux,code = <KEY_1>;
 			label = "SW2-1";
 			wakeup-source;
 			debounce-interval = <20>;
 			gpios = <&gpio3 9 GPIO_ACTIVE_LOW>;
 		};
-		two {
+		key-2 {
 			linux,code = <KEY_2>;
 			label = "SW2-2";
 			wakeup-source;
 			debounce-interval = <20>;
 			gpios = <&gpio3 10 GPIO_ACTIVE_LOW>;
 		};
-		three {
+		key-3 {
 			linux,code = <KEY_3>;
 			label = "SW2-3";
 			wakeup-source;
 			debounce-interval = <20>;
 			gpios = <&gpio3 11 GPIO_ACTIVE_LOW>;
 		};
-		four {
+		key-4 {
 			linux,code = <KEY_4>;
 			label = "SW2-4";
 			wakeup-source;
-- 
2.45.2


