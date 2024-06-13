Return-Path: <devicetree+bounces-75398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2CA906DB4
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FDC81C22BF9
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 12:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69C8149006;
	Thu, 13 Jun 2024 11:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HL+k0z4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871F71465BA
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 11:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718279946; cv=none; b=CYq4Ui+yTnClAVK4NAuRqmtHYaaVJV9Q2NDaNvMSR89uyuqHjRrv6T4xVRnQ1wujKnkhDTsNtlSn3ih2vnctHA9/ahd5U1CZ/L+29PrVyoDyicVzqygx0qXPPfRltupabgFP0sJbCtdahSzGuo1E00Y8+ejx8RuNCI2B8W5YD7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718279946; c=relaxed/simple;
	bh=QoeL0Uj0afYO2p7SCp2cSVT0H+JsGuapBhibEmka1qA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G/2Y3R7LRuMlgedYIrEdMdmtbD6RZuewMcIeROsfy4S06xnfpbw7oEgc0WbieeXC3ZSgf3OE3ordUHW48I6rbp25GXlDHXn5zT649BCVcyDeGE8AjOmO/1kQm3qaU979j0sr3qTrTXL2gII2aGODuFmXfkoaPftMV/6inEsuoP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HL+k0z4+; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2c19bba897bso763260a91.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 04:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718279945; x=1718884745; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFWI3DDItyQVutRiXO8RX6hmLD8qSv3rrOP6UnExo6o=;
        b=HL+k0z4+2vvV3+p1QKwaAtNp+r0tnSr5ZQlwD5xUmH3gxNbF//Ve4GuMfIYjHzS7pA
         JoAGXpjc++q5gumaAH350u5CLPUiMXToSRHXtu+HA+142FXtfTNiyp/Z7IKNsmHSI80B
         WQ2sXoP9AjD6L2Zc7Ovie++dhlzaOW3x7WpwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279945; x=1718884745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lFWI3DDItyQVutRiXO8RX6hmLD8qSv3rrOP6UnExo6o=;
        b=EBzx3giUFkvGXdtZi4pC3Z73SN43LqnmH7fPiWVjQyk0ddmMc/tB8zZR1pptCq2lRt
         Xrz6wrrxRyNXAR6r2G2YLJSOY3WS+MqXB1lqeJhRxfxbTP6yJXwBk8omnNmGV0o0w2Us
         CrUuCueH5mgnASPD+63FBSdt5x4duPE0NBs7uL85ZMwii2OXxBnyKCsgfGpo5HFWf81O
         2+hTJAJjhNcPLV4/a+sQRFfobnZ7daEApIyIGVg/BCIsb39JQ+r7/S6rYbPhKRGhZjpt
         OnEASHzgHufSYOZw2v2z9Bp5+2NU0z13i1V+vyZURfCV4b0qoaYH7Vd8n9w2BrQJQ5Z3
         NY3Q==
X-Gm-Message-State: AOJu0Yx4QB3zIUEtMu6t2ZpEmboFQhvuRFnksWVon5RGAolwiIxk+flG
	OI+RVs4VK/9Z6w/gectL8anYewy9ALWx55f0liE3Y50S9cxBicQsos/qskdfuw==
X-Google-Smtp-Source: AGHT+IHD/wwLAZVG66P7MmZbAQ5abkZDMU6aSnV1YmSQrBqnGyhFTlyZLbFUkzCum+77t6hfBH2SyA==
X-Received: by 2002:a17:90b:391:b0:2c1:9892:8fb with SMTP id 98e67ed59e1d1-2c4a760a325mr4845537a91.5.1718279944696;
        Thu, 13 Jun 2024 04:59:04 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c466c3desm1453505a91.46.2024.06.13.04.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 04:59:04 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 13 Jun 2024 11:58:54 +0000
Subject: [PATCH v2 1/2] arm64: dts: mediatek: mt8183-kukui: Fix the value
 of `dlg,jack-det-rate` mismatch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-jack-rate-v2-1-ebc5f9f37931@chromium.org>
References: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
In-Reply-To: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be "32_64" instead of
"32ms_64ms".

Fixes: dc0ff0fa3a9b ("ASoC: da7219: Add Jack insertion detection polarity")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
index 8b57706ac814..586eee79c73c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
@@ -27,7 +27,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;

-- 
2.45.2.505.gda0bf45e8d-goog


