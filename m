Return-Path: <devicetree+bounces-219509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D5AB8C0F5
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 08:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD22F56104E
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 06:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9023B2D6604;
	Sat, 20 Sep 2025 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="BLvXQqnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13F522836C
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758350693; cv=none; b=KTYpF1/+44p1PpB2vusZgl2Y2gHhtbBYMQzFgSCLnm7L3hF71XmhBuvY64gCK8KFrdnGHsCvunCCKA12LKmwFF+Akj9EY3Vqn8eOHos6HVYko3lxD/6bn9H23YIklBQi43DM+VfmZ+4zrlz5TvB/rz30HsUXDz1+NVwqxloCo/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758350693; c=relaxed/simple;
	bh=tZSxW3vbkxB15H2xezl5wua1AL32dSm4A42EPZ99tWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RAuLiJrUFOcU9hsvKtKNP8vO7Y4Bv8n+vMxGZWYW3I2RXfzHexhCv3VD9zSH7WoSKQdS9FB7ecQTYF1FxIG+DvA/nWdRLyO+/bLXgKf0C7/CPs20IAIDdebLYgARzj766hNgE34MoA+3VxoaqAWWYm5UPBY+PeWL5qwysQ3PFNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=BLvXQqnB; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=YsHxpmf/djyu03
	jdy89ZxFLwlW4Aeh7ED7v+ovDxJRs=; b=BLvXQqnBE7CSkVFWN8qfsDpGOXgnpA
	A372oTWIfoTQIK/AMHxkFPobsLRdgnIUhsbKsVECYCoSVtiIzloRCbNGHGT6ihAW
	cQorSUs3xUPBFdOPIJeNncLiwjdcwhRgqCj5hErC6pMoZmmiOX0DqO0XUwsMcVL1
	nql2xImsZYJtndtNyZ8agYxfa4EkGdEyS+9jCzJtjIu/I57OTluVwt7lbVVL4Njg
	vKiPwFxbnugqxhT++0YFzmKAVu4g1EbyhbdtYr03rTZlBsDGq7hWfPtN7duJkK3K
	I60DJY9oX7RmpxrXFkPrnBfHeM7rdWBUcRbYaIOSCmJzfHvytEHQURMg==
Received: (qmail 4169170 invoked from network); 20 Sep 2025 08:44:41 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Sep 2025 08:44:41 +0200
X-UD-Smtp-Session: l3s3148p1@pte36zU/epogAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [RFC PATCH 0/6] arm64: dts: renesas: add SWDT
Date: Sat, 20 Sep 2025 08:44:27 +0200
Message-ID: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I forgot over the years why we did not enable the SWDT on R-Car Gen3+.
The reason is that it is used by the firmware on Renesas boards.
However, this was not documented. So, based on a previous discussion
with Geert, here is an RFC how this documentation could look like:

* add the complete node to the SoC DTSI (here only R-Car H3, M3*)
* mark the node as "reserved" for the relevant boards
  (firmware should have done that(tm))

If this approach is acceptable, I'd handle the other SoCs, too, of
course. Looking forward to comments! Passes dtbs_check here BTW.


Wolfram Sang (6):
  arm64: dts: renesas: r8a77951: add SWDT node
  arm64: dts: renesas: r8a77960: add SWDT node
  arm64: dts: renesas: r8a77961: add SWDT node
  arm64: dts: renesas: r8a77965: add SWDT node
  arm64: dts: renesas: salvator-common: mark SWDT as reserved
  arm64: dts: renesas: ulcb: mark SWDT as reserved

 arch/arm64/boot/dts/renesas/r8a77951.dtsi        | 10 ++++++++++
 arch/arm64/boot/dts/renesas/r8a77960.dtsi        | 10 ++++++++++
 arch/arm64/boot/dts/renesas/r8a77961.dtsi        | 10 ++++++++++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi        | 10 ++++++++++
 arch/arm64/boot/dts/renesas/salvator-common.dtsi |  5 +++++
 arch/arm64/boot/dts/renesas/ulcb.dtsi            |  5 +++++
 6 files changed, 50 insertions(+)

-- 
2.47.2


