Return-Path: <devicetree+bounces-217863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF6AB5977A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1586B1BC6EE5
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 783A431B102;
	Tue, 16 Sep 2025 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UKSM/yYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A431AF27
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758028992; cv=none; b=FfDC5VjmafquUOFzWTYuhIBapCh7qwrm3dkHZ2CokjujSsmCbNkM4OYSOO0Mpc0NxVolWVU3MXjfsHDUcN3/GN3/Ss8S3ATpyy01Uym6HrldYzTvULAAlYGCDJgwmQ/xZzKl9UIQU8ZHzqDJHZjyxBAp/0fvQNg3SsG/dJJwMqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758028992; c=relaxed/simple;
	bh=3DhmzJSYRDsFCvFry1NGwCNmIuQHA8Daa9KPGiMP4XY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Za1QlwxJ3lFakGW73ZbN2xz6d/JSJdU5Z40+fAXzv1O7FTtWyJK+/zI1by/MGiRXw731+2Vnyz7ksSRqt8ju0rXW66PfnM8El//CJDwRCdflIInIBlW6vkH3eRaLkeoCBc+NF6M9va9UhqqVrprQE+0cZa/nno9fEr5Vui+55d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UKSM/yYk; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7761e1fc3faso3055799b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758028990; x=1758633790; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sWMqq9LO02bLf8s/U6m0bmjKdBTSQTZetwyPUYJWXY4=;
        b=UKSM/yYkR9MroMmuSkZh2/sYM/3XkNYDIvF4mbhvvTJ0LD2hOUy51fth9emt5UW1EB
         vq1QSDJAiHq6PwsLGAM8AhflLMhuOZp9vgFwpe9nC0BTU9Y0N3xYU7CPYLOSYyOIAoYu
         4EMpXuvxwgrM1HUIhsamyYVeID43sEFJ1jiwfduvnqQLq1UnH8G27yB3xtsIaumX17wr
         bb/BMFd74dVwZaVoyAYa2AB/p+Hduzkd+0wMnaF5pfSxjVKUF8C1WytiqL5lwPJsiw/E
         PVsnEirSxMtPRR4LvqXa0e1nZEqVRlm93YmUd1EBWnRZhv1T8My+g4imSbo9TInZrZ0/
         ctww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758028990; x=1758633790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sWMqq9LO02bLf8s/U6m0bmjKdBTSQTZetwyPUYJWXY4=;
        b=id4UcL0C2RAglVs2t31tc1wlrf7+xjLWLMdrFlQtyL3D/AVf/tbE/rdKEhTawpb9S3
         hI66Q3DKDC4R7SNNnqmarLNNH2HbPZxMW5dNRNyxf6pyT3VMKlYOnNfyhPor1MGuazhS
         ufX3bq8NWk1NNc461TDUCcfQM1SgHC2Ab6b56FkBPyyGCYNfgNEQFBvFYm9PTXa/Ox0i
         aPrVjr34OKxl2ibZvAUU7LKaIYN8acC2WC+OfGtViLnVDkQzofmFviCGvZfKefNDhMk3
         jH5gqbOxAj4639bO8LvXtrlK7xvdkyw+4yWtKLPubiRy+aoKnwDqKMqW1NUGmffR+at+
         UDYw==
X-Gm-Message-State: AOJu0YwGcJbUJjI5PmA2NbNb3iY7hS3KwIXQvPC6rrVd6uoZaR9+3Yym
	hPUxo4KYAh2xOEBOwDGytQ7aqYgCunFxoq6h5LMe0wrDVgvKsHgvv6WtRjQBQipBUDA=
X-Gm-Gg: ASbGncv9hd9B3veOouizLwjDXp5sva0V5MzQ688+ikYrHnWdMMWiQs6jPa0VlOTlkVv
	IWZXpV9Tq04vNgSrvzGw8FH9VDjwwoUcSXWB/wKypRQgmv2NYoqY1u219Dh983Qxxwx9csGTqY3
	g7rbiEZAoDbmNTnWnWSV04Yqa0Pa+3y81+FLFJahgzomAOQVZLj7zEXO7lZ3Tdm36kUQX8BDD64
	lQ+lXJ31gcjJ3w4M3soMuJVEiwkHU0V4UIyKE7hurrIPkOGg84NSq1T11aonS9aQuVe7+SHNGLj
	8ipSdJ36Em1hdWkUn38ZbxuPfuMt5+DN2PtMIwLeOlaM+m5HWcmIX6cixrm2PkHdP4ZSRh/2Smr
	wg+RKGKLGfpEiRunZR5eI89eOlqhNnw==
X-Google-Smtp-Source: AGHT+IFXpFj62OZ32vgpqEl0jm4rS+hTk4dVTJ7qY1Ii9cd3iLkjwoIHMHjRDgvG6v07+neosQb++A==
X-Received: by 2002:a05:6a00:a8a:b0:771:ec42:1c1e with SMTP id d2e1a72fcca58-77612168e3emr16052303b3a.16.1758028989635;
        Tue, 16 Sep 2025 06:23:09 -0700 (PDT)
Received: from [127.0.0.1] ([101.76.241.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7761562f25dsm13277310b3a.74.2025.09.16.06.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:23:09 -0700 (PDT)
From: Zixian Zeng <sycamoremoon376@gmail.com>
Date: Tue, 16 Sep 2025 21:22:52 +0800
Subject: [PATCH v2 3/4] riscv: dts: sophgo: Enable SPI NOR node for
 SG2042_EVB_V1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-sfg-spidts-v2-3-b5d9024fe1c8@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758028972; l=1276;
 i=sycamoremoon376@gmail.com; s=20250113; h=from:subject:message-id;
 bh=3DhmzJSYRDsFCvFry1NGwCNmIuQHA8Daa9KPGiMP4XY=;
 b=OLm66401v2Yc411lYVRBOoQ+/JCntUIWLk1Znyf/hX9gSFKbuT59M3tCILRkKSEjEaaHjGW2C
 dJTZ/jmXKq1Dwveckan4KcjmhHWTbAuLhHVnTO5XbTGuox/oBOZGp0P
X-Developer-Key: i=sycamoremoon376@gmail.com; a=ed25519;
 pk=OYfH6Z2Nx3aU1r0UZdvhskmddV6KC6V1nyFjsQQt4J8=

Enable SPI NOR node for SG2042_EVB_V1 device tree

According to SG2042_EVB_V1 schematic, SPI-NOR Flash cannot support QSPI
due to hardware design. Thus spi-(tx|rx)-bus-width must be set to 1.

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Zixian Zeng <sycamoremoon376@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
index 3320bc1dd2c66ab1a77fce719f145070ad51f297..517943696eb464d54d42018825f02a48c6ca00b8 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
@@ -238,6 +238,30 @@ &sd {
 	status = "okay";
 };
 
+&spifmc0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <1>;
+	};
+};
+
+&spifmc1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <1>;
+	};
+};
+
 &uart0 {
 	pinctrl-0 = <&uart0_cfg>;
 	pinctrl-names = "default";

-- 
2.51.0


