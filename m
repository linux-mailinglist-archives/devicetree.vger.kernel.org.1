Return-Path: <devicetree+bounces-208129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987AB319BC
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:36:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 081C25A1A7B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3920305E14;
	Fri, 22 Aug 2025 13:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSyKeTlz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34DE3054D3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869495; cv=none; b=uK4q3iE2es1GpEYdT2n9KmxtPhKo75CkKvTZs70miKWyAImxphwYZfQVVq/uAIqH3crGOQJ83guEm/kUW4WDsnVLsQa64MrSiEsma7TaI8OEypgfdczgUz6SJVF0HuSPb1oApxJbMIkqJ8AfWsIG22hHcN9Uqk97t041tDV3jIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869495; c=relaxed/simple;
	bh=elmEkjEc3LhUsJVHzugGONRfNFfB43R0NAtUn3QNm8k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GVdNJF3caxDVw671syPoVdwo/4acQTfxfftjCSKS++siCQJZJWEU3wWNC8MXojITGDAttyPk0HFn9rQrRmn8tjwR6mRu05vO79dG8XNntS1ZoH6vuokkdopmIeJ8qv+GQ291EWuUouRm/g31JUcn2fvFuyxMLfsDVSrMj2eOOGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSyKeTlz; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb7a01426so28319766b.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869492; x=1756474292; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I1o1gWzgpFccxrhmkeG5ac9lKe0S/WiH+skWHOM6Dqg=;
        b=GSyKeTlzL1DtictkVGp8t6oqJWHX43ZetiqUtrbnhIZnjzkl79H3nB1OjJWMRpWCDY
         run1X3pxrFlw5jGkm5mEw/anwlx/XVCrUzW632kpbtZ+oEe2H2szIc+6qKEv48FSUa8X
         q1aURM3IWtocg+p8wL5mb2+UhHJF+BKO0kPG70t+nn9Q1cnCFmDLCiONmlIDXRPMn6YG
         rYdVV/qIpApZVdYMaSc9/5wJigCMP8CjmtN7L9Ew/ev9FCVGsjspX4f1rJesCQ1gS03Q
         ntsXdRJb9GBGrscqvKeehYUQ/kEjjsLSh1p3zTnOSUzaNblCzwHYI7MVPcz86HcFi3N6
         HrRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869492; x=1756474292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1o1gWzgpFccxrhmkeG5ac9lKe0S/WiH+skWHOM6Dqg=;
        b=X0nXI5HVNsyNL8Z0QJT7tYoI8WZS5AudIgNMJC4lMaXADhSI2b8Yfp5x3YGyrgw0K8
         VhfkYFnnf1nKBuQxgl8So/Ptyym75dgmK+ulZf/wqhJhJSnPPC9lIUbKNJK8SMfK4mQC
         M1NwlDYYy//eoyCUDCuFTVBLcTZqnAFW6v8PbX05qmQe/CIazvR9c4msSw/OvQ2vWJ+l
         etcjJw8CNYjWXzhFlagligdULJOBdjCR/JdFwOnJBFgSl2Uue+zCJlxnVa7MW0E1+5Pr
         PiEifTU0c5kmc5S4jFgaXrXhV8ga/DX0ILk3IriqT+ePH8j1m26VOXFcTmRy72MLaxVc
         nmBA==
X-Forwarded-Encrypted: i=1; AJvYcCUg7Y5khGuQyZSO7uYjKdSRaG0IgH82yhsT9/mBuRlBN5PNDfx0SlYTxCRwmODfhqbwGswYe1PsJq/7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ioVAv9F7jSjhsyi0/RlA97tiFS2WxUTH+jqpgB1jxzIuq828
	nCK6JNVnpWAxRvLglohwMcZIVttKbzLuCqTrOz7bcFXgYGP9DT9XmDIknRWgt1N2+m5dduV20i6
	QCw8b
X-Gm-Gg: ASbGncu7FJBmTWzH+d/fXV7YBsBW8DIHgMKpb2Sc4WAidGeLeyJrJoPkSduZpi75qga
	T9JIkmpNX7eOwaEznKVcSR23HGTz5uByjcp/kp3TJAGEt8ggtO6RZHOTWP35dPa36xJHdYPWN6K
	0T4A/CGvgED624HPMXJ08ZgGfx0qi3DKgp7jE0+JdUMnAJl2xH1whFc7A9PVOS1SeJY3J+8Zh+G
	gsKrVaRjxMYWF8hJ5posLqajH5hq19a7IeI5e8CBKLCYVb5rZqCS7U9bokq2LJ6mdRR5Xhjk3VJ
	H/16yjOelnUkQ0+l3e/HJmF40Qw6zh+REOtcKj39YCOgciCgOwKLLf9UYI4WBKMDrT40KiFWtMp
	qprv1NUSvuEY2NJwxuVEYCMR9WKjJwMR05o/AOfE=
X-Google-Smtp-Source: AGHT+IFQDi6KXypv+0LPQO42vWOV7xw1nKHZrLfkgFq/T58RsdgMUjJC05gydduujZ5LPC5aBBjyTw==
X-Received: by 2002:a17:906:c116:b0:af9:6580:c34f with SMTP id a640c23a62f3a-afe2943e3a9mr137574666b.9.1755869491830;
        Fri, 22 Aug 2025 06:31:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf24bc40dsm554863066b.109.2025.08.22.06.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:31:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:31:15 +0200
Subject: [PATCH 06/10] arm64: dts: imx8mp: Add default GIC address cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-b4-dts-interrupt-address-cells-imx-v1-6-f1b479da9340@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1370;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=elmEkjEc3LhUsJVHzugGONRfNFfB43R0NAtUn3QNm8k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHEkKUeNJvQhFQ3yNA50Weze2UHdPyTmI3Wrg
 nOmyMfiiY6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxJAAKCRDBN2bmhouD
 1xa6D/9GTGfVp4YwoMdF/SQAx0S+8iWxY7ZVKjJjJmC5qWmRakNLaNJPs74VNEOVK5CGPZacGWT
 j52QcZ1SrrltbvVz5f7RqjtZe1WXL00S2Zjw5+wjeX2dnqH1Gyp3G+3hjs5nlN2RWjmdtoeXjGL
 KzKYllLyTgeRsDL813J5Rvk/jj0Tr0zYRTwlBdiENzhtUJRtipjgeJOX72t7p+Fbbqy4kCPvcZq
 +hAgZK/E2s0vIq2poTDF/u4tMHx7JmMR0a1slHEWk3A6Znpg85Tq6XITScENMXF/+5rL8Pf0n3q
 MvLjgtut9cF0RmWhKAjkRGLV/bNFY9WLUuzMBtXwTefhYXKOVb0ClgqLwlT8d6ufT8lT8Ezx25g
 ObeFMloyh/O86EAoPcfHyspQMqOE73X7XNtWW0B2FE7MEXVZpuX7kzzHKkEOgmzOhG+3hmw+mpb
 pDKSHP9MJFvC0xN00tmalT7L4s8suu9YYPMMd4iLfo+D8GoeVTTy0DRe9BLVLjy6TcYdT9/d7Jx
 s4jTBQBFVWEoV3axk2bmoEWZ/4DV/DaBD8672gEDM84ul+93LcdefWl3frbxsOyv+DsPDcPk9QW
 Gg8hbfz2d4Rom1xuFhbySzJ/p7hnNME/Kdmg6UjuQNU214+mR8Abz39Ak+5Wfr24hvoAIeQ6pxK
 h90Dnyx4rCyzckg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  imx8mp.dtsi:2184.4-2187.29: Warning (interrupt_map): /soc@0/pcie@33800000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@38800000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index bb24dba7338ea00dd50c5f7e409d72ecb7d790b9..b57817949d80ae7d891b2168c17d4e1a6311fbbf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -2317,6 +2317,7 @@ gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>,
 			      <0x38880000 0xc0000>;
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.48.1


