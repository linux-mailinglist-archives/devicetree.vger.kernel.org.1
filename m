Return-Path: <devicetree+bounces-68222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 891EB8CB4B6
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 22:30:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39C541F22BB0
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 20:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD2BB53816;
	Tue, 21 May 2024 20:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gdwzOf54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1598D25569
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 20:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716323451; cv=none; b=VP4TzeFKeLpjW6RdBQteJoRugFVAAdg006GLHb/HmjKQ9JatudjGo3x7uJPZcwvfm3KnQZG+V4FFKNjb69DtWB7GgvwnsxXicre/NYZHv/7MjwbBhXuFxE5LvibLCQ89Zl1s/nXDDspHs/JLIXCMaAmuR9LdsDWuGeYvjOJAUMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716323451; c=relaxed/simple;
	bh=+BCS5fG7t1ac6ivgcoP/WGAfPI0hUuFmhb/yRKE0Y3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lnKQ/+2YVyVzEmQIotneD7eGt2gFfvDUNW3CXW6ZHTCSTrn6Ov6FHU3nbaRNEFDtuQUd56w/QaKzDr8OXP0bzT4sATC33Ls7wODsC74exTk20LqEkpBgAUBqeq8/NC2mAn/1dCih8x/DblZxQCIoosqjgnJMBDpT0exXCygRdz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gdwzOf54; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51f0b6b682fso6279378e87.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 13:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716323448; x=1716928248; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=61aHwd2183bAP0kT15DI6K+JvUWTUFMjXYFTY8xR2sg=;
        b=gdwzOf54YG5qRzUKwmvrPBZkODYT+zOz7+fIOuD3MAgzaqDo3tC/74S7SMLAUe4GOM
         MWwC91nlJ24SVSpkJxEflSIVUoKDfMfAmOFCcbpDOl5R6gt+bkiQzMrplrotM/BkUN8g
         2v/6Lh3LfMz4d9fCre3sV1qWOuErFKwoUYkCDjoIgAJCzkPzXZFbWQc2e4pp3k7x6IlI
         15+GtvHLiZWkH6flAjJwLiciCvg/4zt5Uf/Ui5ekc4C/wbrRNkgh8zjT4R/NH4NpEOj2
         lYpv7NPkl9pz+oivlEX+adRk3N1VWxuNtDF9KfmweOTkRDtVkPAkTlqRYiJmX71srPPH
         KvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716323448; x=1716928248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=61aHwd2183bAP0kT15DI6K+JvUWTUFMjXYFTY8xR2sg=;
        b=Y6JjqG2R6l2AfibpV5MmoxJPSMZdgqMiIC7bLo6B0GsEawuy7qPC5m8333a/9pjkRI
         c09Mwxmn22hgnkQjOgIp6/Jewk4WQDr9EkRQskybFkUcWedv7TdgpZ6f2jRb4tSazKCh
         kNDBP0zhW+QjsnqlEafoK2mVM9PQ90eKxY61kW/JWdDbrEKEUbqaFQW9JNVE817Rsatj
         T0LzNeKLKWr3ejBMpx9rzhdh6ST3sJRUzjhAoRcd5qNz3wgb/4WwL0+T8baTUm3RfeSG
         4GiBpEpljVopVGwGi9JQ2gLoF4YdEJY/OodJGUuUOFD0RZKWvkpiQZhirwaoK4fbMrdf
         kysg==
X-Forwarded-Encrypted: i=1; AJvYcCUtHne2ZBCR0oDCY42++1H7l2ZtybDBPZM6fe/Z9tT72f/7/P4joVb0CAgLNy5skuJYQ+B/+q4X/pZHQy3kk7Eqjf+JHXarNlXQnw==
X-Gm-Message-State: AOJu0YyoM/FganVDv7qEpQfOd0TTulU14ZagEamYB2EW5WL2EAbaALyt
	TVH7Fasru2F4BxSPb5HFNjxto7TsIHYLCdFiWEp3/WUEu/iJZ6NeWuZMmlKrDSk=
X-Google-Smtp-Source: AGHT+IHy0pjC5CDy3P6mbf7msRN50iLlv/wcGutIEXt9GlQXiF1OAnp2jM95uZzEJ4jxdQSM2h9I+w==
X-Received: by 2002:a05:6512:3294:b0:51b:6366:3459 with SMTP id 2adb3069b0e04-5221027800cmr27851507e87.67.1716323448405;
        Tue, 21 May 2024 13:30:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238ec18fd2sm2538664e87.155.2024.05.21.13.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 13:30:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 23:30:45 +0300
Subject: [PATCH 1/2] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240521-fix-pcie-phy-compat-v1-1-8aa415b92308@linaro.org>
References: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
In-Reply-To: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=+BCS5fG7t1ac6ivgcoP/WGAfPI0hUuFmhb/yRKE0Y3Q=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5ovS1mu0/nibRkdWhw9d1ZFnVJhnxugl2whuDxytnRy/
 /WWbM5ORmMWBkYuBlkxRRafgpapMZuSwz7smFoPM4iVCWQKAxenAEwkcDn7f4/f+0RuqrBI3jzO
 vCPyrtznwwsSlvofCw/N5zt1STu9c1tpQOfU4J2szYYa2nHJobY338T6mjFWzznGPbnv8lR7wYz
 VLt1mTE+SZulbFW9h2LXY1UPX5lCDcdzfF5wrXum9ETn+uuzEqg8TZ2zPKb82T6n6tMKPimUMFQ
 0bC9VXXW6anzql8L/jp7zWZuVzlfPWbM9g2zT1A+f7kBvzbH5VxqossUw9v2hKMzefXVrcErFLA
 u1P/2TzFRt42ukcWLOEyaV2CaeAdR7j12cCF/1+rr8drih4g684313fZNVEU8WvDQafQto8jCdW
 bprhx1uhdHyiq75HrsnF/Wycrb8WPgnZaVge83J2w0o/AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Existing device trees specify only a single clock-output-name for the
PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
that property. When it doesn't find it, it returns an error, thus
failing the probe of the PHY and thus breaking support for the
corresponding PCIe host.

Follow the approach of the combo USB+DT PHY and generate the name for
the AUX clocks instead of requiring it in DT.

Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c796723c8f5..b4767b8cc014 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3730,14 +3730,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
 	struct clk_init_data init = { };
-	int ret;
+	char name[64];
 
-	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
-		return ret;
-	}
+	snprintf(name, sizeof(name), "%s::pipe_aux_clk", dev_name(qmp->dev));
 
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	fixed->fixed_rate = qmp->cfg->aux_clock_rate;

-- 
2.39.2


