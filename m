Return-Path: <devicetree+bounces-244144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EAFCA1A95
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2F5330139B0
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B892D593E;
	Wed,  3 Dec 2025 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d4HyxcoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550522BE7B4
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796880; cv=none; b=ms0T/i7rY+lKE5vXypD4iTlJhQE5Psq8SoEf5s4CxrQ3BwsnThaWmbyERLeB+NdkAZyX32EcHXFOCxYKqDLu6lR5waYkjfAw4SBKvUVp2P+2RGC6wVkdu4WhdL/g5hbz0BM2FWPAq1TBdRvbhDZwwRJhlcq6xSNa0j5d2tTiOWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796880; c=relaxed/simple;
	bh=D0brhOSlQ6XpHrvqk4mV02jDuacWgrfRP6AOquTJ7yY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BHHPthQQrhRMs/7MiE/nNrYhrBJmnmjGRFMtO6Ra+FHj2mGfdaXbXY0J8HYOvSqdgAMEqrDuRDco1DGg7nkzizdkAaHCXF4GFgjqCTmpvVrPOtAKHuDEVCA4QkcWW4EyyIYyrJsFKpyxXHneY5XTU9V4d8EreV3LakU7PeeXicA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d4HyxcoC; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42e2e671521so169670f8f.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764796876; x=1765401676; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQhWJ+eZUIq/ASkiydz0nS8vMs4pxW0kNav8P/wBabI=;
        b=d4HyxcoCyQ2n52L+/2sRys5u/YAp65h/hPj/K9BnliChF7aH0hx4ekK25Tb3qoPAHm
         maw4//ITXX4fnw/NyI/LoaTa3WC6SAS5GquWY+ysTMVDfDh8JxgS2MWciQJvloMvxRTO
         +y5Gg5dzgrmHeMmfTAXkD+i61hjzWqNjdrSfhgN5b6zheCuVbt43iircTtCocz5mnGAG
         sfqLhX1n5m/AzuTItexB4jrnowx8S5Xr06lSW7Uk50jFuKHzux5rP48ovNFInUC04VOm
         CEx+vmmzUcatwDkvCry8rhZeBWUm9KtDVHFVbJwshi0lfxDuhDOei/ciGiBgxbpUelAc
         y/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764796876; x=1765401676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EQhWJ+eZUIq/ASkiydz0nS8vMs4pxW0kNav8P/wBabI=;
        b=dAKBUM/vlCe2pTGteSQAroLg/Lef+O08nNK8IJhub+a6IJXrdPSVpZY4ZuFXmM46Zz
         ZnXqYcBrfEOnC/YJIE8YzAdxA+3Gq7Gqc/Q0V4E4BAbS92B5cLJBsRI2wstvTiJ3I7qN
         oRgWRQtno9Uq2W4IRuwOXzFvBcvjljB3muuEkM6d7Um0lp336LZEU8y4YClZRHeMrqj8
         OPLHXMlz7jFxsgtQOlkv84Go2D6RP8uJaBRbVmPtolgp+CuQ3o0mZpQ0bEjebX6G3M2U
         /cqrreUsnTwaaqcaTkDhmv/BHOp9K0oJ3B1uagxw54bRkKb6WgAJ0xs8Y0BQ0ot48mGo
         HM4w==
X-Gm-Message-State: AOJu0Yx0jJnQZhuOswzmjDGytBMS8X0OhSb/B2wb3d19ZJWZ3Rkf0hhu
	h/MKF80YIHk1GII0qlHFs7GkKshg/Je1ZsUGF7H54oZjPYaRyd1GQqkr
X-Gm-Gg: ASbGnctVEXPhnM5n61NiV+p2B61M5np31QwwcUd6w/yV+R4NpZWjdVxj1aw84m/xjV/
	aJ8CObsFQiTsfWB/g2kMJ1v3Ndmcc4q5fXCb9vx4JvaqZXQxhaB2Mzo7ozA/qF4TJ4v67IwSnWk
	3VzvsFEUknglS0RoRoRxsNvB3IJZaanohuvlPUH9hwMFDseCpZARt/rawKNUnUE6Puk6Kgf2x8H
	MgDHxDjWx1FsFz2RQByKvWtLr40UGeoIIAeypOpcLQDH8si0WErJpeL0dwqBzMnbc7pvDibdr1s
	zVe5eJwVZE+Pp/8DojjP/Zo221lHZm1NwzvEZfWpo9DHnBGtvPe60qL2/VyjqQ8ccSMMVgGTpYo
	dX5eY4bGitGp+APyEyzYESmG3vn7fY7o+fa4AIKefQWt9lUoVGVVTjmDwjvaw4vOC57BAYaGBqH
	5A0IwaHwta6237HtHQAcyp53Qr1w==
X-Google-Smtp-Source: AGHT+IEZunEpe//frhiLdeTM4oc5NR9n84V4te1dih4RZ4tO0H2gi5ZrfJvPPSfzRkaN0ZyCPVH1ew==
X-Received: by 2002:a5d:588b:0:b0:425:8bc2:9c43 with SMTP id ffacd0b85a97d-42f7970544amr423736f8f.1.1764796876449;
        Wed, 03 Dec 2025 13:21:16 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:2034:6883:1f40:e708])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm41648667f8f.3.2025.12.03.13.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 13:21:16 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Wed, 03 Dec 2025 22:20:39 +0100
Subject: [PATCH v5 3/5] arm64: dts: mediatek: mt8188: switch mmc nodes to
 interrupts-extended
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-review-v5-3-b26d5512c6af@gmail.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764796869; l=1902;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=D0brhOSlQ6XpHrvqk4mV02jDuacWgrfRP6AOquTJ7yY=;
 b=aZHqoB8QhtYSfvDqkCjiYxJ2KutmCtdQYZ5Z3AxxpgvK0CdISzHX8hpeRnrZVAg5b+DpB60pF
 +9FuNRYEeTtBuwgKD+NyLdJ3lXwqAT2CzJEN5+tQ/swxniMV+wMOH4W
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

No functional change but will allow other dts including this one to
override the interrupts, for eint support for instance, without having
to delete the 'interrupts' property.

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 90c388f1890f..e3209a9a5f01 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1800,7 +1800,7 @@ mmc0: mmc@11230000 {
 			compatible = "mediatek,mt8188-mmc", "mediatek,mt8183-mmc";
 			reg = <0 0x11230000 0 0x10000>,
 			      <0 0x11f50000 0 0x1000>;
-			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupts-extended = <&gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&topckgen CLK_TOP_MSDC50_0>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC0>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC0_SRC>,
@@ -1813,7 +1813,7 @@ mmc1: mmc@11240000 {
 			compatible = "mediatek,mt8188-mmc", "mediatek,mt8183-mmc";
 			reg = <0 0x11240000 0 0x1000>,
 			      <0 0x11eb0000 0 0x1000>;
-			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupts-extended = <&gic GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&topckgen CLK_TOP_MSDC30_1>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC1>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC1_SRC>;
@@ -1827,7 +1827,7 @@ mmc2: mmc@11250000 {
 			compatible = "mediatek,mt8188-mmc", "mediatek,mt8183-mmc";
 			reg = <0 0x11250000 0 0x1000>,
 			      <0 0x11e60000 0 0x1000>;
-			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupts-extended = <&gic GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&topckgen CLK_TOP_MSDC30_2>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC2>,
 				 <&infracfg_ao CLK_INFRA_AO_MSDC30_2>;

-- 
2.43.0


