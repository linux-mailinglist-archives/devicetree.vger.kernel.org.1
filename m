Return-Path: <devicetree+bounces-67648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3C28C9249
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECF1F1C20B03
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9096E6A8A6;
	Sat, 18 May 2024 20:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="es1ebj2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1B53D97A
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716065148; cv=none; b=Caq7CAfvUiRs5uAswmXkWy7dGI5of/gucRnxMHoZvb9R0z18/fZzo20gKrdJtOBYOjChYn9547/hH4z+3l8cfVTmxopY9fcL8AiajwLys1ol9OgSP84P3x3wWoLqYjkemLU/drRZqE6CsPftwr4osfDLlAmHxeem7MJVrCvDFDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716065148; c=relaxed/simple;
	bh=SeIWYz0Hmy5PbjIflyH8F677OASeNrD9YB3Biv36wIk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yj8T1MieWk1GK2BsDu8XqvdzANYF2PA4Vy/SxYo4YTCsYimbrMW7ytJQv62vsBWEm+0Rrsmi8HCV0QkadLag3alBIdfe0gwxlycRolv23koI3lsea8AhulVfnf1JgwUZ8MSxprjRs9FG6iazjfyFmITuNsQRzBrOz6u/XCw/pD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=es1ebj2g; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a5d67064885so91451766b.1
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716065145; x=1716669945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+9awidLeL0V0G9gp7oNQRrSLvxa9AsxzbbOSMIs68k=;
        b=es1ebj2gvwPewqjQtWhhcJCLYEe5DGgcbX+ASXTvGn6kZqVsxS8HlbRyrV5a/PCP3A
         AG83EA7FnZhc2jBsLsz/8k2eUIReV2SkD7MqEvs0P1nLVHdMdzJLgglkdmRFBN1AGQ04
         14Ekf3TuJx5l4uTyHrFbui9G0H7o9Eh3UcTX4VgTnt1w/rWRA/0d3YlLIAyemrU7TYxi
         yBz36aumvh3usDL6bFiyqGYYuQIrbjCDnecJIuC4w3UFHuBkASL+RI7Wp/qaax3yYQHz
         pS4ny2D1SQ5pn/KHf0y7QOndFOGl8+4pRTdcD5dfqA0hPQdXnnPrd2zA2vdmQxlPIR8R
         L9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716065145; x=1716669945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j+9awidLeL0V0G9gp7oNQRrSLvxa9AsxzbbOSMIs68k=;
        b=nbFGlrt838aGjxmimITAPuQ25BF7NJHjesyj8URMCPtnwZ6alA1iF8BW3AyQHOrMAp
         NWgPW8BGdP1DErEWs7SJAFyTNWFqYv1r9MIk5OL9dnuEc0wPOWmeI5I6w7WYj9S+ycz7
         aQJjZ2XN0vfMg5gyi/ngJd/6amI6O0ZbQDNXriR1f/qI0JIe2tsI7UP+xCjy5bZzfipY
         MFwZaSzVEloHJCWsGNcIMgvAVTve0vpOn7J0cN0jdtnpvn5IkII7QwzEZ98d59IT63Wo
         tmQlfIH69HnOUUP2MBonCrjpjlj4JdssAjmOCirHPV77Hd38ZuqQgUsw39Aa70nur0KO
         8E2A==
X-Forwarded-Encrypted: i=1; AJvYcCVSwwD5lmEj95feLL/sSEzLa+ODAa80M+EUxDm8ILzIJ44Bcz8WJv88c5IiWEIW8wOJhMoGLtol6k73VN2ZX7p4Yo+FKnZBYbTrqw==
X-Gm-Message-State: AOJu0YzcA4cI2Xu7ZSlXODet8Pz4jZUDUByPeTShz/p0jPSxelgU4XA+
	/KQT7ncHwsmHTfYWEuDjy5pUshzQmjzTFmB6n/o+/L3mBOJ8kz0RKlTyxoGzgXg=
X-Google-Smtp-Source: AGHT+IFk88WcIbMB7VwpjkiwjM1k8iI3LM850DJVBxeHYXHCJsfR1TKr5Ls0kHsiDggcf6UxNaEG/w==
X-Received: by 2002:a17:907:9446:b0:a59:afdd:590a with SMTP id a640c23a62f3a-a5a2d65d66dmr3011292266b.56.1716065145394;
        Sat, 18 May 2024 13:45:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17892471sm1261716566b.84.2024.05.18.13.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:45:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wei Xu <xuwei5@hisilicon.com>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 2/2] arm64: dts: hisilicon: hi3660: add dedicated hi3660-usb3-otg-bc compatible
Date: Sat, 18 May 2024 22:44:43 +0200
Message-ID: <20240518204443.122586-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240518204443.122586-1-krzysztof.kozlowski@linaro.org>
References: <20240518204443.122586-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each syscon node must come with a dedicated/specific compatible, which
is also reported by dtbs_check:

  hi3660-hikey960.dtb: usb3_otg_bc@ff200000: compatible: ['syscon', 'simple-mfd'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 7e137a884ae5..957a1b41f19b 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -1161,7 +1161,7 @@ map1 {
 		};
 
 		usb3_otg_bc: usb3_otg_bc@ff200000 {
-			compatible = "syscon", "simple-mfd";
+			compatible = "hisilicon,hi3660-usb3-otg-bc", "syscon", "simple-mfd";
 			reg = <0x0 0xff200000 0x0 0x1000>;
 
 			usb_phy: usb-phy {
-- 
2.43.0


