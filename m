Return-Path: <devicetree+bounces-170295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D309A9A6D3
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC6A192653D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1BA922D787;
	Thu, 24 Apr 2025 08:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BtRZ9VF6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2124822A4D6
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484467; cv=none; b=VV6zSNgtq+hUeW8M4SVV57uUoOm07T7/LPXbK/EM4i07asqxOU9y5uUpFFSAOV90sE0+42Yh4deAkzmOqBMYrytKi5ee6cBpI1c+uO0oA/M3OjhP4yyHZIWrkp2ECFxd5yfH4BlPF60YtUrRC0eKvYW/tOXRnW6YT2z/sgws8R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484467; c=relaxed/simple;
	bh=/Zg+SvYYhV8lAw93gW64NAyn68dIsXhG9VArVA4Apio=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtbANP4zoGtyqy9aG78i/m6jhbTn8W+JUAFoX8nbNHrg/NfVLk6O0O/+OnWszHS4AsJGvTiWE65/2pGHoCKuwQNCGVWxpzAES74kWqskiBaFy3rOKoseEkEvzp8cA/qPeuCrIUYd1fPNDPqqQYGZIdtIf7dZoW9aY014PZR4FCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BtRZ9VF6; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5f6f3f2af91so16897a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484464; x=1746089264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0naMJuU9gAe+qN+udfyQSJ+gDe9HTRKDpMwSOS1Ylc=;
        b=BtRZ9VF6V0lnt/F1WQsdL0UfWKzbmyIiQAwmUWQL6wfMLHIxClka6+9IKjIwFataZ3
         viodzhQdcCJ0COS4M8byMpYpqmj1wl2opo/RQPLJJn+TDPfYkpqPQmxJQkNesdIccIy/
         hkvqDJZMuhOdJE9djcfHhbhby1lwtdGx5xHyT7MLOQEKgRYd1+M81KmoJRdRLRgn1sL9
         aFLo7blAjmAA4SDfDDsgevu/P3e6adNkjIESpA+at7J/uDyQy2Ex2b6MYWHggyT8dTHZ
         weInL9bovxR4cVFErDrCLYC70xLpf7bw7ZiywCaexu+qxXYBTYa5xtxNv+EJEahzrger
         vvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484464; x=1746089264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0naMJuU9gAe+qN+udfyQSJ+gDe9HTRKDpMwSOS1Ylc=;
        b=GX/1uW8k1aJS8QPvRvxTs6+8rfTf9vSqDsp51pWK7JwNTPQzHT5izjaPrzAa2XdWBm
         TIjy7Pr0colqnNfk8IQJMXEmGBuQxGgpm9ETgI/wUr58dn3kLkVjS1OrAqAHjiIgZO9d
         EQPFboUTBTuIaALSxRzeYdoClkFGV+iTX5mLke2HckEcTNEd6SZfh+V1t+4SSLpThtOM
         KRlwe7fa5KEzluia+AT5VIZ9iJu1XlZskn0A5euSr7TiFmK3zgeLOV6MJST4YOBrRS4y
         7tZ5yFGkDtsjU9nOcjpSd0/nZa8WnCl6ax90zLFV3DOSd3aI7S8aYrD3c3PDTbJlWKhv
         Cj5w==
X-Forwarded-Encrypted: i=1; AJvYcCWVzDcvB/5mH6VLaifqFAZsCtT/+bflgv1Y4YvJuzPgWMl8WN74ZUvOcTIZTZrTW58eZA3tcWPUZrTA@vger.kernel.org
X-Gm-Message-State: AOJu0YxQa4jp58TGEgseELnBlgUneAdcoEjAyS7nz67ByL4USY1WfG4+
	Zx3EPIgZsDcrjhxpX9u4ajvRnmc0pWvV2PN34+DHQpHgS9fg4fKlk7ksCHNljaY=
X-Gm-Gg: ASbGncsgS3FS/AcdpiC60ZY/L7SFyuLnAdTfo50uI+2Sc99xVBtweg7lQoXE0/STIcP
	73eDV315BgpyzPSYD71V9CijIKPbpj7gSY0TJKsGYwtw9Xa4EZR4TjsGgJOGAx23OulkNmIr0Fd
	hUeq5XLattQErPj5Yh1cp4PSRuY/if9vio8mODqjueEC7u+5JlNoP3KbGhtqaaUWYvHuzynvEUZ
	EUAXSlMckwLI8NAjdZzxuiBoJZN904z2hTLsNSr0KbGZgtDOAHJJb0DS52crKArCTKw2b/1ldSq
	FUQILEe78q+XyCMdhSue9Q6Ie8QpUwIle1su4JevgMjWYr90Yw==
X-Google-Smtp-Source: AGHT+IEqtIDEk3bgbvlxAZRptnb7L3v+POmbybrom8KtYglKCBdm5DoZlFBkTfsuHhG8/g5OHyFgfg==
X-Received: by 2002:a17:907:3f0f:b0:acb:6464:5f9f with SMTP id a640c23a62f3a-ace57220445mr58086466b.3.1745484464256;
        Thu, 24 Apr 2025 01:47:44 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59830ff3sm71378866b.7.2025.04.24.01.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: allwinner: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:37 +0200
Message-ID: <20250424084737.105215-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250424084737.105215-1-krzysztof.kozlowski@linaro.org>
References: <20250424084737.105215-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  sun8i-h3-nanopi-neo-air.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/allwinner/sun8i-h3-nanopi-neo-air.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-h3-nanopi-neo-air.dts b/arch/arm/boot/dts/allwinner/sun8i-h3-nanopi-neo-air.dts
index 6d85370e04f1..9a2742363cd0 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-h3-nanopi-neo-air.dts
+++ b/arch/arm/boot/dts/allwinner/sun8i-h3-nanopi-neo-air.dts
@@ -94,7 +94,7 @@ &mmc1 {
 	non-removable;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&pio>;
-- 
2.45.2


