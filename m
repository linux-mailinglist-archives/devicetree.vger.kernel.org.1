Return-Path: <devicetree+bounces-218094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C095B7C76F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 14B844E1E64
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 23:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA092E9EC8;
	Tue, 16 Sep 2025 23:05:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4003A222566;
	Tue, 16 Sep 2025 23:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758063951; cv=none; b=dt9aRFHWdZKJzLfCKC8J+flw8zKdxsgRrqjEc3aKWd5aN3eioyKfLTrUMH7hVShaEU4hbme6M7OqMjBLnq7SnWAfN652Vs/vhnkcwKIxx+t7J24LmLq38GRzGCRGxUP2puigob8AREcGxPX9FdJ3eC6E37IMgIvj7R6ZRHIOU3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758063951; c=relaxed/simple;
	bh=nMqTOelzWmQkpO0AX2Go13idhy+qvxqUAaOsUAaF4P4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d7f50ryPbB1vGkMS9za9OTqeDbQKjNlKBPe050UoCw0PiNDurBMF/jkASTUfqv+pKh4j3SJhliP65p2NXTA6Bbsz7n92dw+SZdHhV2vLpokPb22H1sktsVSOTqD6/QZs7tlM64KIVpWE+j3DbqhkFMz799QJrn0vEJ6gWg7zvE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1uyek7-000000005wC-2LXU;
	Tue, 16 Sep 2025 23:05:47 +0000
Date: Wed, 17 Sep 2025 00:05:44 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: mediatek: mt7988a: add 'serial' cell to efuse
Message-ID: <e36e32d8bbadfd52176751e39ee3ce1ac7c42063.1758063737.git.daniel@makrotopia.org>
References: <18af6977cc34de75e64279141dee69dcbc81c420.1758063737.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <18af6977cc34de75e64279141dee69dcbc81c420.1758063737.git.daniel@makrotopia.org>

The efuse of the MediaTek MT7988 contains a 16-byte unique identifier.
Add a 'serial' cell covering those 16 bytes to the nvmem defininition of
the efuse to allow easy access from userspace, eg. to generate a
persistent random MAC address on boards like the BananaPi R4 which
doesn't have any factory-assigned addresses.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index 366203a72d6d..4a70f915f435 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -714,6 +714,10 @@ efuse@11f50000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			serial@140 {
+				reg = <0x140 0x10>;
+			};
+
 			lvts_calibration: calib@918 {
 				reg = <0x918 0x28>;
 			};
-- 
2.51.0

