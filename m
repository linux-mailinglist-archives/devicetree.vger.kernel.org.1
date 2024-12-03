Return-Path: <devicetree+bounces-126569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AA09E1BC2
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1B8716679C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BD81E570A;
	Tue,  3 Dec 2024 12:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="khGvRRRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781671E491B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228038; cv=none; b=E2HSONswPPYqXXA83VQHnpPKTLlR2l72vXGRyh+RijNZClqin3Lnz945vdZe0Dej+p0SJoHB0PIaagNKv7KWTs38orpCEXvM3Zi13KD8212D3I3VEdAWmwNXJwnor+4vTfHxQxsSclEtKLi/R77ZTmlq+Onx79rEiA/KBSqzmAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228038; c=relaxed/simple;
	bh=iFlGn8SYSQnS21b00+qwUeC5W1YHrazBnqPMlae/vqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMQDunGK36/CdlB/D+NcdolKvW0fSN+AC+P5HAlth6iEmJXYFcGMPpgX+K+s4AAp1GnhtGuJlzX7VsdbRLwstXUGmxzX2LlWZ5cTr6TF/MlT9pH7HytBsG8qeYbZPBl93ILKfnAaDjQzn8JLL5fDEtqu3UR2SINgNGGV0TCu3Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=khGvRRRA; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa52edbcb63so1126989766b.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228034; x=1733832834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=khGvRRRAuNhL0sFxFwZ1GIr6iN0J48Tf1EGXnGIpl2PvHS3hcKrs+Fz90LAuHhJwrY
         CgLfQd0nwXAUibnGIr/VXfwPGhxqadRmsnAcj7kWsDmIdllpaJRBPZGjjVtsIUMpAo1j
         y9/j4Lty94OzD1gyWyAcLgOFMcnmfM5lLLa9tFp/+Vk+GhrhjWren83wh2m9havX5KbR
         VUzP36rz8ngoAqsydUZncGi3qD9WJ4ibNtJIuN5qLUPzyTTrmJlnEINBij6UUILxVvw4
         2DhrELvbXpSTBcjGRx1viwnt0lWX6OcT0EeI3ka0MVXfHzCHDG1ZTGNI8rwfz/7tmfO+
         xo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228034; x=1733832834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6M6cTvNs7V+xqyuwhG0n9JcP4Mq9Zi3RChVjlFoyS9c=;
        b=mJ8BFxz0C/WSdLZ0u7I/ErMGTi9MZdzJM+iN29kGScIJ56ixEFrzhjxZi3XqaCIa7Z
         4wdfZ/3sP/xLPb6+2o79DE7wznIiRfGkiODQCI/XNpTGdwGTE3hVd1BPVX2YF28tHZsS
         wvsN79g2ZA6gOhe1R5hq/RMGWxfY9hYxSJYmPSEC/LbmCzP7XGNjeEo4dJFHd0hPPsZC
         2hRX1J7HLHqEVAGE3lZ3T/CMuYBO1mvoveDIn/WWchv+/1blOYWfyrXrzfrBJ8y/8995
         fXoC62uOxH+FUPSpv4L8wkRSCjiEQUh8c7NiyI2mTbCyIgkjGRu1oWrWjxfz2oMvcR2/
         a/ew==
X-Forwarded-Encrypted: i=1; AJvYcCWMphuY2I+SavGPjliBH6QDvM2pmt2s5M2Uqqi/XA8d19rPAH6vjLkUtgD4zE1VZ5otF2JurhElbz/t@vger.kernel.org
X-Gm-Message-State: AOJu0YzfCsSGR1yvi7DkRSz1gsdJ5QzFCoeIuVgOsmz3nN7SOAzG3lY3
	ghG669XiiExuG7PQYYU2MZK8h2AnnLZr4WGCwDLHHZGiUevUThR5fwUHUkjdnjw=
X-Gm-Gg: ASbGnctYo0DQvjv3idCUlYkYc78I1yvl+vCM3KSaPq7W022K8YZ8D2F+Ihj38Vsv+In
	cbwWLZ65DJgXHIgoZu4AT0vZjBl9oUpKZ9BaYtnKNV3JtXIoV+z/nIeUBP3zpgfD8W5cNXYRuWO
	y1X1xqqexy9tUMCtxaygR08dH4PbPSgV39ftYnrzvlOaWnz5+S4ZZOWHOpYXWfkTAm5CGD05Dxi
	61jfZKez+KBq3kt2gOInyvnjSd+K6XSTtTg0eN/0jGdoVX9TYif6ZhROy9mYI2HNbdU4ATIgIhT
	ckocTmjpgGf2p5oplvLeukacMoa3gGz++Q==
X-Google-Smtp-Source: AGHT+IFmVCN79AgO12dD2PdCbqVnKblHT8yfYp2CBGY/43ZxpcqEVT7DluzFyun9DnuIF1YW27jRrA==
X-Received: by 2002:a17:906:d54b:b0:aa5:3fe7:4475 with SMTP id a640c23a62f3a-aa59453454fmr3031209566b.11.1733228033761;
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:53 +0000
Subject: [PATCH v2 5/8] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-5-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0

We currently don't gate the power to the SS phy in phy_exit().

Shuffle the code slightly to ensure the power is gated to the SS phy as
well.

Fixes: 32267c29bc7d ("phy: exynos5-usbdrd: support Exynos USBDRD 3.1 combo phy (HS & SS)")
CC: stable@vger.kernel.org # 6.11+
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* add cc-stable and fixes tags (Krzysztof)
* collect tags
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 2a724d362c2d..c1ce6fdeef31 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1296,14 +1296,17 @@ static int exynos5_usbdrd_gs101_phy_exit(struct phy *phy)
 	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
 	int ret;
 
+	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI) {
+		ret = exynos850_usbdrd_phy_exit(phy);
+		if (ret)
+			return ret;
+	}
+
+	exynos5_usbdrd_phy_isol(inst, true);
+
 	if (inst->phy_cfg->id != EXYNOS5_DRDPHY_UTMI)
 		return 0;
 
-	ret = exynos850_usbdrd_phy_exit(phy);
-	if (ret)
-		return ret;
-
-	exynos5_usbdrd_phy_isol(inst, true);
 	return regulator_bulk_disable(phy_drd->drv_data->n_regulators,
 				      phy_drd->regulators);
 }

-- 
2.47.0.338.g60cca15819-goog


