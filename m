Return-Path: <devicetree+bounces-230589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3164EC04376
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13FDA4F311F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551BE26E143;
	Fri, 24 Oct 2025 03:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B20Dqq+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDAE26B2D2
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275176; cv=none; b=BxhKbLPe/xaWtGhHu5rWOJ520gnbgygDWueL9mXd4/qZ9VvFMCUrBedNFp5jrH1zpjxUUG/wy1j1ia7X2fIgN4cHVBxnSYPhPG0MxEg/x2ME+aqPHqYrbL8mRug0ivIw7AH4Je0nlzF7C/HTcYDSG0nBUi5Ub+z3CbxFjRGVFFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275176; c=relaxed/simple;
	bh=gHKwX7PP5gGOlLXqIefFTY7ny3XOT8J2aK0JKv2/Ofk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZXpKipHSOcwC57I4k57xC//dLQ5drsKkZar+kNtqyCt/A5kn6dv1dKLrLmO991DIDZeDm5lmWanpsl1oOqEzqZ7T0nh0b6IM18mngIUBSegwNY+5RnGtRkqaJc4fy+AFEobG1cajQDR+Em4HpIhz22UxWq59EqD7xooxcefFGFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B20Dqq+k; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7a27bf4fbcbso1138780b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761275174; x=1761879974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DDm1+WSNoDjU3S+YxmjJ+3pKYEs3Q0EpdQk5O1Ku0Ho=;
        b=B20Dqq+k6STnrxXEUatwhvFZWpKUYGefMTQQchq4hIk6f5plt1wIAEAKNrTkv1Omr8
         DsRkpj9e0EaJjGwmOyy3rTNHM//EacpPbhJ0TfTzfv0Rrjwov91k+ua+rGKxbDgR7ffF
         CRmJ9pyCfCf4yQe7sq0s9KnYwy7jy4q0Nz15ykBnYyrVp1IPNDfK95dCGS5CjJSXcaCw
         1KcfusQfkosv/hb+uxy2oiJlGYaAfaAJ5ZZYvn7eLxCnxKIN5d8rzVFHuD7HkSWjSjzZ
         Z2T5Nz5jZU8ipDb8b694ukAQg4NcDrOsXCkrxxwUiZV8D/eeRL1ymK0bRFm8+H59KW43
         ElMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761275174; x=1761879974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDm1+WSNoDjU3S+YxmjJ+3pKYEs3Q0EpdQk5O1Ku0Ho=;
        b=Y3m8MmcLu1HPpU8DxLRqAhhj3c4ps4IzlPR7h+dhPOmz/rkaPSjvQBjZUN66saYOe5
         C/GvebzPpDaraqOBciMJmoeGC6nF8OGY/Xgx/nVXGDunTtPTU3Jt7xEbWGs7eDD6uudL
         0XubOGw2Wft8+e9SUV1yAapJzYNunKNmg0SuAYzKX61/vVv37CEVQjSi9hkLmU+a8xQb
         aJNdtAP3GLwkV5PJHyQtrnR4/z0skVD0M/odYhqHI+ZrYM2hXYdU+Rg4sDIeutBkC+ac
         S8kkEAJTFY+qMsqD006aceNu09Buelu/jHKP1EPgMohwlvGQ3Pwxenl8B9b9/Z7q+x/F
         ti6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVrXAZFz8mfbWBmxt5MzKh/RRNKbjm66e+q2L8/b+/e/QtdkMOpNr/YZR8xvUrR3wsEKOEfAJDh4LP3@vger.kernel.org
X-Gm-Message-State: AOJu0YxzqMXHxKN6etyBwUv9Q1aQNVzyG9SEr5X56+JTJphWw3G8/Z8A
	CivbApfVYcMG9/mctVd9WS4/OAF+keFQBTkuCP9mDpwIbvXR+02NCP6n
X-Gm-Gg: ASbGncv+yImgL9zbk389pLkIlynqnJzjBCDpkTV5U1eoA+uDAlVtgsAltESZvoQE2lw
	OwXTbRUQG/wkf7Gnm9cUBQtAIG+uBii5n4OhMCWJO3Q6eGZeI2pw5y8AQLOnty/2aQAo2CH2ps7
	IjhBBil6nmrhN2u5vtjvCX4w4B8ttLjtNsbtfkQZPRyRwKGQwpQ/u+uibOcFpOsJ4CjIYS002iT
	CmFrfusqzumA/Yp1sIbyKx960xr2xqNPwZQtffu5A9UWPXpHhOU5Q/tKrLy5Du+omNGlnV10u5D
	d216wlIG+RC43vU4+NZCahELDXat1x118bSwJ/IHH4ExjQmTWMMvlvi1tJjx4iyzhzhvKyzX8tV
	ircOw8irdQtB5RL8FkA02WGEd0yxHirlcSilBBrE+Ixm8DK2ipr2+ioqw4zbmhdM6RnbIX8Avwj
	KcLi8P2ZsgvyghEecZ
X-Google-Smtp-Source: AGHT+IE/XFUouf2Y2+Ufb3mHguZuerhicLnASzdw3OZ91/123tlViakv7Utbf09cEb5A9VJEhESMKg==
X-Received: by 2002:a05:6a21:6da6:b0:303:8207:eb56 with SMTP id adf61e73a8af0-334a850614bmr36652432637.5.1761275174071;
        Thu, 23 Oct 2025 20:06:14 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm3574172a12.7.2025.10.23.20.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 20:06:13 -0700 (PDT)
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
	Yu Yuan <yu.yuan@sjtu.edu.cn>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 2/3] riscv: dts: sophgo: Add syscon node for cv18xx
Date: Fri, 24 Oct 2025 11:05:15 +0800
Message-ID: <20251024030528.25511-3-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251024030528.25511-1-looong.bin@gmail.com>
References: <20251024030528.25511-1-looong.bin@gmail.com>
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

