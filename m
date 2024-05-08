Return-Path: <devicetree+bounces-65705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E378BFB0E
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 12:32:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC4D2B2619B
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446A57D419;
	Wed,  8 May 2024 10:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0Nb+nqB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022D818
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 10:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715164318; cv=none; b=GcDlnNeEkL0JQZy8ttp3D30VDJxKiT1Bcx2ibaBYcO+w/FKX+9CvvTj6NMfOUdVMhxB8O8UvnvQ8dfFBoG9qmU15R2/U9S99VsNJJOkslkBPjeL6PryBnmjVgSnHGhshUmCPcJE/WCkxO/mxb8CW8Q2izDQijOoFba5CiAajKwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715164318; c=relaxed/simple;
	bh=OJ23cnbCVS69gWFZGDNc/VynWcSsWstZHEG/jFLqnFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NOI5zJEy1pFyV93FcZp3Q1BvUfENoNY8zm2X7Dj+GS9oe3G8QmBVNes9ElaWs3IZdwAewNfiZTazJIm7tylRLyBQKTz8KbeL6XHh9guRaud6C7JruLQd3HyNwi7bS2EbVITR8vOnLys75f/lG1WfbjjBaJ1HBO/MXWfWAoYVYVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0Nb+nqB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C5D1C113CC;
	Wed,  8 May 2024 10:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715164318;
	bh=OJ23cnbCVS69gWFZGDNc/VynWcSsWstZHEG/jFLqnFI=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I0Nb+nqB0dYe4tSSjoK5wwq/iQZ8tbQvtRdy8KfEHzA7r/iBdO/i35idXbvyu8DI6
	 QyiD2HVL6OwNia5Y7bYeXgen3P92sRjql49xjbBHYTmUOy2pqOO7HZmdb/Jtjfvj47
	 1vf8G29gPdOFkAeRhLurma5H+KCbKMEVsZU4sLSKQZvbpj9ML7lD/cZPL2ynDZX076
	 UXacGiADVXouj2YMJFAumpJsNhZLme3240+wT5SNr44bcuO6jzgXOcPL3PH4BF6JpR
	 ZVz+xgvTUJrnk8RYl9S2RL2BvAAJHXsIcdDUIgzBGoUpDqHdLkcyiQb437uw1ZnEmI
	 jmXzFkmSSL6jA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v9 9/9] ARM: dts: turris-omnia: Add GPIO key node for front button
Date: Wed,  8 May 2024 12:31:18 +0200
Message-ID: <20240508103118.23345-10-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240508103118.23345-1-kabel@kernel.org>
References: <20240508103118.23345-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have the MCU device-tree node, which acts as a GPIO
controller, add GPIO key node for the front button.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../boot/dts/marvell/armada-385-turris-omnia.dts    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 59079d63fe27..43202890c959 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -112,6 +112,19 @@ sfp: sfp {
 		status = "disabled";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		front-button {
+			label = "Front Button";
+			linux,code = <KEY_VENDOR>;
+			linux,can-disable;
+			gpios = <&mcu 0 12 GPIO_ACTIVE_HIGH>;
+			/* debouncing is done by the microcontroller */
+			debounce-interval = <0>;
+		};
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "SPDIF";
-- 
2.43.2


