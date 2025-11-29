Return-Path: <devicetree+bounces-243162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE41C946A7
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 19:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BC3CD4E1FB0
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 18:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DF45257844;
	Sat, 29 Nov 2025 18:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ePt7KMYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29F0242D72
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 18:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442330; cv=none; b=ATkIPbo+sPsN+9TpHU2Y1dAwqJrmesnHI2ERTMtYsF+dAkCvZPjEBAYZTNU5pJehz++HBIyViKHUztRPA7W3AJMo2wxRXDV5Ymhc0RrLwhQtfu7TElkkTjjBVx4S1zLowELBuSpD+TBGyg7WsRvGDHDXI2SFQrztVpiVRKMrRBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442330; c=relaxed/simple;
	bh=IVPJc7Na4k+hEHVt472dSJ8HKyj4RuUPWPqoyBR2jZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rYvv4zakqx4ykWtADWE5pCx+Bw5/e6FjXmhLjNt2t6utm6qiL+qh6qp0w6eCECAJcC/HwV8LhUwKSowXRDZnvIw6488J5kkhthNfsR3W7Fj0qIhZVxbSlpDVLt6gN9Tgll+mfhCILphW6z0sNGsGDQ/227lDHM/hNmliPw5FCkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ePt7KMYK; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42b38de7940so1322904f8f.3
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 10:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764442327; x=1765047127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zPyj12J0dlbZ0LqiMOPkzK41fgfllhho0ny7pa5wjS4=;
        b=ePt7KMYKiMkEt9TOFhQEe57bihnW+2X1h4L6DBdtBBXarONlhbWjiikmDX27bNeBGS
         srpLd0m70anNl58mIdOMFncIJ25ts0dsy0JWeO7txR8p1YX6Bg5NK+u/WQH0L0mOxRj1
         d2oQ8Ii9/TnK3nCVi5C3geNFObRZNlKdOcfjz/QbOepWCBJSlbYdduXap46bXEzxCKSL
         FMuLrS92KFRpi7OmR5pXr0cfRbO7laZlQSq6TxNcH3uBsoaNGF7RyHDkHTThPEvIvFJt
         ZHpPsV1jc/lTgYUNMeJNQTgJ6gOFVhqEt757d6WCOMNagNTgrU/DdksWnKJwZc7Vp29L
         Xw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764442327; x=1765047127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zPyj12J0dlbZ0LqiMOPkzK41fgfllhho0ny7pa5wjS4=;
        b=Z2Ot2lVCzBF/mnr5P2GQzG+fxGUwJez1AYkn/n/jSzQ4UqgU4+kaRbv8VjU+mlNsdw
         exB5yG74m6HmwGnQyfXlZtiELq+q3EekRiPbTZuuOR1xeS9qBohT6TQ1HkQvLJNjdJPY
         fazjY3i3Nsoj2J+/pyKnX7RXU2vABfQz2khKsPYTeyDL8ZnVPCEuhxKPZXWCm/Cl2Vkd
         yV9WoEjKU1V4sBUqG+jXQkq8SzAP4WjxaNqKtS9c8+I9xrPoNIgcoLXexPeMgFEsej78
         y23s0tIXMEC3+4c+qCcbiqoGGg456jvCIW9eKR+zs8nl0TK+S4iVC9BRB9XDPAIu2UB2
         F9Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWFbGgDmu7OTCqDreXH7PNT/mqLuzzmUqiZxqhSGsbSmZcSIOzeyYa+VEnN+eb1VFufeCRHip3Legwp@vger.kernel.org
X-Gm-Message-State: AOJu0YzP5HdSaOiWSmohk6EwyILBr18tkRCrzbLOi2O9oifEuLeLzJeR
	dyrUp3DOL8BXwd82AmWQPFv4OJ/ZPCvED8WJb8NEHxYPv3HQrBYxVJdE
X-Gm-Gg: ASbGncvzwA33Goqdz+yksP3x5LtgkR2DjF+ODcMu+pHfWOLX/F0ajJg5tRt/Og8FPVL
	VmdANxM1/FlxLAVJqO4aSbC6ZqYAHQTpP95sdnXaHtExP9gpNquCGrV1B/0qMe6MW4crlGjLloN
	d4jZ+EhOBGmHhA1I7B4MUCAn0yRp5hb7aZOZ5T2h0JlkeVbO/YYCX9udpk+wwYoXUjnYcXMPO/J
	IeFd2DgmU3yyl2U4tLU7QsEQZC9J8ka00eL5wTZzZR1j8CDdryC8Ah9Pw6tSIqlr4qHuBqboaEb
	QquofRitvSFC6Y/MaEctwZLqbciJKmYejn7wfZD/3D8HCuPZkO0MWPDFqcgywjRDnu96J/eN8vj
	h1bUuRda4570vbYoblBYKOAgefzdKnONtERFXZUoa3/6LtYRXkQ21iXYS+v0oxjT/QMR55G23xu
	URRfIKnqBdL5YXE6IYFiVhWLyYkcxzK2LZnpxw+4QgsfATUYuwkXHzi0G19CbzhUCYvbtr3iho+
	jc8MrtnmhtO+5XcgVGYC8SKERk=
X-Google-Smtp-Source: AGHT+IH+FCSNNOvpsqYoqDcvx/cgYbFitbnxpcC7BGBBqaf0NsYNEyr6ZkdYBvzchc0ggfP9bzUAPg==
X-Received: by 2002:a5d:5d10:0:b0:42b:496e:517c with SMTP id ffacd0b85a97d-42cc1ac9146mr33979128f8f.13.1764442327110;
        Sat, 29 Nov 2025 10:52:07 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d613esm17442067f8f.11.2025.11.29.10.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 10:52:06 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 2/4] arm64: dts: renesas: renesas-smarc2: Move aliases to board DTS
Date: Sat, 29 Nov 2025 18:51:57 +0000
Message-ID: <20251129185203.380002-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

SMARC2 board dtsi is common for multiple SoCs. So Move aliases
to board DTS as SoC may have different IPs for a given alias.
eg: RZ/G3S does not have RSCI interface.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag.
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 6 ++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 805c0f67b70d..50e075745474 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -35,6 +35,12 @@ / {
 	compatible = "renesas,smarc2-evk", "renesas,rzg3e-smarcm",
 		     "renesas,r9a09g047e57", "renesas,r9a09g047";
 
+	aliases {
+		i2c0 = &i2c0;
+		serial3 = &scif0;
+		mmc1 = &sdhi1;
+	};
+
 	vqmmc_sd1_pvdd: regulator-vqmmc-sd1-pvdd {
 		compatible = "regulator-gpio";
 		regulator-name = "SD1_PVDD";
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index 8b3765b8267d..a6e8eb730096 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -37,12 +37,6 @@ chosen {
 		stdout-path = "serial3:115200n8";
 	};
 
-	aliases {
-		i2c0 = &i2c0;
-		serial3 = &scif0;
-		mmc1 = &sdhi1;
-	};
-
 	can_transceiver0: can-phy0 {
 		compatible = "ti,tcan1042";
 		#phy-cells = <0>;
-- 
2.43.0


