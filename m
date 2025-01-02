Return-Path: <devicetree+bounces-135171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 345E29FFF9A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2640A3A1D71
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2661B87FA;
	Thu,  2 Jan 2025 19:46:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34821B6525;
	Thu,  2 Jan 2025 19:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735847167; cv=none; b=s6DkEn9xmOziVVcw1N2bUzvzYeTp7NnY+muuNK23mMRRdnFLaqYqwOgK2xd/jhuyjtMISOLd5/yZv0+jY7G9GKDRmDCOc02sJAV/brUn4yz75hOqIkHWCJhE35XZQgtEiikOo5aTsvtfjY/9SH7Tmu+5kamiA9xeBBZKnQDCJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735847167; c=relaxed/simple;
	bh=DVkA/yvy7pP2NB8DI0cP7nD+94sBoveaxliOnVbXX+M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pxmu/oQyp1jFkPwMIelBDJBLmmH4FP6OIPUDLQtmPdEmd665QpsJZqBsjpBRWtwAnF51MW43tO+LcikxpKgkW0Fi3rKmoQbDpEbrzlIa9bJYXuZOQ/38JHSdkZ1z1GV+CKNqnzxcdQ6fgqxrnrHAH8+I/+olHaIqVh9SuW4kM5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 5D19AB4B32A6;
	Thu,  2 Jan 2025 20:46:00 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 2/5] riscv: dts: starfive: jh7110-common: qspi flash setting read-delay 2 cycles max 100MHz
Date: Thu,  2 Jan 2025 11:45:08 -0800
Message-ID: <20250102194530.418127-3-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102194530.418127-1-e@freeshell.de>
References: <20250102194530.418127-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sync qspi flash setting to read-delay=2 and spi-max-frequency 100MHz for
better compatibility with operating system and downstream boot loader SPL
secondary program loader.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index 55c6743100a7..651f9a602226 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -317,8 +317,8 @@ &qspi {
 	nor_flash: flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		cdns,read-delay = <5>;
-		spi-max-frequency = <12000000>;
+		cdns,read-delay = <2>;
+		spi-max-frequency = <100000000>;
 		cdns,tshsl-ns = <1>;
 		cdns,tsd2d-ns = <1>;
 		cdns,tchsh-ns = <1>;
-- 
2.45.2


