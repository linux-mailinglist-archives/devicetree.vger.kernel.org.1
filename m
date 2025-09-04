Return-Path: <devicetree+bounces-212992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E036AB445B8
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9ACA1A03E14
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE7C21885A;
	Thu,  4 Sep 2025 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="OG7hviRD";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="OG7hviRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEF4222594
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011625; cv=none; b=MPz/iSug0UUkSzf+8MmOTnvsa5542FWNaYBrEC+J8ewDm96zFxmDE/yNmZ/me8lsMyUqrSR2BEVMOMgPhG3aYISt4mmJmH9Qe59KB/Zi4D2xxBZ2n4WFPXmwOhWwmnmEqVFWWo0x1eY8Fvp+a9jXpVEOL2wCnJlOyWDWJKKlqAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011625; c=relaxed/simple;
	bh=RDKiARPNmJyZNUSFcqc4mw/jzkpd7WdgnK9xER2DNII=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kdCzcISXoKeSDk1OyYjY8nElMBxC6xyDdiamhnDLOxmMfJIEreG2DkZPOIpF++V3qERKwnnVKF1QsKgxTJh0RMX4QTBO+TiIVevN0AZ/3LH6tvpuRp3coGdhFdcm1MAH3F7u4LAs+W1V2tijtCy4ow3HBdumfR+wMVd88e07heg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=OG7hviRD; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=OG7hviRD; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011622; bh=RDKiARPNmJyZNUSFcqc4mw/jzkpd7WdgnK9xER2DNII=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OG7hviRDiR+8f7oOh5rw/0l8ZHUBcSh5fPMBYWqalyUu2k8EJSHbX+VKJ3m+7tOFz
	 r4hCFezb+9J8MAK5AEOtyjyKQ+fuB+oa1L2fLE2uKOJXAt97WFPn602KR3bbsBqTcC
	 hojsBwrPDQWcTGtv2Rm+/E2ItUx3AStiNSgQBaZUM21Wh9BcdUBeFRhv5oZg4zj+T2
	 lhqEWH09vg7wDInD5LHcVnIwb+MS0Z+nmoitmMkd1TmWlG9c0VwsOFA0LiHHRdoxOM
	 QbtHkNvjW+9czLj96BBOEqLdBF4BRuhjSY14QGAsWgS5gkxNyGkjWmXMjF0B9AW6TB
	 iFfpioVqFQFag==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 993083D2184;
	Thu,  4 Sep 2025 18:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011622; bh=RDKiARPNmJyZNUSFcqc4mw/jzkpd7WdgnK9xER2DNII=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OG7hviRDiR+8f7oOh5rw/0l8ZHUBcSh5fPMBYWqalyUu2k8EJSHbX+VKJ3m+7tOFz
	 r4hCFezb+9J8MAK5AEOtyjyKQ+fuB+oa1L2fLE2uKOJXAt97WFPn602KR3bbsBqTcC
	 hojsBwrPDQWcTGtv2Rm+/E2ItUx3AStiNSgQBaZUM21Wh9BcdUBeFRhv5oZg4zj+T2
	 lhqEWH09vg7wDInD5LHcVnIwb+MS0Z+nmoitmMkd1TmWlG9c0VwsOFA0LiHHRdoxOM
	 QbtHkNvjW+9czLj96BBOEqLdBF4BRuhjSY14QGAsWgS5gkxNyGkjWmXMjF0B9AW6TB
	 iFfpioVqFQFag==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/7] ARM: dts: lpc32xx: Correct motor PWM device tree node name
Date: Thu,  4 Sep 2025 21:46:43 +0300
Message-ID: <20250904184647.397104-4-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184702_662194_C3A1B3F4 
X-CRM114-Status: GOOD (  10.35  )

Change once a customly selected 'mpwm' node name in favour of
the expected 'pwm' one.

The change eliminates a reported warning:

    mpwm@400e8000: $nodename:0: 'mpwm@400e8000' does not match '^pwm(@.*|-([0-9]|[1-9][0-9]+))?$'

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 916ab38f0a4c..761432673c39 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -298,7 +298,7 @@ i2c2: i2c@400a8000 {
 				clocks = <&clk LPC32XX_CLK_I2C2>;
 			};
 
-			mpwm: mpwm@400e8000 {
+			mpwm: pwm@400e8000 {
 				compatible = "nxp,lpc3220-motor-pwm";
 				reg = <0x400e8000 0x78>;
 				#pwm-cells = <3>;
-- 
2.49.0


