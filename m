Return-Path: <devicetree+bounces-225672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDD1BCFEB3
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 04:27:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07DC03B5449
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 02:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8CC1DE3C7;
	Sun, 12 Oct 2025 02:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C5XhThr1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FD71DF252
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 02:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760235996; cv=none; b=RjNexLLzKbzRuR4meQRHXF7OQ9q7YP8fzApvN4cy/rOfyYuwKXgbUEZDLnSkNabsp5SBw7yyiVWZV7j2Ur2hqZfLP/BVI45ZnC7OrxTPfypMGDdJPWkEwYFv27sjQYNmI7T7WvYt/N3HxbYnVDCKnbRtSS1m3HIb7E8KUaTJTYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760235996; c=relaxed/simple;
	bh=T3O+FvgSCE0ciL32Lxybza6PkMpzWQQ+tRJLN6YZEiI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GSooNQ/uMBn/e2jtg8R5Ww72G6ImgvQQSA/UkI39os7pnu3pQFWtO0vN9bkemMF9sRrBALgccQ0o46qYYkv9MT1tux64fblAcUML9lklOyXmXaxrvbEC9i8+G0uObEnzFbQZRZPsksm7XDdgYaE8To17x9ifuQT+gDFB33tD9pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C5XhThr1; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-789fb76b466so2866357b3a.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 19:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760235994; x=1760840794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfXUkC2C3C9BwOnkDvFBK7i0+SebLg1iuS2buoBW7lc=;
        b=C5XhThr1mOJC0GQC/cJMyFMx+BHLe9/A7TVcKprt7jZ446mkihD8o1Y+iP4Xy5H/H3
         +0EN8uc94dc7s2ZJDHj6V9PVHmvEMnhG73fXBNJs8m9iOufCkeLkYzWJHy8ir3Q4efDk
         5JqS9UubY36AO2Af3YKquvLBKO84twNxKqmVnxyuDFIVJhiMYv8pJhIHY+zNiOKhKP+X
         8hW0Ma3InuDNje6Ork5YhsOgVdlz/SsLOMrOftnv6SYTMzDHixhRaIVF6ya6qPVQXprm
         yDa92bsbqQdm4+IUNF5YwEkZv0IIa70Zlu26HKwitwb76XqysI5TfWLIJt/Z19UeGD4i
         g9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760235994; x=1760840794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfXUkC2C3C9BwOnkDvFBK7i0+SebLg1iuS2buoBW7lc=;
        b=BzmxxzHYs695t4F2DWHtdZ2EhWxj6hvse06M6RKuA65rpt6adbF1gJNQ+07mx6nu5B
         dTnakt0YmFMwV7XxrEAafNhvS1meBHXo38oWWLb2uMFpealQzoG4TO86dlarJwgmjmUE
         nV0qT9/0Wldy/HJkmdNFi3hyArLU2a/GIsMMWnvkozh51s8PztZEzMdaIGtEUW2t2sNS
         MfTR0hld5rdt080iogo8ziMUQIJl4NyadaNQWdkGrQlCkRcXoqtXkWxJsMOi7JU38YY/
         3BKClrBw1V/nCHZ+hz4xrn8OCautEhTsQE3uEoeu9jmZgoers1kXLeN8qTfepUBOuNYF
         821Q==
X-Gm-Message-State: AOJu0YxU+Y/i70B/2hG35UKMSoHhxDBMugzLr28njqxJA1KHzPeCEzeu
	6maU4BzFFf+s9fFpXwPqGAODbJxH6XvaLk5E8L7I05Lhce7FcwUXbLlP
X-Gm-Gg: ASbGncuBHsOjnwF4+mc15m9LD7ib98MTs4ybvlWbqkQOAFtdlyHaDrYv8aQl7EHtBLC
	3s923WLClIxt3E8tM8zdP3tVobaRIiihKgGFKfUNuca3s0CQ+8vNfHUdCrPgT/TxqNFCoRmlvOS
	kqRznEPiLHIrMyKmry6oxeLyP9OFB/54U8b2gdOJUEm3Nh0qzHUe2/0FpLzNJYKsHEBFNlSTSAz
	i0o/EqtdeDn3luENpscrim+irSiXFeWCEeDyQ+3zU6fK4GByzvnwS1pQQ5K3LKxYnUor4Nm+ioY
	ymoSlKLzlOzZ6gsFIvTXeG2Jt1DOIVhdAUYkkOxJFUaQIP7a0ZLa68SfZg5mDmTBgjFBPYsYsi9
	auF68WJXApVKFIyYnEUKBvfIT4JxjOxC8JJWE+NVvKtllV6CqNUa6i9qeBPDUoYUOCFUg
X-Google-Smtp-Source: AGHT+IHZ9NyGaDIFzKfo3jw9RHib9r8nk9b6aSs/8IZVATsbwnwanfHCirNVwYIHZT/pMIdteZPgFw==
X-Received: by 2002:a05:6a00:391a:b0:77e:8130:fda with SMTP id d2e1a72fcca58-79385ddc9f9mr22273636b3a.13.1760235994437;
        Sat, 11 Oct 2025 19:26:34 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9992ddsm7180489b3a.80.2025.10.11.19.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 19:26:33 -0700 (PDT)
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
Subject: [PATCH v1 3/3] riscv: dts: sophgo: Add USB support for cv18xx
Date: Sun, 12 Oct 2025 10:25:54 +0800
Message-ID: <20251012022555.6240-4-looong.bin@gmail.com>
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

Add USB controller node for cv18xx and enable it for Huashan Pi, milkv-duo.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
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

