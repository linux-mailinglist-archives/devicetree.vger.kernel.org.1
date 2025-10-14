Return-Path: <devicetree+bounces-226634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3619EBDA3BD
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:09:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49C6919A481E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A7A303A18;
	Tue, 14 Oct 2025 15:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PNG57BsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134142FFFB7
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454328; cv=none; b=ulreEHGHoUdggj85jFWZf37yBt1d982jGY/r7o1nkML/k73i2tUwGxt4cgfRvxEuEXubhW/MaeWZN5tl3QYUPWregqjYZqOwttyIfyEsjhRz6gk5cO6Ktnlt/0amyKGLjKJOcokwDtn5MTlRaxhWKhd7XFb6TAW3R30VGyzN2jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454328; c=relaxed/simple;
	bh=K4a8tKqeVL9BaqFzY33bqex26zqvwpxkE6HkJdl3Qlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JgGQOMra9N3e5Ig5rD6byXJrQwb7oR5deBiXYBPp8ukX1wdjRxei6ujb7WqII/Sk74NNVU33z3dVCfMUmdTCvHyUL2FosBi4lwt2q6VS9l7UgHfD8e0iSp1SD3bggVJkQ0xJ31XDtOU+gY1Ez1C002oeiEb+WTQ59jXDgUEDzq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PNG57BsQ; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7800ff158d5so5133076b3a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454326; x=1761059126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7llkAP8rKH/Oo92VHhR1v/h5PxCOy9CRKJV3/2nzc+0=;
        b=PNG57BsQHnDfnWQFEsYNBNEC3iFvC9hMPaf4vC+eVhFS7uGMEbLkdDFVA8e8FZSghJ
         erkbrpniFlCqxXXcnbLNY80aPJ5iw+6iLENb93LFh4KgIQ4uCjZKuRRb71gOO67yP9ZY
         nt1VEqJKQLV/4DX//35aO82iq7joRxNyYjP/mbh1nwGm1Orqbub1Bd/Fc33ZFBo04IsP
         Jog+AkeAQF6ojjnMURl4sbOJ71VfId+X3TFdiGitCe7bmRyssK104DuEtsfQruzCp6GD
         DCgCgAsl+rfRUJMVFVOAxyfG/cggVhyfwEajRFpO/qsheOVrWo8BCI1/zMUaOn4ZJwJ8
         VyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454326; x=1761059126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7llkAP8rKH/Oo92VHhR1v/h5PxCOy9CRKJV3/2nzc+0=;
        b=BjsiQRvKxDrBuyg7F1OtggYs67/oo1OeVVK42UXxU3hwMjS+UQNtekObixvqREbbjy
         Qv940TOMSi1HwZVUpkczaBCZENjkVTzkdECNwSTuKeDzpVWmvQ8tjqnIbpnB2+FNN8p3
         khaAUHDPd4wAJx0aiE9Jur1Pr3oA+wFIvbo4vtMO3kSg+mWp1T7fnhjrUIpgvWBq62/o
         zSPOxqTxl8FiBi/I6548I4wyTdMB8vMdKSZ7pedPT+n7lnsZ/1SurPyP0o0GC0ZQannK
         ul0OVjMplsyUbG2RYlihIkVmcWlDFtTVSt3Yo3NBWw7j9ZXO62PNrrSm1oJeuzAdGUza
         MgLg==
X-Forwarded-Encrypted: i=1; AJvYcCVfpLOHqWelo/2baA8VUsT/D5haMiNj+xGvHlz5llUFh6K4eFGTDoeeRyIQJhiXscGh4Vly2F9/pu2V@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+/4CX8SgJ/UaVc4nex9KP+ThCKGeigO+cP1V2VshMmp4bekLz
	cuf2WPT8UTHvWmSTHNfMq4zCEslVObQFO7WdVknXeqTXNpmCvrYZ/e27
X-Gm-Gg: ASbGncumeNouSH5YyH37HCWjS5vdOVq9UgFBFU5cywuiljl7/8MikwNmH/osIZzYOLY
	th2+bLLrYRbopwYLjSPX1QMIb7om/8VUgu6cBYzky0vOXoNUEV8d0uGaf2Kpdyrv14mHL+ibSOb
	Lo85QvHMmp1oJPbdmziscQq3TWo9KYxASyVeEPKgkzLuxBcC1Jn78Usv/P95t5sat9420QPhn5d
	lCNYloN4vC2a1OMTWQEg0zJXoHhHCJr0GteP99Exa/wEkqiXijti1U9kZLofQQK19kOABzT9o9n
	/vQKIan3ECOmiKJBMZDFpFTgDRO32N8jRs6MtF+or89O/L1y6hgxGWbZ9uG4D0EKiQCKl+FGtpP
	apGEhejCGgCtGF5jGreCxHLPk85u2bACLchpnrc6AVp0=
X-Google-Smtp-Source: AGHT+IE3NxAaEns2gk2qdEx9c+kwoggzTSTvFkrcp8epRBoP1K1fTKpenPt9+hbz3q8VSwNcOXWsnw==
X-Received: by 2002:a05:6a21:6da1:b0:2fb:4ac6:6662 with SMTP id adf61e73a8af0-32da8139364mr35196981637.13.1760454326327;
        Tue, 14 Oct 2025 08:05:26 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:25 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:52 +0800
Subject: [PATCH RESEND v8 19/21] arm64: dts: apple: t8011: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-19-3f94d4a2a285@gmail.com>
References: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
In-Reply-To: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=K4a8tKqeVL9BaqFzY33bqex26zqvwpxkE6HkJdl3Qlk=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZv94ncF/y/perEeYBY8+y70nwkVMNq1VRMG
 6Ac1teUQH6JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbwAKCRABygi3psUI
 JNd1EACsHjSDCSxZDW6ph7m64UGBZOj0NCWE4q8pP2G2+ojKWdMmmM2B+m+uPXfdxyQBGim6jbX
 ef/OEysjJkFl1lD7pueuCDnH/yOyiOAJtf/Ew5BJVSqRc0pJZKj9HW1vAcjuBO7s/aokKO2NdbD
 d4PFX5dhOZS6dY6dZddHT32Q/r2Uwa//W5LyquKm14YpY2pS/7IEg7wYeyuHCjrVPTQflRtBL6E
 2ZobaDsC2cMVo9qt/PTqF/EzIV0p5A8i4DLHNdckv+R2mivu7oUEXlJPeAygORYT5jYE2jc4sns
 5TS4B2SjwWkf0qppUxUXj7X15U8BXGdkC5M85omLBRiXmFCf2vuvLBuWQ4LhS4CKpi3tXo4HQ3p
 VJyhn/yxyHfr9ZSbO2a3GAvmPf3AIAEInCD3wSdk1ovr9s/g+gGuc5g6ElVy+Gtzm+gR8pWvl9i
 A4bEcW2QSi3HRMk31eW7VKeCYW7p8FwRpb4YrQCo0u8Spfl1gzXrcC2oh7Ar7L0shlvfydUb/XV
 sWSMDoN5aeGNmjzkfeM/zmfDchwwRt+w3Wy9TYdY/PNvY+x2qkul2dVhGhw9kla/78WbO4R88Nh
 vaDg3NFpU7aOxG+r47otn04n+jaa3zgkV40PVqL6zg/mfJZzQ0VJMXs5lD4tG5HvZs7uLmAnvf0
 SkiHDA6Dxhfn4Dg==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodse for Apple A10X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8011.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8011.dtsi b/arch/arm64/boot/dts/apple/t8011.dtsi
index 974f78cc77cfe28d3c26a52a292b643172d8f5bd..ac203ac4d6eca75655cd590deba5c361accf2375 100644
--- a/arch/arm64/boot/dts/apple/t8011.dtsi
+++ b/arch/arm64/boot/dts/apple/t8011.dtsi
@@ -253,6 +253,15 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 89 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1 &cpu2>;
+	};
 };
 
 #include "t8011-pmgr.dtsi"

-- 
2.51.0


