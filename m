Return-Path: <devicetree+bounces-51006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4D87DF3C
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 19:41:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2DA92814E1
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 18:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2884A1DA4E;
	Sun, 17 Mar 2024 18:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XJV7TbEc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548B41D547
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 18:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710700901; cv=none; b=BC8VDeSrlzl1YfqHQqJiS7FKvamFJHW5f1KqsCsFtXUFWccD9O1DOp15uAFym2VD228NnNKa86xqWz6wUI33BMpz1j6CSLNrsCefJz9s9xUgv9ilxCxsiG4IV9NpoEuAFe0K4RboJ1k23BsCckBK7h1Mj0Mn3XRJ1giURZJRj04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710700901; c=relaxed/simple;
	bh=Wu9Nd161FfGYTW3cdgUBizaowguROAhMQjD+83XddZg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DHu94UwcY/5e9pS6JUU/0BdNixZQmu4lQlepf5I+DMJdmciUp8FWryYMcNhjHMCN/pbNTAdK+36HMbz2QjuDBe2iP/gPL/XACsgeZtf80BqhFVslQuFRg/Sb6fCAO37x0YDOsZ98oTq/NKYNH74EfFRqy4Sj765EvzYmrgVcSV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XJV7TbEc; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-568aa282ccdso3153946a12.3
        for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 11:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710700898; x=1711305698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e14jYuFbqzpNdPgZtffp0K2rsnlvD+gHqPk0zI2q0lU=;
        b=XJV7TbEciERgKG3vqdKhZ3rwlAP8+nB0l8ixxVGeYZUZ/4Q9LPEjcRsT6tdHzpDEud
         ZSRBo38lo/kcKyYb06huyrgOyeNc6rEMjmL2wIaUc6QIfnWoBzO2erD30DODbho1QtWd
         fr+N/npOyoQsfmu7Ht5FMKrracA9UvFA+sQuRn/PtFvgdv/DnU+QSPsalPy2E+UHYkPG
         CpXJ55R4rXZOj9ejwtQco06n/9J5qdiLf87vPi5mUmYu6yRM8KqRMfbK3GJOniYdhzx/
         v3WoQVditbWrcT7uGKOOKVKWF1xzT8qQmXSNfqFhPEURhZayXZOvVuCygfha4DV1DiIf
         boPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710700898; x=1711305698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e14jYuFbqzpNdPgZtffp0K2rsnlvD+gHqPk0zI2q0lU=;
        b=t549sJG0h8fPaRGo/WlvuFG5WC58LNSzQNbQG96cfLYLK49dCDjTVYecGk4FXwNmrM
         4ESH/ruphXuT/h2ybCPr27Ga/Qk8gQg0+48MDcXLqcE+erQaHGgqS/xIyWbCaJkhngSW
         PmBJwAMXJnGgtgiZ1FENZ6bKs0+40ytA33SqXo2p2NyZ58Wt2O4k5khZJP9tRpdepQRA
         Jk216vvFYfQ4KY107rxsmRW7zaWJqVR6AaRrjKkTjfCFSotk+7Zz3h+5Bo03HcofAQOv
         1/GYpVa7DzVV5GbCwLb+gTn4APGlZPuNgLS035mbHvPgOXGjrR5+TSSFqqQLbHKXviWh
         8ksw==
X-Forwarded-Encrypted: i=1; AJvYcCVSIPyW23Zs+00rxq/DWjov3trr6fdj8zvQm40ETJzdLITDdjPkdMmOPnNdhoJ2FHPX0k1ZZyzU56j6S5n5UTmVEH+4EizAAqBhrg==
X-Gm-Message-State: AOJu0YzFNW+uNfuMVO5fF2ji6rCKHPShyQs/Lke8s6PEuklGd+8aXvTf
	f1muHosN21i9g60iEaw8McX1zuK5sEvyRNlQHsrqafrVhKMDZh/HJokVOWEbEnc=
X-Google-Smtp-Source: AGHT+IE+WEYLkK2Xr6I7GOUWRruUBNYvrXmePST78xe3ptjzIPZvGVaFGeYhPe/DfSzq69N+wowqiQ==
X-Received: by 2002:a05:6402:e9f:b0:566:44ca:9f5c with SMTP id h31-20020a0564020e9f00b0056644ca9f5cmr7622436eda.8.1710700897803;
        Sun, 17 Mar 2024 11:41:37 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id p5-20020aa7d305000000b0056a2b87787dsm242877edq.37.2024.03.17.11.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Mar 2024 11:41:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: dts: allwinner: Orange Pi: delete node by phandle
Date: Sun, 17 Mar 2024 19:41:29 +0100
Message-Id: <20240317184130.157695-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240317184130.157695-1-krzysztof.kozlowski@linaro.org>
References: <20240317184130.157695-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Delete node via phandle, not via full node path, to avoid easy mistakes
- if original node name changes, such deletion would be ineffective and
not reported by the dtc as error.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/allwinner/sun8i-h2-plus-orangepi-r1.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-h2-plus-orangepi-r1.dts b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-orangepi-r1.dts
index 3356f4210d45..067a2ecbc0a4 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-h2-plus-orangepi-r1.dts
+++ b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-orangepi-r1.dts
@@ -43,11 +43,12 @@
 /* Orange Pi R1 is based on Orange Pi Zero design */
 #include "sun8i-h2-plus-orangepi-zero.dts"
 
+/delete-node/ &reg_vcc_wifi;
+
 / {
 	model = "Xunlong Orange Pi R1";
 	compatible = "xunlong,orangepi-r1", "allwinner,sun8i-h2-plus";
 
-	/delete-node/ reg_vcc_wifi;
 
 	/*
 	 * Ths pin of this regulator is the same with the Wi-Fi extra
-- 
2.34.1


