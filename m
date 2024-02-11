Return-Path: <devicetree+bounces-40547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D49850B9F
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 22:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2BDA1F220B2
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDC15F47C;
	Sun, 11 Feb 2024 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="riLc/xJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C4B5DF2E
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 21:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686673; cv=none; b=IEqRG89+gAJ3VnzpmhLDesOgajrQLU+2vkD/WnX25mR9RnO5geKhMoBxlwy0J2atExJo0hmtFk+az+8wLhRtKNB9ZJxAqXsY4L6pPobIFgfoaE/Mf1HKYyEd0uy3Gxt07yb0634BQYj9UwD1656OIyLCUz6S29fUvy4kEQ7e4og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686673; c=relaxed/simple;
	bh=5yCQpSylTBsm546F1FFrTZFzNZ62MUbS85pg/sfQNV4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U5CE1oql++Vw1bxhcMGUr/S8etPn7b7M9bYfxv+HXOJDb3py7DWcPu5uuUlySSQHeQKwjKPajFfX9fX7InfPgYeqF1q49KnjIP89IHowrjOyyDrKsHd9+xxIHCgDwNUhfARwYlvxr1RhHrIgc7JQKUNiIcmFMOYKlT0mhiGBnbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=riLc/xJv; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d0e2adfeefso21935611fa.2
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 13:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707686670; x=1708291470; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJry73lHEiv/1DZkEFEfQ7waEDf73+/ng+jL2FuD14Y=;
        b=riLc/xJv2XNuIP875hfsGOHAludG5XWUjAMiS2hLwrEElzK3C+XnTTT+7QTNliL25S
         9uO1J/Auvd0+XfBIzJdmFDM65cKzlFyD/2p55qDE1xPYwT91NC6UOb/4Dl6Dkb/WBtKQ
         Sci+Oz4wlsJJHsLTwM3pcBuUWcm2RHN9E/tezkx3OnCjqm7sTYPOlPof7ERCQDz2Gbnq
         GAo6JnacaComPBLk8XFr35qH3BgrNFcHYdGJGWeJp+3TpsrMWYzARIGNaG+gKLnsjFZp
         YGnR+kz/EYC9M1NBN4iUns5w6kU/hsUPJWOZ1DzUJJDlTVrM+FBImqSCT1/rLYv/F84K
         gB+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707686670; x=1708291470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJry73lHEiv/1DZkEFEfQ7waEDf73+/ng+jL2FuD14Y=;
        b=JNSULeo5uQD2ggDhgdPBPRg8EsfNFzTzuw9uJDAYF6Ev13Tjb0Zu6X43sSfiAjqmKi
         mw/DImU8DCtlUsGtTeT7tAGhNMYSy61vErvBvNoQpeBamZe2kRHXU0J0cCrNbe4XhEI5
         DGaUyYTdDHc34HBehQrWG99Um6ypHYPhPQZOxQJWLSb0eSocQlZmvqonT3mPIQgPQqr1
         zYkBQVsos2ILQZzCKs4sMG+MBQeu6mkntAZGrMNojcUR0qfylnbRcM8EOA2gDwAmYkE5
         7onMw64s/TzOKu/3xDmGlcqq+Tv9oaou9/c51IDwl04v/xsIklow9E4By4uJJR+aK28B
         EqGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqGAvet16NrSeYNY1DdM347ca+BYV6r18ei2+PzcEAMZfuM7JLzy28Rl9McCgGRbZOtaGaPfzWWRZ1z3XUfsKTvRw+m3LJIFVk9g==
X-Gm-Message-State: AOJu0Ywjwv8xWFhEK5UsGSCpgCzbohfPX5EqGJJtT+CTEISLCU/WM4Xj
	c/e0IPsTLPHMSo12o2FIdM88Z34YXRI8rtVXakHOVuWpCSq1t8lG2FSkbqcERqH/3jVZcvlv51o
	+
X-Google-Smtp-Source: AGHT+IEWIKXrYro6RR8iYM/7+XnMAstKzlGkHjgisMhkla1PWroZK9ZFhG5G+YTib/mp0+HSHmZVPA==
X-Received: by 2002:ac2:59c1:0:b0:511:8dde:55d8 with SMTP id x1-20020ac259c1000000b005118dde55d8mr737534lfn.34.1707686669585;
        Sun, 11 Feb 2024 13:24:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBuT0s2kQFRxD4c1mcGWu6HKzXuVrw9gML+yLRqRRBFn/U52Oa/3NLIOyHRBGVJE8RvW2ebkufe8XEdlCCCGm6dojYTK/C5yegGtRsAruVzskM6S4AZJerH8+0v+EuxsYuhISfa1JQ3ZTDI0i4uAgCe57wodxBoLc+7u7NokBrSCzaq9PjIIIlmkrxxTTCUP+tNS4oTjFx/WyXRW8uIUQNCfR3yVIy/EI8kol0DtYQlg==
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id h8-20020a056512220800b005115edd71c9sm623684lfu.165.2024.02.11.13.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 13:24:28 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 11 Feb 2024 22:24:23 +0100
Subject: [PATCH 1/4] ARM: dts: gemini: Fix switch node names in the DIR-685
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240211-gemini-dts-v1-1-6c09adeb4c2e@linaro.org>
References: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
In-Reply-To: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

The formally correct node names have "ethernet-*" prefix on
switch, ports, port and phy, fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
index 396149664297..30c931415680 100644
--- a/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
@@ -187,7 +187,7 @@ touchkeys@26 {
 	};
 
 	/* This is a RealTek RTL8366RB switch and PHY using SMI over GPIO */
-	switch {
+	ethernet-switch {
 		compatible = "realtek,rtl8366rb";
 		/* 22 = MDIO (has input reads), 21 = MDC (clock, output only) */
 		mdc-gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
@@ -204,36 +204,36 @@ switch_intc: interrupt-controller {
 			#interrupt-cells = <1>;
 		};
 
-		ports {
+		ethernet-ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			port@0 {
+			ethernet-port@0 {
 				reg = <0>;
 				label = "lan0";
 				phy-handle = <&phy0>;
 			};
-			port@1 {
+			ethernet-port@1 {
 				reg = <1>;
 				label = "lan1";
 				phy-handle = <&phy1>;
 			};
-			port@2 {
+			ethernet-port@2 {
 				reg = <2>;
 				label = "lan2";
 				phy-handle = <&phy2>;
 			};
-			port@3 {
+			ethernet-port@3 {
 				reg = <3>;
 				label = "lan3";
 				phy-handle = <&phy3>;
 			};
-			port@4 {
+			ethernet-port@4 {
 				reg = <4>;
 				label = "wan";
 				phy-handle = <&phy4>;
 			};
-			rtl8366rb_cpu_port: port@5 {
+			rtl8366rb_cpu_port: ethernet-port@5 {
 				reg = <5>;
 				label = "cpu";
 				ethernet = <&gmac0>;
@@ -252,27 +252,27 @@ mdio {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			phy0: phy@0 {
+			phy0: ethernet-phy@0 {
 				reg = <0>;
 				interrupt-parent = <&switch_intc>;
 				interrupts = <0>;
 			};
-			phy1: phy@1 {
+			phy1: ethernet-phy@1 {
 				reg = <1>;
 				interrupt-parent = <&switch_intc>;
 				interrupts = <1>;
 			};
-			phy2: phy@2 {
+			phy2: ethernet-phy@2 {
 				reg = <2>;
 				interrupt-parent = <&switch_intc>;
 				interrupts = <2>;
 			};
-			phy3: phy@3 {
+			phy3: ethernet-phy@3 {
 				reg = <3>;
 				interrupt-parent = <&switch_intc>;
 				interrupts = <3>;
 			};
-			phy4: phy@4 {
+			phy4: ethernet-phy@4 {
 				reg = <4>;
 				interrupt-parent = <&switch_intc>;
 				interrupts = <12>;

-- 
2.34.1


