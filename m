Return-Path: <devicetree+bounces-80177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F6917F92
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECC671F2529F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14F91181BB1;
	Wed, 26 Jun 2024 11:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qcVHwizL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618CE180A9F
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401032; cv=none; b=oFClNZFHzP1cCOC9/Z8gdjCg9W5yDlmP2F7VCR2931/Xg5xPz46GQPT8ge9vNnpiKbFrONTyFZi+gHYRFuEDHL/bNtgxLhSn7c5cugNo5pw2fvAjZJnN1HzI5Ikp37R3JHCy6ZMDuCzhaWs/CQZRG6rgzLxMT1MG0uUmLhH9is0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401032; c=relaxed/simple;
	bh=9AG4qGOe5g3U/HGCShZuA+22HniQNQEni/ZHjkcOb64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GruwvAjwMvP7bh/PxaSc9JZ1w8WzAJHqBB4vBt6EHOGpjVD7eZ+UFzMmuy7+F/1hnHB34dDluqruKD1edeSidq2FofaiNgqYX/K0DYmY5JkdT2ZqYNxl4muanV5o6G50QPWCPiQoDL6eiXxsYKRO+wzpwy2LeLvuWhTCBAwwy0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qcVHwizL; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a72420e84feso546233666b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719401029; x=1720005829; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xOfyPTxAU1AA586B9scKRNYbaEk7KkBMPazDNwYMU44=;
        b=qcVHwizLJxQCk8y2ZsbKlhuL9tDO8l7r/zaXhY31A1wKgT684cCdlX3ZorhTRKtj/T
         LN5/S2osxH9fNLdTdPvRDWHcbX7JzpjCJDIdl6XcOULY2wKbhz7w8LShby2F5GeknGpv
         HbtKlLDjO8LyWi63w/ePwfKRJBBcik4A9lvRnLnb9QKUbDQYWs395l3l4mftCirNuK6U
         aDz8Z+etSZ8TIbbO5igYoTvY3st0MBzTc11AlU9HBHV1HXG8FedqhHBVtS27YitlHhqF
         QNDMT+3e2LJRr9MweuIHEb5IZgUTvPMUW4Ls21TNfydLWTfFZ20wrKKHRNhvNvsAXAwC
         jpRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719401029; x=1720005829;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOfyPTxAU1AA586B9scKRNYbaEk7KkBMPazDNwYMU44=;
        b=iCgIB9eVTe7NVI5EuVj/4gkO8NnJAIlP/DeJtI1URZXGQeGBA+7+HIeQrd2Av4AMqF
         GWtyV8Ip8MujhHLBLR9RpLv7a8/ySxvfF15XXDbQDyhMxDwpL6r11QiJ1RPE0kzpTZB3
         NURY/KgNtoDPe93vP/6xJJ2smdFAFrHdW4AKOgowmfx0TMZ3dQrKNPkyB7vrOFxjtVQc
         40kbB3SEh2UBjJ6JbhBsWAsgUGMgQ4Kscp4AIyiZmHsdQOIx+B69zoyYgOqmi+zjOm7j
         SvkZN66/nqyDBiTA4Xk9YRlRujDYxeGX4bzOWIfXAqYLW0ARZl0TqybA4e5r1LMu15VQ
         5YdA==
X-Gm-Message-State: AOJu0YzptgJ0bsnJhSeB9KsO3NSnwKS7FiBITtSXCNfDSxBXZYAJEJxJ
	Qn7gAR1/xHSmRfqsmjeTsW2eTPO7losihP+mvetc0qqz7QogI4SutUPzBhQyC6g=
X-Google-Smtp-Source: AGHT+IFRV7QyRUY7M2NvcBaMlNrN4IGR6Gq2Zss6UXr/NFfg84GT03FkQVDIgExmlZrFsJTRZNhTOw==
X-Received: by 2002:a17:906:3509:b0:a6f:8042:de89 with SMTP id a640c23a62f3a-a7245cc0811mr824740766b.70.1719401028801;
        Wed, 26 Jun 2024 04:23:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fe03b4528sm497772166b.206.2024.06.26.04.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 04:23:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 13:23:37 +0200
Subject: [PATCH v2 5/5] arm64: dts: ti: k3-am62a: use a specific MCU
 controller compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-ti-soc-mfd-v2-5-ee4d69017326@linaro.org>
References: <20240626-dt-bindings-ti-soc-mfd-v2-0-ee4d69017326@linaro.org>
In-Reply-To: <20240626-dt-bindings-ti-soc-mfd-v2-0-ee4d69017326@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1274;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=9AG4qGOe5g3U/HGCShZuA+22HniQNQEni/ZHjkcOb64=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme/o70mqFL9qoqUbRbpBy0OgTiwcz28HSVvYRO
 7RIsN5/tF6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnv6OwAKCRDBN2bmhouD
 10W4EACP2yaHW/LYHehhv17W6+vkgdToGO8W76Hqd3CJyCkPD6oWshC3pTZsUCt01SSF6mBcIjQ
 3L6oEh8Sytf4UpeAHZbYEWhGL0abqJmf3Cs+4RETHTVK7EFLLmHTBKK2EhaQjxjcMoXcOTEYZT/
 BHiuwmlekAOiAwezVzksafdn5SduP7diS+YUTeJivLeg0z/+OaOgs3j9VTBN1m5QEnM4Lu1toos
 VB1+Xeim33Ktytnxo55OdPzw7ZFnhk63MEDsJlBmMFbH5bQaKPEHyjuB03rAx8ne1H32USaLYh6
 ItEcDkWsqb3uLZqUvF+O1qKjEc4GQmGCHQqBvIwE7WPTfQ40ArZkLj2zNUdMULXTObFwiIaiCJS
 xjBDtmz7Jb6C+ZX9KHM0JUJj0sC4FRf2syLSBd4Tzk/lc/n3pAT07H0b65iKlN/4zpAX5Smx10b
 CaorS9CKZEIpQLUg8/ExP6TeU6li+NH27/Bg2eolLETpNbcotvkj4HJWS+3p2Mte37XUmNj6Cie
 JTx/UvFBZR4lP8nyjx/1sh0U2i++dYc+Zf8joS4TDDFvD2hDyuvULZz6cewJ1UQuTz9/R6rWT5Y
 wQXCoIuZwVf9j0G1wMA6hTyvToiK5Hp2PJuR/WRMJGwzYsuNNC5767uFkFHC3qateXjciVSU642
 XuJN0VHk1ILVz1Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

SoCs (and associated MCUs) should use dedicated compatibles for their
nodes, not re-use one coming from an another SoC.  Using an incorrect
compatible does not allow to properly match/validate children of the
MCU device and causes dtbs_check warnings:

  k3-am62a7-sk.dtb: syscon@43000000: 'syscon@4008', 'syscon@4018' do not match any of the regexes:
    '^chipid@[0-9a-f]+$', '^clock-controller@[0-9a-f]+$', '^mux-controller@[0-9a-f]+$', 'phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Reviewed-by: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
index 98043e9aa316..d12c8c194a46 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
@@ -7,7 +7,7 @@
 
 &cbass_wakeup {
 	wkup_conf: syscon@43000000 {
-		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
+		compatible = "ti,am62a-system-controller", "syscon", "simple-mfd";
 		reg = <0x00 0x43000000 0x00 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;

-- 
2.43.0


