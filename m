Return-Path: <devicetree+bounces-60613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2464A8A9CAF
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAE65283559
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8695316EBE2;
	Thu, 18 Apr 2024 14:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BulHbMSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5813816DEB7
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713449846; cv=none; b=N40il664PMzarWgekiSgJcYvPVUrbKMoS3C7ZCPLdLVHxgn8tyoyH2xr8LLZS4EVOWb2m4ziIdfJK4iQmt3uRRQmHJD6GV1y9HKcasEfmAxOiUf9ZqGkxUemDQ/Nkf9yUSgv+H4QJuoDgnOteS3wgUpvL3HfgMOGKpGbCYduPao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713449846; c=relaxed/simple;
	bh=BKhifuqO0sy71Nu4A1KSbxN+I1Z+YvJLs6VRSUaEjAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L6vjkT6T2o4P+oEk2FUmsm4ko0qR1REvbTo+X2Yq2mOZV9A9PoxG+4PXI/+Gr/2R8uioLxL9FqkFfelpyc97QAkkS2KtXFGfNPbr2b48jyygQRZLnPVStB29yXdQHeXgQU4mDlLfuw9/XkQ+lczhu5Vj9fYoec1o+pNfyZbwohA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BulHbMSg; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41881bce4b5so10006005e9.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 07:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713449843; x=1714054643; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ILqnL0OktQ/LIYsgUIgYWy5kPsb7wTxeiRyz6t2wdXc=;
        b=BulHbMSg2FKevUNa47rymS8wCRbjS0f08WHIXzDEei+7u6JT4ZlTmJSoyI+lbn59wL
         gRI5Ej1cRtN7EeEMQKT0wdL1vcibTt5gcJel2HMVYNT6vBmz1a2nz2K4o3WO7lLWqoxU
         lNWqdJ6lT1oTNfbpMcCGjkSll0DobGoScgXN5msmytycip5cvlQJ+z6z988L9nkr9v1W
         UqvmI/Wyw38Yb8I2WQ5d8089fpkLKxIfXJlplTz/CzEFtsoWcTjekJz/kZQQ/oJ/VBjk
         EYdtLb+g33a1nCcD0lld6cOus0L6f/TxAijQYJGKLQf/wb/ujVNeaoWucGg/j6xq2Ajg
         XFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713449843; x=1714054643;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILqnL0OktQ/LIYsgUIgYWy5kPsb7wTxeiRyz6t2wdXc=;
        b=EvSqeTMnRQsIIyoIpc8x02b6wY+gvA3l2CVbtxfusKzav3wJVKqVzwUtCjWJnsQVPQ
         7VZtQBr5eY2g3IHs35kHCg9WD9qXxD2viyelQhq2FFUp7395q0hY0YxwG4hE0jnF222U
         GQWcOuW/jVLdl6PydIjkqEMCznS+PHmy2VWueCbtwX9VgBqGVG/Je1LH85bxER4vYDmB
         XNOHqrqCgARFCvIhjz2pGuQ/9JJzrWmQ+/cy1WU+TzpgeC///3UsRJERrJYR57DxFGAr
         iEMDljKrs/pi9PWmnR9YwcEfqVnnJTZl/taxxvr827vY4QmczHxamLcZug1r8TSwXIZV
         Ewiw==
X-Forwarded-Encrypted: i=1; AJvYcCWtu6+3XDJJ8XNmD6oRq6ujH95ME/AVP6r2iP2LuupP/Y+7pi3iJCQagd+QHMOFaQCBFkDbAzxXiCymVs4W+g24R1pLQ8kBaUaCRA==
X-Gm-Message-State: AOJu0Yz44KJ7eMDW8pgNUVzxS3u5HmnXchJNbiZh8G7BQJ6S/F13Tahh
	kJLOz4Wzjmo8EMLjmMYFAZdjC8ZpYC5Zr1ph5cK305Y1gzvuGVMOm6wylAExGco=
X-Google-Smtp-Source: AGHT+IHyKsYwGwO7ULrRiYYwF8ZW2m1ZUJ2Z3L1zSIq/n7fTc7G0u2ITdvLEMVBKLfBuIWSClRaN8w==
X-Received: by 2002:a05:600c:3587:b0:418:f8d3:ba12 with SMTP id p7-20020a05600c358700b00418f8d3ba12mr520839wmq.15.1713449842833;
        Thu, 18 Apr 2024 07:17:22 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i9-20020a05600c354900b004180c6a26b4sm6267510wmq.1.2024.04.18.07.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 07:17:22 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 18 Apr 2024 16:16:56 +0200
Subject: [PATCH v3 08/17] dt-bindings: display: mediatek: gamma: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v3-8-53388f3ed34b@baylibre.com>
References: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
In-Reply-To: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1035; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=BKhifuqO0sy71Nu4A1KSbxN+I1Z+YvJLs6VRSUaEjAA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmIStiATNoA7GzsswL1g6KqC0AIwEpZuwbB80csMVY
 gEaBTUWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZiErYgAKCRArRkmdfjHURRBkEA
 CzoHzDB7d/jXZ68yDDI7WwNkPP1vmd/ZGPXUEBmqiWP8vu6+XmRUK4YlwIjiYpcA3XxgUMLfaT8ZJp
 ag3s8rhIZU/DVNJJMMwGjqdwUyrNrVI+Gv6mZCS71CIaFfDd4qeL+jxOURPhZzEeK+z9ltzMSJbSHJ
 YeKfqPR5ezXo3g0UeVztuVZryzFfIAgc8d6zEKDaCraxvokkqOAmtAFGqDDmmHNGxEkZ4b7OkiICVg
 UpAkyoMi+8uWBDe28vgRid4Aq78DGXXTN1zQfMSrzNbmN++duumQ8WjAU1SvO7YLtWT7h18YP+h6gT
 pdQoYT8KVT9q5sxc8cS6SBTl74cYwbaDc108PlBb5ijKyQMLraCp9Q9vKOY49C4/oYdSATieUfzwMj
 ocgWt1F2nM9d5S+SdOd5PPomDk1NLP2eEHvbnbvpl0zzE1P4oHHgUcOigHc8+Ur38jrON38ebeVALo
 h3HC44zC0tzmrMCGlAvT0ue5k22adRXynT5aaBbO2+Dv1FodPuoKaNyhA1m7b0GEZGlJMGPOtp+nvz
 zhxoctdBZmiH9+jkulsDpepNJRiH6PpixE1y9uGxi1ZmcMKD3k6uQY7HIIfKCsWxFG4KGmeJKiSAuG
 uDuDZgG73dCYhnwzYhSyatIpQ/BZzkXGVm2oC4EV86ZgXoZIz661a7QOCrmw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Gamma on MT8365, which is compatible
with that of the MT8183.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
index c6641acd75d6..f447f4320e8b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
@@ -34,6 +34,7 @@ properties:
               - mediatek,mt8188-disp-gamma
               - mediatek,mt8192-disp-gamma
               - mediatek,mt8195-disp-gamma
+              - mediatek,mt8365-disp-gamma
           - const: mediatek,mt8183-disp-gamma
 
   reg:

-- 
2.25.1


