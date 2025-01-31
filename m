Return-Path: <devicetree+bounces-142075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04318A2405D
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E54C188A0BD
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588D71EEA3F;
	Fri, 31 Jan 2025 16:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="jcEpFKd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387A1E9B38
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340786; cv=none; b=IXgZPxvKqMcB/FzdYSZDF6BNPjRv8F/D406ede1heQDOkcFurC6vWTvVleLeIhuB0c+mqdj0hHNTP4ULS0zLNqryQYUo5kbKihMHBCDiZpN7zeiRAWrsXMix1hvegMZfsuFixVmCtApzE2sHQkuv9iM7gULMDaK0U2K1YvZc+RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340786; c=relaxed/simple;
	bh=59/RLNsoH8LSPRj+j6vFLzwAvTpub1CXjjAl0b1baBY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tKOkOiOG6+13WXYTpqzUx8MlDelwtcrgeJtyPTFLmq+gF4Zsy58L+VEqZtG7wOvfm/YtQE97V5pbicdXh6w6P7H6Kc7R+U+68zgwS7ilVQySthxOTlNkfPBdPdBe29IUU9q8LeIfm7eLI+wb70KPsB750KnGwiWx7InGXPlmUFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=jcEpFKd3; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=L9UJqPgBORaXR/
	9oFp0g7cwrap4KGfpKmsClXzosUYM=; b=jcEpFKd37KhDV7jSL3kMH4LMb7EC/c
	FF6lDeCf4bnhWxHG8Qfc/9dd6memfB8SR84rWSY2chYeHOCPWD2ntZFNIl+MeADE
	/A++mboo8sI3PzxIl5IMD3zuhssE7Z9DmAGATiOV+c/tnyX+jBaThhfG+q7ydOqK
	fiXKiFkWctyGeuV6tweSCUq3j0cGH0Di1bDmkKlP2TyFTCSA3xGDVtBbyOedbRtr
	QJtSqaTW+3zuG3O/6OIWTwVd5MR9RALCiyydMaDOPAZ4w+MYwQvNixG5zWN2C8da
	Wa2Aqk9PPjr3HrcMoNNIT++epXYbYnF2w3Yaue+PaGbbd/E2iY3r/0XQ==
Received: (qmail 1738667 invoked from network); 31 Jan 2025 17:26:17 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 17:26:17 +0100
X-UD-Smtp-Session: l3s3148p1@IQ2EAAMtrC/Uph5e
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] ARM: dts: at91: calao_usb: improve LED description
Date: Fri, 31 Jan 2025 17:26:11 +0100
Message-ID: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For developing on the road, the Calao USB-boards are still very useful
to me. Time to give their Linux support a little love. This mini series
fixes a wrong polarity and removes the default heartbeat. More to come.

Wolfram Sang (2):
  ARM: dts: at91: calao_usb: fix wrong polarity for LED
  ARM: dts: at91: calao_usb: remove heartbeat for User LEDs

 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 3 +--
 arch/arm/boot/dts/microchip/usb_a9263.dts         | 1 -
 2 files changed, 1 insertion(+), 3 deletions(-)

-- 
2.45.2


