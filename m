Return-Path: <devicetree+bounces-208137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94860B319CD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADFD3640D48
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DDB930AAC2;
	Fri, 22 Aug 2025 13:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iG4z0ZL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90261307AC4
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869610; cv=none; b=ewICAMwhIMdwhqehTFDHWsJXDqM7POCpuR5St3SVOxldAyQpeXvt5DcbT34w0FXzyay0Bm7OObh1+Km06HEVHHO751m/gDnjwb+69xdp6+O6wvbeBh1uBvL6JIty0z3XajhUMPOhlvUDRGFgTdBLXGXETcqU2N7+Ww6JSQ1oEVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869610; c=relaxed/simple;
	bh=uBeC7mf3PEPAn8sqeu6dfy6yJmrTEpravF6dwOWks5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iMYPTgHuKrEfYC2VqyHUkvubC0O+DFS7JF13eEgIChTZarVf7ssOgiF2y+K3iBkUd/F1mB6wqBoOkavcKXaPiZPobyDDIuOfU8bULpYDgJ+T3qa1jdBVMDEPgUyI/BeHUYJTsg35QWgLMQcvUOCah876N8Fl6B4VDZt9rY+xa1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iG4z0ZL2; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb7a96309so30051866b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869607; x=1756474407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3058HaZG35cX2XZ/Uwrd0jvSVLQONoV7sGcI/Au62/4=;
        b=iG4z0ZL2rds1PrNUQBQ4i3nD74nv8W9GIh2K3gq1ZSoUhpPIZPJGT1fKYOf0upnTEu
         ezUjRfW8tV8NGNv8Y5adBCPWRlaH2/mEN6/EjI3JEvRGPv7UjAJdedp4gajuBepYdYgC
         J6sa0rIcE5brbIG4vZjUZEx35iWVL94hgn6czGI1q2+mJs/k2Nnjaj34TkZy7Tj8RTZK
         f/Ty19cr96lnC9FJ5DoffPHAx46BxkBbLvEl2/NONzRCmmkrQiJTaUHrDTqQ1LE3aUD0
         L7ZP7/Up0+ps5NnlkHc6zpMQvKwDwb8vhkCV0wbtiHQeYa/Iou5EABKo3Ii6tvX/Vt9w
         ix3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869607; x=1756474407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3058HaZG35cX2XZ/Uwrd0jvSVLQONoV7sGcI/Au62/4=;
        b=HlVNligJ6dSukTSPUWIuShNQWoO7kbAc9H/vulouw91uTU3uR6cUAWPR/ylJ5pUqeb
         pxKGrRFP99hd/EW5TmLPDPGgUXSwlCWqhNO/n18ZqdMJyp0DJAQZp8oazVAjs+xOj4q1
         vsWQvfZWUA2vj37lNMR7sCFHsdRkLkTdqBJAhjLqOWVee20mfGbEmA4CY3Iksw/1xRcc
         rllHsow1WtHzPq33D28kjm1cs4m4IVR4iinDTwM/pS959HyFLXFOaNRx9ulFUXSdzyo1
         kQkf5ncqUtLcC8z8DrOlg+PjBDbB0GdSdL/sGc0d3Y4iwY+ly+lseePxCKObxxK8R1vy
         fORw==
X-Forwarded-Encrypted: i=1; AJvYcCUtK5gx7nncaUStCk7ObTSbWL8y7jgvE0mMxp+ODOvk629DcvsEeRyyHcyQIuMde63DzS0i8CNYli3D@vger.kernel.org
X-Gm-Message-State: AOJu0YzS1n4tY8M8eTO9X3HCLGeva4Eou6CjQ46FnSfZ8LkW3ygwA+z1
	H+8S8nOxZrNwE9e0v1mtTtWrrk5mo6gH+szr9quLkUuk9aOPcpPQrXDQ/GklKJ1WY/s=
X-Gm-Gg: ASbGnct7Jh3kI95S1dI5XL+BODMhIRN07oL3dzGON/YHCLsg3dkhW59bHhhV+WSxSHQ
	s7C3dVNm9jcXwQTzrjwjgytt4XbYx7Nd1KUJ6zpfTxu+5X7howdNCxxBJmsfSLQvDQF3R78HVLQ
	EFTNIe3J4oYP/P9TbN8fWyezB0otdjEg/dHyS38cegqbxWIv3yeTUO37XB1MzM7hYVxgt7LeRbq
	3Dc9/JCHFuy+0gzLQms+9eo5tFvNkqDBjz+wocio6DO7J2+DgxJZCuObMKHPsAqix2hLkidWPx/
	zE4BSLbR/eHPltNgmZiW1weaOpefVYfZgr9eYKqSHm/W7RSTIsQmqVfWA4QG1+g3FIAySK3kAus
	BOrS4KPHIwbC8k1Y9DbtKSwAQGOeu2zXAMQ==
X-Google-Smtp-Source: AGHT+IHtKcirQUNL1ochiiGTM0PZ2Bt/BmKBeNyJh4I1dwfz3kGNntqYqko2Rsyvv1A1m6TLYS8O2w==
X-Received: by 2002:a17:907:7216:b0:ae3:5d47:634 with SMTP id a640c23a62f3a-afe294cf1c5mr145812166b.9.1755869606944;
        Fri, 22 Aug 2025 06:33:26 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded2ba366sm608881866b.19.2025.08.22.06.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:33:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: socionext: uniphier-pxs3: Add default PCI interrup controller address cells
Date: Fri, 22 Aug 2025 15:33:20 +0200
Message-ID: <20250822133318.312232-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133318.312232-3-krzysztof.kozlowski@linaro.org>
References: <20250822133318.312232-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1341; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=uBeC7mf3PEPAn8sqeu6dfy6yJmrTEpravF6dwOWks5A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHGfPYEoemcZVLD4Ece0pw3e1Jo0vFzQUD1it
 D4nvDRASLCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxnwAKCRDBN2bmhouD
 178GD/4sByR6xe9j+oId4fS0kvEgS9z1k/ZNzGSDZe3LgAwxWrP+5ljp9HzwtDXaN6F5wLnwPYA
 foNLnSk8eZOHPj6aPdD4ysyDuymgIwRkivr/lAXDY0FiDs8Sri6ZFWWEAqqUIWGkwzueNbBBN1a
 Rm8harZWIvx5fuBnhd/PxGnUDL2FFHdJgWutJN6ukqmJzhzMBmuOJOoj/VArkF94RTJ+c+1t2Gw
 hxvgPYo6Hvk0XGvcWeJ4oDSFV1PFn8Knb3usTgVtu9WGIosNhGTXRgtma1t5Wfaynahr4V6hFRC
 GfN6+nT9echcgT8n/uzaAK+XBdVuxuoorC4avRaPrphHESCKQehLYOivAV7XKPESaoWkm0L+tFN
 d9VkQhXaLcOsKgqdkIcsaWFxUI1BaIazkWZp2wYf/JnCf8Drh9Zjy5F+espmHAdw5O7mEtNGm3I
 tZeH86BOk6jBKdsi8YuyDXNE1Hyj3pG/b4vNQaaHt/wO1PmS3o9t2t68+Be8FPILcto9V+/z+V8
 oCabngK6rrg9CqiORmq0N3XYIYIyj/lIoOwfRU/RESaTjoLRwJIkzprDG28uNbqHigUfrg1yDy3
 Pd8PlzLVA+H7YhfdDsbwCDNV4CtrbnNQkyN3Mn4ly/x4S5gLm5e+ihiM9uQcTQ1ZshpAoLpggzn LFZYDPjTPEPisZA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to the PCI interrupt node to silence W=1
warning:

  uniphier-pxs3.dtsi:915.4-918.29: Warning (interrupt_map): /soc@0/pcie@66000000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/pcie@66000000/legacy-interrupt-controller, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index d6e3cc6fdb25..4d6c3c2dbea6 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -921,6 +921,7 @@ pcie: pcie@66000000 {
 
 			pcie_intc: legacy-interrupt-controller {
 				interrupt-controller;
+				#address-cells = <0>;
 				#interrupt-cells = <1>;
 				interrupt-parent = <&gic>;
 				interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.48.1


