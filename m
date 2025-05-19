Return-Path: <devicetree+bounces-178426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6555FABBC41
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39BCF3A11FA
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5452749EB;
	Mon, 19 May 2025 11:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EUFBgEBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81375272E51
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653681; cv=none; b=GEoHzoGcD1iPhyBztgKvQCacqsRHEUSiiKSovV2Gkhbg4wSeexkcDqz5l66DurgtGBky7qYuxfbNGNovBMqWTZJfJyClFbqJi8lV3DJnuHkANG7Zzk4SyyrzS6290NJJ+dnsAAVDqUtcONFwXPbm2ObxGxW+JVXJXed2Q5ZUGdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653681; c=relaxed/simple;
	bh=qp6ohLJvsWaBaamswkvJbFev3t8tKHJdAjLbmGpa+LE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r4c0NrYMimt7dYKNfQAW7JUjdlGwVa0hlFKBqLTkcb/0yPdgJsuxc1Q6ypvLBafL18OVmI6yMb7afXYEcs8byu8WdcGpFo6JRWi678RLKSW7Qmrj4WfH/UWcb4OWUeRn71AOyAgwL7itWh/w+oZT10G0ZvbuOpEnZBkkLh+JdCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EUFBgEBT; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=cFr9VUb0cj8rwbbjZXrPXjG5Re+YcSIhPghSrgnatjw=; b=EUFBgE
	BTgoE8AtOfKHRt6Zr1dyV7/kHE/2mTiCOd0xjmUA21PHHSYN6+d8gbxm4xLj2YTO
	PdeuosKYiEpZuKccC/KZ0ppKElylCzbsjRmpY4JfQPoLAnnrLMKdJ+vJCuFzH1pK
	Z+vi+MHGuRMMZ819XwraxHjCP4F/n9JeX3GnCG9oaUkD8c0jDCMVaakohvA7eAgd
	PhdhcL0gIVErvb4DMs3Xz4p6VVElqqOa7mPsFzo2obuZGn2lsmn/vjzMjqlZLffB
	hfqVr7kvpXPhyelw9PqLudHgnPsfO/zDD3nPcLjjtcPXS+Whwcl1ArFz+deMnckG
	MiphKQsK2JKfJgFw==
Received: (qmail 2456994 invoked from network); 19 May 2025 13:21:17 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 13:21:17 +0200
X-UD-Smtp-Session: l3s3148p1@GdSYVHs1DN5Zz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: stm32: use recent scl/sda gpio bindings
Date: Mon, 19 May 2025 13:21:06 +0200
Message-ID: <20250519112107.2980-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/st/ste-nomadik-s8815.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/ste-nomadik-s8815.dts b/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
index c905c2643a12..aeb58d2c08a1 100644
--- a/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
+++ b/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
@@ -117,8 +117,8 @@ lis3lv02dl@1d {
 	/* GPIO I2C connected to the USB portions of the STw4811 only */
 	gpio-i2c {
 		compatible = "i2c-gpio";
-		gpios = <&gpio2 10 0>, /* sda */
-			<&gpio2 9 0>; /* scl */
+		sda-gpios = <&gpio2 10 0>;
+		scl-gpios = <&gpio2 9 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		pinctrl-names = "default";
-- 
2.47.2


