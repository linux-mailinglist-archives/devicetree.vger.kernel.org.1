Return-Path: <devicetree+bounces-159449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29898A6AEC5
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 20:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCCBE189AAC1
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13CA922D4E9;
	Thu, 20 Mar 2025 19:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="etZ7FVHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AE022CBFE
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 19:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499907; cv=none; b=HbP8NYltUmyF3AZ7fasGGSi0iMGHZjNm3Ow5PRjlbvUzOeNzT837nLfqhI+IoE69hWIuxcsVc3xjddGIxsYlVHkHu81F2LOObj3Acv15b71xj8T2ON7v5Y1MnJRE1oRYPnBlpHl7qGe4GxnfaZL7KGFkTK+yGIHb1Go2KROhw9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499907; c=relaxed/simple;
	bh=KwRmEv3W3EtqBDLfbMtwfsqs1joXJAuCfqCxq5Hb990=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ruwJhKMD9sGYN2m4oGchUfRmK0pEp5bbK42WGUzmcfZw9fE1HktjYNmxFHSQKdtXpZa3gOEdll0dvt1tKPDo3N+oQRcTaOZehCpEb0s1IxmU3KCEE1//TaCoCCTlqxwpwrGkWXUpuSgiR/zlgUXHz9d5XPE/bJnJpvYNGA2yvFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=etZ7FVHf; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-85db7a3da71so84693639f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742499904; x=1743104704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nY3+cr8LwPrnwPUbr8ZQVdT4sW06Crewhjj4AmYBWuU=;
        b=etZ7FVHf/t4RCwsZTTGfwWYqlZhphkFp4QJIBL3GOOpZxDQ9nbLGQH9PJ2cgyAePPl
         bYBE024SQRI60ILNL3ugxJxPKrw33j6D6RWL66JWKJ2NeSMqTs1kL4u3sJ3d40NYR4YL
         5rnSJ9qDaGNIot2I5KBU/nAke7YKPyks0NGYmYP/H2SHzVncbUVMsYVcZUeYZx/yUT90
         9eQM6gWaGkF1YvfK6cP8s/onN/Y661U8ITUlq1UXBVT/6327J/s5tDoZXbx8OSMG9nv1
         zpfytJN8xdBueBPlJBrevoNz9+S+eix7ujXtXaH24Rm5lTfMjL6CoqI+KZlqhbl9OAn0
         kWPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499904; x=1743104704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nY3+cr8LwPrnwPUbr8ZQVdT4sW06Crewhjj4AmYBWuU=;
        b=OLu5RVOcS4gAkyaHWKz+JB7t0dOnkKb8gz7fI76LT6VG2xXWd1KPXviJELIgXvY0PJ
         aF9h2AvHur1rxJwvFjevigJSdffWylJ3xQOkhvRqAEqKLQDrLkc/HgZ/DfTgQISsGJqC
         drZLdRpbZOxZBiA1NELeNFuo7aIwSyNaGE5zd3+G7K7+4An5MgS7VxAM4/0By4GfEeXv
         bS5c/6bmCife/dJSraQno9sHkjfVlHdfFSWZH7Ni2z0JrjiBmbyNMRAYBpC4jx0Opegf
         A2nBXTmajetV8N+wSeJOR0JmovWLIW5x+5Dr5ej4YRBPx/HFN51dzo+PvFmla9DV6UgA
         2qlA==
X-Forwarded-Encrypted: i=1; AJvYcCXHs34t4zY0+yACIGmHnfYghU+5mgnkrSyndZ5FO1C3wm5FgMND/eZ+nZlunUFZEqNUGXbLedfRkQAp@vger.kernel.org
X-Gm-Message-State: AOJu0YwHRSPIoT2zVodol4xRxOm+80GoxYmsZJgMP3ctCKmV5vTfMYGx
	JFcI/1qnDsMpdYM3DtcatXs19O3mlZ33oz4AIlVdeCQnoJTZ3JtZBmSZ9+vsYyw=
X-Gm-Gg: ASbGncsnXV37QJzr94WcKwjSNV1tfG+m5t0AArQR/SQZ98ZvtD2uj7jM/BnjEB3ZGbs
	ZNk+hmmYVL6fhPbb5oPvQQkgoLyQ70COfIm1jfrz+tu03Wlq5huq2HNt6AqvCHyKfUF2sSfNXIJ
	fCgLRa6ysxnEqgA4gzHwa72ZQgBzyiXz8GM2QK13aK35tfvUM1CSd4X2IgE8LtjUyyHdTF9iD86
	ht553NFU+f6lTZUiA3iiA5kr+xcsoPa8R/1ls435/Y9iJAlVhFYjcQThHryDiHfYKskvo5tYyMZ
	5U4F327btDdHsfICP319HZEFQouSoUzE8HD//ML9pl8VJ3jTh2GZkUnmt/ak5FUQeoa7sHrZudM
	Pr7/IP2aSjq2PixFDTx0C0duI
X-Google-Smtp-Source: AGHT+IHW4ltSCaG93SoWDansawq4DbhKwVMoGQNM/OgukHjVy68CtBuW9QNsRfgK8upO/XwMcw3t4w==
X-Received: by 2002:a05:6602:36c4:b0:85b:5494:5519 with SMTP id ca18e2360f4ac-85e2ca6fff3mr65533439f.5.1742499904534;
        Thu, 20 Mar 2025 12:45:04 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c40fsm8341439f.32.2025.03.20.12.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 12:45:04 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Thu, 20 Mar 2025 14:44:48 -0500
Message-ID: <20250320194449.510569-8-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250320194449.510569-1-elder@riscstar.com>
References: <20250320194449.510569-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define syscon nodes for the RCPU, RCPU2, and APBC2 SpacemiT CCUS, which
currently support resets but not clocks in the SpacemiT K1.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 09a9100986b19..f86d1b58c6d35 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -350,6 +350,18 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		syscon_rcpu: system-controller@c0880000 {
+			compatible = "spacemit,k1-syscon-rcpu";
+			reg = <0x0 0xc0880000 0x0 0x2048>;
+			#reset-cells = <1>;
+		};
+
+		syscon_rcpu2: system-controller@c0888000 {
+			compatible = "spacemit,k1-syscon-rcpu2";
+			reg = <0x0 0xc0888000 0x0 0x28>;
+			#reset-cells = <1>;
+		};
+
 		syscon_apbc: system-control@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -518,6 +530,12 @@ clint: timer@e4000000 {
 					      <&cpu7_intc 3>, <&cpu7_intc 7>;
 		};
 
+		syscon_apbc2: system-controller@f0610000 {
+			compatible = "spacemit,k1-syscon-apbc2";
+			reg = <0x0 0xf0610000 0x0 0x20>;
+			#reset-cells = <1>;
+		};
+
 		sec_uart1: serial@f0612000 {
 			compatible = "spacemit,k1-uart", "intel,xscale-uart";
 			reg = <0x0 0xf0612000 0x0 0x100>;
-- 
2.43.0


