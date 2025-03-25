Return-Path: <devicetree+bounces-160581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3991A7037B
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AE293B480B
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A108C25A65C;
	Tue, 25 Mar 2025 14:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="MYweud+l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6E725B673
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742912021; cv=none; b=IpxFP8d+8rl0UNLQYamfIyW3R4rIkonero8rA0asKT+beNTKARB6P0q4xvv42WCezsivR23qSmCwaHMhY+xrtajSCJi3LsYvf0N+SKpuFAhkDWKx1hjUF9kPRGg5sZ9T4OR1Ly7tbbky5pe5jYnECfsLNY4lMS91AIr/ushHoBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742912021; c=relaxed/simple;
	bh=nJ76qnpAiA1hIrK3TfkbYTYfWRCX/J8sNAMB6mmLa10=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZXr60qNzqY1dXxb5rim4rpqDigxsQA5z5Ra7Qb7/Q/Zs8QlPzX8BRTWC2fXiUlda5xVe1XuK4dDP2S9Qnu6wBl13rR4Uc5k6srbNkHNwYiCQGFfHUq/U/aZMHWtGhTFt8To3qvuW8pwbNTNsOWqYwZk9F3KfKw6cwOvFzYz7QNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=MYweud+l; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3DC9640402
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1742912000;
	bh=ruY4mx+ycuBPq+bKcBygbtDAkYa1zJT+mxxboy0e/q8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=MYweud+lt1v7EzK4eAY94sqjxc7jIChsl1qJtzoKfaDC0FarOPQ5/Ux9vDTsihbCU
	 NR5P/JuuyesS4wvYur1169TgPcPPkTzoXoruz/re0FET9tVtur6PBEyvDkS9YFNVCV
	 aaPhZtdIKBxN25xCuMjNx5to4owfYfxVqUYIxnyzfDQPaPJTLAcIhgQY3+l71q8KhM
	 mre10Y9xjxat7UamlPb9w/zDtlaMgo7pEV79x5KmAIe3Xh8H5rC51YnpTqM0vnz7zY
	 E1bXbEucCH1qKOLAewI3YzSeRf5l708VXmAJSVrjUt0I7tj06kcpSGU++KclUkh+27
	 fwJrOqdK+R6BQ==
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39141ffa913so2915305f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:13:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742911997; x=1743516797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ruY4mx+ycuBPq+bKcBygbtDAkYa1zJT+mxxboy0e/q8=;
        b=FbbbF2jLqQoRjhCqTIThijYZ/RWQyqo7VWITWPevfOxdEZG5gVhX2tlhhwgOz9YUM8
         BlKvPweCNqeKUHnP+G1KUxblpTDTkRxB7lGUFu9nt2nOdZ4azUfMb0rUGS3FlEShzBXH
         3HAbHBVXeV7v/Jeyzu6vbGyvvyoL/m5EZc2Azb2Daqk7wzacZNyc0tjOQ5+nkLPPWNwd
         k1/LI/wTJQa8eXDD8NsWHYBNgSdd86qhbhDqQDANRhp/8Aw2eDfiddofeKMY0uWc0JQB
         a3A762cvRgnRScJwx0oTIBqvqBXtiBaRplo/5z4vJGoik5ROMQMe2PmtsQqpK4mZpG/E
         DVcw==
X-Forwarded-Encrypted: i=1; AJvYcCVORhfavypsrkgtccRdnd5o+DK3TESrl+ivT/4PX6LkJqtsQ8InawYSd61s9TB4EFnzgFtVHiGBJ2L+@vger.kernel.org
X-Gm-Message-State: AOJu0YwjGlpJzpDOIWKtd2O5I5RAt4UqfjRMGU0Jo8wMXSppaUgOf42j
	+LTdjatQUWvc53GwPJLvcOG3G/9ES+uNwiPHbCdKP55Lxo0E0rAbFmcDEUPgaA2whgZegaFh+pK
	IC1CivFcqzTwRx6CLcVHQjvgcrF1x7+50H/lg3zgSHiKYjO/jcN5xX7fCeQv+V2yoK9pEnzfuyE
	I=
X-Gm-Gg: ASbGncu9q51aBe1GL3B73WPNnWwC/3S5dmoGL1ObB74bpff7pu1jBc3FS2Cmn6IjdhX
	0XX4N8Y91l5F9DfYwDGJXRPG5lzqYxM4zHrSFD8/X/w+GpubrhIYOfHHjZz6VjS3w6j+3vIwRED
	S8RTC8TwZyi6tS7/BszK/tZFvzKrg/sn5YFngmAzvst/NLFQV0jEjrhbuLb59xARb27mVRaLgr4
	GtH3oWjXmLmJm4FK+rTovWowoUDLiv0xtE8NRvwq0sGwLeUoaBveoK+2osESuI8E8hd0XgK4r2G
	uihQ3tSg04hGtbtaTtP38OwCsQq0/w==
X-Received: by 2002:a05:6000:1a8d:b0:38f:2a32:abbb with SMTP id ffacd0b85a97d-3997f8f9d54mr13315762f8f.4.1742911997514;
        Tue, 25 Mar 2025 07:13:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIxyJ37OZghcxQ+a/pWrQYrdFkF1ltdT3GNn4+fygXg02/lhRChSV9UcnQAQLd+3Joudp+Ag==
X-Received: by 2002:a05:6000:1a8d:b0:38f:2a32:abbb with SMTP id ffacd0b85a97d-3997f8f9d54mr13315703f8f.4.1742911997011;
        Tue, 25 Mar 2025 07:13:17 -0700 (PDT)
Received: from stitch.. ([80.71.142.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13532091f8f.29.2025.03.25.07.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:13:16 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>,
	Min Lin <linmin@eswincomputing.com>
Cc: Samuel Holland <samuel.holland@sifive.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [RFC PATCH 3/4] riscv: dts: Add EIC7700 pin controller node
Date: Tue, 25 Mar 2025 15:13:05 +0100
Message-ID: <20250325141311.758787-4-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
References: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add node for the pin controller on the ESWIN EIC7700 SoC and gpio-ranges
properties mapping GPIOs to pins.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/boot/dts/eswin/eic7700.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index 9cef940f07e4..7226647919b7 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -312,6 +312,13 @@ porta: gpio-port@0 {
 					<324>, <325>, <326>, <327>, <328>, <329>, <330>,
 					<331>, <332>, <333>, <334>;
 				gpio-controller;
+				gpio-ranges = <&pinctrl  0 12  1>,
+					      <&pinctrl  1 14 12>,
+					      <&pinctrl 13  1  4>,
+					      <&pinctrl 17 32  1>,
+					      <&pinctrl 18 40  5>,
+					      <&pinctrl 23 51  7>,
+					      <&pinctrl 30 68  2>;
 				ngpios = <32>;
 				#gpio-cells = <2>;
 			};
@@ -320,6 +327,9 @@ portb: gpio-port@1 {
 				compatible = "snps,dw-apb-gpio-port";
 				reg = <1>;
 				gpio-controller;
+				gpio-ranges = <&pinctrl  0 70  3>,
+					      <&pinctrl  3 79  7>,
+					      <&pinctrl 10 89 22>;
 				ngpios = <32>;
 				#gpio-cells = <2>;
 			};
@@ -328,6 +338,7 @@ portc: gpio-port@2 {
 				compatible = "snps,dw-apb-gpio-port";
 				reg = <2>;
 				gpio-controller;
+				gpio-ranges = <&pinctrl 0 111 32>;
 				ngpios = <32>;
 				#gpio-cells = <2>;
 			};
@@ -336,9 +347,15 @@ portd: gpio-port@3 {
 				compatible = "snps,dw-apb-gpio-port";
 				reg = <3>;
 				gpio-controller;
+				gpio-ranges = <&pinctrl 0 143 16>;
 				ngpios = <16>;
 				#gpio-cells = <2>;
 			};
 		};
+
+		pinctrl: pinctrl@51600080 {
+			compatible = "eswin,eic7700-pinctrl";
+			reg = <0x0 0x51600080 0x0 0xff80>;
+		};
 	};
 };
-- 
2.43.0


