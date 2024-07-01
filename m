Return-Path: <devicetree+bounces-82008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1141791E334
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EB18B2649E
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38EFF16CD09;
	Mon,  1 Jul 2024 15:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LhJFBMQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8868D16CD01
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719846227; cv=none; b=EEdOJi7UAtU57pyNtmZXjRfAO/Q7EfTgjrps75RaQnb67b8Uen/QvBJaQEvAvmLk0aNKlLsq02F4FlRZSvzwpvunxFE5pPCItOlMbO0kL0mdk6Lm4F2Ok2ImYqi8NJik5+aZuwaR4qkBVMZseruPXzRfOBmNpSZN89r0jHhv9DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719846227; c=relaxed/simple;
	bh=fl4jBATvdgdGaV1ZbqULNoWxRC4j6jIzdmsJQ0+fws4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qGMQCj5wKBFfN0xL/cwkd0FIDutF9edHYRVpRCyV8lZfnpGTSJo9HxbafncwdVmN/in7lxM4sfgpV38aiy7yv1s94SZAyGm7q/nbax4DHf2eFJ70nkqS+w1l3f+ewzqShcKVTrlo082Z3GqPLRAwJRFMf1J2UiGtkF9pENBNN18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LhJFBMQC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4256788e13bso23194515e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 08:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719846224; x=1720451024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C8qgANQmi/LQZeOHHNHjMJkph5lDqmWWYpZ4j/Qg/ZU=;
        b=LhJFBMQCqk/Cjx8eAMZ5c2flLXZpViF8k3nQdbk/rIR8910WcN6j1GxHpdtPi77gXG
         NNeDYgdfEv0Ooj45YdpiHsL6/8xAfmIXZilsIKRsDJdtwz6G2JEff0zWEe/1TyQ4gyaI
         qmXD9fqZauF/y9RwCSL/lf7NKSkj1F+gx4guNSCDlztgV8cJMgk/z0Y0sI5gRphbK7u4
         5orRJeameM+lqYCYhM4KZA/J+FSMN3/KXgLj4e/NHDm4gLbqmqSQztZRmxM+H+CXQTJz
         H7TkWQydWFH3N3ptMiVogAJhPGyO5mJWGIGh1Pu3+Ttw8f8VQ1b5DO3s+iRbDANZpEPE
         B5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719846224; x=1720451024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8qgANQmi/LQZeOHHNHjMJkph5lDqmWWYpZ4j/Qg/ZU=;
        b=emdp+bFUEwt6dq2n5sf/IibJXP+7I0itc3rDcVWSkoPSpdwfPxwzk6/09Nu4nuyZ3E
         k+Q7y5r4j+LrIuejfvAQWb4RzAwCXEXxZYMAzhb0GukxS9iEcw/mbX5urh3nxuiGYyKr
         GCttlZ4jbihQT/5MNa/yaNMTTWfxiBCroUmVsDG+O9srpb0jq3VmYwCA3ZFlC0mYiCcv
         5KCtB3bQqCT6w+ZGxrHO4zzc3m4L2xoxMu9JlEFce/4bSx9t3k4HQ8+yb9hiWrg/HM8t
         UMxjngjycMAO9ouCc7kQEuOkKA669BpQbVwAfpD9nIn5uOAo7JRb3GFD2/D1UOAuFBGW
         AGCg==
X-Forwarded-Encrypted: i=1; AJvYcCWX0kwjGtCaNSv1ev7XCGZmsWLqKNheVrw1rYbWOmrrhKvVBmxnXcEr0LKjvr57aksJcMTp/FZSYwoQH2XBDQbbUy6MdZfVz0skpQ==
X-Gm-Message-State: AOJu0YxS9rDrODoAZfkhEB86RmgKaqoHWfcXxb+QT51X83Oj/aqZiBrS
	2bB5WviznEH+sf3joIuEub77muUoFAsILJoyiRO4OPmjP4K8gJ3e2cqIle1xS70=
X-Google-Smtp-Source: AGHT+IFRZkNgoZDekXegPzOuzHQz6gz4fGi7msXo22b9Iviq34PkwjGcnmlBJ8mSEPkkTcgnnXPVAQ==
X-Received: by 2002:a05:600c:1616:b0:425:5ec4:c880 with SMTP id 5b1f17b1804b1-4257a075692mr39167735e9.35.1719846223852;
        Mon, 01 Jul 2024 08:03:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af5b91bsm158127635e9.20.2024.07.01.08.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 08:03:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: armada-3720: align GPIO keys node name with bindings
Date: Mon,  1 Jul 2024 17:03:39 +0200
Message-ID: <20240701150340.560243-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect the GPIO key node names to follow certain pattern, see
dtbs_check warnings:

  armada-3720-gl-mv1000.dtb: keys: 'reset' does not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
index 63fbc8352161..07c14bf04b83 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
@@ -41,7 +41,7 @@ vcc_sd_reg1: regulator {
 	keys {
 		compatible = "gpio-keys";
 
-		reset {
+		button-reset {
 			label = "reset";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
-- 
2.43.0


