Return-Path: <devicetree+bounces-219513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA03AB8C10A
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 08:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C50D562E87
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 06:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FD32D6E47;
	Sat, 20 Sep 2025 06:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="SYNAL7ZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E01B2D63E5
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758350698; cv=none; b=YhGVMyZEe7cC9GyOd1gVjBFpz6ukI1uQb5ogBJVaSoYg9oLFg1dGbWJAlXfiCDPDK2nHg/LB6t3ftX8EYD5xHSNqTuxZDjC22t0yKG+RMfA6yHDnDzsyKE/CP2EtCv/FgVxtNgzRiBLpCPjrAXIFEiVoysbJzbFzJ4/AJxr9BM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758350698; c=relaxed/simple;
	bh=GOOW/d/ss8up/fz43pypDl4Y02NWzBsQZ6XqY2/VBCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sNx14ZrOPB5Eg2NZv/NsIbDyvfxq4EBXkM7ynHxYWakM5ncqWvwoKb8A/EzT7s2IuXZh4DU1kR6tFmcyS2QtekBUdGyv7XxCmevxRQD9qsX2SwII2uZQEgLB0yp4DKx3+kdBHJURMFMKcoSFyQNrvNVJqz5LE43NzsxWy9OwAus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SYNAL7ZZ; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=tAQzM1sJbeBSeptPyMrJdNzl+tol7KBGvjuoPdcZrVc=; b=SYNAL7
	ZZr5mWNusA9XYw6JVntlViD0ZszPNniDnJBBrz4FLVW8hZVDY9cNDya1chzSdGM5
	rGOQxPBfdR+tXO0MBRaDF9c3thIZPFmUn9rEzX5Mjmn+k0LgjpV+Yq8Z3CQA0orX
	pyxlcH44VRtp0Bhehyen8WY3A5+/khGxiCRCm9jJ1h9xHWyFeUea07SSdf67nHWJ
	efmSkYRVJJbLgyPOZBfS1mpzCLu33mBwUus1i4mdTow28dGNrcZyFbemd7sXTCJC
	xRN9ewWFVlm0UZHKC6yG/MJ7p4F3hVRclGB0LdJqVFgBqS9bito7Q3aJjiMVylbT
	DafllC0AztWh7g6w==
Received: (qmail 4169376 invoked from network); 20 Sep 2025 08:44:46 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Sep 2025 08:44:46 +0200
X-UD-Smtp-Session: l3s3148p1@MF0D7DU/eskgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 6/6] arm64: dts: renesas: ulcb: mark SWDT as reserved
Date: Sat, 20 Sep 2025 08:44:33 +0200
Message-ID: <20250920064428.5544-14-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
References: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This watchdog can't be used with Linux because the firmware needs it on
ULCB boards. Sadly, it doesn't mark the node as reserved, so this is
added manually here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/ulcb.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/ulcb.dtsi b/arch/arm64/boot/dts/renesas/ulcb.dtsi
index 8a30908992ab..a9e53b36f1d9 100644
--- a/arch/arm64/boot/dts/renesas/ulcb.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb.dtsi
@@ -495,6 +495,11 @@ &ssi1 {
 	shared-pin;
 };
 
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
+
 &usb2_phy1 {
 	pinctrl-0 = <&usb1_pins>;
 	pinctrl-names = "default";
-- 
2.47.2


