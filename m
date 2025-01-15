Return-Path: <devicetree+bounces-138889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C452FA12D7F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E838F165EAC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C407F1D90C9;
	Wed, 15 Jan 2025 21:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xNHa7HdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0415E1D6DB9
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975797; cv=none; b=MLRJe7lLGDXw/4T+B/prVIBBSNzNhEhX6q3B4zE2/EGfUN2szlwKGFrP4jGeylYoO9Smac0+uHJPOU5PntJ7t5+5LypTb3BGvgpFRU4A6cPUXGwAmAMLpTMH/SwfWr9R/BTOpWBHtwCep5ZrQspd4ynG3SdyMAIYP7Sy7J0u8pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975797; c=relaxed/simple;
	bh=8/TAV3pzHBn2nGKjqYcAFg5AfaeHNc7Ya0dCLPeCJiM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nz061s4Z1atrMcXk8WcA0Od2a/NS/TdH/lp2hupcQ6wG3CXidAvEdkNm4ELIrE77tX1mscJdN1FcEkaCdZmfI6YosbMtJ2E4SHbaWbX3q5c85tpfwrMAfrwRDHwk3dwIJXv27K0qIsI5aJVSIk57BlTgzMcKcDL/9b1fNOjKCos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xNHa7HdD; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43616c12d72so216565e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975794; x=1737580594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lzc9qKm8dmXSPcgTXQ3553GN0a3t6/Bk61nGECYnQec=;
        b=xNHa7HdDJhbrIDulpQsdXlcQ0C/XMgTmwX/m1Psd33CglszSyx9LnRpNteYd1ftAu5
         7O/8ilkJ3/tCvlvfYMZ23IcP3dDiCrsQnBdFSR1GhdcpFWStM1ty17HkrMy/90FrPePp
         C+pbsDmMaIrYVR+4kmVBMGd4XNxElUYJNdoa6H8T37hx97IbSe/ULWLlOiIBxdt62JTI
         Hl3ZpE0Rhmbim7VeMf22kuoxY9EbBROhGFexdlD/PL2yPE98RcdPyAaibudMe4DmvA+P
         zM4WfJEQlzHSGN24v+ocvqK+s46UyxlGkKycpk44vqiC703uTumG2r8ShfjqOaKathgG
         jcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975794; x=1737580594;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzc9qKm8dmXSPcgTXQ3553GN0a3t6/Bk61nGECYnQec=;
        b=M6LD+bGQlCXLDfR7N7ePUSGjJncLpFFuKxRyc2wbieEPxN791dBBfQIGB0Y8IRSI0W
         Ctpnj/1lnUejTpQP7PJPaVo3HhLb1L6M9PqYYz6OtuZ299Bbw+6uC5iPuOSBfGG1DOQK
         fUOvvJg/FUEMvl+rBhQtJ0fzAdqx7GSI6JgRKccJSNiq2oxRTnBKsKnaUVfAtUxOjDF8
         hyaTZayAfxKmadIYbB3DN2HNtexHRMNHuDgry9KkwYw6qGuPxrWe/ilxbYK3rNxp7t6p
         FTpxfs63XSvC4ZFJGyQ+YNfYBZpustSBrhc/P6QqsrcdDXh6TGVHREfcYDYqVzaD0Afu
         Jt/A==
X-Forwarded-Encrypted: i=1; AJvYcCV8R5XXfu0MM4uCsp0NYRFTLF2BtRuF75WXr5eTLHzr7mXKU/uSC23XQWgP4Kjlue/WVTRwhkd9VZ10@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/MXWbjwX9PkYES/6boaC8AbUTwKcnvMi3YA6tBy08rJbBD1Hp
	JChYsWq30hjfEVGmfrs8p5q55JGqy0x3HtqJK1JbhiCmyBgUzNA0kXlRVgfX7FQ=
X-Gm-Gg: ASbGnct8UmrEsaGaCM2nt0TD4zNCt4+Cw8pzDjD56V++9hVfR8yKjmGORwHEtK1CPQX
	jN0XOMLvMnHo7UNPexBbaqZRbYjYNetKUk0//T7+pF2wlsVd9C6to1x7qhQr1DkBw2vHkIH0HDA
	Z6J9ldJTAHArB5OkgMYec3I/CGqJTbV3x2sGoU0bvL0NKqzw5EoD9ZPLo/n7yccD4ZRQO7HqTUM
	XVINw4Ra/GeAlvsMVH9Gte2E9qyYOfR/ciin1V/tJWHRlFiDCvCTp1S3c9o9wY8/CFcqfI=
X-Google-Smtp-Source: AGHT+IHAwBkkJQE1j6aBQc+CAv1b8S07mYuvH4FAxmy5cW/IGFYtvGzcPCt82UzHpzg+eM0x/k7Zgw==
X-Received: by 2002:a05:600c:1d07:b0:436:1902:23b5 with SMTP id 5b1f17b1804b1-436e26f4abbmr109899705e9.4.1736975794389;
        Wed, 15 Jan 2025 13:16:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74ace90sm36585405e9.16.2025.01.15.13.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:16:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: st: ste-nomadik: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:16:27 +0100
Message-ID: <20250115211627.193961-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  ste-nomadik-s8815.dtb: mmcsd-gpio: $nodename:0: 'mmcsd-gpio' does not match '^.+-hog(-[0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/ste-nomadik-s8815.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/ste-nomadik-s8815.dts b/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
index c905c2643a12..2f642c88f288 100644
--- a/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
+++ b/arch/arm/boot/dts/st/ste-nomadik-s8815.dts
@@ -23,7 +23,7 @@ aliases {
 
 	gpio3: gpio@101e7000 {
 		/* This hog will bias the MMC/SD card detect line */
-		mmcsd-gpio {
+		mmcsd-hog {
 			gpio-hog;
 			gpios = <16 0x0>;
 			output-low;
-- 
2.43.0


