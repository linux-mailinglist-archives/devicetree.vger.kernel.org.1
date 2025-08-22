Return-Path: <devicetree+bounces-208128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A25B319BB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:36:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 905AB5842D9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F503054E4;
	Fri, 22 Aug 2025 13:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HihYz5Sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DC930504E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869494; cv=none; b=LwMSy8/nlK8RgCUlMNgao5V3jUfAZ37EE3esMCHrDU8+0XuEcrHpxIzp5knDOsWh4DBE+QRm02VRcM/7YM/Ds2RiC8WRkXBQrSja74syn8XgVyKjvbLdhMzoICGAMVc/PnXQPdbTrjMwew9Sk5Q6ZukRzNStoP/xXkOoEmwYD9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869494; c=relaxed/simple;
	bh=w5jQPRtxKVdZsfZ+Eeys3YE/WQZUF747Kck162jzCnk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bbpdxYoxoYhO8zznTtbgnvpUwHjs3d+fzUYSiubTFUlvY7hbtY+tooHM1ehU3C4VCfon0xz9BLV52K/5EeV0domwu0deneYPaXEsmSU0ZJH7yiguC1Cmgj19m6oSbR3IXWrVVNq3fx1Iz90EX2ZLlUCSztiTnxjVMxVX23jFH2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HihYz5Sy; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb78d5e13so27242866b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869490; x=1756474290; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2i3UALvvPP6Ui/onN1qTLdYAr1h9hBKlMv+xunaajbs=;
        b=HihYz5SymAIDlJsU5hS9u+dZmrDEfOqM/5BGErr+aHkm3KglfsETAl4d51GQtS1ufh
         lz0sV7EXvZ456neZ8k+bdluTzcVydwea96nuIP0eLIQLkud+sDE1qDRKVF/0qlHjAP1e
         Y5s7bpNBqNC5OCHD8XkjhzpwL/7R9vCnHVxf1rm3TLowo70utP9gYJW+6rQnyvtwOwOp
         2twv2RDjZU0vgGGMfhmCtpggBE5wHD6xw/1kkRDpXdLqdysl8r709SPr6EEuUDr86Pl6
         aKX76J+aQUngBO8vx/Z6G4GFPz35tHtBTu68ldWoXbrblr1LsnJ9ulwf53my+9dpCsMY
         WNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869490; x=1756474290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2i3UALvvPP6Ui/onN1qTLdYAr1h9hBKlMv+xunaajbs=;
        b=lG4QMKaCFckmJUZ0RonkfV/ouKrGlcC3pfFWoVVjFPdJEDntjNPMViDckC0uWMqnTD
         t7eUG7wYLcH7GTW4W+ZMtrc+HqwgeRH2mldfbQY0Rad23EM+B9lXYjeX3Gj0H3u0zbzY
         bGhSuo4+oaOtV9zIhlTRsC7fatSE0XU6JhQOXr1Ps6wixC3SmQ6LftLc0RXvBN28m1mX
         97Z+qJ2GKWt6NgmpXVsg+txif7txHjzoIIPFoqYzuc9F0OJDb1zH6AXqA4GET9FqYEUw
         vdGLQPKwhw16r3RopNg0SDXK5d3hIkFM04I3aCADqVIOTagP61+cVpK359Se+/h4L7xp
         FIwA==
X-Forwarded-Encrypted: i=1; AJvYcCXOFoXEAx52LygRRm8Jj9af6UCurPSs25g66+UizM03zktXf4z9YC/Dm4V8AUpe5GCAlHb8k1OgIe0f@vger.kernel.org
X-Gm-Message-State: AOJu0YxBUKqFvSM30y9TyzoPQCpgIruycN1PVUHLqhjuhjDwtTP0e3gG
	87KMMoi9VIx6tvCCOg6tLW4IPBZiEbkcZgdnwAa4P/AQuKqX7yZLVRp4a9bVXF7B0BBBT96mfcG
	FH+kN
X-Gm-Gg: ASbGncu8P1PfbpucgHgthXm7ogJFzcmS7YayQfpopv+Rj5Od1SKJrkzQvBQxAU4Bk+o
	F0yIZbRf958Fj1RvYCxORHPbKAXR5JSxwgYQkU01moiFBxgqr1pdQ6NC918AFd8TcRj0BRSvwQu
	4IVJMx8/s8sCqyhHc3Nu3TW/D4hoIFdVtXwsBuuP77B8PR/yDIsBuWIgoZXHz+Tm1o6sEjz0mqa
	wrsIqpjjKckqw670jekrQaEQXx/6ZHxGKIKRE89STqsITSFpwX3Sn6jCMy9kouZWxrF16Ee21/P
	BSVpwAt8d9Hkvu9JcO7gUU8i3s3dMcK182r3T+gILNCCPwIj+4JDLmsw6nq0afDA569MV8seJOF
	2PONqboLODFQxSBnFflwf/atTmBDQGEHz17QDTcE=
X-Google-Smtp-Source: AGHT+IHZ5jhA9JpGxGAjhnxBjfGh86JHBTsDrJCTZCPuPU4fbysR9CHB+p5QK15/n8QCznzjnUbV4Q==
X-Received: by 2002:a17:907:9405:b0:af9:5a1c:fee5 with SMTP id a640c23a62f3a-afe2874f3eemr157176966b.0.1755869490268;
        Fri, 22 Aug 2025 06:31:30 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf24bc40dsm554863066b.109.2025.08.22.06.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:31:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:31:14 +0200
Subject: [PATCH 05/10] arm64: dts: imx8mm: Add default GIC address cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-b4-dts-interrupt-address-cells-imx-v1-5-f1b479da9340@linaro.org>
References: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
In-Reply-To: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1417;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=w5jQPRtxKVdZsfZ+Eeys3YE/WQZUF747Kck162jzCnk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHEjwIVHDMjjNUzatpKcLfCThoUYLutFRJ7cw
 HgSaiYJE/mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxIwAKCRDBN2bmhouD
 1xTvD/991PuRFgz8vug1PKR7NPqB+k//ficQEDALcCCDOZPeAgt+1c9/AsH2VEkwsDUDtjRZIRO
 FOUBAHYPr/bcDoNRvgbQP0tyGrxQEtS5QWCvFnFaN8LuIysG7S/9SQ/tat5L/2N9HFwiNDduvt1
 QZlTWj4WmYdxpg84+FqmiM0Thj7h3PBhU/dEvI0+L/oMLzYBbWBr9f7QuBl/Lajh2cm/1YT5bbA
 1v3IL3uqm9+s97dYCDTunv6HxB/Hs5kQ+hfBw4GlleezrordICpGkCfdzZbSgxSVxLoigZYEaXc
 6Cs+Lnp+HYdBC+L6lYbiqpGUz3nLnX84gDviwKOAu8hesje54hPr+fk9fzNzyRDTO62FYDsROHI
 ToW/ol1XArkiMnceIONQe9ZdSEiIRxt7HDdMnRhqdMrhcwT11lbT9mhxXIkcoI7MrP84arLxtf5
 4N4uschFl992r4gnJGmygxE/wu3LtwtQRo2A+9DAg3UFyUbg9Dq3wkf3PPfEXq2/YVVLdjq9Izu
 NWBnWYMBbxlUxFrk5PX9c8RAOx0nM/5c/DpsX+NLNB3Y4VE/FVGuu+MO2PkIXjlom6uN+kwV/1f
 noM4ruD8BYLksYZFwpHYJpheblDAcE2fAdriS6mBT1IZWpJcfEiQseXqOmKrzaCfdhcDDxE4eAe
 SK9s5EkTzpKf2Qw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  imx8mm.dtsi:1355.4-1358.29: Warning (interrupt_map): /soc@0/pcie@33800000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@38800000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index ded89b04697014771c20cd7c285d01b73ac9edb9..fc3cd639310ef07d6d14c457af607f61e2288b1e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1467,6 +1467,7 @@ gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
 			      <0x38880000 0xc0000>; /* GICR (RD_base + SGI_base) */
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.48.1


