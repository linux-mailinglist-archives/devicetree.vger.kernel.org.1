Return-Path: <devicetree+bounces-59139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 367D08A444D
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 19:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67C781C21B50
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 17:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ACC71353F8;
	Sun, 14 Apr 2024 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aQjBsPz4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6E0135407
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 17:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713114274; cv=none; b=FbuCct9TeU6qbNCuSvzdDdLoM7pnBnuM5EIXt/Z6FdCIY2Vjh2VzZi32AbxtAqYYt9B/ybPaCEV6os+eUntZOMTzJkPjZWecEzBW4Hi15XkgErp8pjURr/PAof8h9XDDEGpGiCmyeeof3UOUvh7DFKfJjJ0+glWmL7H2WhvGO5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713114274; c=relaxed/simple;
	bh=fK9vTqefiz87spHjVoNe2y31Rk6ywa/rRXAGJPmzllc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cL2U2+xrSxAEyEllYBkUk9a3nVol/gZPxQWJDHcf/W2hT3fxZFnhVQORKFUIk+fp9jN6KXsgwjdrIcvLVOY6ooUkDeJbHqgvg6dTfzLV4VttsKofnMJmQk+h2JEbnztRn/1O7ElXlADtfIC+DPLPNnJvcXvV2narinbR5Uz/5Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aQjBsPz4; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2343ae31a9bso725790fac.1
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 10:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713114272; x=1713719072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtavPuQEEJLfIF/DFtWPLv6R+X8VYDtktb2584IW4/w=;
        b=aQjBsPz4JEDAPk2F3a3o5ZX+pGG+Iuia185iwq/YxzOrOxN6WIYM+raxELq01JuMRG
         QrV9D7xagshbg0hZ1n0FXP5+GZYn0HvAPHJWTsukfyz+UZvt2HrgeNMGo21blzVEJM7n
         XNwm35REojitEtd5N3SOGTKrV74d+DnHy6zqAM4ZGxSVUbsY9DuxR6AnHtXKemUn/y5v
         uUiN4TSoKxB0k9RcVef1HcjpNAXpqs5EqvAnpNbaWRKywKnqcuNlF/w0YWIrxb/Ty7IJ
         fjy8OxMYD5zWHs4/5LTqWXIx8aPrvqnqEtBfBb3XsdoFLpWm0SkL2Y5j/0+sZjUlwHXb
         dl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713114272; x=1713719072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtavPuQEEJLfIF/DFtWPLv6R+X8VYDtktb2584IW4/w=;
        b=Kk6YTx3RRAN73ALEP3JFOh8pNUY90ZBLHbOlE9PJITXqMFuL5gXoHSNimiu4VAyNRj
         Eu5BlfjaSnIMvIbUZiOX9s0zxxfswqrXQQxVEB4uG/5Id/XgI1bd9VmJVY/qnNPV9XqU
         I4x1vcvZx4FA29KejmQQXIWSrqNIRBupsx7xva8comsoB95YTWkt4QH1vDBMGKDY9adT
         NsYjeUJgl1MUnPcvLqby5xO7yexMmFbJGgF2TDyTvyFoYQAHWrzqx1JHdR+dI8Ta0Nfm
         3VQzd1kTxT54nX+IfAAUQZUM3NETNZuOrHrTMpaA8zmRfC5Fj0YXcPFeJ2IR1FbfLEkJ
         iR/Q==
X-Gm-Message-State: AOJu0Yw1Lhxlr6vXnYo4nuhbl+YgIGZwIcZtGAhRK+d8nygLfbNsx8qJ
	WQ4CLmDEeGfywHITJHCrv2lNoYJyP8jz/84fpiX2iFvAh93sRuVI/RAr3A==
X-Google-Smtp-Source: AGHT+IFrd412jjQpu7ty3S0yylUWd8IZ7LN+YY2dUfZKUwvlhV8W+mXRZ2RqNurgOKjL9jbwROrpTA==
X-Received: by 2002:a05:6871:646:b0:22e:caed:b1f with SMTP id x6-20020a056871064600b0022ecaed0b1fmr9169989oan.2.1713114272132;
        Sun, 14 Apr 2024 10:04:32 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id mv5-20020a056871d04500b002338e2146f8sm1585305oac.17.2024.04.14.10.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 10:04:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	ryan@testtoast.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: allwinner: h616: Add NMI device node
Date: Sun, 14 Apr 2024 12:04:24 -0500
Message-Id: <20240414170424.614921-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240414170424.614921-1-macroalpha82@gmail.com>
References: <20240414170424.614921-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add device node for the H616 Non Maskable Interrupt (NMI) controller.

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


