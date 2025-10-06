Return-Path: <devicetree+bounces-223758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B42BBD57E
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CA7C2349BDA
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F25525E469;
	Mon,  6 Oct 2025 08:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="HlikfvW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5480325D53C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739352; cv=none; b=PkT+34Or4sWpKlaLJPzpojNIdUfZH+S9qOXLBEq4rFt2bQD5jowLkObYTxqhbAUzEzLq/UnjDFFWS6V4iSsxr5ee02eq78cputGG9O+Xl9F72MSJHmYtFTh7fs1Q3PnyKl/mz3//RO0DG23+9E0+VMBap2f9WZFYjwkMwLOV1fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739352; c=relaxed/simple;
	bh=CmQEG0w+Y7BSaEqz7epHQx3WrBlsxa5xfboxFuvsNdY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W+1MTUgHYi8ZlDXSbAsUh4yRQ8hXLOWPPiVOKBXlijXeHoIFTngg3HVTQLYHaUR7d8lL0yfn/AgmcP6I7JerpsSQWEixmuWSzGbnEC4Kxm4tyJF1GDddpSg5xwE4pI8/iEefi9taZKVlKD/FD9kRR6aUyaSIOro3ARfyfPtAkZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=HlikfvW1; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=QShfneQK8jEa+dEPrt5EU1Okng/pHMVqRi4uML/yvR4=; b=Hlikfv
	W1GEl0NpO1ZM8vBLyGwv1xEXyBF/pVxDbBE+iwaalSgHE5HczvSkToJGryTxwnWK
	zFe0RG/xQ4K3+WhUkGys6Y+akTmnEHyqE6vRbPUUZOdPgNvELEW23iw5yX5hpwUz
	iXCoX6XEapLneJHIZPo8I1Ry/ziPT3e01ABWjvBcEXG5g0LtJFtK3c2x7nGpmnfZ
	9zvs35YcG5oq2a8W9hR4ksNxmDwjvl3nyUlAq5axA628cu4lXJyuHHrRw70KZmUK
	9RRXDECxsxIVOuBD6q2vqfSKIjXEeIa9/IpuR13c1syqP0qZQOa7q5/n8QxJP0/A
	KZGV36DyTrxakgHQ==
Received: (qmail 1689884 invoked from network); 6 Oct 2025 10:29:05 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Oct 2025 10:29:05 +0200
X-UD-Smtp-Session: l3s3148p1@p+uWPnlAgOwgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/9] arm64: dts: renesas: s4: mark SWDT as reserved
Date: Mon,  6 Oct 2025 10:25:22 +0200
Message-ID: <20251006082520.10570-15-wsa+renesas@sang-engineering.com>
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
S4 boards. Sadly, it doesn't mark the node as reserved, so this is added
manually here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts        | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi b/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi
index 1781bb79a619..c8d78a0f6653 100644
--- a/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a779f0-spider-cpu.dtsi
@@ -229,6 +229,11 @@ &scif_clk {
 	clock-frequency = <24000000>;
 };
 
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
+
 &ufs {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts b/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
index 67b18f2bffbd..dcdcc22f91c5 100644
--- a/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779f4-s4sk.dts
@@ -230,6 +230,11 @@ &scif_clk {
 	clock-frequency = <24000000>;
 };
 
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
+
 &ufs {
 	status = "okay";
 };
-- 
2.47.2


