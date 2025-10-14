Return-Path: <devicetree+bounces-226683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20786BDA75B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F2D4F50370F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73401301716;
	Tue, 14 Oct 2025 15:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cy7RYE11"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7C019CCEC
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456007; cv=none; b=SB/UJkY1zPxu7uFv6aS6R6WGnikHSktQTnopWW3MP/5r5z6aLUj4+Rih61zghl7BcaWMkr4I+CDNIoVAXg4giLKu/PT7nJD2QCYBSc2qmfiU8lvbnup/DLV8lSsBXPgQqI6ZJyVO2J7q0k97ywLXfpNHteJcuiJKqkqKmq2L8SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456007; c=relaxed/simple;
	bh=bC1GV6kIreezKVVT4Oj9oFgXpMI9X56TUHGj+xw7qV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AQImYrYMlvdVi12l/UhfyAxndfIHuFsdXFaF2/nHx7golziA7Csr7qz020D5jzvDRjZZxiJAbf0bJrHDS5BlLduKV9B8qJXfn9RstgBiTL6lsUqhhUhhbnYo0WXT/9Z+V4M5rGVgIyBR4n06470Lyw1kMNkYXV7z0TyQhupFDnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cy7RYE11; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2698384978dso38600705ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760456004; x=1761060804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NOTwbs4p+L2U1fW4J3vWVmcZdnxexOHlXg5+8IeB40E=;
        b=Cy7RYE11xqevbUkst+jpjJ+H+fH+gYdUvBUn5JA5wrNx3wzbIe7uEVC4pNUd4o4eEF
         2KdKw03AzluaUcE64JHg20ZsOZhM3y7vS8dvqqX5TtF8n+UQ4YKQY7THbnOOVw+rFGXb
         a5MoS3J3Ik/uiFJkzXW3C6kz+Cbpu5n6Mkz5xes4gHQ2gsPO80XIhfQGORpeuzrZBnlp
         kgwLF3nbSY5sa23vvDk6GwBYDbkBtn64Iz2K8Tyq6dPgSzGP4vgBg6uVx+NIIQJZYI77
         gAug+Kr5NtEaAWf57oEyX35uGbVLQ4q2q9Vid6A0hzpyw32p+r7L2gqHhgQe8pkT9Wv/
         xsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760456004; x=1761060804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NOTwbs4p+L2U1fW4J3vWVmcZdnxexOHlXg5+8IeB40E=;
        b=iKIOjPpPG8Uj/kwJjHZ5KZrhrjCrGH3wyEBw8cKjC1on38fqhky/FVMBbdI7+wAbF4
         SWCJxFr5etxajYtA3/132JAHZKXd0NKjusqDtAmXKDVbiP0Jj1+qlIgvyS2LyYtGk7V+
         s68DJI6ceJAqAu+uvAsGave4HjdMed1QZr51ieSVMnMfOVWZO8WeqJqFPvZSNDqKfN+X
         gUC2YbvpUOsDyPicWniROMSWSHah6L6vk8ZGS8Lg3CD2YXQ4NAY4H/TEULLbvxFf443D
         5heZqOpxBX2hpjwpYhzQ++orIIW1AlL/lBCM+t3/7D4l3vlO49cFvmOMg5qxIOoRPzvH
         /HeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp0tfBTnPl/Is7IM6cnNeBo3s+GKLQ7tEq3OxZKfX59sWYOHQQGoIVhMnWPw3gJ9Aosr469qwxX2bx@vger.kernel.org
X-Gm-Message-State: AOJu0YzX/ET/F+pRT0imNEkrNrgNdDLNDF3WRwE2AshoazRUKGL34dZo
	E2JYLITdiDKxG3XyWG/op3tBiptAgn6sqJpVGGSf9f17ST9BKQR6/TUz
X-Gm-Gg: ASbGnctHQEPquHdf+ZyTe1YfuHKK5yt7Z2yvGgk9NyTmOCWNkXT4pvqa1gZcvT6mVtK
	DDqViPCKF9q/y/5RnfbNZS3DwxEZF3E3GAWAbkwphlTDpYwhr0ZwMB98O5cghjI9+h+LMHIgPuq
	fLAEgfnvlOHnQe1aCo0PCkzc3tT72wjq3a3XP3/n1/ON2BSjuNvyo6ziMA9UhT9LxDc1dAohpf8
	UHkZs58T9M1EHQcNTIZMOZPwxiDJLGNAFX8oyvCpoTUSEVbUpYXFbkyEFiprAcDiHxCpI5Bqfmi
	vU6/tyjTuNGFg8jjsvnU+C9ewm1D22agesybcX0C6fuSGrCI/UQiM/NamquSgwP1SWvgE5hxw4V
	u6zjUJ8istAkDjbm80mV80LCUcSHuvVZUUuRDKypd+DYOC6MJQQJn8cl5psgVCJZRnzvVk5w6Gw
	==
X-Google-Smtp-Source: AGHT+IELj7XESXcNTKFyydH9ysU3D3yEIHHtBESIIuXVyNUNifJ3Hkcupco+7VjAtxuCHL7uYEOCqg==
X-Received: by 2002:a17:902:ef09:b0:27f:1c1a:ee43 with SMTP id d9443c01a7336-290272c2564mr325594625ad.29.1760456004106;
        Tue, 14 Oct 2025 08:33:24 -0700 (PDT)
Received: from iku.. ([2401:4900:1c07:6d70:c338:e681:47e3:e797])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36cb1sm166927545ad.100.2025.10.14.08.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:33:23 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: renesas: rzt2h-n2h-evk: Add VCC supply for EEPROM
Date: Tue, 14 Oct 2025 16:33:14 +0100
Message-ID: <20251014153314.177300-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The R1EX24016 EEPROM on the RZ/T2H-N2H Evaluation Kit is powered from
the 3.3V rail. Add the regulator phandle for the VCC supply to reflect
this in the device tree and avoid the fallback to the dummy regulator:

    at24 0-0050: supply vcc not found, using dummy regulator

Fixes: 0176c9e82e10 ("arm64: dts: renesas: rzt2h-n2h-evk-common: Enable EEPROM on I2C0")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
index ceecf0c30072..a19b2e289aad 100644
--- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
@@ -160,6 +160,7 @@ eeprom: eeprom@50 {
 		compatible = "renesas,r1ex24016", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		vcc-supply = <&reg_3p3v>;
 	};
 };
 
-- 
2.43.0


