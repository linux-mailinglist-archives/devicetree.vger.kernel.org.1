Return-Path: <devicetree+bounces-217861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A10B59774
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B35F3BE829
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C93315D4A;
	Tue, 16 Sep 2025 13:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ORt/5on5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D19313297
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758028983; cv=none; b=cro3BTUO8fTvv+x97ddzlJydzKSoYzabsooipYpdiTOLId5EggKjW68GPTfdU0NVqjayhXgRTpOHPa+8ppzx3uZTGIQ5WrwSevrUyPhodr9W6M5qHH2W+yjj3VG00PsYvrZ0aqIJJx0qDF6S+MSs9rx3YwzSFbQS/WRFtAtsHZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758028983; c=relaxed/simple;
	bh=QybYOscoNwdDfY/Wes+QSL8OfKyE3/6HFcIoUfyJOiw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b0iSjmRFAPnjOu6FxLNGCnAt6ABb130+Vlr9/UCuifhYOVROYv7YbIC1dFU7m6e4rvp0t8kZlMm4WgPe4l04uf/PiaMFMN/N7zop9KIUnvEAwulqeW105N5fv/r/Hi87HHK/iGZ7jSIzoummAZuQQN9eIolq+AEr0FJuCBklSA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ORt/5on5; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7726c7ff7e5so4310895b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758028981; x=1758633781; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iaxG+kWIaesk2NKerDmk7jBSPRl4JInhM+mFO2hD1V8=;
        b=ORt/5on55AKxr3OY6sbRtLYnbKQ+CAqJG86CdQ3mnzd0YjPMW1uSlxV7aNJ0LUvaAp
         glaZSiaFAgYPl79dlMPsbYsG5og39Bid0Q2KTOkw4oO4cysp2x1c8MbQxeZcLc9gVO3h
         mL2Jt4xydDdR/del0gPXkt0O1BQ/loOV9wuThuavwVrYw5rCXSRQjNCxUc1wMzLqL+/b
         NYqaeEo8WOaSnM48oKGnn5AIZrU57f0h3OhoKbfQrdDvH9st2szDakJRZQQ4/oA+pVX7
         xFLbCgNx1sy+JEN2E3Xo5A+mOuV1dEpo58fT3zlx6ZyI1hJMF/Vybx2TaXOimwqGxkRT
         YZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758028981; x=1758633781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iaxG+kWIaesk2NKerDmk7jBSPRl4JInhM+mFO2hD1V8=;
        b=ZAYn3IHzLDfUoRGHcOLuaxtTuAJDHG7uoYmOtf04eq1IqcY3IIFdEfirv7Ny3DOOMl
         DTWAwG9Yb7R7TZo7xo5M8LsKGTXqcaPjH6tMmEzWJAu2NfLgMBAFLwR8ailTqLS1z1cM
         xDYQEeqWVnK97Byb1fCqRWkqNYMytVNAwm4mJsF3A7AKQ7oALLRuoneorPEuBbOhG+Zi
         ipgFL/+Xlj8F4U60vA/8jq216kBvOX1NGPvrqawmguM7GEyNlMyl/ZK2J65Kwymwfsa2
         FB9LpbI7QX6ADI4NAWIvJnUaXaGJ6+m5hYa2wX9yvocm6MBInGxNhCWzsswxVBoazSWi
         iwEA==
X-Gm-Message-State: AOJu0YyX+FnBQLPTLTQ2BryXPs5Mtv9ZKkJZATe9jI8AE8bd9l7eBVEK
	yXXA3MrpAcBmZYhv0x1LDlwZ9/2JwMuMF58o398Mb0e8RsCckIFBofMNEqg7M0dJvxo=
X-Gm-Gg: ASbGncvuqKXbyLdrSlna1TXNS55Uzhzg8KUgqv1cgt2VFMPeUvzBYXnHMa2Goi8zsbH
	+Et1i5QCa1rLZv+y1K82EsSkB8Py4JzuymvLpmoXxWyfCm26ZZAryBpFWi07BCZRCmTpxd8dY9L
	34bphFsfkADuk7pc7kaSAbGpLF2MHOd6D8/zEXXpoEsHJAX7IpBR0pDH95cXIq6WPyl57JVpf9N
	LL9qHMgqVOt0CDlJnlRDbuDh/3hw2jltVFDWlWQwjBU+pM69fBMWhkB4KW9MryPUTHYKVac3I4a
	5QUkAB9GYr8KzJfbrATsNSDe8pyPB+Hs/QJyKmVssX3cHxdTXVHxMPZ9udKwYCIyb+eD7CrjKaG
	UqgXuPa0BdO1DJW3ZBmmJ2CpP0GTzJw==
X-Google-Smtp-Source: AGHT+IEw/bghXBwSKJHoeHGCMNhxKW0ZFmnDf4/5yHXHLv5gzxmu71658fIQ+i33vla5FL014yEGZw==
X-Received: by 2002:a05:6a20:1590:b0:24d:38c:26bd with SMTP id adf61e73a8af0-2602c90c629mr22551051637.43.1758028981023;
        Tue, 16 Sep 2025 06:23:01 -0700 (PDT)
Received: from [127.0.0.1] ([101.76.241.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7761562f25dsm13277310b3a.74.2025.09.16.06.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:23:00 -0700 (PDT)
From: Zixian Zeng <sycamoremoon376@gmail.com>
Date: Tue, 16 Sep 2025 21:22:50 +0800
Subject: [PATCH v2 1/4] riscv: dts: sophgo: Add SPI NOR node for SG2042
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-sfg-spidts-v2-1-b5d9024fe1c8@gmail.com>
References: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
In-Reply-To: <20250916-sfg-spidts-v2-0-b5d9024fe1c8@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Han Gao <rabenda.cn@gmail.com>, Longbin Li <looong.bin@gmail.com>, 
 Zixian Zeng <sycamoremoon376@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758028972; l=1514;
 i=sycamoremoon376@gmail.com; s=20250113; h=from:subject:message-id;
 bh=QybYOscoNwdDfY/Wes+QSL8OfKyE3/6HFcIoUfyJOiw=;
 b=IXC84u2TUyu2cXBaPXrIM5z07LJd32cnc4k6CDpgCHZCt5iMtHWKaI6Mk+GPruvXAfXbcJFiF
 midMpPuhWb2BBpYExx3tRvDl6IK8XaxHc0wkxLIk0qHUoA33y9iMqtw
X-Developer-Key: i=sycamoremoon376@gmail.com; a=ed25519;
 pk=OYfH6Z2Nx3aU1r0UZdvhskmddV6KC6V1nyFjsQQt4J8=

Add SPI NOR controller node for SG2042

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
Tested-by: Chen Wang <unicorn_wang@outlook.com>
Signed-off-by: Zixian Zeng <sycamoremoon376@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2042.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index b3e4d3c18fdcf94c2294a56ed6ad866fc59a6adb..0f7d8a3743c35046ceec902902af2b8d3ec8e6bd 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -48,6 +48,30 @@ soc: soc {
 		interrupt-parent = <&intc>;
 		ranges;
 
+		spifmc0: spi@7000180000 {
+			compatible = "sophgo,sg2042-spifmc-nor";
+			reg = <0x70 0x00180000 0x0 0x1000000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clkgen GATE_CLK_AHB_SF>;
+			interrupt-parent = <&intc>;
+			interrupts = <108 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&rstgen RST_SF0>;
+			status = "disabled";
+		};
+
+		spifmc1: spi@7002180000 {
+			compatible = "sophgo,sg2042-spifmc-nor";
+			reg = <0x70 0x02180000 0x0 0x1000000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clkgen GATE_CLK_AHB_SF>;
+			interrupt-parent = <&intc>;
+			interrupts = <109 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&rstgen RST_SF1>;
+			status = "disabled";
+		};
+
 		i2c0: i2c@7030005000 {
 			compatible = "snps,designware-i2c";
 			reg = <0x70 0x30005000 0x0 0x1000>;

-- 
2.51.0


