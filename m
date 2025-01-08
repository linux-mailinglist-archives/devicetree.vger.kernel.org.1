Return-Path: <devicetree+bounces-136486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E42A0556F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBE8A1887D7C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3283B1ACECC;
	Wed,  8 Jan 2025 08:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V+BjZmaC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8C61AAA03
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736325271; cv=none; b=JsjLx1OytUF1SZnSiZBSyAQm8meuahODDu8fENFw1YvB0qgVEe6nNywV1DkWph3ZAl4GnuEEzlfs6BFbcEMVYHblNl4cmGoW3nK/kPutQIdSPJwiKsnwBA4FJpcz5i2bxmJPPoksfcFfn9CyItaTQaFtwhJOw+30ZNWTtJhIMto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736325271; c=relaxed/simple;
	bh=N8FRrBisgJSq3f/csLHYMYARzFLhe4o5iq6SZjcQpEA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TH78pJ2Jpb41D7x5fk3ZMRsvx2i6FwPGcrN6e/aNooQxjLBvAwPqf+0QTunK4oCh6Wi5vpZr9E+u3TFXC5nfvfMhJIH66QMJh+3p3jno8m9Gf88JHSaDrrwTzh/79fYNdnaoGvYefIWqBZA78VgfsJ4IVTDIfZ9FYAA/r9+fsVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V+BjZmaC; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2163b0c09afso242013885ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736325269; x=1736930069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6yT7PDGcmb4Uh7Y9LbNOdh/0wSRSH7b4rMO8FJwe4BM=;
        b=V+BjZmaC/Fjk1gscgtX2aQLeAH5XiEEiPbFFOEbEWiN/oEIAowgraSqCqP8qkGrWWZ
         W9eyBCNXFw9rdgnoEQ7TEoSaYE799y/IQlEfMwpVE2MhkU/AnfGctbJAvDz7Xb6OU/Vu
         JaqkRXVwyAc+hl07KHzjLtxiBkd3yt90KMtbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736325269; x=1736930069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6yT7PDGcmb4Uh7Y9LbNOdh/0wSRSH7b4rMO8FJwe4BM=;
        b=lmXRDdTb1rWi/+ixulcOaEZnb/SsMJjGTigjOZ+9XfvdeldszMu5fJjIwr/J8SOe7V
         Wv0oiivXj9N1k5suIM7tkY3tL9Ds3kSxyhwdbnK2Xr4t0aXeCb1KmGOXjpEVTBTLcgh3
         jIbQQPq+OUXAmT/Xw3WS+CFpYBhIceJCN1H2YZ2Voeo19tTqzuV/st17imNMnVDeF8Nh
         Mfx7i8EKSIuisRzxKhMNh7sTSnFJvTJ4qkCA07VNYRQpgq4vEJUytz2LmDsIuqUz/r+p
         xKDvBNIt9908N6GWbkrZ35s1SifJRolfm6YcEnN1/38+oK64sG4ZtB+LhbBQd5FX768j
         lyEg==
X-Forwarded-Encrypted: i=1; AJvYcCUPPzDN8Sw5sl46Td0zbTkICV3LMQ9qJ9sBI4VKHotYwumnXtiF+zYLlv+N8uTqGXYph/U19ZmCWzm/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl1kDkSs37VU9ykI5cYFxNs3vClZKWoGKcSNkOr9mGBgrQTsqW
	cGdocgM6gZQduz/1QaGWUHePLLVYhD2Ssf0aq2Pny/9j4yChoPTPs8c9mqdBPg==
X-Gm-Gg: ASbGncszjJez2eu/eCqBRjD9W06mZstddpw/hp1U3f1CEJs5Yu2+CI82ku44b1p8ZZZ
	eUasgjW70NT8gAKfev7Uh1EK0dUoEEug9pt8Rbelnh5gNCxPY/S2JF/VnghOZThoVTeQpbsParv
	oQr4EVDfpTefe8Wm0593u0c6W5jxaa4DLRApxlxf+xOyCay6qzK5rXj1vKUWMgpU8hpmL68TNfE
	lUlwPvmhBP0JuLHVomzu5MoeGIyw3Lti8cSleJy/rRgTz+q75jY8lBTVDEEJCNk4unF9VPGSQs=
X-Google-Smtp-Source: AGHT+IEufyJ9Z1gHFaHVltf5vZ4SxHR+JVTg5Ok01+7e6JirHWxkfmRu+e5XrZq2fBo0mVrBTIoNOg==
X-Received: by 2002:a05:6a20:4394:b0:1e1:b8bf:8e80 with SMTP id adf61e73a8af0-1e88d2fc8c4mr3918189637.41.1736325269073;
        Wed, 08 Jan 2025 00:34:29 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:511d:2d5f:1021:f78f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8361b7sm34602275b3a.74.2025.01.08.00.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 00:34:28 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 1/3] arm64: dts: mediatek: mt8173-elm: Drop pmic's #address-cells and #size-cells
Date: Wed,  8 Jan 2025 16:34:21 +0800
Message-ID: <20250108083424.2732375-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PMIC has child nodes for each of its functions. It is not an actual
bus and no addressing is involved.

Dropping the bogus properties fixes a DT validation error:

    arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: pmic: '#address-cells', '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
            from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml#

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202412212322.JTFpRD7X-lkp@intel.com/
Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index b5d4b5baf478..0d995b342d46 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -925,8 +925,6 @@ &pwm0 {
 &pwrap {
 	pmic: pmic {
 		compatible = "mediatek,mt6397";
-		#address-cells = <1>;
-		#size-cells = <1>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
-- 
2.47.1.613.gc27f4b7a9f-goog


