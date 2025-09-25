Return-Path: <devicetree+bounces-221314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B7FB9E70C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94BEA3AA9C9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E9F2E9EBA;
	Thu, 25 Sep 2025 09:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="goEb16EW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29B2E9EA8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793226; cv=none; b=LUDJHW23uHPF2+ZJV2GrSqyKWOA+mre3Vq82BniVxU5y5XIW/YMF5bh1ib5DvPy0cac8JH6qOQsw+N6DG4Z9AIzC9g82LnVA27x8B7zx9LPbKy56JmxhIysiKxLXiGG8NJK5XZNuuBTYg+D6rmxvEtONfJ+1ziE6CQOoDOQtmPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793226; c=relaxed/simple;
	bh=FUush5rSyzDYxYL4j9Ii+qjUkZ2hnnw2f0XrDQxQUiU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=htrYmfgwIqPAh0PFQIPAJvl2dHg1Z26IMrnzkfy7tLVnv1vQqEmFmShT0YcCnD+PmChVM9RoY6g7jhdetVGEwYrp9B6KhRUv8foKom1PebgOq8vOA3ki10db72xlXS3hhF+g1D2YAeldd2DXwM9kxtBFZHW2kCYfZ48hBn6NOHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=goEb16EW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=jOkukVWOKxqKZkG2yq1yzN2DHyqP83AaXdtFdt+Y8tg=; b=goEb16
	EW40L1lBGiP5DqUwvcLvduicz0A2NkP1Hh7ZjzGnaVnCsOkN7Vn2wvXcJm2G0ZGB
	8BIsSRFRXrGodAdQy1+wTH/n1Lb9GTmEiqKDAzyBk/gkit4dvHGX9gGWxeP/kRU2
	78pAYNQYLAVYQaa4SGJ7EGrxMM8xZR0PwIRHh2TYReyE+BHT0M3S90n84a+PvhY1
	XIj5oM0SQRlQ5MyvwxneXQ3gLYcl/jgRBHPQAbHgUVxQIZE6HQuHRhB20IH/uHZ9
	nDC7eeI7ppcVQE4w33kjfu9EAPo60ROX6Vfz7d1gq/ksH3KVBvp7tL8PlqV/nB5Y
	xQMml77wEAWbclQA==
Received: (qmail 1813281 invoked from network); 25 Sep 2025 11:40:18 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Sep 2025 11:40:18 +0200
X-UD-Smtp-Session: l3s3148p1@szz99Jw/wMQgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 05/12] arm64: dts: renesas: r8a77970: add SWDT node
Date: Thu, 25 Sep 2025 11:39:44 +0200
Message-ID: <20250925093941.8800-19-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r8a77970.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970.dtsi b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
index e7a5800bf742..1fe185ccffbd 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
@@ -110,6 +110,16 @@ rwdt: watchdog@e6020000 {
 			status = "disabled";
 		};
 
+		swdt: watchdog@e6030000 {
+			compatible = "renesas,r8a77970-wdt", "renesas,rcar-gen3-wdt";
+			reg = <0 0xe6030000 0 0x0c>;
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_CORE R8A77970_CLK_OSC>;
+			power-domains = <&sysc R8A77970_PD_ALWAYS_ON>;
+			resets = <&cpg 401>;
+			status = "disabled";
+		};
+
 		gpio0: gpio@e6050000 {
 			compatible = "renesas,gpio-r8a77970",
 				     "renesas,rcar-gen3-gpio";
-- 
2.47.2


