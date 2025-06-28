Return-Path: <devicetree+bounces-190724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA4AEC7E2
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83FE07AFCCD
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD9C25B1E9;
	Sat, 28 Jun 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="nQ8LqJ4y"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417982586DA
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122177; cv=none; b=jliMQFWjWVsTKEmrEhngCktPTF3LrUkAWjql6XrkVOIaYwIitegmpPUOaiNJWCmE+2hYtlucG/AVwFET6gjwXJF4iSw6oJaoHl+jfow9H3v98Uzq5QysF1NjHxWot5OyKY/xce9tlw74HEUzeAkLHcsMkZIPmdUOv0qpvYvSbmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122177; c=relaxed/simple;
	bh=QDduJvC/5cNs1aCofqNCkLX2UcDB8NxT18fZG9lmPDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O6KDzFdFYE8/11lp2rv2eLSyy4pidRkvD3URVV6/N4ZeTUNfnwfmi/ORvjbqFeMyXlcRqfPgXG+UcIy8gmBzdDHERbg8bH1RcFShfetSy2MkdabDgMM8GY0rppSZEQUwKYImxke6i8DuWuxnsISTrc28Irz5ije0Byorp8IlF6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=nQ8LqJ4y; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122173;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uYtxvQntJrQzDe3coaU4yovvxAekHNN2pEKLjqZB3iA=;
	b=nQ8LqJ4yGC3JQ6nQNUj8q8M18//XNZ/Y+Jwgv9rA5QpoHncRR/wGdcgmG9JZjx0mhVodSV
	bUrlHZBdcUQDcfcAAl6qmi1Nuj/AR5x84oQvVMIPGnkrIqu5qozTFeogxKYNJBQqOmFOVL
	LN/5+PtWf6J8MmjQ1ynJ5W2uAOdEwelm6Yxs82Jrq28cQSCsfVQup947+GftwDPvKVVafP
	z3OujWTz2TlyFgnI55zyMmkxJO/E0RJWrLIo6dLhpbYUb7uFMiNig4LUyZmEMnUox79ubK
	7Fows5vjSseN+2/A3qF61KFmCDsMcJC97wCUvv6cbh8YfkRQRhLZpcCO/5lweQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 08/10] arm64: dts: rockchip: Fix LCD panel port on rk3566-pinetab2
Date: Sat, 28 Jun 2025 16:32:42 +0200
Message-ID: <20250628144915.839338-9-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The MIPI DSI connector on the PineTab2 only has 1 port with 1 endpoint,
so drop the unit-address properties.

While at it, move 'rotation' property to its proper sorting position.

This fixes the following DTB validation warnings:

  node has a unit name, but no reg or ranges property

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index 3473b1eef5cd..d0e38412d56a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -282,11 +282,11 @@ lcd: panel@0 {
 		reg = <0>;
 		backlight = <&backlight>;
 		enable-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
-		rotation = <90>;
 		power-supply = <&vcc_3v3>;
+		rotation = <90>;
 
-		port@0 {
-			panel_in_dsi: endpoint@0 {
+		port {
+			panel_in_dsi: endpoint {
 				remote-endpoint = <&dsi0_out_con>;
 			};
 		};
-- 
2.50.0


