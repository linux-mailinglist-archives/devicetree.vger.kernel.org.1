Return-Path: <devicetree+bounces-233273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89986C20679
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:56:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44D994E9083
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9351822688C;
	Thu, 30 Oct 2025 13:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="qgQkyQ5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay144-hz1.antispameurope.com (mx-relay144-hz1.antispameurope.com [94.100.132.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B8227BB5
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.198
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832447; cv=pass; b=tLZxJ29KOBnPvWiDd23ovL+nsaYrQ/CBD5F2iyWXwloTEBrD0X34BeD5P/i/gBw7wzciPJqmCawVCn5wa0wDiy2yWbaM+nG5nhO4n9wsXAyfS5jCsRkq4J/swpPqxe4yK12ApjuAscPFCuI+6O5SHqXlAP5CJQEsHqgKR7+c2NI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832447; c=relaxed/simple;
	bh=sIZggCHnGSlO45HiHftHmYcFFF8Ni5TxagNbhsJfx0k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hajogJ/6gUMNNtkJzqZO+Snz5PDdDkljgy9sUm20AIrCYLXhIPkp9Iz2FjhqMbBelazifZRTNJExkM8rvekJpJyl9XDkSYWiWxTTQNLSHceZofJ5tXZfpR+KgcbPrYMvDsD9qE7HMSGVqFF9XRlV83tXS4ndJkEBR1wEZCxXNtw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=qgQkyQ5r; arc=pass smtp.client-ip=94.100.132.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate144-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=tD+ajNxptu2k73Oepl6KZlA3PKs0QXwWaX/tcX3eJ2g=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832398;
 b=Plc565C9GJMeLgJHWgpxMxUOcj/vouPrRa1oZJ0YCGm+0rybSzbHyadozqyGCfnHM39qWx/q
 /pwbgTWaZUfIoGoUjYisS+NxMYjGFMQExktxrQ7VQm1d9OIp7ezsT4v9cvv/RaZ5V7W6A7eYHcy
 FlreOodUV/pE64I5bZZ7ioteUIUTgIfoVdK2PiLc/a85/fm4lasahTGbKeDuIHGmVjEVhCJhlXe
 n9L6FdZoODjr8OKPXCdQiHPGo4/iFaBiF2FDhEo7kN/xyB+QxkCs69YldPeKQDmjIDfo4zsYnCY
 wnI1IGIJwDPdAWaTIEmd4U7B88k095hemeASL0Gd3tP7Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832398;
 b=rCNwt89w/37gQonx0kQ0WRXMhgO73rCrEyvXY5n9F2cPrQsn+esJwOCfG/L4VwnKyK0V+J83
 gHfMzWWEETwyzDcDLZ0RXQgOzNjdxuHrqFchhsPlswmBOVgQNsrWqFrBZLICDV+0B2iIwFhxqMj
 N7495MNkxFbHvoSczLAtk5ALZnlyCYAz0+xsPC/JjOV7AYPjrAXdYAnEL82BNl47PZmW4x5GrP9
 hkLcK+ohxX09R5pJKEDJyEMQFX30FRMzMGyyvxUjXF7Uz34+lPHEVy7hmAc7qZEVL2h49JO28rt
 xJrvXFYcj+uwsvvkR41rfejR/l0EiZQfHCDSD3mm3Otwg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay144-hz1.antispameurope.com;
 Thu, 30 Oct 2025 14:53:18 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3E3895A048B;
	Thu, 30 Oct 2025 14:53:10 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/19] arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for i2c
Date: Thu, 30 Oct 2025 14:52:53 +0100
Message-ID: <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay144-hz1.antispameurope.com with 4cy5D70PDbz40bjJ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1f356f726ad2319c426137b927962cc3
X-cloud-security:scantime:2.049
DKIM-Signature: a=rsa-sha256;
 bh=tD+ajNxptu2k73Oepl6KZlA3PKs0QXwWaX/tcX3eJ2g=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832398; v=1;
 b=qgQkyQ5rG109gq6oez4S6Wf2a8QUe6YdA+NQTRJOI9yfpN/3Mxh7u8iZPQ08JW5zxx+uPcvm
 /9/pluV0psqkZe8gBZb3C10OaeKj0TH35n1PqBSZaLO37jXJf8zBKWjGYB6lPaWQV1GnK0F9Gcr
 r9K5PxUEsBVXRvcL8JXHeJw4n6wTtUYpmPDC5G4vEo5EbO5hnGO3bFKdx4xSFrwMOC2eEsds7xZ
 qj6rOiwWE1va+eGsQVS6Hm4BVi0UC7xgl8CJswCht0pxnA3zy59yzHFzwjT5beXgGrCRwS5q6nr
 v7bgX1uaQ2NdeKqsNrAQ9tGPxIyNQIs1J5OtmuCvT5Hgg==

A sleep pin mux is not useful if it is the same as the normal pin mux.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index b7136982700a9..a6ab94208028a 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -165,9 +165,8 @@ &gpio2 {
 
 &lpi2c1 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default", "sleep";
+	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpi2c1>;
-	pinctrl-1 = <&pinctrl_lpi2c1>;
 	status = "okay";
 
 	tmp1075: temperature-sensor@4a {
@@ -264,9 +263,8 @@ expander1: gpio@75 {
 /* I2C_CAM0 */
 &lpi2c3 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default", "sleep";
+	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpi2c3>;
-	pinctrl-1 = <&pinctrl_lpi2c3>;
 	status = "okay";
 
 	dp_bridge: dp-bridge@f {
@@ -301,18 +299,16 @@ dp_dsi_in: endpoint {
 /* I2C_CAM1 */
 &lpi2c4 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default", "sleep";
+	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpi2c4>;
-	pinctrl-1 = <&pinctrl_lpi2c4>;
 	status = "okay";
 };
 
 /* I2C_LCD */
 &lpi2c6 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default", "sleep";
+	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpi2c6>;
-	pinctrl-1 = <&pinctrl_lpi2c6>;
 	status = "okay";
 };
 
-- 
2.43.0


