Return-Path: <devicetree+bounces-184047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BEBAD2E06
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 676F73ACB6F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B3B427A127;
	Tue, 10 Jun 2025 06:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e5o37NNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD7127A10C
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749537288; cv=none; b=nPs5sVJXS845ANHSSMHDgUPjc1R1lr4YbspoqyENJ2fxOsh6hFjSsgwCtyp7xZWLmbWDJco4vZR8HbGWd4u3UKYOFoWshDkb7BUxB/6+XytkzDHQDzY4lDZJ8GkrutRhasf7d9/Xn57dxmf0GZ6GKTV6yXLymiy3+AhrLTA9Tok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749537288; c=relaxed/simple;
	bh=i26MHPsWyMpA/vIVdZLIh+KpoJG4cIY5pq43DPT70/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tjE3tK7tFnHkaUv25apSjXI+u99+nLmzPRp9jzf+SjNSBEvM+7atAQ43qeCcU9kzkPJJWuq7ULkQw6VHWHwhxC20k+VADoypVX/azNcuFWk3p4uXABrXPWVVahkA4PdgEHHMW2vDWi/BqJJF7LI3mlLqSgv87E8SVSkCij9EG7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e5o37NNI; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b26f5f47ba1so3401488a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 23:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749537286; x=1750142086; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9s3bFxA/iUmk6qSfJ/+0ju+9AuK7egSHjY2rer4xcAU=;
        b=e5o37NNICsXR46EMRSX65qg7lZBkvSeUstYBUw/Y2pgQEWWXTZbg/FuQZVfuKbJF33
         oFUwIBXi5+vKfmRofosvsE3IBLddaNfnSB6TnnujvWuKVGOVjtHUyeJkLypzYRRa4N4w
         TVrOz95cn0vlRDKXzUesUWWu61EpzbEWAkqfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749537286; x=1750142086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9s3bFxA/iUmk6qSfJ/+0ju+9AuK7egSHjY2rer4xcAU=;
        b=oHRC2QpA4AByU4rAEr34m8H7NBeL+g0h7F7KreX0kd+m4V46eRzc1xNdhw3b7uP462
         RwzQXgCc5/cjD7XDhHrJVcWrCiAhwEzPF27RF9fjLXJt0fVpbhoDqkRFRUVisMyijmPT
         E24SVLK76ZhVSh9BGaxgXyG/Q3eIQ3/rQmqrwGoxAV6o74maXYw9NtXWPmsaLD/lW06m
         ucfo1CFiBleb75EjZCxjRQWE13lxbjmC4p+eIHt7OUT8eDVKg7HPIhGPvNRYGZDtSsDd
         3Y+3Sa3daeRBQ+Ty0TMyTsxxsgUAvY3h09ZRdbOSErnBN8w7SADuqyZTIFllCspDqTxr
         2GmA==
X-Forwarded-Encrypted: i=1; AJvYcCUp69WZx8MvnzXoMc3ffYBiVyZXIpFqX6nTAx3XsFkDaiIPFaSs0Rl/nOAEiE/HZHBdAyyI1pOCT35V@vger.kernel.org
X-Gm-Message-State: AOJu0YwxquucIgyY1oPLG4FfsWP+24uOojCVky3N659ylJoDCqLv/gP9
	usat4DV1rOxYIHA5zffRwet+kl/rx6OwEwyMWGPzNgOvg48mwOnRP6XMfOtOoBeobQ==
X-Gm-Gg: ASbGnctNsvlhjm8IkrvXhTwpsUeowrPUJKcd7HJKGBIfXNZrpT91lEr0W4BYOGyYNcr
	HULOj89r/sCNq1ycN4hJBJo6VqbxJQKKsKGoNBsB8D3m8PDc5AIbPgWz7nyoZdgapUNR1hOV4f6
	haa7GddoyOrmz0hOEg+XSWCF9Slooxb8i6RkX43bVlkOjJSXz3rrKaGDs2sZzhI/MeqBDVZ7GzK
	1IcNd1HGTPL1/bqkGvIDWok8LwvH6x/J74QxGs7yGy/5dgYDWqzRlt18asXiB55ajfcFItIO+FN
	sJ65wfUAcg+2/AbEs94eTpYvNfbcBRF03y47PWVQn1yPkokVP/o5/ie31HBDlEr0QIwsVrA2CT3
	yid5EZ6muksxJDHg=
X-Google-Smtp-Source: AGHT+IFSfenrPgpYS8YpG+M5+osrGMDb3jGStM+tUH+0iHwn7+BobeG4OBWi4Cm0UHiMF1nHBAIopg==
X-Received: by 2002:a17:902:d58b:b0:235:eca0:12d4 with SMTP id d9443c01a7336-23601dcd1f1mr210895915ad.53.1749537286555;
        Mon, 09 Jun 2025 23:34:46 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2826:ada4:efac:14e8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092ee2sm64596765ad.82.2025.06.09.23.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 23:34:46 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: mediatek: mt8188: Change efuse fallback compatible to mt8186
Date: Tue, 10 Jun 2025 14:34:30 +0800
Message-ID: <20250610063431.2955757-3-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc0.604.gd4ff7b7c86-goog
In-Reply-To: <20250610063431.2955757-1-wenst@chromium.org>
References: <20250610063431.2955757-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The efuse block in the MT8188 contains the GPU speed bin cell, and like
the MT8186 one, has the same conversion scheme to work with the GPU OPP
binding. This was reflected in a corresponding change to the efuse DT
binding.

Change the fallback compatible of the MT8188's efuse block from the
generic one to the MT8186 one. This also makes GPU DVFS work properly.

Fixes: d39aacd1021a ("arm64: dts: mediatek: mt8188: add lvts definitions")
Fixes: 50e7592cb696 ("arm64: dts: mediatek: mt8188: Add GPU speed bin NVMEM cells")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 202478407727..90c388f1890f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2183,7 +2183,7 @@ imp_iic_wrap_en: clock-controller@11ec2000 {
 		};
 
 		efuse: efuse@11f20000 {
-			compatible = "mediatek,mt8188-efuse", "mediatek,efuse";
+			compatible = "mediatek,mt8188-efuse", "mediatek,mt8186-efuse";
 			reg = <0 0x11f20000 0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


