Return-Path: <devicetree+bounces-218091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E795B7C816
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FEEF1B26204
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 23:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39BAA2BEC27;
	Tue, 16 Sep 2025 23:05:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EB61FC8;
	Tue, 16 Sep 2025 23:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758063925; cv=none; b=b4JmREQwxMHfN/7XMEP39RtH4XaPlCrNZKOZ4pdICYRTEQ4n8+mHVb8YJDAzZJrMCWL96kimmHo5//E9WHOaENp+wlwZZX5PzvScBi492COKst4XFuA7w2w7X4+56tn+4BF6DqHkC88ePO9W76StIgxkfJtcMU+JN80BCxmOoZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758063925; c=relaxed/simple;
	bh=9UQmd4OqN4psW190LGoruOX059Dl9jSxjown7oYkSm0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=XHRTXOCKf7bhNiiA1MZGJdJ7zLOIMQUYycRhJiygQvuEX4ArfT11799sLQNUTatWFdgFbqlqdkWKy1e95uOknTvmgf5FdIepW8DVor8xuKkfZcN8PeMNR2xFv5WFmxRwimvwn2VfXKRGQQXaFpfOPtjZCPYM5fmhkQcBy8rzBDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1uyeje-000000005vQ-4BFu;
	Tue, 16 Sep 2025 23:05:19 +0000
Date: Wed, 17 Sep 2025 00:05:14 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/4] arm64: dts: mediatek: mt7622: add 'serial' cell to efuse
Message-ID: <18af6977cc34de75e64279141dee69dcbc81c420.1758063737.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The efuse of the MediaTek MT7622 contains an 8-byte unique identifier.
Add a 'serial' cell covering those 8 bytes to the nvmem defininition of
the efuse to allow easy access from userspace, eg. to generate a
persistent random MAC address on boards like the BananaPi R64 which
doesn't have any factory-assigned addresses.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 arch/arm64/boot/dts/mediatek/mt7622.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index 917fa39a74f8..0b9803a183b9 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -278,6 +278,10 @@ efuse: efuse@10206000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
+		serial@140 {
+			reg = <0x140 0x8>;
+		};
+
 		thermal_calibration: calib@198 {
 			reg = <0x198 0xc>;
 		};
-- 
2.51.0

