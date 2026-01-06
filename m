Return-Path: <devicetree+bounces-251935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AC9CF86FF
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:13:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E00230188E6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F7513168F7;
	Tue,  6 Jan 2026 13:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HGg7dzc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FB530ACEB
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767705209; cv=none; b=SmZOumhLO6FNMkC/nhknYJ0jspuzw19nXQup5hPBeBJw3V03vWNfO+feIdwCXZwatWAdUaWxHBDB0vWXhJ+1uFqNjABaLhE4YPJAZ132/XblMIl42ciVaEj9YwY+8zgo1MWB0JJH7gikp51V7pCkZy22AqUlgI3ojfJqHeWktBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767705209; c=relaxed/simple;
	bh=CnrWL5jxLBtsPQPzTImnrD6+ygHOBaEgz9tcXcYP7w0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CyIgUz1KUpI9qw3zJp9oODFeQ7Jbxq/RtI7FsIQhFNZu4V1MX+ox/QmsWwc9kQ0bSFJc6uDcbOruvqfV/faWUIQTX9CqR4vuDpB3STL29iI1mPTS/sF0FBgLh8xJAdNIix06ObqfmmriOIgy4S+RbCNqkIsKecCF5/MQXhh5fyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HGg7dzc9; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d5e021a53so6989305e9.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767705206; x=1768310006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JFcROr4jX4jERoJicZp1BEaBPn597lFbf82O5xGWRGE=;
        b=HGg7dzc94gVTmwdLKVSNUpZypNqKkoJD/NjlwccDH7Vg9ybt7YYfUPk0x57omBsLPB
         /qbsQ13yNBY1meaw22Ev9qvH8OB2RZAhGTtaR/AKVDEedbDbEk/K2x2eg7AM2KCPgC8A
         H7xQ/+wH8uvlVkZwUaaAv4WXhhy9KHu6JBbFtDPcAvqWPzDxS9PqwFBRI9GkEKVKdHJZ
         DCevX1LqhtRT51vsO4Rn5lmLg80mHKbY7BhTJXMlVoqs3t+xZ6eTBtc/tQy6Op7H5JHc
         6AnnTrLjF6Ed6+G5NzxaYjuBHwV0KHMtaNFbledpPlLeShh2ow5ydRr6Wa7vjqP8ZopS
         X5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767705206; x=1768310006;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFcROr4jX4jERoJicZp1BEaBPn597lFbf82O5xGWRGE=;
        b=QLXzB/Erju2P/JhbIXwxttfl148hEsKEp0UhPaEpW449iU1+TcH1iCa5gmt1HTBDN/
         dh6z3mscVATznIW9jM9AjG1000oLhLwxFSSeVUjL6xBRZGKI55fwa4frMRJyK5PWGJYF
         JK9c2Mg2uo17AQYy0XBk90Ea8fLYKUT33JRrWwTBWFtx8z/R94FoTvemab9m/25wv+KC
         SxtWuvbj486iE4E2y1J9GI9Tuhy9TRLt4ZLGup737ETSmhMASoOVXznXf3cfeLjlQ7Dc
         uVGvkj5W98h7UyQYyZ3m/BeiR/n/B179nA7fABhnLoyIeAqSE384UeGUaZW8BYA4zMGY
         oMPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsTlA3A347rgv650GaUyYQcZvqMtKJ2soetUYY8ugVK5tgPmNfMr3vKQE+0xMaNW/FtNVN0ZL/1kya@vger.kernel.org
X-Gm-Message-State: AOJu0Yz94qjRsRIe+h4hpo5CJ38jKdL/MnzW5DCFQ5V+5kuPIAnk1PGB
	OOp1QzMOexFUeqMrsGbzT79CNCWU1ehjsRs/hPZ4a5n2skG3LA8l2STq
X-Gm-Gg: AY/fxX7AW6VZf9+01xrjVZ9+qH6ILogwQ+VPG3IKaKd6bKP9avAZnG6Ca40A4HMNMJ8
	GLdXYf9+SD5uvMjLBUHXFoO/mCM7TFqAUoz75KlHI+fu3LCMkQThxHM2ZnpAYAX8HEs3dsxBGGz
	LPufi+sYOgu8eJYKyMDyGzZVnW9Xd/zihg//9v1p8CG/e441pvd6zeLBOC5KlRU2gcXBHR3cjLk
	MWTo4jOQqg1UftkbADHrkV5k+7A43uSrMRBMPdXvhn1jgUg+Nf7Qwi1TSTf1JSXNuM2OE5+82d7
	TiTap+uJbesMG5d5xI0U3zPiqpTGqbez8NOoU40kgR5MH4sw7dtttKi6FUQW//to7/o7/iOnLjf
	knjilJ3n9xBvkScWAa43yg4RtzAn/jHlKl5x/I1QXOahCI6D5pwU1FFj7q1fwsXPouuiO0KH28X
	W9a7gi/6WnkcBs+BZ2neg4ciQX2gygHi1wC2yiL/FRU4Us4uCuvqwwNXzUlZQa+trxNgva/YmZZ
	AFpGT/zLO8sNzzWPNOd//Q=
X-Google-Smtp-Source: AGHT+IFjV5LDHgJ+1K9BD5N4MoCfpd10KLhluqcuTGK1HP8OZNwU7NwI0OtnTG36Agt1J+dQV1sa7A==
X-Received: by 2002:a05:600c:3b27:b0:47a:75b6:32c with SMTP id 5b1f17b1804b1-47d7f06cf41mr30284955e9.2.1767705205831;
        Tue, 06 Jan 2026 05:13:25 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:bb5c:1e3d:b053:da0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f653cd6sm45796855e9.9.2026.01.06.05.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:13:25 -0800 (PST)
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
Subject: [PATCH] arm64: dts: renesas: rzt2h-n2h-evk-common: Use GPIO for SD0 write protect
Date: Tue,  6 Jan 2026 13:13:19 +0000
Message-ID: <20260106131319.643084-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Switch SD0 write-protect detection to a GPIO on the RZ/T2H and RZ/N2H
EVKs. Both boards use a full-size SD card slot on the SD0 channel with
a dedicated WP pin.

The RZ/T2H and RZ/N2H SoCs use of_data_rcar_gen3, which sets
MMC_CAP2_NO_WRITE_PROTECT and causes the core to ignore the WP signal
unless a wp-gpios property is provided. Describe the WP pin as a GPIO
to allow the MMC core to evaluate the write-protect status correctly.

Fixes: d065453e5ee0 ("arm64: dts: renesas: rzt2h-rzn2h-evk: Enable SD card slot")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
index 04e45f560eef..02bcefda6c99 100644
--- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
@@ -380,8 +380,7 @@ data-pins {
 		ctrl-pins {
 			pinmux = <RZT2H_PORT_PINMUX(12, 0, 0x29)>, /* SD0_CLK */
 				 <RZT2H_PORT_PINMUX(12, 1, 0x29)>, /* SD0_CMD */
-				 <RZT2H_PORT_PINMUX(22, 5, 0x29)>, /* SD0_CD */
-				 <RZT2H_PORT_PINMUX(22, 6, 0x29)>; /* SD0_WP */
+				 <RZT2H_PORT_PINMUX(22, 5, 0x29)>; /* SD0_CD */
 		};
 	};
 
@@ -491,6 +490,7 @@ &sdhi0 {
 	pinctrl-names = "default", "state_uhs";
 	vmmc-supply = <&reg_3p3v>;
 	vqmmc-supply = <&vqmmc_sdhi0>;
+	wp-gpios = <&pinctrl RZT2H_GPIO(22, 6) GPIO_ACTIVE_HIGH>;
 	bus-width = <4>;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-- 
2.52.0


