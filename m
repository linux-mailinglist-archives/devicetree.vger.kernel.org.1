Return-Path: <devicetree+bounces-232400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D71DC177CA
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F84A3B66B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6150F1E0E14;
	Wed, 29 Oct 2025 00:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cjWZcjCo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B801D5CC7
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696707; cv=none; b=VQY8w4w/DoVFRwq2HP5mG+zBcNcsgURu/L16s4jm8XxpWpFNprHwBpiiyM7ZK2DnirslRLgb5xnBQtnuqiLpUqYias9hD5dIJvKQUdFIv0JR7dZeOSRQJEgnO1Bo2EjdTRYfELjrB/VqUcyMrpcn3+ktLz4NAcd7Ra6TDZEymrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696707; c=relaxed/simple;
	bh=BtXlcRBoAhNxkROveqqzl9jSeq3ICUd7+68jZ/irMY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RqY/+Yku25hw8P76GZXxLylP8LmlMXKd6DXjqICcZwTgrNOj5GpO0LmfIx14s0TKYpNmXmRYYFlxktYitBFAyz14aLE1Jqt8rDGL1rpCmQaAVZJSQFDZP2WUiludAoysWY8A1RlIefq3b+N3evhxqUT2jvXdTgh5xPNlCDOP7YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cjWZcjCo; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-87bb66dd224so56178356d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696705; x=1762301505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SY8bhJKucZnnINBzQA9olEneaOdGJdRswVhKUMSP1Ts=;
        b=cjWZcjCovjuFu88xArBdd6kVZstJFUK48ICkJDMuX51ROyeHiu1QsbBHR8h11vWp08
         D6br0p+RNjOCJ7yRM4qX06R2qD8JbsfeAu93HlvLgVlKODcywDV9YBSxP/SB6kA+aFbQ
         Xk5Z3PwRGWl9+znDtBIKRXRt7IhlR6Vns8PxnNOwW0fuIhYcEjbJNwEFAdG/lAKLGgEz
         ihA08VI4tJMuFPWVIbIWtAbkCBmNRnbb0cfxOTmy3ofDKtFRM7/NAU+dEAer4r8+Z1CU
         vQBZK/RRsWeZht4CWL6jIXc1kZ5dJNHlSiKf7eEnSXVS5wk0JENM3bOUQUvz2FVe63aD
         3ahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696705; x=1762301505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SY8bhJKucZnnINBzQA9olEneaOdGJdRswVhKUMSP1Ts=;
        b=wN7Hhct2NhWl6BLwO28ecG8cjCRlp4/kC2bIjQzo5CwSQE0VtxmKnoiGAcdNkqhIVq
         5dlry9UTG4OJWzhI/9qCR7pzhHAbRVyILuXINv5G+M6MfAIvEwIKyzHbtKW7Wodsa19F
         l5jzY+dFdLoKckNdCS4rqtxXDeImxLzaeG0Bk4vN4mAWPOpsMnjJIb/pD+30KyO0AMfE
         jEbpeqR1Wypefr05kTxobhK4bhm5mvpvHHjHFjqGwJIKouh0Ibl/s1RtDjHKW9N9DgeK
         ddOJrOPQP4HCCQn4x8BXhgm/DHBO+IjmpFvViXn26UP3bI3xnSsiRQ9HQYuZHBr63NEc
         /3Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWNMdIPsKKOGHQBlEAq8+qrHZBCH+hjgwupgIw2TjYi5F/lSxzonEXwUHUqBCKBOucmD3P4pCVqXHcv@vger.kernel.org
X-Gm-Message-State: AOJu0YzXFPoRtB4Ng9KlvKII4x/PaD0EERRpRK3/eKPfMLRHVyZmSwbX
	b0sjX/NcV/onYqGziilIChHkgIGQ3QuTNYB8n5vSaWDc3ClDxCgJ5IeB
X-Gm-Gg: ASbGncvoEbOANO9XWHyIkuz0qT5h6pFGXnOD5LVLK7YOjjFhV7JYtAuMCyxSS73i1A+
	7td+XNVxhRa93RuwaIqKiMc8atrWGJ5xYE+s7af+ZoCYJWNq8HK3nDW0+1AP2XCzaE+JF9wz18X
	8U0AHM6Lbyq5viTIlkKBgLcA5Jgx7c9DLK2T7Y5G00EUGcnoIX0lvovSGDTiJw1KwWLSe6u9s7d
	kG/0Fko/ZhZ/8PaFBNAwLpneJ7P8kEnxYfFyE3xfEXj879DlYG6+huN2F1HesLS3WlB8m3fCFkl
	kYzi/yFU7HUYcpafrcPrZhc/eQ1ZiBfDlpdqBFVBKamo6IFzM3dQ7SK+F+Lz9vHpUMTN72QEX4+
	hmQqNfAaBN2pyYzaNSlK6a44tNAkfNI6cxXMlxLDD4islAlwKzPWnko/MpmagxWJsKGcAsAzMnu
	eogY+dS8rdMYqeZw7O8GUr6RaE+43fFsU/ZvjRqkYyReyI
X-Google-Smtp-Source: AGHT+IFN5MZFLx9fkQvrL/pSdC8MVt0wRfB5OAM1X9WBFBf8yJncnQ4OXZoamPK6a6ubNICmvj6aog==
X-Received: by 2002:ad4:5be5:0:b0:87c:a4f:afd3 with SMTP id 6a1803df08f44-88009afd0a8mr14232506d6.16.1761696704672;
        Tue, 28 Oct 2025 17:11:44 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:44 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	samuel.holland@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/5] arm64: dts: sophgo: add initial Milk-V Duo S board support
Date: Tue, 28 Oct 2025 20:10:49 -0400
Message-ID: <20251029001052.36774-3-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251029001052.36774-1-josh.milas@gmail.com>
References: <20251029001052.36774-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds initial arm64 support for the Milk-V Duo S board
[1] making it possible to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/arm64/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 80 +++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts

diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
index 94f52cd7d994b..68aace728223a 100644
--- a/arch/arm64/boot/dts/sophgo/Makefile
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
new file mode 100644
index 0000000000000..174c194e1301d
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V Duo S";
+	compatible = "milkv,duo-s", "sophgo,sg2000";
+
+	aliases {
+		i2c4 = &i2c4;
+		mmc0 = &sdhci0;
+		serial0 = &uart0;
+		spi3 = &spi3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&dmac {
+	status = "okay";
+};
+
+&emmc {
+	bus-width = <4>;
+	no-1-8-v;
+	cap-mmc-hw-reset;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&gmac0 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&mdio {
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <4>;
+	no-1-8-v;
+	disable-wp;
+	status = "okay";
+};
+
+&sdhci1 {
+	bus-width = <4>;
+	cap-sdio-irq;
+	no-mmc;
+	no-sd;
+	non-removable;
+	status = "okay";
+};
+
+&spi3 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
-- 
2.51.1


