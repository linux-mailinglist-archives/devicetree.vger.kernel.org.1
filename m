Return-Path: <devicetree+bounces-223761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBFBBD593
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0AC26349BBF
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F51261B97;
	Mon,  6 Oct 2025 08:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="DL6u660v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12D425D53C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739354; cv=none; b=NkJUgCeiPJnaLTsPnYzAfGHvI8uWtLGfTn8KzjN65MkbuuINAGEgVPRVsYYrS2Iib06LSK4u6zkAPgkhwK5V0KurjixCrflUujnRhT25vZWLAY0r6sZZ8778SP5OP83Icd3ynM8Z2rI2UJoHpEBVFD0b4PYRhMU5IKoHP7bIQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739354; c=relaxed/simple;
	bh=uMxDPfmhFu9c/Vzs4BdXYisoHbh3leAaUC2QHZAwoh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hhDnBn6iyDAmSkdxMguAq25VXWhgwej9B4Np2Op3H4mBMBRZIOb8nIhaIw0gslHlJ/KxulTs6mxo+a0nwDAvfMTz4GOxWOdm5FGUb+2LuR7Ll+EYeD+RzaPBjI4f4QbOpl2KdQa1FiRj89MN7Lwa/YhFIYuUrQVMStW/VxN2cms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=DL6u660v; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=x39VBSHFccwrhbfyjsPp7h90lsVDCyxui9hUPD390MI=; b=DL6u66
	0voyWlDJZzyXhQqVeBoXSjYSmNMJ52b6Rr+uAUniBR43WnASHTB7nWF9o8opNRF9
	rLdobOKeRSA63NWKsI8x/jmVmhBhTU6Yx1qOHTr3VVxAd9qaCw9qoAg87Ee7VT4t
	6+YxtqV4Dc7+eYt8zFtmH4HK3K0zMYl3o8z0UFKTTcXz2h5j63Imd/rWSIVqY53b
	lEwhjCD7L4OejU7xML78OTJ4LKYQ8QAza11pJeR4jeL1An26WsNBiFvVfiFV4Zwn
	SbDyNko6rMwgdN1pqvpv53dkttynqgz4tDvb/owDBhDL4GZY75E0yEo7awtjGY61
	+KlnU6/BTR7UIA8Q==
Received: (qmail 1689949 invoked from network); 6 Oct 2025 10:29:08 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Oct 2025 10:29:08 +0200
X-UD-Smtp-Session: l3s3148p1@cC29PnlAlOwgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 7/9] arm64: dts: renesas: v4h: mark SWDT as reserved
Date: Mon,  6 Oct 2025 10:25:25 +0200
Message-ID: <20251006082520.10570-18-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251006082520.10570-11-wsa+renesas@sang-engineering.com>
References: <20251006082520.10570-11-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This watchdog can't be used with Linux because the firmware needs it on
V4H boards. Sadly, it doesn't mark the node as reserved, so this is
added manually here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts    | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
index 15554aa64c5d..86f09b9a0488 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
@@ -17,3 +17,8 @@ &rwdt {
 	timeout-sec = <60>;
 	status = "okay";
 };
+
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
index 1da8e476b219..161c083241f9 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk.dts
@@ -942,3 +942,8 @@ &sensor_thermal_cr52 {
 &sensor_thermal_ddr1 {
 	critical-action = "shutdown";
 };
+
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
-- 
2.47.2


