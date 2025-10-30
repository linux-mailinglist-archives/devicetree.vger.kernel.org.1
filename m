Return-Path: <devicetree+bounces-233238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A579C201A0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4739F42736C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900383557FA;
	Thu, 30 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="bHs0S2iX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay172-hz1.antispameurope.com (mx-relay172-hz1.antispameurope.com [94.100.132.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D26034EF1C
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828669; cv=pass; b=d/kXy7/PXG7/RyBVYDjqeE1sruiA81n/aOahJs9g5zkdT5bnMUFuQ2PhSO0oV1gb31szijJ/IyVagevL1Tnm/NR5O316TSaftH9oAekT+/suqtAbdbXRjebpdQFa6OLawlzBa3eygo6KJkDGvHOAt9xQIQos9F5RjLcJcyglMrY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828669; c=relaxed/simple;
	bh=SBO7GNLcfMbKloOhhNir70H2TF40KEEU8NLb1BkwWh4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fr/gYNiKRwXBzmkSx/cUGvDd7MhgsuVuBM8lTooo3lsBZHFtdfqVWk5G2CID0Z2TlPOB2npxqeHscrY6xVvmGG6wDr3rtokRZd6ReEIMvAqQIVXijeqIoGXBiwQZgYlhGUb1LwW7iqsggPyl3zwa4j+pMNkH+GTEy82qIDNae0g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=bHs0S2iX; arc=pass smtp.client-ip=94.100.132.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate172-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=yQrnZtKYkTmoOqZMGCIOD6/kHXaWhNyn+TUU1owbG/U=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828600;
 b=C24L/cOFXpcrWs0iHTiVGB3pzyWAjp/V9p9b97PEOS9xvFvKbX+isfvxYHCT3Hpg5UAcaLw4
 JyiGYb53PcXcaYxbfiwJarhberDksH1XFOpYBvpVGlA9/ozpeR4RikjqHb46ziQ53yh70W3PpxR
 K9Ad7jhVjvaybpFRWobSUzzxk/H1IZT56iN3qAHesOk3ffRBLd5v/E0cdq3YDKA+Xnoa07Cm7Yk
 8kuFLKtEaTGrBY5PVOoEjABBQlYVS4NSPsrqK41EU+KRq9RdtLftw7TrKo1REtna5Wkb6K+k6vc
 i70kNXxHw/nBwLGkRLpXhh2YRXKuqEHs7WcMUvhbsltDw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828600;
 b=YzlBeIMR9XZlqarByVA6UwjF+XGVKOrHwOHC8CiFM5qp6z88/a2g3myjtOwANj3C811LfKG7
 mi75tYfrOUgGuGQd6zyZ3biAiaVFkq/XuVXpFB4jmSUclE7W8LzNW5M8Zx02CxS2d2uVVbf+3Uv
 bN1Uyvz/khCrb69FnSj1dpvPHzAnucU0A6lsCrX8LNOo6tOPyHvG/RiMkiCLOFaIDJvsbeOjWos
 6pmbPNZGEXgrimz0cvhyhC9wI58090hSzS2Ao3TyYkLTOPhxttzjLgI+8yMBgL6WcI27m99GgrV
 7N0ms2UCzKmP05HM022d1P7J6Rl+Ws4pYzB/juujmYS0Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay172-hz1.antispameurope.com;
 Thu, 30 Oct 2025 13:50:00 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 9E58A220D24;
	Thu, 30 Oct 2025 13:49:52 +0100 (CET)
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
Subject: [PATCH 02/19] arm64: dts: imx95-tqma9596sa: reduce maximum FlexSPI frequency to 66MHz
Date: Thu, 30 Oct 2025 13:49:09 +0100
Message-ID: <20251030124936.1408152-3-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay172-hz1.antispameurope.com with 4cy3q51zVyz1Z1pc
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:22167396eefe238fc1584f087a1c054f
X-cloud-security:scantime:2.247
DKIM-Signature: a=rsa-sha256;
 bh=yQrnZtKYkTmoOqZMGCIOD6/kHXaWhNyn+TUU1owbG/U=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828600; v=1;
 b=bHs0S2iXBxJtsNa4f35CnDHkHNiL926DafKTk9dNYzoypSkOWjb+j5spglwfsfg1jyiNpI1N
 We8AV/OOQwPmKD4H6Pu/v8RD0b36+bUZhoe/GpNSwdmV7f8l+FVx3EAa3LWoWsYv/crQ3xAmplV
 8dohzR0TNp5tFSkHTiIj8qzhwjZ3UyuD2ssqrR5LRUmSd+pJpZH67sDzMXOsAxAD2NlqcxKE00m
 OmELD8M3FFKzc8BjGmkE3xxcP8CxTT674R0Ze9YpIzpY4jvaOJPgYvyZqSVOuynCbHoPrxNVh74
 TC7aormSPtgwpC/L7t9WiPM2CSVmDKtdXLSYbDoZWGppw==

66 MHz is the maximum FlexPI clock frequency in normal/overdrive mode
when RXCLKSRC = 0 (Default)

Fixes: d2c4d71b6cde ("arm64: dt: imx95: Add TQMa95xxSA")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index c3bb61ea67961..16c40d11d3b5d 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -115,7 +115,7 @@ &flexspi1 {
 	flash0: flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <80000000>;
+		spi-max-frequency = <66000000>;
 		spi-tx-bus-width = <4>;
 		spi-rx-bus-width = <4>;
 		vcc-supply = <&reg_1v8>;
-- 
2.43.0


