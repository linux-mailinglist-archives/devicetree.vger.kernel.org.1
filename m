Return-Path: <devicetree+bounces-218093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7007B7C89B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:05:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82FB148341A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 23:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AB72E9EC8;
	Tue, 16 Sep 2025 23:05:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B322BEC27;
	Tue, 16 Sep 2025 23:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758063942; cv=none; b=frwuvrXu8MkawgSf+kw/qODw8VzT/pJYAir4wAAinONJEqwapgeSXTXAcOI8dilJq75tT8D+Qt/+xKCqxOLK5sskkIVz7HlKXnaH3JHrqne2J6HdVGD3cZsoLFcrvPjBQEp5g13ECs07UkFv2r7iU/wt/dq4HiTQUrUiTefE9ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758063942; c=relaxed/simple;
	bh=VuFWykyYkZSnLHJ+ew5AD5UMeTXDTceEWSAxKKS/634=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fPXJgkwX442U8SiY141Osmplce8P44uq7QN4jwZkwTt3jFLl7qCgkc4FWHvn8vjS3ImRCojuJM34kMkPtdLHCVCI/yzKhUhIF7i4VGHBPzZRmT5dno/uUMgOxR/Ni/5cbeBaSf98R/oAhYx3d6kz+jRmPO7Y4HARsd6BtJbnPhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1uyejz-000000005w4-0GQe;
	Tue, 16 Sep 2025 23:05:39 +0000
Date: Wed, 17 Sep 2025 00:05:36 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: mediatek: mt7981b: add 'serial' cell to efuse
Message-ID: <2ec0f33d9a83f317f7fe3f4682c1afdc6e27266b.1758063737.git.daniel@makrotopia.org>
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

The efuse of the MediaTek MT7981 contains a 16-byte unique identifier.
Add a 'serial' cell covering those 16 bytes to the nvmem defininition of
the efuse to allow easy access from userspace, eg. to generate a
persistent random MAC address on boards which don't have any
factory-assigned addresses.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
index 277c11247c13..bffbe9a1d836 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7981b.dtsi
@@ -237,6 +237,10 @@ efuse@11f20000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			serial@140 {
+				reg = <0x140 0x10>;
+			};
+
 			thermal_calibration: thermal-calib@274 {
 				reg = <0x274 0xc>;
 			};
-- 
2.51.0

