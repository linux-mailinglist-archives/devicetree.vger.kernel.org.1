Return-Path: <devicetree+bounces-246690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3497BCBEF01
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61F54305F314
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB9C2BF013;
	Mon, 15 Dec 2025 16:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvNxhWSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84E13B8D56
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816450; cv=none; b=TZbAe33NXJ/1mNhzKZPmX3yliMsQ/1UFbtosJuDTKwoFYrOz80rRAIOAmVY84QA8/VrdJ/j/sn2oXe3/B6HlYbHuBE+VsJJg5LCGXvdJ1nORYJDQjwAQkGfUtpub7Xfp+55J1aYdKAKzxM168tkZsAlB9YeS4YpwOAKo0LIL//A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816450; c=relaxed/simple;
	bh=Pgn6yudl/ik5r90q1HEHdkPNnGzlzgAf1igndxWA1IM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D8bXqCkVvhwhRNK+55aRya1zI8c2y5tYkY2CkvJxTbemJkD8xRvSgv9LO/jgk3oaS9ttmK0GUJqJYa/8xgVT7vTpBLKi7KgvZeiiXqiSyRR/dpgXzIyA8j6O22F2gb2C7Pwpoawyc41Y2M8kThJmFyoTzqr92brXDxqeYnDS+gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvNxhWSv; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fbbc3df8fso1293613f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765816447; x=1766421247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i7y9m5edQt6VrvfXNvd2Py8CeCkad2qk/H4sL4FsX68=;
        b=LvNxhWSvjW5Sjxpbc/hIehXnF8o1G/mX6l35XgXQjqb5bIPfn20Jcm3QOPlDq+ccAq
         UjaLr044l6ShO2EasYzEdkvMtQZ0n9s3SlkYKpVZ7sivq+jYO1ikubLDtNma2AoVkMfp
         LvpRzjAEmFRb8wekFtamzCL5zCUngmrL1rnDiu93uaH/MyaHPgUOPlfShIEbCfZDdLVl
         tK2um+fx6DdwpNUZRsjuoz0kEjCeMPdbNWIYwP4XW4dlg2TmO8IqxMEfC4NFjHHyxNv2
         uxzJpDr/f7zUqcHBFEZ04DIAaSU/HonnWsD+P1ab2oSFXRA6901JrkCULUyhdvUpknHZ
         u+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816447; x=1766421247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i7y9m5edQt6VrvfXNvd2Py8CeCkad2qk/H4sL4FsX68=;
        b=wUj4bBLvv5EIY2Fq3qo8SDAuLRUDOGF3RSU3gHus7JdYkX2+OPwcK2v433c0R/CVB5
         vY1v3qChX8XhsofEQ7RvAtIvLW+0HECeZpeiX74b9P4JhJXUZcGrP8rzzPf4xAb93nST
         pAUZqR5W+RPIVNtXlgCb6Q0RyL/5LWwUPBLJ3ruYFJWrYArrxkbYdavyU08hzDkBaVdy
         9oQ7Y+ikFq/Dv+WwKQiRp+jA5+IH55CCWXMAnaHyLL/fZlmZmsVZRpIv1f2tgPKoZ0FK
         CSB1hBYPVWsBZpvMUalJDGV15SonMeybxaCh/8YpN9hkyal3VGs7SBrva/S1JgnIYRqJ
         mIZw==
X-Forwarded-Encrypted: i=1; AJvYcCV26y1/SkfrxEmD2w3WzcyNbBfNK0Sf15tFv2DPhhb4jO0r9CAXn5wV0P/dL6JKA1DPlPcHkMTD17if@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9lg/BHEy1r7fTCAcnX6KKRcf0jhBmx7sQj9d9Tgh4yD181VaM
	AIu1q90ya3uz/saExL/5ipO+Aze1VGs2COGCdfW1wmNhxZ8bfcHrctxy
X-Gm-Gg: AY/fxX4YRKJPuCpqJq5u3+I+5FRKMfeXUZjLk53NPtcVSSrJEl+RFHRQxBinBk4whdi
	zncL4xrti49AsZHmH2ThCA5J8p8n0Urz4vsDcyypfT3co/uCKHuY+TqNmS9LSyX2paPbXa8XO2n
	QC9vZP9YTpqYVoApMmpCSWcQcsxZ8mk2XLIyhhmzAU4W8NtjfpD2TaCJKrE2y1Wx1wnVP+Gb2wS
	ciqaLLwGPwjo55wMXf1CTUobq1FKl29V/5zPli2j5+sW2YzIGCATJBRlaoAM7+ZNg8ZMnrI+C2t
	dHlG6X0f0UmAc9nzb4fRHRXhkcDMV+vZJ1Vg0VIBvZeGolwTXBsi7wFe5enjBNrE5agg9b9oXFx
	3HUJLjqI6guICooDkmugPZx2t+zxNfakGofs0ljn1HMGZsy842PnMiWceGyhsKsVaOSfHt/p1wI
	sCTrmI0qYTQEyo0icwzd/89GHGbOkxyMwBJ6kt7znnNzy/
X-Google-Smtp-Source: AGHT+IEmSThuHsFw/M0pd8QlIW3cPKppuHDvFh9VazbWsnIG2zs9Hdrqr4SWtG3WV23oiB8KNSGofQ==
X-Received: by 2002:a5d:5f46:0:b0:430:c76b:fadd with SMTP id ffacd0b85a97d-430c76bfcbcmr8650688f8f.28.1765816446962;
        Mon, 15 Dec 2025 08:34:06 -0800 (PST)
Received: from iku.example.org ([2a06:5906:61b:2d00:f5e0:bc9c:3d69:b37f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b9b26fsm32609640f8f.40.2025.12.15.08.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:34:06 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add DMA support for RSPI channels
Date: Mon, 15 Dec 2025 16:32:29 +0000
Message-ID: <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable DMA support for RSPI channels.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 4d37d02138ad..5740f04a6222 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -679,6 +679,8 @@ rspi0: spi@12800000 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7b>, <&cpg 0x7c>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448c>, <&dmac0 0x448d>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -700,6 +702,8 @@ rspi1: spi@12800400 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7d>, <&cpg 0x7e>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x448e>, <&dmac0 0x448f>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -721,6 +725,8 @@ rspi2: spi@12800800 {
 			clock-names = "pclk", "pclk_sfr", "tclk";
 			resets = <&cpg 0x7f>, <&cpg 0x80>;
 			reset-names = "presetn", "tresetn";
+			dmas = <&dmac0 0x4490>, <&dmac0 0x4491>;
+			dma-names = "rx", "tx";
 			power-domains = <&cpg>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.52.0


