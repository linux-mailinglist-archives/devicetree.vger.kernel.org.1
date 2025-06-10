Return-Path: <devicetree+bounces-184417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB988AD3EB7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DC893A8046
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7EB242900;
	Tue, 10 Jun 2025 16:22:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [84.16.66.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7AC23F43C
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749572561; cv=none; b=Lni+Em3cVEJin1FqZ4v2yfyq3EWgra0x6WwFndTqX5ylpLASLAq0UL4g1OaCUBdGCJcKphJrlvPKTUmopzVKxMa7LJz5I7Zhr3emUQrW7asAFoIHiSvr3dQqyLQGG+BrNiylB7HHcZldf8gCa+AhIDKHAFi5xuXsTk61rtNd4h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749572561; c=relaxed/simple;
	bh=x1Wkm27e53UM4T6qiWZzq4L2tb2uGPNcxdt52zzhg7I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gH1zLnBuKXiL0ceFvuvPNBKJ0pdUddMRxW+9ZtBjn9UIZkbte1TYPfzIx8T2RCMj5+YUjqtiW2TWWzDLPzoeiHhULKmcooGHba0kCBDciHJ/jPUdBgZlOk9x/495eYGZpvv+t4KInpnq2Vp9Cl0vcGvrdw8aY4W8f0YamIPKflw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bGvFz3nwxzflV;
	Tue, 10 Jun 2025 18:22:31 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bGvFy5CTWz14h;
	Tue, 10 Jun 2025 18:22:30 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 10 Jun 2025 18:22:17 +0200
Subject: [PATCH v2 2/3] arm64: dts: rockchip: px30: add label to first port
 of ISP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-ringneck-haikou-video-demo-cam-v2-2-de1bf87e0732@cherry.de>
References: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
In-Reply-To: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

This will make it slightly easier for Device Trees (and Overlays) to
link the ISP controller to a video input such as a CSI camera while also
bringing it closer to what's been done already for the DSI controller.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 8220c875415f52bb2098af5c0647cae8fe5c9aed..0cad83c5d5fe64dc8539e0fd0640e02058e1955c 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1269,7 +1269,7 @@ ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			isp_in: port@0 {
 				reg = <0>;
 			};
 		};

-- 
2.49.0


