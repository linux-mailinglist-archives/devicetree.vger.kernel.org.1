Return-Path: <devicetree+bounces-235309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A1C36A59
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F34991A432ED
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183213358C9;
	Wed,  5 Nov 2025 16:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dXz+q+n0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53090334C3D
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358727; cv=none; b=bgYMvt/WeFCTJI8MK5OqJy45lDYrP6nTZkbtbSPkuCJznz4Arh5t0EUgyCfvzBRADsGFUTjdIUb7GKcudRCTA0QbDPfrmafGof3BfF8hYkzy56uh28dOE0Gc1t8FRF4UCK54QQJ+K6EEyrREZSZCri1CRt6vrVY72Kjl6ZQQAUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358727; c=relaxed/simple;
	bh=aFlIqj8cX1NQ0lCzxiSyrrlu00dbSVu+NizVPVqZ+Sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EgT7CUMJ3cWc8KsLN1VeQu0bHHLkGf/+NDqc+ZyYbmWrUOByVIeQPg+DpT3dBCI3flZ2nSQO9xUSH09/ixhQupbt+qjEsPDlpzG+WcmwbySxYJFkhofLTqs3GthwSp5kSSOivMVdjvFRJS3VPx1VtB3b7zbIWTBsL47Bl4HPyiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dXz+q+n0; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c7e0282dso3935586f8f.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358724; x=1762963524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pg1s0jiPxmjQzUA2OkWwvLk1yS9N8UGQ6BwkSG5FxaE=;
        b=dXz+q+n0DxOPhgM/XkuYZB3w8sJ4DA/fN3Cnti4cCIrUxqGofaR29kvvIwJxNv1gJe
         IJLr3zS0iQhBZO1/MpwNj5eBe9yWPVd9ZmC48uKccJWEFRwoFXlcJWJUKqodxjP6MrBX
         7NCUZmVp+rYY4to0DT39er3Xr4pJ5rdKldYzj0O2SuJlz9eemAD93JPS6WR2Z1xFXbOc
         Pvg1wM6lgjc2J2AhFK8Vy0nuOA8it79K0JPcdWpbLwi1kU87p15YiqFfouHJgfbVlDc/
         qm717sSMshmQ9/DGe5KMqJLRSzPiWV5WC9ULMQiLCwWbNIM563Y48EtiPlO+5ng892K9
         KyBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358724; x=1762963524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pg1s0jiPxmjQzUA2OkWwvLk1yS9N8UGQ6BwkSG5FxaE=;
        b=o32kRR95rvrXEw2acZShUb+DK/CXU9dICu4GTM5GaTUFygIbAu2DhonWb0uiXhjcYq
         OIv3gCLf28qhXHisQcvBCiJGxB/+iYirwtm66eLqp4xEPlff3LpBNAxFPBetjLp0wN2J
         k/m0kgdb3E+744/+HDgVcmG1WCf4ajOgL9wzwROX3fhbTEyvQ8o12p5m8meQyraJ05AA
         alHo8L7UcpDMC8z2zuQeDgBEJQ+yKheIW2a8tC1/QsWNZvVxGIq1Z1ko8DEFmD9tqret
         wj919ulQ1uR51D+e6XrikllphT/25pO0P1GOFlfjGl1rLZ131bTOFz5EBPjSycA1peJB
         ubdA==
X-Forwarded-Encrypted: i=1; AJvYcCWCsoUh5/ipBUuwj3W7pU+VLYNfgbVUz+Eou9kbI79ooXuJCY5/CewhAdAzj5YC210nBRTubn3AlLin@vger.kernel.org
X-Gm-Message-State: AOJu0YwX4vn4dpYeONEi+44aWxzq44k4VbFAYjhy/TEZBKVNjUNeoChl
	BRYN67KoiWRBwxFzmdi7zfl51R5rU4CRMEIYdkK4YjrJVqSbcvS4/vc+++vzJg==
X-Gm-Gg: ASbGncu8bPDh+A8dPMnj9YZOuC3/Yah7tNjCmFJ+9YFgPU+jv2//pH9bulE7mkhKwHz
	MIHrqRAP04Hrbw2oLayApKFJJPDqlrSzRnmS2erisY7Ax+BcYK5l3Dm9FwA2RJ6tGOLmzgDeYhq
	hMb/OaWlyfclmZXalwRQ9/8RdAM6TsQF1HHspwUTe1jSv/KQc+ysRrYTHsdLYTBAL82XXvmCRMx
	jQJ8VdkkkUovpZLrcqALuNsX0SPtW7tNQXEfsL3/SwoAT2MPTY7nr8L2p2jOMOORTLSgtZPBUz2
	1MPKkJ/6zxQRpD7Dy3rI2IPk0Et6g4+q2H880PJoISLJY3+6EYbb4fnFo+IMGX7ae/h1TJleNdo
	2CDd7lwWwHwWGOs4vvR4gUnX23djHbaOVoZPS5u8sCRlPqxgHrgS2tC7h+iChzfXK+UJ7Fa1zQJ
	sxdUk6Y0BfFgd+2OLcnwgHX5bPYNhXHkbNdwW09anzLZ+Q2zHebMxJ/RD26iC3CexwjIEr
X-Google-Smtp-Source: AGHT+IGRfnGJjlSWk/FWsJUYLJaIiQePxFopFGsacT+cjTxMYpRK3/QdhNesPFcIhQfYEBrJSv7gug==
X-Received: by 2002:a05:6000:2387:b0:427:151:3db6 with SMTP id ffacd0b85a97d-429e32f48bcmr3510510f8f.24.1762358723585;
        Wed, 05 Nov 2025 08:05:23 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc1fbd1csm11372505f8f.38.2025.11.05.08.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:05:22 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] memory: tegra: Add support for DBB clock on Tegra264
Date: Wed,  5 Nov 2025 17:05:12 +0100
Message-ID: <20251105160513.2638408-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105160513.2638408-1-thierry.reding@gmail.com>
References: <20251105160513.2638408-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

The DBB clock is needed by many IP blocks in order to access system
memory via the data backbone. The memory controller and external memory
controllers are the central place where these accesses are managed, so
make sure that the clock can be controlled from the corresponding
driver.

Note that not all drivers fully register bandwidth requests, and hence
the EMC driver doesn't have enough information to know when it's safe to
switch the clock off, so for now it will be kept on permanently.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/memory/tegra/tegra186-emc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/memory/tegra/tegra186-emc.c b/drivers/memory/tegra/tegra186-emc.c
index 74be09968baa..7a26d8830172 100644
--- a/drivers/memory/tegra/tegra186-emc.c
+++ b/drivers/memory/tegra/tegra186-emc.c
@@ -33,6 +33,7 @@ struct tegra186_emc {
 	struct tegra_bpmp *bpmp;
 	struct device *dev;
 	struct clk *clk;
+	struct clk *clk_dbb;
 
 	struct tegra186_emc_dvfs *dvfs;
 	unsigned int num_dvfs;
@@ -452,6 +453,13 @@ static int tegra186_emc_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(emc->clk),
 				     "failed to get EMC clock\n");
 
+	emc->clk_dbb = devm_clk_get_optional_enabled(&pdev->dev, "dbb");
+	if (IS_ERR(emc->clk_dbb)) {
+		err = PTR_ERR(emc->clk_dbb);
+		dev_err(&pdev->dev, "failed to get DBB clock: %d\n", err);
+		goto put_bpmp;
+	}
+
 	platform_set_drvdata(pdev, emc);
 	emc->dev = &pdev->dev;
 
-- 
2.51.2


