Return-Path: <devicetree+bounces-58604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8E68A2897
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C84551F24118
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 07:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D394D9F4;
	Fri, 12 Apr 2024 07:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BdtJWDTj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA6B4DA04
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908580; cv=none; b=ScIFsiXctCcGkVT6essOjV3avEC+8lKyxgEEZhYRmxFyIcW3+SzMHQ5W3Wc/tQJySdCKTV85mSx3UFautY27OE0JkFUMsR8y5V+1mf07U8Dwop6h3cAs36FEld4fUv24SbqBySiFKQl1PzRiuvb4VYPl3E7WtibBjTv8MS7QzLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908580; c=relaxed/simple;
	bh=JoYL04ALanw2VsbDpSLIZJX1t8kW9YWCZT6CNOsQYOI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l1GrDx+mkroXTmxquTCLHI/CV9o3ORv6B/aNXsOPotZaY3E8t10rssnWzfv4WHMexmYaAWLJWICLteOZqhtFe/SgMBiHA+TkH1ZTXFokreeql1lAX0RthBtF5q+zjeadv/GpG9/ZP/Jj470uPRwbcok5VH7jBfp8E2K8K8bzKIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BdtJWDTj; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6edc61d0ff6so627935b3a.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 00:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712908578; x=1713513378; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uxWqscFAwOXHq3LZxwoyO2yB+rY65Bz7waDbYHO6nwc=;
        b=BdtJWDTjWiYu7NRwZButqfeg1IuRo4pxtD9fzpG1klqTC5x5l4eGJN+M1YMqXjov7m
         4a0DO3CTF2V6RZsPRZekvc/yLWY9UjoysXKhhK4fR2OdZ92aaDvZRLHJrQebMsnoRHYG
         ViRG1kR+mEOFApw3V9/642Rwf8LqFUAEXcQb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908578; x=1713513378;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uxWqscFAwOXHq3LZxwoyO2yB+rY65Bz7waDbYHO6nwc=;
        b=w5xwCh4SVGEtZwLLEQM+wjt6zzvpb8MCUoSmrIr7iT6dlu4OOIFQ6lBjjwxy7AvrJy
         ncjOHiDCmyg02HJVVVSPSaBG4JEGHIRzV/H1ZdzLOmgBbURlJLJM98V+nnOq0msrj/Fv
         fpKNbwLxN0O3CdtJmwSicIEbCFX/XIj6vgukBIJQ7BS2/uhd3cGx4ce2nGLcHV7G5Mbg
         0tRcJ58IKopdWO8Q5ECzG8yLJDJ7Fl2I6t1uM5VJImkNtnOlOaHZ0ggHUPyxfyY68i4F
         /FDAZUDLKO/VCyMR3bN7pwQ8ZKoOhDh0dOepYdGwzM0pEL3YRbKkGwRC7U5Og0FIWTTD
         Uy0g==
X-Forwarded-Encrypted: i=1; AJvYcCXWX4NTRMlGhgijLvB1okKlYsnef/jwAMF8udM+93Lmi3XLI0pkcgzaVZuFXUH9NkmXOPD7KpcwCbe8oP9nfYvh0iFRRy1K0o824w==
X-Gm-Message-State: AOJu0Yz6IkDj7u7ZMZTI+sRp+1Hfgb6PXU5qGx/xZnl7eqSH/KZ4KVc5
	nx+WErXFyYnena/Z9dF3umeZt5U1MHO5Aru6I5T3OF4okSHfyx7zdfCNPzSGpRLXeT/EgsDqIII
	=
X-Google-Smtp-Source: AGHT+IG0DmvzYgyMD+UbukYpONvIvOQUtcBV4koLz8bJwFW8nLfKTZSqtZ4kjpkCtUaJ4FQxsGFS1Q==
X-Received: by 2002:a05:6a20:2450:b0:1a7:136c:c940 with SMTP id t16-20020a056a20245000b001a7136cc940mr2635499pzc.17.1712908578374;
        Fri, 12 Apr 2024 00:56:18 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:e3c8:6e1:dcfa:3e8c])
        by smtp.gmail.com with ESMTPSA id c6-20020a170903234600b001e0c91d448fsm1229006plh.112.2024.04.12.00.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 00:56:17 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8183-kukui: Drop bogus output-enable property
Date: Fri, 12 Apr 2024 15:56:12 +0800
Message-ID: <20240412075613.1200048-1-wenst@chromium.org>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "output-enable" property is set on uart1's RTS pin. This is bogus
because the hardware does not actually have a controllable output
buffer. Secondly, the implementation incorrectly treats this property
as a request to switch the pin to GPIO output. This does not fit the
intended semantic of "output-enable" and it does not have any affect
either because the pin is muxed to the UART function, not the GPIO
function.

Drop the property.

Fixes: cd894e274b74 ("arm64: dts: mt8183: Add krane-sku176 board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index f934b8aad3ed..75c799a6adb4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -797,7 +797,6 @@ pins-tx {
 		};
 		pins-rts {
 			pinmux = <PINMUX_GPIO47__FUNC_URTS1>;
-			output-enable;
 		};
 		pins-cts {
 			pinmux = <PINMUX_GPIO46__FUNC_UCTS1>;
@@ -816,7 +815,6 @@ pins-tx {
 		};
 		pins-rts {
 			pinmux = <PINMUX_GPIO47__FUNC_URTS1>;
-			output-enable;
 		};
 		pins-cts {
 			pinmux = <PINMUX_GPIO46__FUNC_UCTS1>;
-- 
2.44.0.683.g7961c838ac-goog


