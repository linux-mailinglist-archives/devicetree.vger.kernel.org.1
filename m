Return-Path: <devicetree+bounces-51005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 910E387DF3A
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 19:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 859101C20757
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 18:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EEB51C695;
	Sun, 17 Mar 2024 18:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NNBggY1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD4E1CF9A
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 18:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710700897; cv=none; b=eL4hhP0beNOfdM43iorzSQbVxJbEb/EJqYeUmMKk1AuIBrm9pNOa5LA4Gs9Uk18JMaaARgRGhrKd4Zp5/hZXF5gbsebYOjMyNlX/p6igamrc/IUo2LNRGkPP5BmAK660P5pJs+jGRxn/niyGWjBSVbPBVIauQVkxaKZv1sAQYmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710700897; c=relaxed/simple;
	bh=ievPVq366/k7C9FS5///YHG6SSY0yYH53dQltC6lQvk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XUNYZ8d470v4O0O32Zey5EKuZUnj4pRRLHQ0XLsy6bBdmF/26gGG2oWc64bDvsRe2xcOiYS6edGXqMHuScUowGGDg7wAX6ZcQMPPuEgQcHxM99q+wbuwQZSO2zwa7M3SB9IY3IA3B+rROCpMKKANRrfiR5CO6fHW9z7eiXOKH1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NNBggY1n; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5684ea117a3so5221622a12.0
        for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 11:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710700894; x=1711305694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PYFYcfKkxxQvfBESrdXEJ+GtUGfwEGsE7qAGQnRbNLI=;
        b=NNBggY1nSJoIbYySpnlvzA8UehG52sU8DQQaBfMBZroJqGhZWWVemNu4jMAL90FdIQ
         rOTVmh4kfBFZR+slXMCLJ0znJBs6i3ksQPei8yi8wfSjuKBvILhT7NCoH812P/eMY3RB
         V/iaDoXmMjXYeitpF/4Sk/ANQFs6OoD1XH34alXMGSc9YJ0HHZtg6IZebtBbBcFCslFI
         yrpzvZBeBl547MI24Bob1E8GGb1Yg/YyHYFiFGPFp36aR+2pdQHoopeN6y5VirYIav2q
         dZuym6kYPaxieNpbWCdk2kDCgL06idh/zMKzj+Qw/lrRFrXhpc9hWCsxnyzR7FRHv4zX
         kDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710700894; x=1711305694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PYFYcfKkxxQvfBESrdXEJ+GtUGfwEGsE7qAGQnRbNLI=;
        b=jkHnWvz8HN5vQjQXQUkUrnha+UJMvRp8TB5Mh5Oq7C1XkcOYTAC9u05CNJEZZHTJ9t
         ZVIPhSo0zSHFnbsatkt4lNIc2Aw5mAhVkFjVZ7zo4lGYfPneEultLr6Pk9yKSnF6Qnp2
         hrFjSRZ3p1bZOBtQU57XbWsAlZUbVJ9mhHgct5GbkXAEGlLl4ULlwY1lkn5hdQTDUKyi
         9Fy1vpQfiG4p4mvC/3PEmIxh216g0OQ2A2btp3BwDQ5mqdYqJJo5Qn2EgkX9eno7mLTe
         CoylBm4kR5Wvc2Txj7G4XshPU1u1tKmhSlreSzz6VtPGPOm9ZRyxR1BSBLbdg6kR3D10
         yg0A==
X-Forwarded-Encrypted: i=1; AJvYcCUzkmWblQfhqhT0WwDT6+2MfSkWQ+SJ3QPM6j7StXyl2oYcNmEKoPTIinp6iTeA3F4NbiCFC7rga4b3lDrZUJJDJ8O25/K9jJdmdw==
X-Gm-Message-State: AOJu0YzvngHO6KSC+/s+wUm7lXuksFoOJr2afvyaKgARBctEG3Lrag2a
	udDvR0hEKQkk0fKKBObOgToLJq45lDzJQ6uz3lXWsZPyjTPXDk+rDUoddOQNNh4=
X-Google-Smtp-Source: AGHT+IH9orftNoklMxX704C5khR5L8iNpkDOsZkslIk2tejfSQZCUvBfci0Klpf2vOV2tYXErLI+hA==
X-Received: by 2002:a05:6402:c4e:b0:567:9306:5d0b with SMTP id cs14-20020a0564020c4e00b0056793065d0bmr8548673edb.28.1710700894186;
        Sun, 17 Mar 2024 11:41:34 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id p5-20020aa7d305000000b0056a2b87787dsm242877edq.37.2024.03.17.11.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Mar 2024 11:41:33 -0700 (PDT)
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
Subject: [PATCH 1/4] arm64: dts: allwinner: Pine H64: correctly remove reg_gmac_3v3
Date: Sun, 17 Mar 2024 19:41:27 +0100
Message-Id: <20240317184130.157695-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "reg_gmac_3v3" device node in sun50i-h6-pine-h64.dts,
although there is "gmac-3v3" with "reg_gmac_3v3" label, so let's assume
author wanted to remove that node.  Delete node via phandle, not via
full node path, to fix this.

Fixes: f33a91175029 ("arm64: dts: allwinner: add pineh64 model B")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
index b710f1a0f53a..1b6e5595ac6e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
@@ -5,12 +5,12 @@
 
 #include "sun50i-h6-pine-h64.dts"
 
+/delete-node/ &reg_gmac_3v3;
+
 / {
 	model = "Pine H64 model B";
 	compatible = "pine64,pine-h64-model-b", "allwinner,sun50i-h6";
 
-	/delete-node/ reg_gmac_3v3;
-
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
-- 
2.34.1


