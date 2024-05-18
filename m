Return-Path: <devicetree+bounces-67651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB5E8C925E
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 23:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 951831C20842
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 21:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F7F6BFBC;
	Sat, 18 May 2024 21:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="alzShfi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C8C6A8D2
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 21:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716066729; cv=none; b=PLi/vkpJw1j26dUDKgXJp3+gdrwvWOhj+d/fAf8JynrsrVMEYkx8P8BaLHbLbeT0+AOKTaOe6N2DHzcgiENcof1unzv2BayvT+U60iH7P6AgBiIj7fs9VJ+z71gjUnpKqx1aRXLMMEgjUZUFcgou7F2QV3s4hjkcIeVn5JzqYKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716066729; c=relaxed/simple;
	bh=qPp9SxAZJBrbSQRD2v5MhCsIEvpdXfFd1P/ZyXhM9O0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mze6JhRzX798PTVR+u0+BgmXnwo2c/NZzdfeZm88Z0GP9GAuErh0ixK+RlUDGOOaIkkzbevyUpvSod+42bYP6tKW6TEsSEDA7RRAKojKZcqaHDKh2FJ/08hR8Vp8k3I5+saRJl27fkCxnNQjBJIohGY6XcqFMlnQfsNh/Y/0jos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=alzShfi+; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-574b3d6c0f3so6306698a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 14:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716066726; x=1716671526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTZvw3qn2Frxz4VlPUYhrX9Pfbol7sh+tfbuq/yEHo0=;
        b=alzShfi+uXwgjYjlhfnMkzdwiCoVsCDTEuevvpNd/lEUM+rRn6caKKbPvfL6lVfrDm
         1X0641zYD9LKJOTKMpzhMsh+f5yhftcTrSloDyUMx7Go8QGFuPUnQOjK5hZ3DSVp6efm
         d+HG08j/wkVLwZvzkFYQHMZPWZIrzY79wru/8kuINhnSU6juuIb92Hj+u0WtFTBUSdIX
         9wJx5mannrC1+AWdyXtt9d+Eo+q0tYljxC5xP8H5jht5UN5u8lkFazOmsBgXBvCKQC5Y
         TD96UHCNKsdRIMLoG06RV6f8BTdLelMuvYbfibIZxfueGsxGphg2KiK7EMrBUm2QGp74
         waig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716066726; x=1716671526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rTZvw3qn2Frxz4VlPUYhrX9Pfbol7sh+tfbuq/yEHo0=;
        b=XNbkTljiTGa0AeaEze0//wsDkdfGAZB1TGuM5zuUUECX8WJsY5uaXVv/c7ytgiFGUU
         hU3ZfaOEBtzSca0zOX9ZoZmBNfIVaAxbhx0VW5S1mbeffaHOISjMNezT/kIEfstqApaY
         sPYV6zPSUb+ojbOzwXpT0voRIR1tYWoPYmY6auZchMqOTLn3cuGAPJIs+nrS2ziN806W
         SWYtFXcwhYIdEUAp3ZP/n+/GIXhjpY7ZYAbGHASpj7Fh/ZRHvqbWOCTn1/Q44QrvTKNb
         iD69BluYGgokl4SGAc+9X613zqGRiPaswinwKr30AQdkJGL9yt1OWMDFKlBRPiuasMXX
         txxg==
X-Forwarded-Encrypted: i=1; AJvYcCUblcrQJz8ks/FNdBUM48BdDHr+gKc6B/rYFrzhr+u12y19+hNpR5SOy3/xetFq5czKRI19X+zkeM1ZuN7kIkug0psfjWUqJ23DOA==
X-Gm-Message-State: AOJu0Ywaa2/zsgXqNBM33pI2Jhuu/C9ZwJ2nkVt3ZOE9sgyGiLTQEm4C
	ZEeInTGHumYD3OPuWZo7iWfn+4etkEOsAlhgNazIO+0cZIzCrvY1M345wnTOioo=
X-Google-Smtp-Source: AGHT+IFo5u3guueI71r2jMppcT+wjcslXSGXNTnebOHuxXpsGhc2ZBnApheROEQ5Hrwarq+3P1YMxw==
X-Received: by 2002:aa7:d450:0:b0:572:72ff:da34 with SMTP id 4fb4d7f45d1cf-5735a1c68e9mr16324495a12.14.1716066726140;
        Sat, 18 May 2024 14:12:06 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c323d3asm13151340a12.90.2024.05.18.14.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 14:12:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8365: drop incorrect power-domain-cells
Date: Sat, 18 May 2024 23:11:58 +0200
Message-ID: <20240518211159.142920-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The top SCPSYS node is not a power domain provider.  It's child
"power-controller" is instead.  Fix dtbs_check warnings like:

  mt8365-evk.dtb: syscon@10006000: '#power-domain-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index d3da5a22c2d2..eb449bfa8803 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -302,7 +302,6 @@ syscfg_pctl: syscfg-pctl@10005000 {
 		scpsys: syscon@10006000 {
 			compatible = "mediatek,mt8365-scpsys", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
-			#power-domain-cells = <1>;
 
 			/* System Power Manager */
 			spm: power-controller {
-- 
2.43.0


