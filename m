Return-Path: <devicetree+bounces-66007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7088C0E7F
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:50:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 060F5281BDA
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9778614C587;
	Thu,  9 May 2024 10:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xip6jgRd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E667A131197
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251729; cv=none; b=fKJ5ahsp23Us7SW+rSCTg41RNwBGRZJEEtkUikIpB6tuShJWg9tUnirxfz6KRuj6oVWWHEEJKGBdI6bQtnDD/RFUW1qp62Jdc7kco8aw0qmjL3ecP8tIcVvAzdzz6gEc60+0QrGSexc1kMjw8NI0X+0tvoHYoUexHeU7+PK1f3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251729; c=relaxed/simple;
	bh=vr0JkEDr29fBsYwVrEj21BsVRokcN68DvXqh0duEgEk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PQWiEGJRai/gBJrWLZGY0/T9f7lalY4fQ40Y6uJuD3cdmuKpVMlbPF28O/gCdh+Zg19+7INFVPMrTpHZt4b97Ah5sm5RhdtTjAKwPaGszAGFNigG3P3r0xcpjnPE0UttK26O0AWr8ffqmQgdksDtCjWyxBCoI8hpBLUFYqHrUiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xip6jgRd; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a59c0a6415fso194323866b.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251726; x=1715856526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NAnteY4Ku2+wEU6Dmp4nyfLK0/g/WbuTESaTngARvs4=;
        b=xip6jgRdHdqsodVLL4ptrQsc9jfnz5yoKwn1RgC34OopUeqqOq6hBGT7sF0H2lELLT
         6vb2gUqvhlfj9LMAGp/+5b2JkEIoCWeVMb23pvRc1cvxpuDByfG7PWWGzCbpBvOijhG2
         YBWc8zQ0lQcIbxLTv9n5VaC2T4bkGmkBN/4sEC15nvVpmYosdfdaVyQGjbs3vcPpyrQR
         WTuH1jFpdxPdk6OPnT0T0KIypba6TY1QkQUA8w1PsNsJSmVvnVnxJgw1pFTNpGdetDWR
         tuuCXLYd5AoKbvCI81An64DQub+K8HOFGi/oI6E7QKjP6dojSZDAiniD6G0y8fqYgaJl
         ZnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251726; x=1715856526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NAnteY4Ku2+wEU6Dmp4nyfLK0/g/WbuTESaTngARvs4=;
        b=r7IkEV4zDE02It91u8yQ4naoOMalEn1oTTByWm0fooF87yZS1LqKNjXI0iU7dvh8ya
         QLCEaGR8iVKucSGzopY0r2REGpGdlkQ3bBqKDhEnO/3gqVFeJ3bmnK5Tm91a2td+cBmD
         qblsq7ZqHUPj9+H6rvJJTgYARmbnvwiPJhoe6g7P+yC+p2k/FUUGZRnICJ5CrVxfrQka
         nTlx1EaawfvKg6xiT2hBb5LgLz2LqMz7vH1dWEJuv/PCxDDiEkb+/5E10va+1Onhgini
         hiv/Jl/ok4OGtQ8uRbVUTNM5v8XGogwW/Ub2AgflQCi6kTOKgGYHDp8zIOPdih9/NSVo
         KZdg==
X-Forwarded-Encrypted: i=1; AJvYcCXmbo+YCWoB/k1IFQ/UsMrJ6vFBmkMSeGDmIAnncRPtKotNi6zoMuHpfuj9ulK3j6hS2xF8tViWkXdLPLjA4It6YOLPU2HDZDpoVA==
X-Gm-Message-State: AOJu0YzgWGBIfzqCTdcNCN6Jt0+CQqXJWImxSLp0LlKNRtmMDdHHa1Pe
	YbXtp2WMvKFdFhN5doz2a/+d/rLccT6SOL4XwyCbS2Q65WHMyw0PU9zI0334/GY=
X-Google-Smtp-Source: AGHT+IFOTVe25O3pIsAX/rCgSborCXKvhCmHmsBLt39hPOEhp1TeTMpFQcZ8/4M/6lj5v0rs2vv/ug==
X-Received: by 2002:a17:907:2685:b0:a59:a3ef:21eb with SMTP id a640c23a62f3a-a59fb9dce5fmr414990366b.73.1715251726392;
        Thu, 09 May 2024 03:48:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17894d85sm60195966b.72.2024.05.09.03.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:48:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/5] ARM: dts: imx6dl-aristainetos2_4: drop redundant 'power-on-delay' property
Date: Thu,  9 May 2024 12:48:36 +0200
Message-ID: <20240509104838.216773-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
References: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LG4573 panel bindings do not allow 'power-on-delay' property.  Linux
driver does not use it, either.  Reported by dtbs_check:

  imx6dl-aristainetos2_4.dtb: display@0: Unevaluated properties are not allowed ('power-on-delay' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
index ec806b8d503a..c9b2ea2b24b2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-aristainetos2_4.dts
@@ -82,7 +82,6 @@ lcd_panel: display@0 {
 		compatible = "lg,lg4573";
 		spi-max-frequency = <10000000>;
 		reg = <0>;
-		power-on-delay = <10>;
 
 		display-timings {
 			native-mode = <&timing0>;
-- 
2.43.0


