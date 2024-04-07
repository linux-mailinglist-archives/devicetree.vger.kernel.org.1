Return-Path: <devicetree+bounces-56921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 302E589B06F
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA8241F21869
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E261CAAC;
	Sun,  7 Apr 2024 10:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fb1/aDeu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738A42599
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485743; cv=none; b=DoYgANmDgAwfS5zGrrfqgwpQE2nLVA7raJXg09oYfYNMnvZ/lnJfC9ZfItK/pg3VD4GfsumQD5rqmeimfz2QUT6gsJU0TTHUSz2V81w0S9DWiX3lPuVsjWNeuiN9u6UN2I4nuQ9LmFSVSVppfjEvKvdBwY7pas/8AHr8iVk/PaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485743; c=relaxed/simple;
	bh=lQSPSVetvPUWxqut0QR2546+506zoTsrYKJlCjIjThk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CCrPjF371ENNQFyK3DHsGab7pqlAwVoN2SxeejVj1cfc5rV1eopx9rKW41jkv+QIlEyd/zam80T3B7yD837bXCOI+Rxm5Ts3hEfCrAwsdXCmcc1KVbD0IQUW0cTz14LrC7mUrkhqXyrjvCMtoxxuEzVUp96LzZ5WkjUZklnyfOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fb1/aDeu; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41648df084eso4812245e9.3
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 03:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485740; x=1713090540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taxHWKaZxjJsfBMATKjyb5DNf/BYQaehkgsorzItAt4=;
        b=fb1/aDeuurAQbbxEloCJRGiayQAF2OpXIFkFZRFCqtcLcy5R4h/4K2ru4R7jff2yEb
         fwGYQgYBnTF9p+6+cU3nIChZh6gcOFBlqwfvEyTEVOi8g0F/kpyb9YlqGt++fbVFTqLg
         JVRJoT5nvz0yDLxdfnuXuUx45r3WpvXPwWgz3bxDokjH0x3FbQRbAKvyAEyledOhxTx6
         xwIhG0f6EIYeoPDuDp1zq4bwRNNgBbjpf9X1OUCrJRt9d85XjZBJ/acK/sl7fpfIzRne
         YIdRYDffzXhX6kgtQARaPyM1QLt3/Iox74Fp0sftXjcDnPVvlTRpOxhtYhk0uOyVEZZl
         GUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485740; x=1713090540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=taxHWKaZxjJsfBMATKjyb5DNf/BYQaehkgsorzItAt4=;
        b=HD2SD+6gJmY50ItP6UcLvk5AVlWQMGZ5o05ok/ahqAhbpRZt2UyYrIYF37Ir4zoNis
         hj0l5EkjGshBG4sezTuMG1/N0HBGExGeF4qo0zvMx/AQXnNalRdbz9Pzh/NOkRpqBv1S
         2V/l6DLN9hJXgeK0o/mYWVVH287i8cD2UrGF6+RCbA1ckysS9tbgXaaVWDAcfyuYGlzR
         zonb00eJU0EzGfkcbTlUKSg9ZCOnaa6Qa9QYq5X+gftkf0tDNC/sa+NKacSRo+RNj9ce
         CEOMpZeO+A39Dby7Vh0T88WnmdyYD07fus4Ngob5SERbKF66Kd/AFqdVTAWVA78mJDpQ
         h+wA==
X-Forwarded-Encrypted: i=1; AJvYcCWsfkzE2jDgnMtd5m4vtympFpjIOLGqg8fNmPoDLR2mUI09qDPIi6eLUaDb+njHXg6GJXJm0Fy2w+L5hKkWzn18pDtu/QyCFW9fig==
X-Gm-Message-State: AOJu0YzsBDYcwjzO8lLPsjzBme7fsim1zkHvDBlRIZz8ZvweZC5uwfK1
	WXAb32BsYYpNfdqsQiOyMcr80SHXEWxlgAyaxlc4iJi99WzizUd6WhHa6Qq2niQ=
X-Google-Smtp-Source: AGHT+IE62JsWsWYbi5WeTviefWU7yFrxeoYcfdIRR5xOpUJ3VUr3HoKK/FWNUdVFckfiAQMv2PaGAw==
X-Received: by 2002:a05:600c:5021:b0:416:5508:256e with SMTP id n33-20020a05600c502100b004165508256emr990278wmr.22.1712485739876;
        Sun, 07 Apr 2024 03:28:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:28:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] arm64: dts: rockchip: drop redundant bus-scan-delay-ms in Pinebook
Date: Sun,  7 Apr 2024 12:28:52 +0200
Message-Id: <20240407102854.38672-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "bus-scan-delay-ms" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This fixes
dtbs_check warning:

  rk3399-pinebook-pro.dtb: pcie@f8000000: Unevaluated properties are not allowed ('bus-scan-delay-ms' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 054c6a4d1a45..294eb2de263d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -779,7 +779,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	bus-scan-delay-ms = <1000>;
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
-- 
2.34.1


