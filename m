Return-Path: <devicetree+bounces-168584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2CDA938BE
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:33:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9B18189CE40
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 447D21AF0C8;
	Fri, 18 Apr 2025 14:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="POAZK0UX"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD2F1ACEDC
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744986802; cv=none; b=ZMLoJ5bO2EI7KosO+dQTv13xZcXdlvxOdhVcEUUTAHQ41VWzYS0IpW65C3UfQ1WG3ONTKnn76OYspK1pPRfEWEg9FL856fw1gWyBrabL//m2426hmPgJhIilN95FchrTXAWjAo3P83kiDkD5X0VF3soP9fORr1GG5jc1uAvuUrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744986802; c=relaxed/simple;
	bh=V1FR/AZZgPsA/aW2KEQzSBcqStshlddKw2fV5cdft/E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hei0SA29MKqDXUUo7gq22LCnlUXbyaIHl2xh6slDHgxwMj4nVzLSrlc49kQod2WMQIrBKead70hQa08UIH4OaWTv4isMCav3POA2Wy/u0kd/4NIJQC836G7RguBSOoYDSblaLjrxfxdhM3iLJjnuz1SURJrwGCz30fzJu4gj2cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=POAZK0UX; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1744986793; x=1745591593; i=wahrenst@gmx.net;
	bh=cvwob2Kb8gXyKg36Nh6z9XqX/lokgGWDJCODrEsWX94=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=POAZK0UXx6wSCp+KYwVrOkidKcNUwx4+jSIntkgzfGIy1dW1Sv7GkTADMQiwCESj
	 4OJMilU3Jd1fBczVesZCC3A6X2WK7uUTOf3OUQHueK/1RT7aAiGzcy4PfmiTmnMH8
	 Lyk4l8leTrsuDJNrynklIoJ+cAOOgxHe+M/v94lkMjQULLTkCDuGkLbj2L02XGize
	 RaFvuDiANrDu5r5BXa35gPDbOJ6e36RtYcrvOuWj9SfYcN2AEiGwR+qY4n1M131Zo
	 5Hiz2diX+Qu2ioN4tWSBpjHgD5a4BcKM16eJHNHmh1Olq/075E84JMG25cZiZ9sbq
	 oBhbYJvFFhXYotNcTA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MhU9Z-1ujGGY2ZCl-00l2Ro; Fri, 18
 Apr 2025 16:33:13 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 3/3] arm64: dts: bcm: Add reference to RPi 2 (2nd rev)
Date: Fri, 18 Apr 2025 16:33:07 +0200
Message-Id: <20250418143307.59235-4-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418143307.59235-1-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yC1oGAsOqhIPcLlzaT65AWaVWLWqwjaKHgHdIwkT1u2ymciZ2i6
 Lx1FzMG33NqwNMY5MAvc8UV1djfPb9elVG6sf1WSIPbiGTxT+58X7P+MOhhfBW5Z8eHInmj
 Be3rTKFqNpeHwUnO1R50aQC+KZqGQq6k+doI08SRpOe/Pda871O+EQDr0YF0sJw4sSl+0nU
 i8GFgyTavG2FjrT7aDSNw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:OF+lGlJnBxA=;X4Q89FamiQ+Elp1zApsHvvxXy46
 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

This adds a reference to the dts of the Raspberry Pi 2 (2nd rev),
so we don't need to maintain the content in arm64.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm64/boot/dts/broadcom/Makefile            | 1 +
 arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts | 2 ++
 2 files changed, 3 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/b=
roadcom/Makefile
index 3d0efb93b06d..01ecfa304184 100644
=2D-- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_BCM2835) +=3D bcm2711-rpi-400.dtb \
 			      bcm2711-rpi-cm4-io.dtb \
 			      bcm2712-rpi-5-b.dtb \
 			      bcm2712-d-rpi-5-b.dtb \
+			      bcm2837-rpi-2-b.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
diff --git a/arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts b/arch/arm64=
/boot/dts/broadcom/bcm2837-rpi-2-b.dts
new file mode 100644
index 000000000000..57742ed40049
=2D-- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts
@@ -0,0 +1,2 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "arm/broadcom/bcm2837-rpi-2-b.dts"
=2D-=20
2.34.1


