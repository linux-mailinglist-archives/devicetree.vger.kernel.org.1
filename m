Return-Path: <devicetree+bounces-75057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F239054ED
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 16:18:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF68D1F21C1E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 14:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62CE217DE1E;
	Wed, 12 Jun 2024 14:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UP2RRHXv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F25413C802
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 14:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718201868; cv=none; b=aSRIXOh3Ql0ByF0/a3WPM9TC6gyMeKuRLnHMuX/iPh7ehgZFpHL8Z0SLWUBBm2GRz0ADmZ8tRZjXpGkL/QZgnMfIPoVEiFtwiehka1W6NJ/q1ZOX1rBup2asltZVHv7goU62oR+bHpQCwKyaLN77fdILYUlT1WONN5s1vEtw+Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718201868; c=relaxed/simple;
	bh=ATkFqYSEubTLKl2ilLKSe/ndq4Xwg9dhvcKMyEPYaEU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y2CXs6JlfzTXlztv1qzsfkKB92l98HiPAna1oWqwD0PGRlu5/cx7HodbKFlrlNBoqsBzYc3QOS9zptfz4aoZZaeyi7zI1Qb5uyl7cJSbkRvEwUj2lHmtv/I/OLc2lvfDtmWxlyscw1mlXT2DSYCYk69RrvRqy2+hmADbkF22XsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UP2RRHXv; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6efae34c83so540865266b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 07:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718201865; x=1718806665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ra/aultLLqSMqirFger1rlz2sqaFfvVtkgbMOB08yYg=;
        b=UP2RRHXvD+iuC5zlCx2wDECZEpodQXKVAAAt+XeaOTkWVtIfbrJbBsTSmws8myKCEI
         sITJxaaQqXHqp1OdbrQg/eQIY6R+o3dw6pkYYCFszvSRkk4dxT4a1C5+nzXkbTmplJ5/
         J4LPKxiTu7q2jnjEu8DkOavps3qh4Z4Bs/Z/UHDzCSfdIfOTSG6xTvIntRlBM1P7lCZx
         MEigM2TtQ4WI6DUevoeh/P8J3OVSpjwjXDIKGkD7MxiUMATw8F39qP4tRCj80YYLU3Qz
         r3aOkriIkoXA7v9FcHgKfSi+kW8p0YoM5lra6/NQQ20LYTzJGc01937YmCGTRkX/hUzF
         EWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718201865; x=1718806665;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ra/aultLLqSMqirFger1rlz2sqaFfvVtkgbMOB08yYg=;
        b=ZG7PxErZfksllQU++hfIHNAAB1kNQUEVSAka8Bm40KDXkBTT6yhpD93ame6OA9mFDe
         BcTbYADUy16ZyLJt8szPDeEcTdJBWOSIMDVpHTZJ9G05wGvd1opYC8f+QYlE9KsXZwxK
         iSK/eyekw9JrkmJkmw26aIE9oTFGzFR+f6XvOaG++6AzX6LVqexd3kc3JrWeIKB/bTw4
         woW9oSQgxmXDamysi+7oUmeKJFsBXKXMbAIOXeR2q5U5bX+ijyy+TFJoT7kqSWcK8P+c
         Xp+CrKnLAfOICswdIGeBT6wDyJkNAJGGiwXYsm4OvFtWW4s3bw8/atWH0Jkzcuh7/aqx
         at4g==
X-Forwarded-Encrypted: i=1; AJvYcCUdgwQwbp+ehOlVnctsdhTCKEb5t1Q8lN79Rca20JOqCCGvGtBTFnJNuEl51QtDtDp0l10Ct+YYDQOCCFgCQMZVINPWldqPfXfqkg==
X-Gm-Message-State: AOJu0YyTQgbLWgEvJrb4OlI51+2TxQ60bHjFUo70fMpkj53HF0a/VGry
	fKwHDTQvgPBQuF3LkSRh44J11BGTto9QYEnC77/UnDjKNmvBn6LyW1bWQUJlDEg=
X-Google-Smtp-Source: AGHT+IE9mBpInZsubvG3jOv3n1DIXRtg2c6jpbSypFQqfzQG15LBL3RZwuI1ajhdr9B0yz1D9TroLw==
X-Received: by 2002:a17:906:12d6:b0:a6f:1378:1325 with SMTP id a640c23a62f3a-a6f47d1e38amr128483566b.9.1718201864711;
        Wed, 12 Jun 2024 07:17:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f11e88ccbsm517639466b.133.2024.06.12.07.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 07:17:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Daniel Tang <dt.tangr@gmail.com>,
	Andrew Davis <afd@ti.com>
Subject: [PATCH] MAINTAINERS: ARM: nspire: add Krzysztof Kozlowski as maintainer
Date: Wed, 12 Jun 2024 16:17:40 +0200
Message-ID: <20240612141740.8470-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Apparently there was never a maintainers entry for the ARM Texas
Instruments Nspire SoC, thus patches end up nowhere.  Add such entry,
because even if platform is orphaned and on its way out of the kernel,
it is nice to take patches if someone sends something.

I do not plan to actively support/maintain Nspire platform but I can
take odd fixes now and then.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Andrew Davis <afd@ti.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 647233a62f50..4b262cb060b7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3048,6 +3048,15 @@ F:	Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
 F:	arch/arm64/boot/dts/ti/Makefile
 F:	arch/arm64/boot/dts/ti/k3-*
 
+ARM/TEXAS INSTRUMENTS NSPIRE ARCHITECTURE
+M:	Krzysztof Kozlowski <krzk@kernel.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Odd Fixes
+F:	Documentation/devicetree/bindings/*/*/ti,nspire*
+F:	Documentation/devicetree/bindings/*/ti,nspire*
+F:	Documentation/devicetree/bindings/arm/ti/nspire.yaml
+F:	arch/arm/boot/dts/nspire/
+
 ARM/TOSHIBA VISCONTI ARCHITECTURE
 M:	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


