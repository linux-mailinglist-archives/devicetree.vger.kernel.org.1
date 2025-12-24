Return-Path: <devicetree+bounces-249579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF1CCDCFB3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75F2A306C734
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6678134BA24;
	Wed, 24 Dec 2025 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X+3MNkSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0A33F364
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598747; cv=none; b=b7mKERy1fZ8OIYAHDRavkYjOI7NtqN58z3Z15o9P+Bk91GFKjAhpfPARtiuF7r7hMfJfovPxCRTXqdXt6g9QC975Dk6p18XBqy4I7WlrNrpy9w0gHAHvGtvE/iq8FdcD2WYNYnbLfs/37KtQ1eiAcMQCV8yOLoKR8frzLK0AKwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598747; c=relaxed/simple;
	bh=M2nJVReZm7KB8HWbmjM7YcyDgRND/RjMjORKcVQ43i0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lSlxJ4wTblRBNKs0nAiD4qi1QKc72XBKk6zUDg80Hnm7zH4aHFWmKJOefOLYp+cuC7VKhuP13hLyx0OnvZfb2YVMdRTf1lcLnkFQGZHQFCzPdDu53T4CnF7VO074AvZrMARkF31Hc1Fvhu8RWb2ltGNdR+T+FXhqoIO1p3VthYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X+3MNkSJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so45539895e9.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598743; x=1767203543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0vDDi2w5QGTilCRlcE2tGeIMDTcKdO8VJxrKHSO6pY=;
        b=X+3MNkSJhaUKYRpJGPzX0lg7ai2NWBv2JFHghNDnY9/RdbonePDyO7DY7wnxGUXkFC
         Ip48SGBq5tl7KNl/aieO2UgChROkhs/nC0ayr36R/5YWBUIbWR5qoz2vqvPiOexmiszF
         XSZHzcfuEa/chmY1Mm6mNqGL4aoF9KsWLt8n1Hh5YS+s6lMhW3ft+xwj7hyAyxpBvmA4
         lZpp3LHrPrhOf63Wg2pIOhbyBBBRPsGeyaiBGPTBhI8asE+IFNa7mEc1uHqrFrx/S8yk
         NuCkE613maMnznKjWpD2MzL+8eRg5WGvT/lu68n5lKYQ4wQMP7c4ANd8cqGQuR9W/j0x
         +46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598743; x=1767203543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0vDDi2w5QGTilCRlcE2tGeIMDTcKdO8VJxrKHSO6pY=;
        b=DOLTAnnbuCE85hYu4c8bcI8/DF/H49nsIS5kwFwoJhkBJJgNgpOi0Rk3Pn53ttFILI
         JytE5a+JgfBSentgZXQ6LlkvSyQPxGzGV54/DBUhEh/0AVQZBwFHtgvaf79f2RVVII/B
         xWMfgy4m1tPfzL1kkgwpgrxWdp9LVUdczbThbGqUY+ca3xroCaW4c9tHBiwbZk+mrdcd
         g2ky/sEOOhDkKdwycZ7VsvW6O8lQa6uyWwghJOt1Lnkf0YMtgYj3lQWMpO2tMSBOd6yi
         2+YGh19VrkC/68dUZDU3FKqohq5SY88aAXDcWiEfj5K9JpcREoaG4szMfE/0scPzN3nu
         AeDA==
X-Gm-Message-State: AOJu0YzY4hUke0Zl8b+GeMnCFAbPy09Rk34LGZ4S/UsbTFzm23zz62Qr
	9/5tg7WLk8LXGBidIP3zzZlisDSLJWp/HPwWm0rc2lbkiFj5O8H+47gU
X-Gm-Gg: AY/fxX6vXetZznmJPIq/4KiCqCSCs5pOmLH3SqTNWeLjMXCJcUuDbjhQP9biTuhewuT
	nvYUecdpq/C5Yp1H1bI/1QAN+kALmI8pNDikEA6nM8C6swPMVJFvXnBalJqA90VMxjSgAGmcZ+8
	9+d/eddkQ21dVkNKWUWRUO5qfn/XS98Wnw01fZpWKjJ97pHN32DdYEQ3KTal1PfAr8J2Yz753we
	6TfqEZ16B3SZylv8Avj/C+SvYklkP1mC5lI3d2U2NTlOFgxHFSSwesdXjQRbV9X9cmWulLDydgY
	AfWHmZ/rTxrok84ja5WicctJniajdffosDT2QV43A9MCto+cuR/ffNK+sCMTeV9AZbVM9spj8sK
	M71I95lU5CA3PZYgbcn1B53TbMFhlSxIBUDbTq1UEIq2ymVIewYL2/i+a8ZwpvNt0LfJ30AlJde
	XdLO6RC5yaRXGd7Y6yUNLSFx7fxoUR8r3mfjY4kBc7QJ+iUQMD8DvdiuOwqzlMnKDUNXpAG+MoA
	oGBRlm3O4TGL9ZO47qMPT3UHrihfHBSrro=
X-Google-Smtp-Source: AGHT+IGRxbw+WpAnOzLNQlktj8jDG2jAClH8Pv7M9I+q9MK0OSAp7TpoGlE/a+5Tz/FtNr/jmJV+zg==
X-Received: by 2002:a05:600c:348b:b0:477:a36f:1a57 with SMTP id 5b1f17b1804b1-47d276f8aeemr130700345e9.3.1766598743358;
        Wed, 24 Dec 2025 09:52:23 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:22 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 5/6] arm64: dts: renesas: r9a09g056: Add CANFD node
Date: Wed, 24 Dec 2025 17:52:03 +0000
Message-ID: <20251224175204.3400062-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add CANFD node to RZ/V2N ("R9A09G056") SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index b37eb7319ac1..928b0d162643 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -664,6 +664,66 @@ i3c: i3c@12400000 {
 			status = "disabled";
 		};
 
+		canfd: can@12440000 {
+			compatible = "renesas,r9a09g056-canfd", "renesas,r9a09g047-canfd";
+			reg = <0 0x12440000 0 0x40000>;
+			interrupts = <GIC_SPI 709 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 710 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 703 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 711 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 698 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 704 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 712 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 699 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 705 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 713 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 700 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 706 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 714 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 701 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 715 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 702 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 708 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 716 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g_err", "g_recc",
+					  "ch0_err", "ch0_rec", "ch0_trx",
+					  "ch1_err", "ch1_rec", "ch1_trx",
+					  "ch2_err", "ch2_rec", "ch2_trx",
+					  "ch3_err", "ch3_rec", "ch3_trx",
+					  "ch4_err", "ch4_rec", "ch4_trx",
+					  "ch5_err", "ch5_rec", "ch5_trx";
+			clocks = <&cpg CPG_MOD 0x9c>, <&cpg CPG_MOD 0x9d>,
+				 <&cpg CPG_MOD 0x9e>;
+			clock-names = "fck", "ram_clk", "can_clk";
+			assigned-clocks = <&cpg CPG_MOD 0x9e>;
+			assigned-clock-rates = <80000000>;
+			resets = <&cpg 0xa1>, <&cpg 0xa2>;
+			reset-names = "rstp_n", "rstc_n";
+			power-domains = <&cpg>;
+			status = "disabled";
+
+			channel0 {
+				status = "disabled";
+			};
+			channel1 {
+				status = "disabled";
+			};
+			channel2 {
+				status = "disabled";
+			};
+			channel3 {
+				status = "disabled";
+			};
+			channel4 {
+				status = "disabled";
+			};
+			channel5 {
+				status = "disabled";
+			};
+		};
+
 		rspi0: spi@12800000 {
 			compatible = "renesas,r9a09g056-rspi",  "renesas,r9a09g057-rspi";
 			reg = <0x0 0x12800000 0x0 0x400>;
-- 
2.52.0


