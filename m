Return-Path: <devicetree+bounces-184313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09023AD3A7E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8329E7AC9AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD4E2C2ABF;
	Tue, 10 Jun 2025 14:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M2KtoO9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6292C1794
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564385; cv=none; b=Lcv1GmYseB52DPV5J0EDm5adgbm9w51LWTR+qiNj1lpWVD5GO2E/08x4NYEpEKcsgGBs3DqtKaFXdawScp7KIpemSkMHbcWN5DOUAdaFHemKWB3SKfKB8L0vWIiJ/3u/6zHLMTfg90crsv4ozGOR6CK7HUtejrV+XAT24O6/d5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564385; c=relaxed/simple;
	bh=hOZPlM1KyWeQGK+fAet9Nxs5Wt17jNDUM1Ff6e36WS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GwiTXSR3rikxBMP3l4jBpyR1y8TwzTX+F0IkqtuW3vLOzFZUjci+GzOi77HCIrRsMiowYZZH5maZvH61oxwUFtVDOWhmLIi3XS5OYVNcBU+Pfql9P99Ze4lNTFjTVFe8GHNckaUNkh6qPTfYSS29LEMdbD6bf+ZdjWbnOU7TnuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M2KtoO9t; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-44ff4081975so1375395e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564382; x=1750169182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c08nNQiRjpMuZiP/f1jVDn68latr5bwhdLQgcHIbV2Q=;
        b=M2KtoO9t0tnmiOKPKbKIwiL/wOTAYzLD7/5ictVkbGj6PVVqXgD0bkb3QQPBbtGj5a
         fkzN/UWJJjE+C5/MDdrBkWSaRJw094HFiayM/Sy9M5Q5l3PQqnyjMx/AYBlqig3TVThG
         2X+Am8JaOYtpxW/gG3TsgemAaVI/n/raMgQv7YdQoLKdT0S1NelesWZOBe9dcVt9LFSh
         Vg4m4qNnTfGpI6uZuJrA1W6pCmVcZj7/Gt++uvdXBtZrSnjpsbc0GgZvbFOxqmL/GWAB
         qbHnw1BaIsCoHHWkafHeVlPEZtQH8gSG+QVWgnD/isp9ZKxbmJExEca2xGsIemAT3n69
         GcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564382; x=1750169182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c08nNQiRjpMuZiP/f1jVDn68latr5bwhdLQgcHIbV2Q=;
        b=XxabAqgJzS0NTGX5NlDAfSG4wEuMgdawxGcifzff+x01pWUP4oR0mFtyOKjBJ6l7Fl
         mZFnShxVcy3lXI/aQjV/xBFsTF+V0OE0f8tpjoZ2B1e7qFLIp9v2NK9KRs+hhmXJY6xQ
         XrH3zuidzbKMEB+GT/2I5F6xudKOKdCFY8HDenQx5yeVY3fwZdEc+73Jc/IA7+1txeNS
         c781nEOABXQHPuYfgQziwXX3tmqq0icr9EUtyl1N1uRa6YG20V1ZXKLOBw1THTbkZndx
         WucC7lDG+7Dd0lsbzSioEVQr+lbQJFf+5XbvOce8hqy5t0ALIXhXKYkF9/hIA15q/8Md
         j6CQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+ahK3nyvDDV+Z9kiXiOEe78rzqNcrcR3l3Pgp7Nrj9Ud06oby9KVdUw5gVs11oq7AMFGKELQQmpnz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/XS/1OwS7X4vsf457NKROJQFSV/Oe3maYqxKMYM2xbnqevSVb
	TmWkyWIHg8SzWNzx7U57QAqpRtZOOT/z9+GFjADkxAhNgd2y/+H3/Tx99tdN2ld65Es=
X-Gm-Gg: ASbGncvaQH6Ab+Q3ELGV4DB3OcA10a2ruovj+yRXCH7tFbRfPiXETZY0urLcxUbvH69
	JTEclM13rX46IPN8UH/z67luD4JHlaTkR/jUw6PXVtilx8PAsijdHG2nDGiezycsV6XqvnUNzvb
	QaYq0MBkQcH9l/1I8jNw3BvB+2vyEbms3RpXb+r3xgunMK9FaliXDtzWyV6tea83mfQZwY1hQhk
	OPHEu7TjeUIw6GxbEC4Jvd0FnlOPIK3svwVA9+zVpvxQsQ95hJWjf+VohBi7K+rk7bWf4APl6zw
	h5CNzi340PCt3K1ZobPMGwwrr1xLQDiyKLln+SRgYZbCUKmVgWUjRSaYSMvy6veAiGNqACR0Iq4
	mq+UYMA==
X-Google-Smtp-Source: AGHT+IHDxukPheSrxBOvxKpZYaa8h9T+95Gg5jKYThUcUHQbgCqlc/EbIO/Sp6kjBnRf7HNWZ6eJEQ==
X-Received: by 2002:a05:600c:c04b:20b0:441:c5ee:cdb4 with SMTP id 5b1f17b1804b1-452a470122cmr33063215e9.4.1749564381956;
        Tue, 10 Jun 2025 07:06:21 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:44 +0200
Subject: [PATCH v6 06/17] drm/msm/dsi/phy: Toggle back buffer resync after
 preparing PLL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-6-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
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
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1275;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=hOZPlM1KyWeQGK+fAet9Nxs5Wt17jNDUM1Ff6e36WS0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDvEFaGVfcvc7I+WsKnLa00SN5QPTkSzfiWGJ
 PahrGboSN2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7xAAKCRDBN2bmhouD
 1/FCD/996DPQkeSTgHdKYXZwdFyt3uizbqcoRQhLkEEg860tSjn7Kte3DUkvlR7EWtxQc1vwNij
 h6zflWghpo2l50dYyFTsw/N7CR6NRHryv3B7+nv+2r33l7WcaoFYkGM4FsAkCJKMPl6bGpRNQvA
 9jYFY0BIHeuFg8AXYSEvLhDdZ8R+Zdx37F7ax1PugZeMApDCjDLkq9ba2ok7D7AoApGrHVyuZce
 kRFTFCEytra1l3KwEc4Mn+XdmielljNWWsKSC6JX9ReyWvrwewEpGU7twwfCxB7LwVqmnbhzP/Y
 OpmQ2JKetVRFnfrvaNuaTttsyTjub1lLnKUP5t23B8qKg2BrTwdsdVbvD8j6L0ykRwn9BMAaOAu
 z9dNv2P7/vnLpPNE1JmD8TbtHsmK15kV34zypREhkFVycSF8QAeMOA1Mr2SY5MXginxjTNRkS3H
 DHBBUWus08o+ao5tXURP0ryJuFyaWOJ+omsvAmjClWK2RIWoZLvhOAoPHumWwrZ7c/FLW3Fm3XN
 7CIJpoOxTfq/cRbfsadOyaALh7+jFh5l6qhA5aFXQionaHY2c+4Nxh680d/6/sTx/hEyXCmoXD6
 wl5tCEHIljBGjnYYUs2fMNCaFMtpUQeNbctmXaAWguGng2Fehbc2OAm4mwDti2rpffedGvjZJix
 lW03btC9avV5Gvg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

According to Hardware Programming Guide for DSI PHY, the retime buffer
resync should be done after PLL clock users (byte_clk and intf_byte_clk)
are enabled.  Downstream also does it as part of configuring the PLL.

Driver was only turning off the resync FIFO buffer, but never bringing it
on again.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v6:
1. Fix typo in commit msg

Changes in v5:
1. New patch
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index c19890358b7479c85c793aa7470904127c2d0206..f0ff6c9fbc2e6d28c96c08114c0f417708d70b10 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -467,6 +467,10 @@ static int dsi_pll_7nm_vco_prepare(struct clk_hw *hw)
 	if (pll_7nm->slave)
 		dsi_pll_enable_global_clk(pll_7nm->slave);
 
+	writel(0x1, pll_7nm->phy->base + REG_DSI_7nm_PHY_CMN_RBUF_CTRL);
+	if (pll_7nm->slave)
+		writel(0x1, pll_7nm->slave->phy->base + REG_DSI_7nm_PHY_CMN_RBUF_CTRL);
+
 error:
 	return rc;
 }

-- 
2.45.2


