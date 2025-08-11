Return-Path: <devicetree+bounces-203418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FACAB21482
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 20:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 641B53E3680
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 18:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185C72E2831;
	Mon, 11 Aug 2025 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EjoafaM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4792E2840
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 18:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754937443; cv=none; b=jHxoJ0cPVc160OcnWgdPMO6IWvhc2FLnZkVQwYOZYA/25UiFF/eHMU35Dqu+ngFZV+1N/3G15MQrQsqzShDt8Ou8O/HA3YswI51uOUzHGKZ4veCmXonyF+T1OAMIJpi3waXg1eZHctfTN38SSKFmb58zIBPhtT5AJpN3TflVE/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754937443; c=relaxed/simple;
	bh=qp6ohLJvsWaBaamswkvJbFev3t8tKHJdAjLbmGpa+LE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XXXtgwvKNnIhmQQeED3nf/VRhb8DhmkvIFQtdvvUF7kvTCk6/vg0BpMKqSGcJL9qgRWO4PNul8DQP4JW0PecX4l5MZMxWSR2qqY0iV7I3a0O4DpELald0uZMsLJ8b29zVsbNn86mHR/Q4Eca8oTUiT/nxC9Yy5tYmDjWIryg8qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EjoafaM5; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=cFr9VUb0cj8rwbbjZXrPXjG5Re+YcSIhPghSrgnatjw=; b=Ejoafa
	M5zhIBl4wE3zY27M9Al7lChW2zDD8NjLnLfsBMnanpBzSsNGyYrxPhYAgyYm1nh5
	COuGsD8kizNF0qonPn9Si+tHqSTnWhSD4Ka/LIr2nTYBd6tIL22K2MIU6oMJcqgM
	5NO1sTCTcdLUyoq9VSgF2P/o2F8G7q0DublZJB5ZFb8wIrlwvUMa2alAOUeumfwl
	cBwvtI3QGE6BqapayuBkvMbdLya1nYRZJ3H1zfPjY2HEfNOz9dpLmPyaoH/KH58M
	7KuRGc7sETTX4A0Y2ukxAHVr88gbj+3XrRylEOi4/EEzu7JK1htkpeu6YcLDXneX
	8nfwJYiMJZbthoQA==
Received: (qmail 2896215 invoked from network); 11 Aug 2025 20:37:18 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Aug 2025 20:37:18 +0200
X-UD-Smtp-Session: l3s3148p1@AtmSNhs82uptKLEm
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH RESEND 2/2] ARM: dts: stm32: use recent scl/sda gpio bindings
Date: Mon, 11 Aug 2025 20:37:11 +0200
Message-ID: <20250811183711.8980-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
References: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
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


