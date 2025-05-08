Return-Path: <devicetree+bounces-174934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A3AAF4E9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0E5F1C05554
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46829224239;
	Thu,  8 May 2025 07:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="KCQUC4Qe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0FB2222AD
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 07:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746690206; cv=none; b=OX/2rMWbLiH3PTKvSrohADNzOSgUmhMukDqVVnHP59BsubknfeIBTJevHF2YD0n0OqV//JzfhwYBeC/RRq9z4YXs67Pw51QoZ0H5BFooKTrDxbeXqsveZAAGEoQGBcY6hhy7pPn6BE9Sbi9UaHaovotTiTVvRwqnv8vliq5LaOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746690206; c=relaxed/simple;
	bh=RbivIt+RNJiE/Z6dsoLo0RKAvo1VweEt7+we8rg11bw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VFNZqL4V81D1vC4x44a4LWW3i9GdeTqTYQw3THx2rBQ8szi+3TE9kO/vUN48ZOTyRHZLI9cucqEZz10nzWaUQzwQsgaoCu3XEeLJx7RdcgRwOLVTsB6ytkXNxMjawskTjt1dZY+OGa7CrRJZSLvX1kYF+6fQ+BRpdSjDEs2QT+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=KCQUC4Qe; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=zYH7l1qDluR4uZNcsoOblZcJLGUhttBGflEDpW4pTXQ=; b=KCQUC4
	QeayDCkkyYmKAz8qZa/5OJCTlhzLlkJffgcuf9NSpXCDVFo8c5axDBR+tLdvj5dG
	A7ygADcNXeM6z1apBihUFX14Qz1Swo8gib7ewWiwctojRMB6kBADxFXF6d6RYeHi
	fKUj+4q5815DE2y4Lrr7RjpyTj3xWuSRmi9LuDE0JUlE2pDwxkjMKNwPjSOKuRLs
	sy9BVZWdPQkiSUgxVJO3cbruV3xM1LeHU+4CBH8OvXkugh5BaqN2aTSb9Bffg9hk
	JiBxvlsIHDVchAZ+xNBFKvBw/UiRRJXzzoeeo3MSf9gR2quJcyLPWE08Wa5awI95
	iwd/2+S3IFb88C6g==
Received: (qmail 3712261 invoked from network); 8 May 2025 09:43:20 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 8 May 2025 09:43:20 +0200
X-UD-Smtp-Session: l3s3148p1@NYjkAJs0hMMgAwDPXxyAAIlRla1HkD11
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable USB host port
Date: Thu,  8 May 2025 09:43:14 +0200
Message-ID: <20250508074311.20343-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508074311.20343-4-wsa+renesas@sang-engineering.com>
References: <20250508074311.20343-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Can be used via the USB connector J20.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
index b3de325fb47f..fb74dc45bd25 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
@@ -238,3 +238,7 @@ &uart2 {
 	status = "okay";
 	uart-has-rtscts;
 };
+
+&pci_usb {
+	status = "okay";
+};
-- 
2.47.2


