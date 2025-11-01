Return-Path: <devicetree+bounces-233962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 692DCC27599
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 02:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91639188F245
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 01:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D0824DCE6;
	Sat,  1 Nov 2025 01:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="THODQjr8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD52F24BCF5
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 01:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761961498; cv=none; b=cOEiomrN2c6OIbLVymKU53V2Djg/yaIKJpdfXsJU0W0bcYFcH4F/siaSdbCMeydsXWlAaW3H6hg3bIbAzsT+M59U1Xq7zYzrbtISYx9q0jXNdqAGG+9J22A4fTd1CrdFqH1vozJTEFOME9MRPWi+noHFGygmBDOBJAqS34/SQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761961498; c=relaxed/simple;
	bh=Wr7LJ8peoDW/jo3pY5MeceHU7Si+wM9BWcaylcwONyU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cZAhTGbsnkU/+6m7mWXJVjtuhfL0EMA8ENoAhMTEspHHwcYtrvsCS9DwX7dbXb1PEr940JxNunLLwXf4j66WylQZ/BF+SrCidaj8HCIUoVqsTzVREnIMaOfxnfDOaeoMTvUYNcmNUCYSuhGfCsguh6NLcB7PXgs2L3hzFmjJ4Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=THODQjr8; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7a74b13f4f8so1888593b3a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 18:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761961496; x=1762566296; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gK6/9/Nd88Q9gusSePNbcMpaVCV2+VwX5wGIqW+nXzI=;
        b=THODQjr8gPbUtSjYmPlDpZwekXfLVMmNV83TyFN8/qsfjYelFMMSl9L7v3VcdjK/wo
         Ao+6+t+T1OvKdpXfvkihIw03b0gT3OrQhmP35U7ImW1qRQG+xId9xWZvC7yn47AL9MPU
         abfzilaudlE4OZmUwXdG+n9oUMkWPu8fEoQzIkVdrRp5CVrjpP+93wdiLuZIXleMl160
         aij2T53YtGs85Qvsy9e63oE0/uCKTsOdcdh95MdzDYiSbsoQ0Arro0nVlnzCQyaok5kF
         fNzkRBvdKjN+/SIYJIO0zS0PNYG0z83IDeKLO5xwfnsJl+C11C0fCR39UYlVPIynwoVq
         UYAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761961496; x=1762566296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gK6/9/Nd88Q9gusSePNbcMpaVCV2+VwX5wGIqW+nXzI=;
        b=BYbqCLvODtmUo5R+GdBX0XGIzf1w482YUIEZkzQbxo8u43hyjZTpFgGqeFVevb64sr
         ocw/k+zdyjP0fIQo8CgCMIizg9icSx/+wsimzWwEZFxGyV/edAuFU+3mVmfZ3j1Do2pN
         mYI7sMRg48PxNyn3JqQ/6rwEHDYMw9VrVld3kYpTCtfNYjF7UEDpQxIovYL5+aj4nJeY
         osf01U+KhgCVV1uU23JUlEX7tQxS15WPMMTp7BMySH7oK/kn+gHm89MTJTpQrWVksu7+
         BUAqCnZUu12Lwx49qjbf9CjqXVcnQ4CufwWcivyqxGGR71TkFbCsNIIXnAlUdxb6ZzJP
         9CwA==
X-Forwarded-Encrypted: i=1; AJvYcCWT+oEeL8+gdFaXEbtlYpUKuSHZTpIInp/OwcEs43y4dezZF/rOZrJZnFivE1wTnYfiaj0VSdK1hvlN@vger.kernel.org
X-Gm-Message-State: AOJu0YyD0kKZjORMVJUobpM408r4pnkae+X79c20ZqiNFtE6I1HBT347
	njVYO0J532xHVj4RV+KrLN0vjD8h8Sbb+ioCCeWtrcK8Nr/Te51CdpvM
X-Gm-Gg: ASbGncv7FDMphKoBEd8/hViKK6AhmVuIRLBhT4eOl9UVztFDnY0fOP5AP+UrkgwlnsS
	3SNnaPETWiEtZVD/+osCdO9UGNYay9ASxKTRHan2pXrb4S5MRHUsWGxG2qSWg/0jCPhn6qjLqrQ
	+lekYysFDG5fPZ8Lvtn7f6xto42JZrs/2pjRp5ttG/BbLBRs15+6T9Lzu2kDkFj10mKuM0qBNt8
	bAqXffRdZuldU/t4ODBp6z4I8o+9OjcRPvlcj3h7Rx+4scjGhHfDIQvQwD0WYY2IkBm9hZHx/YB
	93SSQ0bw6AWCMjhw6Q6LCPb4l+tRGMQJAY2EcgfCPxwiZLCD3d3LN18ZS8hkUEUQn39TiwEA1eu
	Wjw/eAiunf6EB/NmOHAJIISjvT8S0isIUnXzCBo1r2m89cd5+h/oKdB8/6V0fy3RjPYqz82Vapx
	NYEb35MnRy4o535YXGcl97jyGE4rHB1f1EDZ6dPA==
X-Google-Smtp-Source: AGHT+IG73fXaL0VcqLIqRkANfPCq0IjyN6Ot8qtT20JHVXUm6Q3Tb0hIJV982rzY2kwxu6Q35wHvuw==
X-Received: by 2002:a05:6a20:431d:b0:334:a953:1263 with SMTP id adf61e73a8af0-348ca566211mr6539181637.9.1761961496152;
        Fri, 31 Oct 2025 18:44:56 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm3350585a12.32.2025.10.31.18.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 18:44:55 -0700 (PDT)
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
Subject: [PATCH v5 3/3] riscv: dts: sophgo: Add USB support for cv18xx
Date: Sat,  1 Nov 2025 09:43:23 +0800
Message-ID: <20251101014329.18439-4-looong.bin@gmail.com>
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

Add USB controller node for cv18xx and enable it for Huashan Pi, milkv-duo.

Co-developed-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts |  5 +++++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi           | 16 ++++++++++++++++
 .../riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts |  5 +++++
 .../boot/dts/sophgo/sg2002-licheerv-nano-b.dts   |  5 +++++
 4 files changed, 31 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
index 9feb520eaec4..0e6d79e6e3a4 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
@@ -100,3 +100,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 42303acb2b39..1b2b1969a648 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -432,6 +432,22 @@ dmac: dma-controller@4330000 {
 			status = "disabled";
 		};

+		usb: usb@4340000 {
+			compatible = "sophgo,cv1800b-usb";
+			reg = <0x04340000 0x10000>;
+			clocks = <&clk CLK_AXI4_USB>, <&clk CLK_APB_USB>;
+			clock-names = "otg", "utmi";
+			g-np-tx-fifo-size = <32>;
+			g-rx-fifo-size = <536>;
+			g-tx-fifo-size = <768 512 512 384 128 128>;
+			interrupts = <SOC_PERIPHERAL_IRQ(14) IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usbphy>;
+			phy-names = "usb2-phy";
+			resets = <&rst RST_USB>;
+			reset-names = "dwc2";
+			status = "disabled";
+		};
+
 		rtc@5025000 {
 			compatible = "sophgo,cv1800b-rtc", "syscon";
 			reg = <0x5025000 0x2000>;
diff --git a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
index 4a5835fa9e96..aedf79f47407 100644
--- a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
@@ -86,3 +86,8 @@ &sdhci1 {
 &uart0 {
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
index 86a712b953a5..b1853770d017 100644
--- a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
@@ -93,3 +93,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
--
2.51.0

