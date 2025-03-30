Return-Path: <devicetree+bounces-161857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 884FFA75BF7
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 21:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D81123A8530
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 19:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775601B87D9;
	Sun, 30 Mar 2025 19:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EJ6wQuLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5493A8F4A
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 19:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743363554; cv=none; b=Zxsok3pjCwuAx90fphAVPLCiaCOZ4t2heGuflZBbmm1fUmPeypIlB0RymOi9d/3mfAqaL1Ym8Q7E017o07EoLcs1kgFSiF4mExu0sfptw2Xb3xh+dexix35VNaenJRM7mE9HhwU/RF06xkwo/p/yuT9TaeazALMQNQ3vs84Dw4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743363554; c=relaxed/simple;
	bh=bqjEQOaoMV+Y47IEDcn9sEhwaFYhEwXa7k86i9h0T0M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7oM9KHQPAR2FXZhtX602S+Ep3bk5Jg+demVkBI5Tio1kqnlg/RQ1inP0i1640fYlOlr3DUlBHS8e3OXlv2/CE1PtnNykL6v6xUHaImpnLfM7Q3EycVhu/Re2zAkJ6aiajSOomL1rupyseVuYRiddODp6TZy2bpcCbK+gIZzPVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EJ6wQuLS; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=halZH6jvhUjK9JoJsfFiXMcT2/WmVmWfglMoiF2rRv4=; b=EJ6wQu
	LS87H1D2FDqCB8hE0TJhdD6IyR5UjsxCJt0IEOuLpWJbpRAWwxj0lb04HcLtqB0X
	aMx4NbinUzM43D5HHLBDPa4mboeNtiPWq4bVnR2bw/8ODVUFW4j4P6DQ/Rmq+1Au
	+6nGETDa11Dgt+BIuvijjvcJft1yZ2iuamay9QeyLq0y8ka2zNkBgGi9ihy02Rxg
	XL/RLDa5OykrUq6znLA8izyfy4fJdWhg2cq4RgXTyvNkLTMlao5dHUPgTyKe0bqA
	8zcW2vVTUsUXC4HSem71iyawgeFtvHSs/RyVKECHBrNih77h8aSUGprmtbLyKL47
	78SdZjX4T5zKsNXA==
Received: (qmail 964870 invoked from network); 30 Mar 2025 21:39:05 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 21:39:05 +0200
X-UD-Smtp-Session: l3s3148p1@O43TdJQxVNlQ8qei
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/5] ARM: dts: nxp: lpc: use correct ohci/ehci node names
Date: Sun, 30 Mar 2025 21:38:33 +0200
Message-ID: <20250330193833.21970-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 974410918f35..41f41a786f9d 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -94,7 +94,7 @@ usb {
 			/*
 			 * Enable either ohci or usbd (gadget)!
 			 */
-			ohci: ohci@0 {
+			ohci: usb@0 {
 				compatible = "nxp,ohci-nxp", "usb-ohci";
 				reg = <0x0 0x300>;
 				interrupt-parent = <&sic1>;
-- 
2.47.2


