Return-Path: <devicetree+bounces-190720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F01AEC7D8
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3195317CE5C
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008F625393D;
	Sat, 28 Jun 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="ZhiAGTrN"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3155924BC01
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122172; cv=none; b=cpP5rCdAnhwoyfIwsVO4/8J98Q3VgkldxVLYkTR64waPbkNZOhuQJfdQQHJ5BA9XenL0DaExhVp6eJW7WA/nQcPRm5R9ES+16w92XJ/eUYrQxDysLrmFSxZRVsWCtV+j7JxQ8PeWxzCsd0zga34T3h0QRr0lY5uwzqj/P582MQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122172; c=relaxed/simple;
	bh=J/Fe7VsW55nHtlw7aUGllk4ytzTJTWxNR274VqR29BA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u6LGxRSBiHfrWNcT1P4tsYAd9XxOOkY71nfx0kt6/y4mUQLh9Vdb7WMppdA+wlvlvfogSqJHhrTlyLFXCrwpK6HAnZPiEx0UEI8wQTKnhyfwTpsNz1Gz/uU/yYYMg+c4h3ugb+c4x4QsLzzWlAPPmj6JcphpgGVAvVQ40v0xdR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=ZhiAGTrN; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LdOjVT0hxZ4MogGhHL86KxEfuOHrbi5hNR9VAR3J/Ig=;
	b=ZhiAGTrNFHZZKC7ljxViWEQizcIb9e/dSqJYq0x/9LVH839ibJv8W/krAqafA1qXMLXWrH
	V5zlcW7movc/vHUAGp147Z1HFiiya+SyfmIl8J8dhrujZzyMU+RHYY+yf7LiAEcMULWI+e
	RbtE1yHNkI3IS8kJYpby4FyXSdYhvo0qg1/alSulFV46bgNL6M8W2YqvRWx+S0Hqa+afyv
	8McMYwW/NUAsPD4bId1HL5x5FeTQ9/DZtHuXu7QJGOrmaEVehefkde5kt+K4puAV/u8tPK
	5r14qAEoz0m9v+u3ahcCQYInuG0pekAhzzRQEpHHe4p3QPexmuKfU6dpgSmpFA==
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
Subject: [PATCH v2 04/10] arm64: dts: rockchip: Simplify VOP port definition on rk3328
Date: Sat, 28 Jun 2025 16:32:38 +0200
Message-ID: <20250628144915.839338-5-didi.debian@cknow.org>
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

When there's only 1 endpoint, there is no need for a unit-address and
removing that allows removing of related properties as well.

This fixes the following DTB validation warnings:

  graph node has single child node 'endpoint@0',
  #address-cells/#size-cells are not necessary

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7d992c3c01ce..6438c969f9d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -731,11 +731,7 @@ vop: vop@ff370000 {
 		status = "disabled";
 
 		vop_out: port {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			vop_out_hdmi: endpoint@0 {
-				reg = <0>;
+			vop_out_hdmi: endpoint {
 				remote-endpoint = <&hdmi_in_vop>;
 			};
 		};
-- 
2.50.0


