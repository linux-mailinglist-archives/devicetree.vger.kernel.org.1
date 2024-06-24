Return-Path: <devicetree+bounces-79095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 714F7914062
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 04:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 289FC283520
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 02:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CD9175AD;
	Mon, 24 Jun 2024 02:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="fgnbBznD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE691078F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 02:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719195352; cv=none; b=kyNDCTp2nvctWwuJCszSNcxjZ62rqCC52J2XNAjVrQfV3GbL/hoV1hakfh9eTHAYui4rbODG6iWdlaaFqPdjgj/Nyo89pZwtFwbMtzQFEZsAe+YFhsy9GgHu8o8jCCnzZLGtzkt2EzsB1YUYCoOQ0OrYu451v//Pm4TTF6g2gRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719195352; c=relaxed/simple;
	bh=1YUFcjPStRQXnRCkm7LFCYqYtH2keuIc2Ndi6ymcweU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rCcS/4PqBJpoeArJYHBXSjXNj3Bna346gwWaEmaupDre3L/2U6smmITKHbobaV1Ojy0ykplXS/bmRnHElXkcp/DdmcVabrD6qKZ2hYXvf5AAl3rwUx1QeaRUu8Rc+TCrp3mqECEHGtEozi+VcUbYqQrHJ0gJfWEvdmOEStDkGSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=fgnbBznD; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7163489149eso2041363a12.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 19:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1719195350; x=1719800150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnFMVS1MfqfzWdRfEx5FfQB3Afj3yo7GkFlPsBGziDs=;
        b=fgnbBznDKBgHEp85hB3oytFzmBmU0N6ReztuGz6ItPkZuopcwGEhZw6IVR5lTzQPhM
         lOymGkxScIAMrdZXUwR2qAYY7mLrYw8heScKupL5AcAJSxIn/L+gCAwBrsVbygnQkrTu
         U0uFAxdn2mKY4U8V6S6jB0+UDU69sGWZa7zgkeiz4ze64fl/JLMxHE4mg1xdaf+Hl9bC
         c3Tdhx36otNJyCYrgNQPCKcxrTAOOw2BsD6ckGAl+pV1+c2wFHamozlFitP9GjMa9QsF
         LshoaD5002Xa2EhbRuHKXMCOCN2VSiTC7mHudMfjFwrPeWU+XpHO6mGzmGs5mtIHpZN8
         q1Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719195350; x=1719800150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RnFMVS1MfqfzWdRfEx5FfQB3Afj3yo7GkFlPsBGziDs=;
        b=nDgTg9mXUtatiiTLJ/H/6JNJbigtOP2JSR6IzRmRvASwb/2EwYVI08V1ZvopGOoqWT
         4binaxD1xOqzDljy13yVQzkrn/qFf2jh8Z+RL44B8P/8tqg74fD/D/qlHbRUCTi3vJFl
         iU6Z4rMguF/5OMG/uzQtIDdT4cM04szuJFGjzh6EDsCtkAdbWQuxvtXeLSIhjGP6uDk8
         PcaMQikfWn+mbKjhFGuD11nrn8jSa/36sQ+eoHWGmQFlfwQYOEVWCuocnv5dNuMqBN6m
         mFFKheCaA0L0XDNmpQeG6gLNPreQsQWr+Z23fLc+VHnQ4kXxIkFJts0sOZ6fyDakeCdr
         UPtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIIpXgxzWBaNW23Jjtx0HaJhuEjVlYQDlKfQJznyKzT8Tan65YTh30fxYFVr3Tp5xC8RXIX4fJuu5XUFF0BcKYn84clzf4MYnoAQ==
X-Gm-Message-State: AOJu0YzRFKWeA9eP++Vd+r+7bOQ1B/hESpmICy9C0GmP3epFM8uD3aXL
	MinOcP6myoTQ74MWWftziLLCtMX7gYH8RGxyl9Xa5h9c/wGNbW09xALUEUKMZVM=
X-Google-Smtp-Source: AGHT+IHW6HWUX6v/07vrhz8vJOF/5qYP0BvoXQ21bV6naDfQXKTOF3D8FapemtVEDDfuAXBOASPQqA==
X-Received: by 2002:a05:6a21:c98:b0:1b6:d9fa:8be with SMTP id adf61e73a8af0-1bcf7fd1210mr4394592637.40.1719195350539;
        Sun, 23 Jun 2024 19:15:50 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:1584:936e:5eb0:fab])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706511b137csm5071770b3a.86.2024.06.23.19.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 19:15:50 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sun, 23 Jun 2024 19:12:37 -0700
Subject: [PATCH v2 7/7] riscv: dts: thead: add clock to TH1520 gpio nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240623-th1520-clk-v2-7-ad8d6432d9fb@tenstorrent.com>
References: <20240623-th1520-clk-v2-0-ad8d6432d9fb@tenstorrent.com>
In-Reply-To: <20240623-th1520-clk-v2-0-ad8d6432d9fb@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719195343; l=1705;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=1YUFcjPStRQXnRCkm7LFCYqYtH2keuIc2Ndi6ymcweU=;
 b=rYBGKNJzXmCmLAga5clXqSFTTT6acEgLUJTAcP100RcfUjqlXe3oY4DKYzEONUhMhRslOqumq
 IBxq129anadAhKP9VsQmsnBjrF17brGOw1fgRg6bSOgGM2pr+vivXcb
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add clock property to TH1520 gpio controller nodes. These clock gates
refer to corresponding enable bits in the peripheral clock gate control
register. Refer to register PERI_CLK_CFG in section 4.4.2.2.52 of the
TH1520 System User Manual.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index d05002ad7c96..351e09beab70 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -237,6 +237,7 @@ gpio2: gpio@ffe7f34000 {
 			reg = <0xff 0xe7f34000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&clk CLK_GPIO2>;
 
 			portc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
@@ -255,6 +256,7 @@ gpio3: gpio@ffe7f38000 {
 			reg = <0xff 0xe7f38000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&clk CLK_GPIO3>;
 
 			portd: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
@@ -273,6 +275,7 @@ gpio0: gpio@ffec005000 {
 			reg = <0xff 0xec005000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&clk CLK_GPIO0>;
 
 			porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
@@ -291,6 +294,7 @@ gpio1: gpio@ffec006000 {
 			reg = <0xff 0xec006000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&clk CLK_GPIO1>;
 
 			portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";

-- 
2.34.1


