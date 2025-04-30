Return-Path: <devicetree+bounces-172452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 885A0AA4CD7
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 15:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B923189E722
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7522798E8;
	Wed, 30 Apr 2025 13:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pB/6tiNF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBA525B69D
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 13:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746018108; cv=none; b=QF0dxd8+9YeaDS3lNysUz3zJRNVyndHuwkUaOk6temvwPRvoLJ85IxDVn3S96V28EGxJ9+Uun6iesjyoBQjHcYsgzbQ3KIgUxScR5oNvRx/EZRyQPZF2xJtsO1NLLChdA3GkJr9H812PGmvLDo15/UzPv54DoaBZseYdljPNdCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746018108; c=relaxed/simple;
	bh=2t6QPsi0pxY1a6kZTxQbsSl3TxAqc6gHCst2b5GPcUM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dME+4pB5ffRr0SMIejHZLm48LXmvEYLMcQxKvl9X9g/aZycn+ZALjx43/dVc3E5fUPbEMhT8wVWaEoVoDUvy6nz/yqcEZThzdIwDb1sV/tkYsMVcsTcb7ldK+Uu6KQ0XDgEFN9Tywl2N/9t/vHALKi2oSuMK+YWm+x46cLm2N2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pB/6tiNF; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-39127effa72so840604f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 06:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746018105; x=1746622905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdNjqQg5i6xRoghCD29CUs9wcbOvm1YBLCx0SR2ko8s=;
        b=pB/6tiNFYAv6+SgJ6xCM+JkWScq4yFA0Cm2VR3qUsdaB7upBKhk3jOpZE2PL/p4XM9
         uQGnOYbhxRoZUpw8l1gYRG0SN8vvFJyYip/bzRqZfAY5D7/t9Y1Oq5fMmumVeqwvjfLr
         RPy2qSyz1FsWoV6AoDLiKZtuAAwRA7X1zP/iBzxqFhAAOR/esleQV3MPsdAfZHllffjV
         k7tdZf7DfUcGJAWl6GM1UortDtDMEkd/AuKQuzCaMdDa9+3tyF1i8PreCWJXyZs6KSut
         F20YGI4UsZnfKodxW73lfJGXxf0fyIfLPPag5AQO5Juw85tpQ1+KAy/XLGZYWy5f84xW
         YEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746018105; x=1746622905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdNjqQg5i6xRoghCD29CUs9wcbOvm1YBLCx0SR2ko8s=;
        b=AyxtU6Le2u32rL5oVCmRKc+OcvdBX5WLyZJJ80Gyc++6T6AGeIM40L2fYR2WRXCV45
         kw5OyP2wIuXUit7D9PBhnighDTyupKl2GFYhbQf50zVAc2YcSZYwkdGMfH7Zdclxy7vQ
         w0x7BXqDXwkMfpYxqW5QsJn3/forTTVBJI4GDAkG0boHuYSGOx6OHOceSmDzaTPFDzdf
         rYO/GWoP7U4rLapzecx1Z3ilZTS8Emxx3nrHVvuxSAL5tAGPVgpzQC1cBDwF5NWjjHGL
         Q/r0REnCPZQF+q9LsLwe8nNwsMl12iZ6AUv58ExXG835yVvWko8yMOXtAyakxYeFAkUP
         Zprg==
X-Forwarded-Encrypted: i=1; AJvYcCUbiXle1bTrf7LKzoQ8BQWa2e00ufB75+bkc0iGeXA6JFHVURW62eyT1ZlQB3tenmytuE44zHcifdhl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8tmphJ4HngvF1anwS6JiZexv4GDyGLTfW9yCh07VwxnWha+FM
	8SKwzKGj+NeCu0llDM9TwMV3y2rE6wM4sUPCd7wcFt2QH/vuYhPF6yeB654LZa4=
X-Gm-Gg: ASbGncvQlBOIArc5LJgTcWahyId5dloMnovOeSctK1v4R3AG5o+XcqyY8B/eP/hVcW5
	sf6eeZuxfT6N+QrwtMmWceVbK5kE0nlfJxylCzKgIVvtUBxeM7GSiVi51tQBfOSNzcck1JWSLrO
	Rqjm/Mi2gAGwekc+vAJKjd5q4FA0W4JLqsl403cGmmwt63RCltzvjazG8bkzyqMfYD6g00oJuTH
	2JjSbPaazcfOUEqrNvQYS434faFBArUjgafeeQO3qxCGrQiOlYepk42TtPq0eBSsSehm8HxhQlc
	Ck/lHMrRS4VTno95CG3cIERf7a2f1cxje/y+ssZQ7JISGqK+yZi/axeZKgE=
X-Google-Smtp-Source: AGHT+IFrgdHw2G3ThHyw+zHpXfvGXZSVC/daQYwimx+KIaJ5PX0CRIcRbcsF0f+UXF7qbDVKSETp6w==
X-Received: by 2002:a5d:59ab:0:b0:3a0:7119:cefa with SMTP id ffacd0b85a97d-3a0900a0a99mr662375f8f.16.1746018105000;
        Wed, 30 Apr 2025 06:01:45 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e46c23sm16884043f8f.75.2025.04.30.06.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 06:01:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 30 Apr 2025 15:00:47 +0200
Subject: [PATCH v5 17/24] drm/msm/dsi/phy: Fix missing initial VCO rate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-b4-sm8750-display-v5-17-8cab30c3e4df@linaro.org>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
In-Reply-To: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org, 
 Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1696;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=2t6QPsi0pxY1a6kZTxQbsSl3TxAqc6gHCst2b5GPcUM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoEh8G8vQCDrXJtkTKD7N3kyzVYBmY67yyMFfaf
 aomgEcsva+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBIfBgAKCRDBN2bmhouD
 13RED/4mdfPv2SuXIDBaNuedJNSsqS/1UuGMwIrCsnYQ/1jUdUQfMROL4GffLt+8vVaY35TCfRf
 vWzTZYLEwqMkhhHwQgEReQBEv0Kn7DYDuE4fUKQyJOvY8gs6KGxKTr1HiPB+/tbQ6ls8DV77SJu
 SHPJnvWGtzeSDZHy3drB3svbbHDuKwLKPFH+wZDTfl44exVfkmoZbtF4WpYQev7N0n+qwgI2YLP
 dUhLmUZqZkHY5PmXGugWB/nxO7/sslXPwshiCyXWjyFxS9zFAGrtr6COdiWPMdAAxfbWJOJBweY
 LHGFL+vs7c2wbPxhWg1x1XHkH0vN/CuiW1Wo19uqIfVpqb/5YoEfidHwxjrxW8xXH5gwJkRUvoe
 Z/O4UOeoPXgOpAvkUM8zb/pkZ1m20jzkRED6TiVSUuae+6HEmX8RJSSh1C+bSjg6S9hJhJy+zBO
 FZ4a5foLdspvU/a0YCFZlQnuZgMIu3s0gGr1YnF0WPmoGUIaUcpZYQuT7Wf6qvyKnAC0efgDuSz
 XSDeTtenZXl9LbDByZ2pjaogA8hnD76jBYZ4CKI+NsRALH6EFxbM4gNZrjTvBuqz8nkVx0zT0l9
 P6veu9eY3cvN2UbUMdqIc2tEK75+7imNDnUO4gHOrYTjyWLUG77IrP15wNJvCC4c3ov+ufjhmWC
 D3J0hKzXFW4K0ZQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Driver unconditionally saves current state on first init in
dsi_pll_7nm_init(), but does not save the VCO rate, only some of the
divider registers.  The state is then restored during probe/enable via
msm_dsi_phy_enable() -> msm_dsi_phy_pll_restore_state() ->
dsi_7nm_pll_restore_state().

Restoring calls dsi_pll_7nm_vco_set_rate() with
pll_7nm->vco_current_rate=0, which basically overwrites existing rate of
VCO and messes with clock hierarchy, by setting frequency to 0 to clock
tree.  This makes anyway little sense - VCO rate was not saved, so
should not be restored.

If PLL was not configured configure it to minimum rate to avoid glitches
and configuring entire in clock hierarchy to 0 Hz.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v5:
1. New patch
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index 1a0f5c0509e6dcb04018c3e93aa704c7221a4869..9c7df9e00e027e8a8b1daad7c11dcfeeea52ca9d 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -861,6 +861,12 @@ static int dsi_pll_7nm_init(struct msm_dsi_phy *phy)
 
 	/* TODO: Remove this when we have proper display handover support */
 	msm_dsi_phy_pll_save_state(phy);
+	/*
+	 * Store also proper vco_current_rate, because its value will be used in
+	 * dsi_7nm_pll_restore_state().
+	 */
+	if (!dsi_pll_7nm_vco_recalc_rate(&pll_7nm->clk_hw, VCO_REF_CLK_RATE))
+		pll_7nm->vco_current_rate = pll_7nm->phy->cfg->min_pll_rate;
 
 	return 0;
 }

-- 
2.45.2


