Return-Path: <devicetree+bounces-59376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F10368A5032
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 547C0B22DF6
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 13:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAAC130AF6;
	Mon, 15 Apr 2024 12:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="NyZIXEfa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D117012FB38
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713185449; cv=none; b=nDu2S2ejy0+ihkTUnxJj2PMnSQdY21iIWdYA3ZpYnuUtOJbKXFxI0XZ8gevigQjUVjmmQHOO7s3nfBfu0UWsmRjBgeFfEeYSDnnV7mbiVmEN5jl0Gay1c83fFE3tlhMtCoAyq5y+Ir1x7RcFiF+neZV9sdCgWpWp35sVd11JmA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713185449; c=relaxed/simple;
	bh=osSZO8paKnJeC7b7567Bk3Y/+E5GbQwvvdJqkrU7mx0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=J9JUCZaJSylLXomNhggN1sE4ti4tu2Tz3c0PEj0cmy4TUEbYVWTEMdDt1zLnjy2cRLN+Z4qs2ljb02TToCd9yVUhg/TpsVMkohuQnJzBHsb+vdYGN4EaQBN9RwWP8+jP5slYZ4OmRvyrkdtIvhorVps26+X631tFnhf+QFONzWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=NyZIXEfa; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8BFC74121F
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713185438;
	bh=KmekjPunqQwx9/LdecI0/rtOQB/X9fvmAzvCggbvjQY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=NyZIXEfaSOjLryeGJATf6zCmUD5ad940gQn9Mcwl/Irb4fkVqqmOkGDuX5y8DdEXu
	 hG50HJz5hbyEndMFRt1NoU4qmon4ItE79yUoo8HXgZQEEXEaQIO2FukdL/OHMgseQ/
	 M4mw/wqGbVdZQNJ02Lv6Ztg/4Vo/ru+Fz81RVr6ciXz1ZFP8YLwIbjCwCsxQty8IMm
	 XgX2D0qsTIEJhpq8b1sL+r/nGeNIosXcnCmPmanI8JSc64o+bP6rJ2f6pL/xjzTYC/
	 Rdqh2XYe3dyOP4u0L9MopevUu/oLI+n+FP3Ju2OJM29iriKchNA/hws61EM6psE/M+
	 lQe8FeyQdeudw==
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-56ff7c2a5d1so782982a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 05:50:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713185436; x=1713790236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KmekjPunqQwx9/LdecI0/rtOQB/X9fvmAzvCggbvjQY=;
        b=krQhNbUvBfsa9dXqYyWnO2Rrv9+ATxiUiIT5vOxzYWZj0vu+fN2/pec9nCEV87reg3
         ej6bEAbMPUpqCveHcBE0GqtaDMBzh39wC95B8ExlWmycsRwmHrKbx6VxUCB+C0EGmB/o
         IwnCtrCmZVD4i+mebhfkH8CxdEws5j2CQBLr6Cq8tj8SNhux8egXVqrv7oU1UFp/ldIo
         Wai7VGViCQbYaTCq8Qm0zR10AI00+Flm3ok/2I7DZ3joCVP9FPP1kdttKeuTn6liC1fH
         zf7zxc2SiUCEB7pVxYoKfuuL5Z/glOza3lupoXFr+9vcN/n1AypSrN3dhFHlsN8zCkMq
         /uZg==
X-Forwarded-Encrypted: i=1; AJvYcCXN2iHSxd4GIKsT4TUQkbyOb+znE8eR4exbkcI4rZaBh2xqEV21ZHEdSp7AGqUDYPgw/+XhzesuetFro5W5YxmhK0u/NMfS3ET1FQ==
X-Gm-Message-State: AOJu0Yy+klZw31/d/EJbSQIFvDH1RWdvoaBaW/lgSmGF9IcMNow+X9wC
	UNYvnCCrN3qqYQfhDuugu3fie+5c2/oaze1NVVRo5QA1RnNSMsY76IONnaoIoABmpH42Zz7OrhL
	kvBVYwwI4pic68loOHqIv5hD4V+XdleqeehvCoXK+d4IuXqAT8mNPFBLY8w5nYW21t+KyZsc3Aa
	o=
X-Received: by 2002:a17:907:928a:b0:a52:3d34:bde5 with SMTP id bw10-20020a170907928a00b00a523d34bde5mr5939408ejc.1.1713185436212;
        Mon, 15 Apr 2024 05:50:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbDSFDAh81t4CyCpnLMRcCLXKjawAJU7twGdLHmsQPxMI6uKxYLnFjMX6oz36uGBk2vF0fng==
X-Received: by 2002:a17:907:928a:b0:a52:3d34:bde5 with SMTP id bw10-20020a170907928a00b00a523d34bde5mr5939384ejc.1.1713185435879;
        Mon, 15 Apr 2024 05:50:35 -0700 (PDT)
Received: from bojack.fritz.box (197-53-142-46.pool.kielnet.net. [46.142.53.197])
        by smtp.gmail.com with ESMTPSA id bz2-20020a1709070aa200b00a51a9eccf2asm5455573ejc.125.2024.04.15.05.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 05:50:35 -0700 (PDT)
From: Hannah Peuckmann <hannah.peuckmann@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Walker Chen <walker.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	Xingyu Wu <xingyu.wu@starfivetech.com>
Subject: [PATCH v1 1/2] riscv: dts: starfive: visionfive 2: Remove non-existing TDM hardware
Date: Mon, 15 Apr 2024 14:50:32 +0200
Message-Id: <20240415125033.86909-2-hannah.peuckmann@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
References: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This partially reverts
commit e7c304c0346d ("riscv: dts: starfive: jh7110: add the node and pins configuration for tdm")

This added device tree nodes for TDM hardware that is not actually on the
VisionFive 2 board, but connected on the 40pin header. Many different extension
boards could be added on those pins, so this should be handled by overlays
instead.
This also conflicts with the I2S node which also attempts to grab GPIO 44:

  starfive-jh7110-sys-pinctrl 13040000.pinctrl: pin GPIO44 already requested by 10090000.tdm; cannot claim for 120c0000.i2s

Fixes: e7c304c0346d ("riscv: dts: starfive: jh7110: add the node and pins configuration for tdm")
Signed-off-by: Hannah Peuckmann <hannah.peuckmann@canonical.com>
---
 .../jh7110-starfive-visionfive-2.dtsi         | 40 -------------------
 1 file changed, 40 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index 45b58b6f3df8..d89eef6e2633 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -622,40 +622,6 @@ GPOEN_ENABLE,
 		};
 	};
 
-	tdm_pins: tdm-0 {
-		tx-pins {
-			pinmux = <GPIOMUX(44, GPOUT_SYS_TDM_TXD,
-					      GPOEN_ENABLE,
-					      GPI_NONE)>;
-			bias-pull-up;
-			drive-strength = <2>;
-			input-disable;
-			input-schmitt-disable;
-			slew-rate = <0>;
-		};
-
-		rx-pins {
-			pinmux = <GPIOMUX(61, GPOUT_HIGH,
-					      GPOEN_DISABLE,
-					      GPI_SYS_TDM_RXD)>;
-			input-enable;
-		};
-
-		sync-pins {
-			pinmux = <GPIOMUX(63, GPOUT_HIGH,
-					      GPOEN_DISABLE,
-					      GPI_SYS_TDM_SYNC)>;
-			input-enable;
-		};
-
-		pcmclk-pins {
-			pinmux = <GPIOMUX(38, GPOUT_HIGH,
-					      GPOEN_DISABLE,
-					      GPI_SYS_TDM_CLK)>;
-			input-enable;
-		};
-	};
-
 	uart0_pins: uart0-0 {
 		tx-pins {
 			pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX,
@@ -681,12 +647,6 @@ GPOEN_DISABLE,
 	};
 };
 
-&tdm {
-	pinctrl-names = "default";
-	pinctrl-0 = <&tdm_pins>;
-	status = "okay";
-};
-
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pins>;
-- 
2.40.1


