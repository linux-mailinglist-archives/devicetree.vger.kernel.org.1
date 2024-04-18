Return-Path: <devicetree+bounces-60743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1F48AA1E9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 20:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49B201F22301
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716D017A938;
	Thu, 18 Apr 2024 18:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y/fe5brr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2954179204
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713464185; cv=none; b=bNpeFjQxAWgbFZaFUL3wOWJMaGfREDdi8FbIgr3c+alJrcbD+8jJtH//wDrMwquELyXfSAtnTP5QcV0PoCx+zARKYgEl/oUl+GgUqKiEIYfyyoEOB1YWY+xY8HCMaIl8S3qQGy3hWGZTv1k9n61eZ891xQRFKrJbiaLyWYoNRAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713464185; c=relaxed/simple;
	bh=RzT85hTZeN5q66RZ4B6RgueToMFBVh5kpGMKsjlp1w0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Q61/iAB5H21g9aoQzbU9ZQQjxCaufiilP20uDSqKa/QqF4wVtvsSxsbZre+ELwzux1AwR+H52H6Mr20jA9lqQa5WdSHptxwwHIYbcva7O21FpqaRAggBEuKA8qgHBuIZ0SgyA/QQWffPe86ca4cbDhvfQf/YcYtAvpJKikJWUrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/fe5brr; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5acfba298d5so401936eaf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 11:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713464183; x=1714068983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zHyhjFHfFHzvzihg5eoivzzLdrAJ2c6i2qTZ2T7TSG8=;
        b=Y/fe5brrnbYpgjDJ7SvsW3Gsv9MOwaI2jq7EMCyO3trmnktNyyJT7YwOdwgrsgjFDK
         0dQ1Iqh5nnBpYpyBH3pEapz9iqhYNin4kP5vCXFSTNQ0tRcLZvbONEm0NxSD4BbUdV8N
         tecP9nG/7S7jibOc1Qs3cUyF7RnRY+dT7MeoZPPZ9HisK5dk2c22dSRR8DYRDGVnagum
         m9xiGiEIdBZ2erzx1W7iO9zf1gxXwjRmfE3HdkxOojxDVf6YmmqyZZGRtU/Joqb5lZ1W
         sgAUjXUVoiWaIqIrso0hrwccBPeSV0/1QPCGHFd/cHcUDnfcJ2oikMnqQt3JYgp+WZDW
         U1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713464183; x=1714068983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zHyhjFHfFHzvzihg5eoivzzLdrAJ2c6i2qTZ2T7TSG8=;
        b=Njt88Evw4KlS84X775pl4ul+AwTtU1iqViirJXHoEhuZ6ZSfEZ24jEg0Gdh32X85uT
         WRWUHqDIMmnia6pTZ9yfMTZkM6I2gMKoYvgNZk5N1k631mPxn/XHz6axgZINkbmwJ5Ry
         kYtD7YV3XFBb2yLkDbZ2FVwtywwTbo+Y10va2Dys+4l0M548p8u70DUtDOJ58sPiF/dM
         903NW8Xv2o00tQrdVK4uSu7QS+gW2oUj/IA1buq5c0AR5Jz4jKEtHNgCAY92nAlDCDxg
         5vb9egi7O/GL/ewqhvExaFlYoWbRnuBqJuKx/RcXnRQxntWgUyVMcKqPzpYO+a49zX95
         trBQ==
X-Gm-Message-State: AOJu0Yyk5+CxHKUek5SPsy5jZBe1e3aanz0cnVeqblE+DF1BIbfLY7HD
	Ii42GU45IalwQxXCU+Zjvg5kH2W4WUBpiaOLVx7nTfELui22oIh8
X-Google-Smtp-Source: AGHT+IF/xxsFAXOVULwipIHPYV5m8OTjxJDNGmnozeAK8EPa9oYeztB33aXPbh2kYtBBgWYsJJ7f6w==
X-Received: by 2002:a4a:5102:0:b0:5ac:bdc0:2bee with SMTP id s2-20020a4a5102000000b005acbdc02beemr3946595ooa.8.1713464183009;
        Thu, 18 Apr 2024 11:16:23 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id dh4-20020a0568201e0400b005aa77c0fe49sm483419oob.24.2024.04.18.11.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 11:16:22 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	Chris Morgan <macromorgan@hotmail.com>,
	Andre Przywara <andre.przywara@arm.com>
Subject: [PATCH V2 2/2] arm64: dts: allwinner: h616: Add NMI device node
Date: Thu, 18 Apr 2024 13:16:15 -0500
Message-Id: <20240418181615.1370179-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418181615.1370179-1-macroalpha82@gmail.com>
References: <20240418181615.1370179-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add device node for the H616 Non Maskable Interrupt (NMI) controller.
This controller is present on all H616 boards and derivatives such as
the T507 and H700. Note that on the H616 no NMI pad is exposed.

Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index b2e85e52d1a1..1e066f3057be 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -775,6 +775,15 @@ r_ccu: clock@7010000 {
 			#reset-cells = <1>;
 		};
 
+		nmi_intc: interrupt-controller@7010320 {
+			compatible = "allwinner,sun50i-h616-nmi",
+				     "allwinner,sun9i-a80-nmi";
+			reg = <0x07010320 0xc>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		r_pio: pinctrl@7022000 {
 			compatible = "allwinner,sun50i-h616-r-pinctrl";
 			reg = <0x07022000 0x400>;
-- 
2.34.1


