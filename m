Return-Path: <devicetree+bounces-90767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E29FE946C5D
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 07:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9767C1F22175
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 05:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E601C68C;
	Sun,  4 Aug 2024 05:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ngwoZELE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0081643A
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 05:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722750026; cv=none; b=m2CYVaQJjXOo62VoTiup7GEslPD2ucePy2o+K3Yg0J0/Vy87hjW9NSdcWQ0AJbAvb9giQpMb35eulgoyniRmMnV7Erwf6Opuumvcim6XfxYbPt1Tj7WIVu6pH0c7Zf6YFFDeIZqOA1efplDnvpEhg2HF6WeMIgyv/0MRpeV6q7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722750026; c=relaxed/simple;
	bh=ZrQo3KWLh48xJDJlDCJhnd58UA7Hm/hQisnNq+wC8eQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n9TtfvcvgURY6qqsoUhQzWA3zIYZaaav0wokpkhgykxe9gPPoz+AkQRrnLz4lN55mQIA7uw9ktH0QbJJmw3rF79xCPSwJJ3x6eRl+KE2KesScHRpMQdt21qEC6rdki1PJR+dUPjbTdKn0iEPn6KPLui6ZYC91lRiWZ0iymw6KfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ngwoZELE; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5a156557029so13936166a12.2
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 22:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722750023; x=1723354823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EYBxyQ/YvwiIHaG8jzR0Y70dVbuym8PFNWRpFtHQEf8=;
        b=ngwoZELE+oofageJ+Jk7kU3B+XlQdxE2snHsdxOPDGbyemKbEYwIEYNNBATA+iuYSU
         O32EHhkhDrMMTmABzzGbzqiioDZX+q0fUC6qurywgbtgftM9oRRO5LdNrgLNHOl3L5s9
         yR/4eNVdMmNTtwtIlW6A2IJDz34PMiZhV7YwvGUh/PTsfvzsHEI2FE6UVB30gV7yA0GT
         jVFNlDXxK8hZ93EQsVgRDmV67ggJPEuTvAzTFf5OlV+qYp6VNd3zboPyDORrl7Z2up6G
         nV0Ju3qt4eFvl1+muhv9hAK9LyAj/dnmf4K6uhemMJP50lhgSy8fFVm5uLmj8JLK5l8L
         MuHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722750023; x=1723354823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYBxyQ/YvwiIHaG8jzR0Y70dVbuym8PFNWRpFtHQEf8=;
        b=SWI6oUYgWjboAd2L6Qwcb+Lzp+ZL8/uHO2HaU+2oYnuYv/nTESogIxncbnmRND4ed+
         k5q5cvSn9WOHNNZB9BRV7jhy2f6b9OSjz9P+Am0JY/A3vAB47+UoNwPiNbujXBV6OQOE
         udRfBFY2jrQ7u8yk+kIUJSKk9UN8LI6fpO+SvuEm4l4FFv3gjB+CAJaw1lmj0bfsgFd8
         RY18hM0qtjqEIzun8ve4OLvLP284M8HePXP6dIMjpllmSy+p/MmolX8kvLUzLZwIcIRs
         EaI1eO2ZVyr9voWUKN8WEFAZImANy5HuH4F4tNgswsZJEOu1Sj1A7S8XKidF16qXZZ2x
         uZXw==
X-Forwarded-Encrypted: i=1; AJvYcCXNf9c4uZiNaBcpK8HUXOFDAjoClc1cLyHAcpb8a+BIa+OaYiug7KgG732fwuJbOf6oqwBcbN+5CRgJVM7kHP76he7jzWnGVKFlhA==
X-Gm-Message-State: AOJu0YxXT2JKKrWULugBlM6WShP3ethvVoLnwVb9ZKjDNVAk0uDGy+l+
	27zxzeHzEqZ/qn7pGmkZNkp4mORDjUgPZNdfLGH7yyz5hvp/tGYYm+v/b1w0WE4=
X-Google-Smtp-Source: AGHT+IEb56JcXEdp3cHrbP3Zdb4R00iMmwymYCH9bJ87K9H4uB8Y3mr62+YvNqwi5wZXe7TBUA0HwQ==
X-Received: by 2002:a17:907:7b8d:b0:a7a:97a9:ba28 with SMTP id a640c23a62f3a-a7dc4fb6a93mr575059266b.26.1722750023107;
        Sat, 03 Aug 2024 22:40:23 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9bc3bd7sm292248466b.34.2024.08.03.22.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Aug 2024 22:40:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 04 Aug 2024 08:40:07 +0300
Subject: [PATCH 03/11] drm/msm/dsi: correct programming sequence for SM8350
 / SM8450
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240804-sm8350-fixes-v1-3-1149dd8399fe@linaro.org>
References: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
In-Reply-To: <20240804-sm8350-fixes-v1-0-1149dd8399fe@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Robert Foss <rfoss@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mike Tipton <quic_mdtipton@quicinc.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1635;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ZrQo3KWLh48xJDJlDCJhnd58UA7Hm/hQisnNq+wC8eQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmrxQ+6l4NppYjUOt2B1Mrx0jUAAKAzHN1dYY7o
 symZsDcsH6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZq8UPgAKCRCLPIo+Aiko
 1REzB/9ap2qNIrseQCvZa/pTU/KUPvVlida6gouDBjhpuq7T3vUAUBKa74AAqkQOHqraSmgVJ+V
 SnR9/o7ICUDZaE8E9VS16WvKFpcOOw4OaiaCroRfcqvQLCmu0w+72VZ7YAj+Wyq/JqR7g+asp8D
 ZDXh/perTUkRZ6OmXanv4Y2J7IxckRnIShcfucpigmfnyPwI3cBaaUiquig/eEBYWGrdmtISth0
 Hfl9rpFXrXWvTWgAn1OvlDqKbrlNV5liXA2oOAQr2YruWmCjq1+xqTFcHvxuL/CBMwsAHINjojk
 RUtYD2MMuk4xqwqJvLOJ7w7LtPfbGJ8VzQCKA/PK5N4aWiWG
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

According to the display-drivers, 5nm DSI PLL (v4.2, v4.3) have
different boundaries for pll_clock_inverters programming. Follow the
vendor code and use correct values.

Fixes: 2f9ae4e395ed ("drm/msm/dsi: add support for DSI-PHY on SM8350 and SM8450")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index 3b59137ca674..031446c87dae 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -135,7 +135,7 @@ static void dsi_pll_calc_dec_frac(struct dsi_pll_7nm *pll, struct dsi_pll_config
 			config->pll_clock_inverters = 0x00;
 		else
 			config->pll_clock_inverters = 0x40;
-	} else {
+	} else if (pll->phy->cfg->quirks & DSI_PHY_7NM_QUIRK_V4_1) {
 		if (pll_freq <= 1000000000ULL)
 			config->pll_clock_inverters = 0xa0;
 		else if (pll_freq <= 2500000000ULL)
@@ -144,6 +144,16 @@ static void dsi_pll_calc_dec_frac(struct dsi_pll_7nm *pll, struct dsi_pll_config
 			config->pll_clock_inverters = 0x00;
 		else
 			config->pll_clock_inverters = 0x40;
+	} else {
+		/* 4.2, 4.3 */
+		if (pll_freq <= 1000000000ULL)
+			config->pll_clock_inverters = 0xa0;
+		else if (pll_freq <= 2500000000ULL)
+			config->pll_clock_inverters = 0x20;
+		else if (pll_freq <= 3500000000ULL)
+			config->pll_clock_inverters = 0x00;
+		else
+			config->pll_clock_inverters = 0x40;
 	}
 
 	config->decimal_div_start = dec;

-- 
2.39.2


