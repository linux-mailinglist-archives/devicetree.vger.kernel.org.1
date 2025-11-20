Return-Path: <devicetree+bounces-240512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CE98FC723F1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id A289229667
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228E9301005;
	Thu, 20 Nov 2025 05:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hWU/OS1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1662FF654
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616372; cv=none; b=nwU+ObnyTHH5imvll5/w8GGVYxxuxPkUX2fJiIhDqtuUxxzf+eICzyctiL+pyjMJAGuFwIeAowHnl5JE2Jq6VCXBs7zlOhh72KvJxtKRDhboPv11AjwP2kSIAnUy1Gd0VKN3ypfVnLhWSJjdLru/LEWUq4G4t+gRTDT0w0y5Tuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616372; c=relaxed/simple;
	bh=040YJWLGr4Ks08VhoS2kkw/5EcGAtC35AnEYoaywOPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X3oj+MYEmgdC1hpJVpa6ha4hvl6xh/JWVg1cEUt36VlzVw0z/dNirBKojwgDr76HMb37CoEBVjWOjo1tqwzk/+OTWATVb0w/HGtc7cCThjKM0InPKN2DUVYaA/5tyPAWCh/Qf3Ct8eLItwXFuAZ6S/hvzd9kf8aznlwPDvk8Boc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hWU/OS1M; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29558061c68so7028515ad.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763616370; x=1764221170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GU/h/mkFSU1P3uYOGjiw2k7fKpuyOTI5NTYh7ZnlqF4=;
        b=hWU/OS1MgYf93rbJ4LyY35FdedMq8xnXBK3yTLbpocF5wllFXeRYPqJWJp9uyUyzA6
         8exbFqSZuKJJ9rdREWWsZ/PCS9kIYtk9210N/adVrXZQLAPk01JbatquPg6pB2fgIU9i
         S3jWK/LMfPxC2cmuAN/ALVi3WpKf4jnZRmHWAsO9ikhjJGeobR/Yi9P+kTNKqwtZ8nvi
         yKUbcu5rpUzUI8nIExqhp99kPdvAo04VCa6w7I2nFyONP/YBQiq9w68eMas0E1fuv7pV
         1+pA8QN1byboffqkoeNkHT1OZ1P5cNU++vLZn2dKDobIMXQ0p1Iog3Po4tjvubFfWOXd
         N21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763616370; x=1764221170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GU/h/mkFSU1P3uYOGjiw2k7fKpuyOTI5NTYh7ZnlqF4=;
        b=bOr/pDpdrbIF8sDEuFnZ+tG6Ewa9RcUbU2bD5aoQt9Tb0VFM2O037me9K6I9ULf+Uf
         tg3cUKm9ot53HSjHg02ODQokpzwkxTKzmudgzlleWaVKfjIxmb75Ac/4B6bHJ6z5bqXa
         uxUN83NkQavWQdI6B1gvdldllDsHAoK23OXzxwv6fKkFIMyMCUAvSKjNFRe7f8dWq0IZ
         zPyusbEU0SbKYA3zISEkbZcMOPpKNTdk5qz82SW9/b0xw3/NEhWs2CiaNzZ7+t/xXorG
         847AJYtijGnmbTrRLVL+KGu154edekAxOVtoIdmQ+u+U8dG+hZ0+AXLalN0aSyEXrG83
         t9xw==
X-Gm-Message-State: AOJu0YyWlftrwGOEmNSJAOpsiGMV3Dot0tCepePlQ9RttCT7/F0P+Ro0
	DOPv24cNsilEdTcngs5avXyebyktXwD5hyQwqKMHhk6zWrFsszGyo9cw
X-Gm-Gg: ASbGncsOIrJ49pb5Z48Jnfrl5lC6uYyrosSlB1a0VukNqb5e5x/cg90S223fE0v0krq
	aZduqfyqFk901IjotQ3zYbV5aIAVSuK16tXZGKuwozd4NEnmYPX2qfAXov2nr6f1i8LxZRwFOOs
	w0lObwyBIzTVyTfKlDmWUjTjLUbrZNltR+axsSHiszPVmmQABcb+fBTsiI1TGP2GxLp0FTxEa3N
	6O5lD+Y2DOkX914sQBMKmXJ2HKfMxDSjtdk/gv61wc6JL6MR2xO3AnY5X+TFxDqfaXWQj6+JFNo
	Q4upHUNqG1T25R8eiGFErCGarzLozYsNUa9KutD+/pe4ooLM1rriTI04A1JJzXUpJcFIzVLsxIH
	zVqTu39gygkNQLhKyqot8CBaSFgI7g4PNjXgKW+agaFoq2hzH8FD1UTAiELhHo72GfOoyPH0DNS
	vm3r0+mnCHZuT8tDGFf0Rq3E3rr0/UYYLM4CcZ6ff26R3U3yxiqT3RmPAA3Bj5lfPEli5wDIZQM
	n/cveyR5Kh7WpqpnFDhV2GKkRHNLZToY6CTAUuuhP91Yw3fE5bdl4k6S4scBlbmAR2OFxHfOupv
	18JcZcHNBFmfiUlTR+hvtQ==
X-Google-Smtp-Source: AGHT+IH1kC4FzZhZJC7qjzvkCN9yK8lkB75RjjTIxK4P6hUplCLnQeTxkuiC3gLGbNI+oIn9tu1MVw==
X-Received: by 2002:a17:90b:56cf:b0:32e:389b:8762 with SMTP id 98e67ed59e1d1-3472a60ffbfmr998453a91.0.1763616369935;
        Wed, 19 Nov 2025 21:26:09 -0800 (PST)
Received: from 2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net (2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net. [2001:b400:e301:38bf:be0d:b72c:6bec:2812])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm1221342a91.9.2025.11.19.21.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:26:09 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Thu, 20 Nov 2025 13:25:59 +0800
Subject: [PATCH v2 2/4] ARM: dts: aspeed: yosemite5: Update sensor
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-yv5_revise_dts-v2-2-4d7de701c5be@gmail.com>
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
In-Reply-To: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763616361; l=1118;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=040YJWLGr4Ks08VhoS2kkw/5EcGAtC35AnEYoaywOPs=;
 b=hSIrVRC/ywFomV3U56i0mrilyeENlg6RI8jm5+PWTkra48id9dVtyFQXO0xS8uIlRo9Ww5heq
 ye79i3P0uAhAfyYmcI0pBcQJraUqv9/SKq8pIZWp+zrYY4B/M3rWicy
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Remove sensors 10-0040 and 10-0045 to align with the latest
hardware design changes.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e64571631b7f6944f26213 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -674,20 +674,6 @@ gpio-expander@22 {
 			"PWRGD_P3V3_AUX","ALERT_TEMP";
 	};
 
-	power-sensor@40 {
-		compatible = "ti,ina233";
-		reg = <0x40>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
-	power-sensor@45 {
-		compatible = "ti,ina233";
-		reg = <0x45>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
 	adc@48 {
 		compatible = "ti,ads7830";
 		reg = <0x48>;

-- 
2.51.2


