Return-Path: <devicetree+bounces-252144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D23ACFBAB9
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A5C330B23AF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF5F236A8B;
	Wed,  7 Jan 2026 02:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+M5VrCT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2605923507C;
	Wed,  7 Jan 2026 02:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751808; cv=none; b=eM7ASFSnROoXuc1llJ/O2MrLegaYinqiAYhHiItmy9SMEN+3P0jsjnOaMlGJoG7UC78uy48EIEtPUoNaJyrp+WHABb3sKcgLXd9yr/bRNzoNOwUADkxgL7i2R9CSlSyrCiNuYb8iq5lbC344QmKJ1dZvMcp/7J8lRPujFncLxvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751808; c=relaxed/simple;
	bh=drRQe3NWFXClnpfXO5Sw+DqmbJPg9S9PQx1y8wKVjHY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LO5bCuYxzeZW1lBRfNag5ZQp6K7zA3HZhjnyQx5gk3oFy3mAMGfHJren4gGmLDo4jpiWnJA5bIdfLeGtNchbqVS1W1e0lPaSqTBYGsOXrljYKVeBFQIaof4xIK2gA4MQUEOetbuYu2dk/IxM68wVaQGcIxnui+Jw2WMqb5tu1WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+M5VrCT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8883CC116C6;
	Wed,  7 Jan 2026 02:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751807;
	bh=drRQe3NWFXClnpfXO5Sw+DqmbJPg9S9PQx1y8wKVjHY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=l+M5VrCTEDKLEZ7wvlQIqCFRRUSETN+4aEp6xKWQrymDO3CDHQ9ANQeSnIfqbXAbt
	 HLnMwBvgYy6JmP8mhhpH0MP0Yfyeh3UiIs2a/6qrMLjAsN5rvFlYbcLlLOSlU5FH1S
	 1ojqukJ6hwg5hpIkMbbfr6N68ezkBPMfzVwntrrmjSmKVI7WFSOg+eWgKLdMPoo6BU
	 vTOmIjAWm1aYVt1xwQUsLXcGAjq/rTTn8wwU0HKQwZZm2qrhj6bAaj0NvE8WQAfHx3
	 aXWU2ss+3K7HupmvSS2yq/+66Wter123fjh2wOGnYj+UIN1ai7QOiim+6QN76Qmb2N
	 8tWU+AS8CBfeA==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:40 -0600
Subject: [PATCH 01/13] ARM: dts: broadcom: bcm2711: Fix 'simple-bus' node
 names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-1-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

Fix 'simple-bus' node names to follow the defined pattern. Nodes with 'reg'
or 'ranges' addresses should also have a unit-address.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm/boot/dts/broadcom/bcm2711.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
index c06d9f5e53c8..5e3b4bb39396 100644
--- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -415,7 +415,7 @@ ddc1: i2c@7ef09500 {
 	 * The firmware will find whether the emmc2bus alias is defined, and if
 	 * so, it'll edit the dma-ranges property below accordingly.
 	 */
-	emmc2bus: emmc2bus {
+	emmc2bus: emmc2-bus@fe000000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <1>;
@@ -542,7 +542,7 @@ l2: l2-cache0 {
 		};
 	};
 
-	scb {
+	scb-bus@fc000000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <1>;

-- 
2.51.0


