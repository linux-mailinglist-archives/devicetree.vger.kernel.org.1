Return-Path: <devicetree+bounces-208132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0225B319D7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15A5BB0616E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32350307AFA;
	Fri, 22 Aug 2025 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G2nVsUzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2AA307AD3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869500; cv=none; b=h8Z8ctR4m1qCPq0pBLt8ehOG/ILDajP5cH5yU0t/72119dXh2XnH/kNJeIF8AsdED+Hk6Bsec/xXCFhcUS62uFdZe221UUvjuow2CEkfGJOdhR72HVZ8ARc37fixXb8e7d8ud1221gTrBQxxovaNPWH0t1K+RTzbn39/uldVDss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869500; c=relaxed/simple;
	bh=7H+O5W6Cx7TFYYHg0yIa4CMl+T5Jth/7El/WrcKoQQs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AAXp7SJ7drzrraP/ecirYsfcsLOJTWmG5Or0xQV2GJzpjRR8klQTApcmlytU9pXyArJ6MgO/N0FUE2hMd9FbhurXj4dpLk1cY855bDqBSyQnPvSWZC95/gzNFOWhdgG/i5Ryn6fc/052yBLGc3z4fMSuZMgjyJFInyUOSq5HH0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G2nVsUzW; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afe0a80f3fcso33477566b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869496; x=1756474296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1oPHSZs3u7U8KvICqkGflwd8yraABLSs55oPMk26ew=;
        b=G2nVsUzW7NyhO7XoHtSdgrOR8Rx5QO1cEU6qLPEJKqe5vFBk0DhgPuoA28ZYgzThB3
         Kn5SyBPRo5o+g5OqqvMH6UXRq2jt8Zg1cYJi/0+Z+oe4yBBoPyGxYp9oXbLvhlKiO7Vh
         NlMhsvXPP0jV76Y/tpFJFvIDrEDFbFEZjXv97//S0f2WuoRKbUHf3Zk2pEWvt+jRiZtZ
         oXNzJZRajiJ+9/WKbDUDR8cBHBQlrAD+0o1MmbdQsotXn/UtxQw5tPg2m0nOcvOIgH8g
         wtkQ+w1/XkvIx5BzVJPGPUICG2efei7Pfdk4/GP98flxXRULMMjWOUF8yIf6rLOHv51Z
         3KgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869496; x=1756474296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1oPHSZs3u7U8KvICqkGflwd8yraABLSs55oPMk26ew=;
        b=gLScE1UcHjyxqG9CON6B0QWZzxyd4t+0g8LWp1TbGgGEQ/rkjjI5sG/ZhRNeG5Vh1s
         CVvVFwabzMVpv9H5rgT/vrvuFrE1AjcHtwnJjZd8N0eHWjDtRlUIwMkNRsRcTLTa5cQG
         lDhhbTh99Y21qGnboVVKVb4nXd2jVNDD3Maxpc8Lo2OualPjl+s4ymoTnV5m4ityyLUq
         mx9gUqQAv/QJk0VATNctGK5RK44aDUk//TVByVKXkbm7yAXthBxfHtd9CLDiXK7k0tif
         MuvXxX8uBJvEoq60it3fPdMg5PsaIt8gYS5SEsTiXeD3MvIOCV2zqhPrtLw6yE27mRfR
         1TgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMzlvSNZDo6uzBAWvk/xRNwcyWCEIrY/LvkYt6VHzNCugXRF69D+RNXhuZUCM2WxO3dAHi2XGbLfX3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc2KRJsDB5lJym7cy6ZGd5j7WqSX0u2qZGhYfvKj3ukUphKmZg
	lnt2GGCRS6lgwKL/NNOome6m5TokYrUhnJAEMBTlf312pbqoxH+rD3QnQTjzCTVSUrvLl1gGIY4
	LUtct
X-Gm-Gg: ASbGncuujnpI3vk21FcD5T/Rkx7TyYiXpDl3/ny4iSeXhjYgy+ANeii6RQHYhfhKLYq
	QAlY14y9gydgBJmdlLeILZRve+rSwovNzuE6th98IxaiZa2UsdVwxEZVx6k1GmBaw3bFHIVFLjV
	oJTnmzxoX903We8oNUHLxLqRrw9BEDuC5W/PW7lXTx9AhvN2SYIBr4MGA/BY1hyd0qtK7pOhAwu
	i1puY7h8GJ9AVtQ6vbEUaTsxE2Vp9KaWsMuoIotcZLcKE/BiOOCFXstMwg6W1XFuAL1pmAB1FpW
	2kavqPtLqhDAVpVUJrdafaEB1ifvLKt5FnL7YKeORGzMIEDz+NTX5ja6yuUDsoYi7vMON1vm4a3
	Jx5/4yGmIsSAq+uwQTeYGBDj5nAQPuLUdqgCKdjfwTZzUN5TPvw==
X-Google-Smtp-Source: AGHT+IHGf4gD2l54dPuZnRQTNE5elyH8zGFJB2EjqQyxv9TE0M0n+7dSm4Zf9PSmnmp/pw/J1tGJgw==
X-Received: by 2002:a17:907:728c:b0:ae3:63fd:c3b4 with SMTP id a640c23a62f3a-afe2904d606mr159430166b.5.1755869496058;
        Fri, 22 Aug 2025 06:31:36 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf24bc40dsm554863066b.109.2025.08.22.06.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:31:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:31:18 +0200
Subject: [PATCH 09/10] arm64: dts: imx8qxp: Add default GIC address cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-b4-dts-interrupt-address-cells-imx-v1-9-f1b479da9340@linaro.org>
References: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
In-Reply-To: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1428;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=7H+O5W6Cx7TFYYHg0yIa4CMl+T5Jth/7El/WrcKoQQs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHEneKEpVbA628wFgsw9V2z3aggP1pLeaWTvt
 DKf8bFCN6CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxJwAKCRDBN2bmhouD
 12XrD/91UKSwZcFLucZM7856sWnxIKl00ZUOGNPinv9qCyfjYCiszDUpqIuPvf636lvjnr6iTLD
 swRjLqBQvVrHKb9eZNHvNuvojmT/yHRRkUUe2o0kvr6dEJ6Z7ytdDpUFtvka5zIqi8kMk5Qq6Xg
 sz2uyWs71KBSPGwNGy6umMAMuIm3HzHRifN6mClsn0V0F8mVsfDyiSy8UejVpYvcw7i+fpRoX3f
 +MeM8Zv/QUoOnWGJXssrjOAPyN9l43eEvBXv1JaChihfwuao3gwjyMxuc2+KbtgBHEGDH9iLwLX
 sqq+cKMcqXWIDkMM5g+UW5TiYrV4KYhjWsw4GsX/ptj7fXwpkxdQNbzxbf7KaBaUmknrJcvvOlz
 jDAHL58ZqIebI0iTcO+wqMG9WFl/lNtFTALjDqSh5HhjrYqmy2RdRoy/X4xE4aAQwJYPB09Pzsp
 DiYd1b6O27dht2Z5CFA87Wanr/crWfUlAYKueeYQOc9cP+hSZJis8nS4EZzGf1t5qM7XfVBZHRj
 6ipvyaq/k8qC1SpD2AcDZdsc/86cgIcDno2ylCkHxr3pfUj2vuTz/qv+jBWHSW1RBXy2ttilZOc
 9R862LdCsnKXsa11wUa1rs5qgiOEot++kWuFs2iIrk80gMk1GeAHv6yL4ERreH4cmAMbMdBoyS7
 jrSf2RWVT3tJsPA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  imx8-ss-hsio.dtsi:71.3-74.28: Warning (interrupt_map): /bus@5f000000/pcie@5f010000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@51a00000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 9e46e16a8dc06448c6eb1796a3ffe70acb09374a..95edab058276bcfc87b9bd85426b999d1ab32360 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -159,6 +159,7 @@ gic: interrupt-controller@51a00000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
 		      <0x0 0x51b00000 0 0xc0000>; /* GICR (RD_base + SGI_base) */
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.48.1


