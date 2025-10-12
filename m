Return-Path: <devicetree+bounces-225671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 371A6BCFEB0
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 04:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D8643AFA96
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 02:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E401A2392;
	Sun, 12 Oct 2025 02:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y2L1oUqF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6E1143C69
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 02:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760235988; cv=none; b=Uj7V2Aoskp8U1HOuQmX1/8k1F1plpRKFIiaKH3wcnMKLaYpO/3l4uUZK4hj5V52qZKTzi/XoIXUBWeRjWxmB7e4Ixja7uRP/37RdukSF5R0eDkBpr5e97o3pLSaajyE68buhaVKpcI7udzxSXZMVOVNSe4VXujrLSXITCNHVlZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760235988; c=relaxed/simple;
	bh=PFIur9yyt6yU7rC5ueBW+ZogapM3+73LNvnZQ9/MQtY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mmyh1C4SqVkQrRoSCO7S9cwxO8P+90nNLSKimhzS8KIsTBCQeCTXl3YlIk4T4/mInk0BX74YVj+vY21qr9xNJHG8fQwwSeFUHj3lAM8VdoCU3QjpgPEpRx3h9Z6e5GaIaSBED6hSg4Lyo0ajwWQRICDbfNRy3PfLwPgO7NqeycI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y2L1oUqF; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-77f5d497692so4045302b3a.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 19:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760235986; x=1760840786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7oeNoAqAwXapHedMDzgCFy5RYkdc7bA8wxszUU7mEjE=;
        b=Y2L1oUqF0hrF0PPkuwMLN5/KqhvftGm9tPfiNSYPdxh0jBX4cFb25UP/06d6FmD6lw
         tqCNlMJNoKuI89Ko6/1YpVPlXUHzWWai6i93dnlRRSf5tBOzpR9mxT7lTCQEWlifXfRR
         QcNBkjeKmeNXM5+dLzIyQ65dEEVqdyI8CoBiA3R6xQ0DZwTCjlfu/Da8jVeD2ydBzhJD
         wVYG1CqfFMpB0dmNPmpxRj8WYQGXBlwcjA8Ol4UZC2ukyuzgA0sk27smVIBsC8nJik5a
         ZrsbYFzLGhM6mrJnA4SZ3seiWd5hlNjIEF28wPH2GkhsDE3fT80/Lk4mMYX3JZfhXfYw
         sQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760235986; x=1760840786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7oeNoAqAwXapHedMDzgCFy5RYkdc7bA8wxszUU7mEjE=;
        b=hsJk0aJSZaarAfO8K0sqHLHRgI6AXKa1JwiSSCsueeyQlq9SUCrXwOLvTgAUJjoG5W
         +5CFM5OhGNDAYAfQSrFAH6K/AEBjDlzF8qEehhAgYVSgRDQryXuWje4eThmWU1ThEVi4
         B8vVTGlke4RhOew/zhp3kPCXbpdo5tW7Dch4O+k8UxmMKVN7iA6H141Bag5RJwFuDdBY
         n2V/ki1zjLNTajp9hKaPQ2qcjE9Yvr2ko/4nf8NMbA0GOggURO1qpxsWE9IF4y/cCBaR
         tMYWX/3h/w0RMBQU8xy6CHe3ofBV03KoT4lDeldTnLfvehTxXlZQBQXklJtB/8gCBWTa
         0rWQ==
X-Gm-Message-State: AOJu0Yzli7ylmPVr7ny+1AMf+UJY5IikfY/RdBsyGzYb6ngdLlt1SzUT
	XeK7xlWxK2dHLfW64sSCdhKQFCuUetgMVCLaKab2zQ8mwqHRDTCJd123
X-Gm-Gg: ASbGncu7K2NFBNx1B7k+R6Y1f9/o8gT98OQVVDFIJUsg5UkgNJ7djy06hX6/Xcq5Q/u
	H4s+IoitDugFCbor+pQ3L34+wCwN2lKpgWH80y0ycxfFrhd3y2xloclWsRKBngzhMLIwPD14lVB
	Wm63t7KyUZnT8B/mUJxk2watNqgNfxa2VSfjeuKdY6/yPFIdNhNHh6IZ2DxAAhuuq4BRmFxPisi
	49RTmeGQV4PqwqH3RiMdCUp4WE55RDomKyMYQeqVqzyWKTsyKpujfb/L8FME8FMwFsCjRyky0r1
	zFhw94+Cg95qnj9baG85jLmWgMByAvgOO9km19gLP5eZiG+hpJVcgZDJgsHBv3KOD500QCfSjy/
	lRRRLpc/vNdcPI+m2yMZd7xlx/THJGO8YpnGs1C7iBqAPIPKVetlRJYmrwA==
X-Google-Smtp-Source: AGHT+IE2GiIjqdXwdPD/DjVNY5FvlpNDYD6mAOE9DF+isXGRIky0pgWxkfR4Ic5vWRPwpbzzqM4c1A==
X-Received: by 2002:aa7:8892:0:b0:771:e4c6:10cc with SMTP id d2e1a72fcca58-79385324d9bmr21779339b3a.6.1760235986084;
        Sat, 11 Oct 2025 19:26:26 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9992ddsm7180489b3a.80.2025.10.11.19.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 19:26:25 -0700 (PDT)
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
	Longbin Li <looong.bin@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yixun Lan <dlan@gentoo.org>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 2/3] riscv: dts: sophgo: Add syscon node for cv18xx
Date: Sun, 12 Oct 2025 10:25:53 +0800
Message-ID: <20251012022555.6240-3-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251012022555.6240-1-looong.bin@gmail.com>
References: <20251012022555.6240-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon node and all subdevice nodes for cv18xx series SoC.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
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

