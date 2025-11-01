Return-Path: <devicetree+bounces-233961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2DBC27593
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 02:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39EE94252CF
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 01:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA80248F4F;
	Sat,  1 Nov 2025 01:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QxqVEBM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00611242D89
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 01:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761961491; cv=none; b=TqZjiHtg+qFei4mL8NrKX1nWAu9b8P9B6gtCDaKwdxH8UpwZQlBG2D+BLbtkyEwPC7EEIlZhNaFByY8EfvfiJs0JiJ2KCbeRY8/Q3WGw0bBY6huEnwJuCgZGnuTPy1P5IIGLCor7kcXh87t+KIjKWQ06JiKoOrKtjxavsvqJfIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761961491; c=relaxed/simple;
	bh=gHKwX7PP5gGOlLXqIefFTY7ny3XOT8J2aK0JKv2/Ofk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D9ofCD/OZ+PBK34G0ctqa3MNCTRgsPxhH2XjMS/u04JJJpi9YR+MpS0WC67AJX7pUKgAGQWhAfRHBYn5ZDcltYU4CeCKqo81JxDNfl/ambSyGCqX1j0lXKinDayaxJqJt8ZG0j3jJJz8OLaAGt/ofH8TaKGZ9BBe6JECCh0NSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QxqVEBM1; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-339e71ccf48so3273245a91.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 18:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761961489; x=1762566289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DDm1+WSNoDjU3S+YxmjJ+3pKYEs3Q0EpdQk5O1Ku0Ho=;
        b=QxqVEBM16WbQaP5L81QbHvmfkXKv2DxEjPkNcpbu+n4s/jZiYlcvpDWKuWU2U+W7cH
         ee1cdd9+GDW94kKDPsVyhAaDgFENFcjnwACArq7XhR35Q13hnFK/gamCZaUAKXmpCH4A
         rsRjgBda8Uizls7wUVdCHTR6ZDEA5DCOKnAdbyo0Vl5plRRGNlQ5ACXYiUOn6vMLkMuv
         8Ex8RdgD3O3gd71822o0CdcWCJJJdg4kfjmzUSWDcKs9G0SChIBFMU8M65NN8oTO+b4M
         A6Xn7KtH7IZ6BLVabHsELH+AUsKJ0Qs84+zj5UFtaOEwhqnqbAzMcUL6yPHPTKIiSA/2
         SjUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761961489; x=1762566289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDm1+WSNoDjU3S+YxmjJ+3pKYEs3Q0EpdQk5O1Ku0Ho=;
        b=mvARgyYXEY0G24QCKSiEdq2Q0spX8ymRhhj2RBh2FkGKdw/vTgLRadAbKTQqxtZLX4
         m9/o0j+ifut0OSw8Ge9J6PccVMdTUa+onGhij/dked5kZK0XNffShtbUwoxW0D64UkC/
         cFnTMY2+S7Qb/J/Yto2g/UENPEux0VPs4nJintuqj8+0siUTR17phfjCM3nRJnvClCos
         dxuqBxrTFc22w2XhGW/+/7W948VvD7w3JWnB1unHnT5PoZtR4bulm0Vsow0eLt+tcAoT
         L3Pgyo7q6D+rBrOBiUkxfXBGbE+qIKIB16jN/D36Xcqw8k0ggz07rEz728Ymt9PNgr18
         EZOw==
X-Forwarded-Encrypted: i=1; AJvYcCUQ/j17R++W1gkaCEXJeBeU8ZkUqET83jLW0QC0XPyGjYQaXmdUHAdfqWQLfC/CMXP/JKvtzQeaEfMG@vger.kernel.org
X-Gm-Message-State: AOJu0YzVGKCZOR6M2m+R97dcjIzKlHmj3VeY7CqT5WkjhkUc/m/916/K
	mMgoxg3KRp56w1w6xyzXH9nGMoEKBBCsPwx9tpx0wbPP0Bazv2fqTsVGGJNdrQ==
X-Gm-Gg: ASbGncshkWI8tBH5u6W7km9vTnJzYK5wtEllY1bnPuqxF6UE2eRAUPUDYEkro4CDcvS
	AHInezqVHWOb61Ee/MlCpHKIzyXcU2QQtm/eJQBX/Q77Cb0oLDiK1w0gKZyqu29ONjkfBayrFEj
	NDcDnEALc0kTgJBuTqfZlW5CC1T0DbzSqAk2qMUCoPAjL1Bn1zjw+7dJi2cfrvXems6832onWFS
	Aj7AuWX0mQp9zcsrcFov20tXEFi2KqugYhdS9wJatI/ygrP2tMcepk2Z//DwLpp37qocm/lWmcH
	EXSfXgxpg+Dmi+d6Nf2GUI8AsE9p4dwQnAMT/ROGWAqp9+BUNYQ1WLQS/piCDBeVaPOEqTGsrd+
	33kLZ/3sE2CUhncrXDkTNfHEoTGfKzRr1QAjla9OUJdqvAJCsJGkZdrEU++Ox+OIPUnTffCrRXt
	WtJft/sxEkKXINibZHX//0YFRmA9w=
X-Google-Smtp-Source: AGHT+IHCcU4e+DqHPOrwiHTkTGTSDdoO4ULRyleIswiaTH0OibjXfdAmKn0F8G4yAJ3McQ4Uax/qcA==
X-Received: by 2002:a17:90b:510d:b0:340:c02c:d2b1 with SMTP id 98e67ed59e1d1-340c02ce1a2mr476048a91.1.1761961489084;
        Fri, 31 Oct 2025 18:44:49 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm3350585a12.32.2025.10.31.18.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 18:44:48 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v5 2/3] riscv: dts: sophgo: Add syscon node for cv18xx
Date: Sat,  1 Nov 2025 09:43:22 +0800
Message-ID: <20251101014329.18439-3-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251101014329.18439-1-looong.bin@gmail.com>
References: <20251101014329.18439-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon node and all subdevice nodes for cv18xx series SoC.

Co-developed-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv180x.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index ccdb45498653..42303acb2b39 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -25,6 +25,32 @@ soc {
 		#size-cells = <1>;
 		ranges;

+		syscon: syscon@3000000 {
+			compatible = "sophgo,cv1800b-top-syscon",
+				     "syscon", "simple-mfd";
+			reg = <0x03000000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			usbphy: phy@48 {
+				compatible = "sophgo,cv1800b-usb2-phy";
+				reg = <0x48 0x4>;
+				#phy-cells = <0>;
+				clocks = <&clk CLK_USB_125M>,
+					 <&clk CLK_USB_33K>,
+					 <&clk CLK_USB_12M>;
+				clock-names = "app", "stb", "lpm";
+				resets = <&rst RST_COMBO_PHY0>;
+			};
+
+			dmamux: dma-router@154 {
+				compatible = "sophgo,cv1800b-dmamux";
+				reg = <0x154 0x8>, <0x298 0x4>;
+				#dma-cells = <2>;
+				dma-masters = <&dmac>;
+			};
+		};
+
 		rst: reset-controller@3003000 {
 			compatible = "sophgo,cv1800b-reset";
 			reg = <0x3003000 0x1000>;
--
2.51.0

