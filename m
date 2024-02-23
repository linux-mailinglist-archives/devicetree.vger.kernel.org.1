Return-Path: <devicetree+bounces-45139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3781860DAC
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 10:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58070B23B7C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 09:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C9825568;
	Fri, 23 Feb 2024 09:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ahvgVy80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761A1250F4
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 09:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708679489; cv=none; b=E6UZyx0XRUbtBDQIBVeTEZcy4YsB4LcO+XVpW6Vu0h+GlTmq2lWnrjaxlvgmtxz4Ax9x5ZGA65aCwlSx4ZibBiOEEOhtLqWMtbjjxPPw+fVYo+M93CveEwWv0qe+Z45Iasy0oPryPZb7PIMaZbaqh80SIzsqf8Q8dsrru8P9mOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708679489; c=relaxed/simple;
	bh=IpkfMNeyeLubIoGLauI2jl0iOwiP1kjt0u3vJSlNrZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gDiE7aZzb14dLXQMILJVekKtLBKKx6lBum3KHrzoHwMYCQe9GrOn1YtfJAyhXL2bUMKpLsKjJYOC7/ElP1Hjm9GizF25fFilM80XsC7ra9+Dy6gnL9+ldm0lopZ23bnh+/loXQJPMUfpk/Wnwc1rlbjg5QoZ4WDFWxEZyGf8ffM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ahvgVy80; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5ce942efda5so434595a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 01:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708679486; x=1709284286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DXXgc5ooBuiJ0rd83JBNXgx7wSQOERYhBcUIH8zsNHg=;
        b=ahvgVy80FzqZM2b1pxq+iPu1krgJidruwPGDCV00aAOXT2SSm4fWttjq9Q8ixCX4NQ
         jZqBKZPwVmQIXKrcodzEanZCLHjftFUyBsUPaMQZVIJ/w3wYvwyOZLECzsEHNccW4+wk
         MD7Xu2ggsfJZK3w8VwR3Cyh4mq8yP+N3mxMCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708679486; x=1709284286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DXXgc5ooBuiJ0rd83JBNXgx7wSQOERYhBcUIH8zsNHg=;
        b=i/HUtYiPpOf2gAP5mIGydkNnWVX4Hv4R7ZbS1MZqQYcpg8m6RLq6w3lOuAu5weFU0I
         QEl6/wadkYXORq2BCyCtSXbJPDELh53UF1MfcGPDmaPyzbksc+rKdhVj8k8l3tbKyLmu
         JaamX2B5HtKdRQ5h00qS8N6kVQVqKfLtQQ3lNgLjDJjJ2nXbaDg0LkpmxDBumlOy60KY
         7rF6b4LsY7OjWeuJLcZ5a/wvVk5TKTGGiQgkvsBKBuQofhU8Ze8GepKXAD4Avydx0s0U
         vaCwYocxj/6qAOAa06AwmDZu1+mIe0dhCBgjO/oRhy7QIa91++xIcq6uxf+ppOCaU3yV
         t0hg==
X-Forwarded-Encrypted: i=1; AJvYcCUzjKSk/FI6Ydi/j7ux2WwaE0ZHQpDTr//4gcHJnHf6BDr71rqb0z2l6bEQjaT0mgEVCT0tUXpbfxcNTWfQjwpa0V8NHhjA93MDYg==
X-Gm-Message-State: AOJu0YwMLW4NJelhdgXTtQ+9jKDKY5G7woP20zen0NEvaUSm1Urdp0Zf
	/oJduUlFT7AqXy6c0HCLCDUlu6qtJFxdhz1EHKrRLKr6A4BBkHzjZrU2CC3JpA==
X-Google-Smtp-Source: AGHT+IFM39/h0EdoH38mYvLsCTE5nkHkOj5XRH9crL4wqF6Cl8jNvanWO7s0CrDHOhySEbflpAoyvQ==
X-Received: by 2002:a05:6a20:244e:b0:19b:673d:824d with SMTP id t14-20020a056a20244e00b0019b673d824dmr1490319pzc.46.1708679486692;
        Fri, 23 Feb 2024 01:11:26 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:e0c9:81eb:a87f:e8e7])
        by smtp.gmail.com with ESMTPSA id y15-20020a170902b48f00b001dc05535632sm7800365plr.170.2024.02.23.01.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 01:11:26 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Ikjoon Jang <ikjn@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Weiyi Lu <weiyi.lu@mediatek.com>,
	Enric Balletbo i Serra <enric.balletbo@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>
Subject: [PATCH] arm64: dts: mediatek: mt8183: Add power-domains properity to mfgcfg
Date: Fri, 23 Feb 2024 17:11:21 +0800
Message-ID: <20240223091122.2430037-1-wenst@chromium.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ikjoon Jang <ikjn@chromium.org>

mfgcfg clock is under MFG_ASYNC power domain.

Fixes: e526c9bc11f8 ("arm64: dts: Add Mediatek SoC MT8183 and evaluation board dts and Makefile")
Fixes: 37fb78b9aeb7 ("arm64: dts: mediatek: Add mt8183 power domains controller")
Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
This patch is long overdue. Could we merge it for fixes for this or the
next release?

Changes since v2:
- Rebased onto current tree
- Added Fixes tags
- Fix up subject prefix

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 93dfbf130231..774ae5d9143f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1637,6 +1637,7 @@ mfgcfg: syscon@13000000 {
 			compatible = "mediatek,mt8183-mfgcfg", "syscon";
 			reg = <0 0x13000000 0 0x1000>;
 			#clock-cells = <1>;
+			power-domains = <&spm MT8183_POWER_DOMAIN_MFG_ASYNC>;
 		};
 
 		gpu: gpu@13040000 {
-- 
2.44.0.rc0.258.g7320e95886-goog


