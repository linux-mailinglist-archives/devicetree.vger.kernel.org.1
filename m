Return-Path: <devicetree+bounces-125843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDA39DF77C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 00:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F7ED28148E
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 23:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341361D88D4;
	Sun,  1 Dec 2024 23:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPHdS0pK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2701D88A6
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733096785; cv=none; b=esnAvJ2GWeu4+WMZ8uQZVqF1p1ZSR+QjDdWLcWwzbO7LbMFRGuDSkHu0gP7U53N7nqX/MC1yi2QQkO9iAoZDZo16kF1X07ooLeus91+44vIeTrib7LyJ4CU5GMxdcgB8XZ5i9TQUTMyHgueDpEARVhVoLAdgRHlWz5rRqjtYpj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733096785; c=relaxed/simple;
	bh=UDpRHkdG0AfHo5kvsFh6g8r69eWSfiPpXFLZAJ7ejdE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k1IWmP/z4JEYF3Bz5cyU+sLxcf/uUO6oTYnDA8DgVrEanHs/uuEsB/8gX/X6k90LA82Yno9pr3629SvdTkXe184knFn5ynJBq7tmPKWd+vsPU2czQOjPu4+Fam3J6wOuP8QPM6KOdTWfi5qG2iAvvvDzgDGMzrPhtC5kvTpILDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPHdS0pK; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385d6e36de7so3197789f8f.0
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 15:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733096782; x=1733701582; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3n2sCT8MkP4WapXVYlrCUZa0gGtNlMO+qY9Q/noMw3M=;
        b=TPHdS0pK7ceudLm1RrIV7JO+zh7Uv0jaqV3feUKsrIPGyg+ukKBujz0wqQn4JSOnWg
         PUQ+j7DTcUfq1CYxa10/KNGS1KjkkdpmTReBtosCTfZhy1NooNpsyDs6z3jcAs3eFSE7
         VnqOD+I9rQtaly4sVOqWGZPZazxVE8SWrLq50LW96vOOIsqPsZPf4eu5eU57fkWUcoIe
         wMCp1rrdvZ4HjeEOYZkTFdXqwVPjlyZ9I/pWMXjTZ+OdEVsaWyC9qkrX/niaQJ854nkq
         jv15CVosVXijdSTNVekmWz7eLV2osx1cq+Y7GxznzfeEd3EGXsHKj7Yq1TM+ZjKITVKI
         fjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733096782; x=1733701582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3n2sCT8MkP4WapXVYlrCUZa0gGtNlMO+qY9Q/noMw3M=;
        b=tbxiwwtTiQvJUpopPL/0qrJCFGr16RJwOHN6EQa6GPTyCM3IHkVuXCmxVoMJqmJSBG
         P/pE4MGyk/m0rpn5l4XpM6K+jHxXmGvRmci1QhmhkOOGa3PsUgtu9QykmXSN9S+qUGFF
         dwKSSV4rxmyToq/KZrx0WMx8eJoN3jA9Q0DNwD1MuuF8sBIkoEyysBGojuGpt5gM36pG
         tZ71bBKkHqqndZouG7WXFG9jJQtcVZIC4fCyGluwSyHGxGr2H7drjVcVuLoK4kS4Pt+t
         srlWAEr4GsUw5NVkv4L57z7wcN4/vQ2BblujJueoX/0ZYBK+Tzi7bF/aoU+ba20w0H8O
         wVag==
X-Forwarded-Encrypted: i=1; AJvYcCUEH7fjHlnUywYAHO6sUfZAlicPpxYJSFhlhf4M5VI0sRSu5El4/Mm9kaXif06mVPPOqpL5ul9635PC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvc6sEnA+g3kCD031AcIxRy33EQD6Mmg3rJqqoKo99NXzNBfuF
	6h02UxPECQ+K17hvF55ShyYqwJC3J61HuEiQQgFV3yZHuCFeD8nY
X-Gm-Gg: ASbGncuO+kETzjrD/b6JWF1odUUynk9BUDdrsAIC+OURUN8p88Bx/you16TUQp+4ncP
	LMrmcGnBLGrDFd+2HXLXQMfB/sC9b0jYBigmPNCzg23gBpQ6Kp/Xr4mBVM7hn25fQM8SGbB1a/5
	CtfKOxJgN3/Tn9GDni5iaa48+JSxZoTJUE3m5u/zKSxuJSMGsnKAAR0/FVeaQg8BONkgL4Csf1o
	ysFhFw6kNT/vIXLII+DyLWThPYPr7370oTQYpyFgSmFneypdwakHnXerxkNMv/rtKoptkcP4rrs
	dJjAh8BZbA==
X-Google-Smtp-Source: AGHT+IEdd5dpHxDU60Rl23qbbsd+Utd3y4mwZDWURtLTMc8M+gvOWR1ABoBD6snXzArhEA0NYOrLJQ==
X-Received: by 2002:a05:6000:705:b0:382:49fe:6f8a with SMTP id ffacd0b85a97d-385c6edd520mr21824979f8f.55.1733096781435;
        Sun, 01 Dec 2024 15:46:21 -0800 (PST)
Received: from cypher.localdomain (213.95.187.81.in-addr.arpa. [81.187.95.213])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-385e2c84d52sm6116014f8f.49.2024.12.01.15.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 15:46:21 -0800 (PST)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
Date: Sun,  1 Dec 2024 23:46:05 +0000
Message-ID: <20241201234613.52322-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <a>
References: <a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The rk356x rng is available on both the rk3566 and rk3568
parts, the IP is all self contained within the SoCs so
it's enabled already by default on rk3568 so let's enable
it in the base rk356x.dtsi so it's enabled consistently
everywhere.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 4 ----
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 1 -
 2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ecaefe208e3e..9dc09db5034d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -397,10 +397,6 @@ power-domain@RK3568_PD_PIPE {
 	};
 };
 
-&rng {
-	status = "okay";
-};
-
 &usb_host0_xhci {
 	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
 	phy-names = "usb2-phy", "usb3-phy";
diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 62be06f3b863..2994cddb3464 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1038,7 +1038,6 @@ rng: rng@fe388000 {
 		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
 		clock-names = "core", "ahb";
 		resets = <&cru SRST_TRNG_NS>;
-		status = "disabled";
 	};
 
 	i2s0_8ch: i2s@fe400000 {
-- 
2.47.1


