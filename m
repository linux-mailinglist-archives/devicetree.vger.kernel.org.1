Return-Path: <devicetree+bounces-228687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B272BEFFF4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C10A1189E996
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE3E2ECD05;
	Mon, 20 Oct 2025 08:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HduMSBnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF682EC566
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760949572; cv=none; b=BMoFU/JrbQY6hs+oAK+6rfjEMadxjk4JC+mnE5OMy2FtwbVlac8BAp0xNqwd2fFswMbQ4Y7bKGdIBUYsADa8oWckkjNK5RANnSrpKjbxe6j3RT7bBcoCvtv736vt7Vucn9H6Xk1C3US5SaFH3zFOm4HGKlH4MqAwOwSIZGw9WYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760949572; c=relaxed/simple;
	bh=Pgz9s4yM7alHVd1TDNAq4J+mf2GXq5txdPu+yTHwbtI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bhwr8mcT5eoeSD5T4LFi8coYBXOxr/UmtGYg8ZfvzQbY8XoDwegMETdfEZCnb6KPFqHGB8ZpG3bCt+Bqi1mZh8pfmdBnoD3EuqJ76ruSDTS5qXv/pdPr5gd5nn55pbx1+v5oj/22wPHuakll6VS2jF63jPyWiCY91txqSrLBX4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HduMSBnB; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-339c9bf3492so5044548a91.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 01:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760949569; x=1761554369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uIc6x2UqQ/+/MYkhVAsuU2AYMkhOe+CBEJq109yOhQU=;
        b=HduMSBnBEOZuCc6toEwtnhdKgGStB2kPGmNMwRYujWOmm8k5LLKIxe1M/MtG8gNH1d
         vC8Y4GKv/zLe2wIpQqnwjALuNL1wyHCMTgiZhcb/0mzs0MLFN1tpra3f+lhBHGgQAH/n
         4PqG9zzBUyMr8t9QuVYHY2JEh3Q8vrvHeSlo3CCS03OSF6Q8vABCsVvKMB++XGOzsQYR
         y1id2PwmELb57NZBRjDGBSpDDBxya/IOuca9Ck55PW/B0WXH53whckxK9jFF8VlXuO+w
         A8Bde9wgaQtS7LCQ9iAeReQ0bLMDTGxbM/guTKYnEV9rT3OC5mYbuo+btCmNXEcLta9E
         b5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760949569; x=1761554369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uIc6x2UqQ/+/MYkhVAsuU2AYMkhOe+CBEJq109yOhQU=;
        b=EsPzL9nD4V7zJK/DPnk8SIxs4jS2L5IK/JbvI8yYvRsr+4dnDLibU9rBhYoh90ct9E
         PnwJFB5OzupYDngr0zh0AnCvSS4YNHu/uUPNbYm1rwDAO6rRAZcpZYSiJSEUjykiRrnR
         ObO+FlQZG0KnIIzR4K+2cApco5GUaRuBTL5NGgMfzKE7AMnVtRLomWTnFNaGzbfMmqJx
         L+G4OyZ4VDGR+QUNxWQ46lR0Fr5dHOdE5C372NF9V+a/sBQiF+qRTk6jVDT4Qf4i8gzn
         JWKj+vGZGYvENRKs7A0+1vyPhKAxvXSJNzV8Z+gMIi41Q3/cBRUzwHwnlGy33GsHDvD9
         j2Lg==
X-Forwarded-Encrypted: i=1; AJvYcCUsjwH+W7D1BpjfMpnbO88qSZEvKgFEVurlPfiNL/WxxvmzwdIHho6xFjDpUr6BddwaKBS7gUrbpmFO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywicu6YICasc1AFlCPRTP3ElJmHxvRxl5hGozjPIaktGW19wUxD
	GBhMNI9gR1K8TVh0QA0qnuq9J+N3KXxhAtK4mCjARW9+IjhzSZpb+8Uu
X-Gm-Gg: ASbGncvejtCKk2FLjkT4mDmkKKimyRHpYfAJf5aFnqvAWCGtBTqAEPAupGd2jX1f9lo
	da7oVDO4cFmsSfmLyGr0CeLj/WDuRCJeOkNJQDpSWXOnYRdYyvunOfkDAFy8VM6376YEfFKSWWs
	zmELaeS1FoTya6Gq8WLm/0V6wXUlPN5Jr7z6UZX/agThGLmIzc1iu0Q0o//HCO7lNlT1Q8g2WYl
	//fhD3M7xI16rBmAN4b1O7Vhfe8m38+1VXuy8XXbSaZjm8fVzWaq5fAv/FOdPq67c0N6l/yyru9
	HbWJkTlxG7GQYZF+lzdnBWm2beWJ/Nw2TllnkdhCbtaAZFhS1rTmhOeWz/Jwwfj9xPvPnk0yXrq
	ovMTw6Pyi3m0KinAh81FcKaAMF/l1eIT8L2h/EOonyq29R09sdZni/fHFAry8dYBRt1Dg8HU74H
	3PBYbFOtuz4KlCxebx
X-Google-Smtp-Source: AGHT+IFkyp0InjhjZaNKMIDCmJDhxuvBQ0nCOQaXFWprMyh2MBS2FRaBpj3aAHyvwBdPHJzM/Mh1Tw==
X-Received: by 2002:a17:90b:5386:b0:32e:9281:7c7b with SMTP id 98e67ed59e1d1-33bcf85da05mr13624650a91.3.1760949569204;
        Mon, 20 Oct 2025 01:39:29 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b5d0b4sm7062386a12.29.2025.10.20.01.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 01:39:28 -0700 (PDT)
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
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 2/3] riscv: dts: sophgo: Add syscon node for cv18xx
Date: Mon, 20 Oct 2025 16:38:32 +0800
Message-ID: <20251020083838.67522-3-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251020083838.67522-1-looong.bin@gmail.com>
References: <20251020083838.67522-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add top syscon node and all subdevice nodes for cv18xx series SoC.

Co-authored-by: Inochi Amaoto <inochiama@gmail.com>
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

