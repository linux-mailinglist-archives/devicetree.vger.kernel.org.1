Return-Path: <devicetree+bounces-74900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D8F904F29
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 225011F22265
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49EB16D9D0;
	Wed, 12 Jun 2024 09:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qQRPbVTt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24B416D9CA
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184269; cv=none; b=I1g8G0wMote27LqNP+OR4DcG37H6oWD2t7DgXR5/zlWEB3fJE6dosP+UOWU75cs0ZK4o59gVfv/JY19F8xrGt6DRf2H9BP7cgxedYq3kXIlSV0sWAvQo7S/I8ymta1AI+O9bmgCJ2ziSsNKt5gaT3AH/D22aV9qAeH8J3brhdkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184269; c=relaxed/simple;
	bh=F5iIiWNQaxmakp3x8MsUA88qNRzfzIm/B4zfOmd6TmI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jh5hBkCgQzeSBRXH8B2HeSFMkqLpYjmT9fomAhrrV90yro+QtucgJI/GcXZZF3lyfBDAdso0e6Sg1stua9fkWKjmGx6qnqlHXdJ6+n9V1WeADmvoPrbapJw+eJxGznkeNWQpp+5YDRQ5ee5thNdE1k4blxmygurpkf6D2+Aqlkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qQRPbVTt; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52bc335e49aso2702571e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718184266; x=1718789066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gTijVW/c0PheiETrLzEjcgWKlXvandGPfKwnTsYZzSY=;
        b=qQRPbVTtutMDZqpgZ0Cvtw1XfDbR6n++7JyJH55s9FSNFM/K+64HrOtR9YD5XSnG3H
         c3wvWBaqPgSqe8Ib27+toobXDPm9WBybUtH9Jg61QOh7BfQ4sXWWhbanaGLkXjs+FJX/
         i5NYOouA6ZSc4zKothaK3ex9WtvkuH4EkAsO5vC7WddxYVNue78IY8Vg7Ipsw0RBn7t8
         HQwKW1gh6Tzk5Lq7U5cZClJR/yJiUvV2PBEtH8oO0Pc9wDFd2Nk5GvyTsnIcshFgNlUk
         /r+VzyFt3Iretm3lscAxgBho+a9dHpLB5M0EOa5hWAwN3sSIOmXbtEyp/wiAGc3vhMNr
         7BbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184266; x=1718789066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gTijVW/c0PheiETrLzEjcgWKlXvandGPfKwnTsYZzSY=;
        b=A5dn+TyPV3XwjG8r7Q/4YTI9j7cki7U4MXBvUDPJYPyjnL3luNjaFrFu9qxaC68Uhw
         yCvAyq9LPhXhVB5ceO/DtTiM9oJ1JlMieOOR0o7JQ/5SDXAAc7Nm7RJiarRoopCvNmkz
         3HA89sFf68CAIvRO4kL9FRoRGfc1tn4X3KQ3Nlo1jOuP1zkRWqPAlby4UE3jho2rXsbi
         LB7eocOw5/Uu/XedbTdk34tywRem3G1mv/0rlQ2duFh6XPstVCvI1g5ZMr4fBvUrfUYv
         nbdnO9EeAbQydxPUVv7N5VNUh/zlWhkc8jNACR+IupkjGKtS1UB0QPvTeRidTgBY9H0h
         tKmg==
X-Forwarded-Encrypted: i=1; AJvYcCVbIpUPZbf6LG894JxIPHksS4e8raW0tNxyyUkN2zihcVHgm9Sb9S90Thc+k1OTqrlPyRg5a9KFcjlg9Q8odJiIX3YZa+Qu5oisYQ==
X-Gm-Message-State: AOJu0YwPuNHx+JRemW1dXAx3Fh6HGfkjCCC3tGSyENsyQu4hxzYKDvTY
	j9a/nuzUGu4xKkygaPIuxM7p6TeGDxnHc4laxzX44JiGGr3hUAbjJsJfAUzBoeU=
X-Google-Smtp-Source: AGHT+IFqaCEnIiWKhTWBfjOSEjjiN9fP7XZI9ln5o7b24/sAj4EADCaVdyrAYctm8l1H4IcbPLFHgg==
X-Received: by 2002:a05:6512:1245:b0:52c:95d1:87ae with SMTP id 2adb3069b0e04-52c9a3b7bffmr1099334e87.12.1718184265932;
        Wed, 12 Jun 2024 02:24:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c82faf1b7sm1623806e87.130.2024.06.12.02.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:24:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: mediatek: mt8365: drop incorrect power-domain-cells
Date: Wed, 12 Jun 2024 11:24:19 +0200
Message-ID: <20240612092421.52917-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The top SCPSYS node is not a power domain provider.  It's child
"power-controller" is instead.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Reverse patches.
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 24581f7410aa..455c2ae3b30a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -302,7 +302,6 @@ syscfg_pctl: syscfg-pctl@10005000 {
 		scpsys: syscon@10006000 {
 			compatible = "mediatek,mt8365-syscfg", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
-			#power-domain-cells = <1>;
 
 			/* System Power Manager */
 			spm: power-controller {
-- 
2.43.0


