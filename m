Return-Path: <devicetree+bounces-74902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C146904F2E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00F651F27111
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A7916DED4;
	Wed, 12 Jun 2024 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JYeHG7YJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EFB16DEB8
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184273; cv=none; b=ZijvXWyzr8DKSeqr5ol8Z/EbcU/X1Hfbh/ky9IPK5FNb//SP/kniPTps1eI77gEMnMqX15gAfYftR5sH7+kGtY90DrHPNufYcHqyGPc41urkQ6asrDv++DnwXWE5UH6wqcEAsT/ff1qM7R3etMMLUsbOzvDtUBz84DPZWr7M3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184273; c=relaxed/simple;
	bh=/YmAORbO3+x2lQ89cPlqc8Ys60h2WO17kQvYvC6EUd0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IDkU0/tRshpnaRMzsuEM7/toEmXxhOvSzbGSaTuuZBA0e2MB+4HOn4yUdCSQq1brv1uoV6m33HJn0y3wNS5yqvXFooQ6/1s99YOqkT6fPpB26av8PwuFglrOakmulE0TopXuYLF68DbCdLLq1EvZVfWeJu9E7QH5bzqcnAnE0JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JYeHG7YJ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52c8ddc2b29so2529971e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718184270; x=1718789070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DfH51kBtOmvN/SbHgLsWaCNr0Bu/Fg6um6oRQlR7oHY=;
        b=JYeHG7YJjxA9XXiVI5+d7Dgip5bHXF+8A3Lt4FtmfAHSyltDKSkvOFmXmAAKBcUE4Y
         EKUPCYAAEPPlnX6SRr0wAJKL7YVPeeQs2/Z2fCm6FEyug85WFBKC6a84OGoT9nLRxxoy
         90IDi3G7tUSN3PgVXpAVQMOEEtM73HgE+qGkHxx2xRjHS4yfUSTamz8cCiPuOvQPxJSS
         s0GqhLbZa4WD9B7PVBuSAPGsKuTJYHjrph74YuE/y9zdf7q4gcGcdpO7k3yYtXEsdA1z
         HLTtxx11Y6S5OG3SwuYIDFYSoi3hazp2/rfzEk402EiOwb038bMPKMQSye+azsb2VUVN
         0NmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184270; x=1718789070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DfH51kBtOmvN/SbHgLsWaCNr0Bu/Fg6um6oRQlR7oHY=;
        b=KWVdUibG4fGShT8uzaRwSb1lF7b6rWzAbkXc9DXDCvfPgp8YwadBeF08BeEbKMkGNn
         Vub8Tv71C4DoSMBHSwpQj69jGCt8C1UBR4rt+B1trBpSg+D8Qb+S40c4HYJJnweNGBNp
         6Z20Rtj95uxh5mu/SE+zQslfC4f2N8IAZU80vb3IUQWMqPku4vWuq8+XrrqmgBbYyVXs
         LfEIaJr+k/JtLQzr5aYTw6qV/RRtOjl6kAHd7p6KQdfYWbE4HAtxWqgRzurX0rvmnX/y
         9aYW1qxlvGD+pC0XF2qARrsUG9mtGvF2A6WQGECP0kC6p5mqHx5YlMpTr1FlF/ZwUhqs
         n2ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXl2HeQwF9kgkQztbuP5zmng8dWO0Yt69ArmmMae+0k32376bxJOhXYR++XXdqjPCB3mSlL7VBTr6n7yiDSOkKGD8V6skYV4AA80g==
X-Gm-Message-State: AOJu0Yyn+s3GvtIjcZj5bKn/ubWh9mT395yCiZrDNHxkPFWe2A5vMwOW
	65wlAjdDlVTq/oSXkQcy0v133lkC5B+wc/BytgPpHT18Wi3d/vwsu85A21k1wq+qRtc4Z+nDbUD
	q
X-Google-Smtp-Source: AGHT+IEF/QjW1JAYelI47//kT/YeUyUvmkw2ZBd8t575ZCaGqY/UKt62km1JBl3qUL4DuZNV4IphVA==
X-Received: by 2002:ac2:4341:0:b0:52c:8a15:3c01 with SMTP id 2adb3069b0e04-52c9a3dfab4mr923248e87.40.1718184269730;
        Wed, 12 Jun 2024 02:24:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c82faf1b7sm1623806e87.130.2024.06.12.02.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:24:29 -0700 (PDT)
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
Subject: [PATCH v2 3/3] arm64: dts: mediatek: mt8173-elm: drop PMIC's syscon node
Date: Wed, 12 Jun 2024 11:24:21 +0200
Message-ID: <20240612092421.52917-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612092421.52917-1-krzysztof.kozlowski@linaro.org>
References: <20240612092421.52917-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to AngeloGioacchino Del Regno, the syscon node in PMIC is
neither needed nor used.  It looks like a solution to expose some of the
registers of PMIC.

Drop it to solve also incorrect number of entries in the "reg" property
and fix dtbs_check warning:

  mt8173-elm.dtb: syscon@c000: reg: [[0, 49152], [0, 264]] is too long

Link: https://lore.kernel.org/all/671a4b1e-3d95-438c-beae-d967e0ad1c77@collabora.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Drop the node as suggested.
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 6d962d437e02..b4d85147b77b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1134,12 +1134,6 @@ mt6397_vibr_reg: ldo_vibr {
 		rtc: mt6397rtc {
 			compatible = "mediatek,mt6397-rtc";
 		};
-
-		syscfg_pctl_pmic: syscon@c000 {
-			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
-				     "syscon";
-			reg = <0 0x0000c000 0 0x0108>;
-		};
 	};
 };
 
-- 
2.43.0


