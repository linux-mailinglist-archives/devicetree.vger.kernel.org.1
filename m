Return-Path: <devicetree+bounces-237523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E2FC51BAA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F3F6D4FCBF4
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DFA3128BD;
	Wed, 12 Nov 2025 10:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UfP3rUrK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDBA311C35
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762943371; cv=none; b=Rj4dYGV+siNpIM5exelNkSNxjbWah3NUSSN6ni78OHqn9wJQgQKAWoVsLBcSLyeilPjOC8iugXvAnYqbzjcva2WqDnhSKP2Ka7EZvut4dyI/o1i77ear4o8Jw8EsT2voIX9ziNak5udbBOfGmrEPukclCLTmpc3NFmtuBA45ifE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762943371; c=relaxed/simple;
	bh=GB94KyWxhTOTJwckGHT/UMyyYTBhNHxn8zgXA+NUlbM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y6dD2Qtq+cMZmu6JO6dIxtgdMXAin8GFijcRPXb/EfgvIsnXF3jb9cJ5EfDaCBF/yJreUSyAkwXPBjUnzAchuklIW+Y7/5micO5BdzUALz3H0GBKEQDCKd0Qh4Ne6jHdtDowjTuWp1Bgzy5Jf6S3obHF3+x0dvYlhWytCaaZUT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UfP3rUrK; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3288fc31so81304f8f.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762943367; x=1763548167; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BOzNeziSlOyb1g3MGAncFJukfzAYPENN5aoa0rhsnAI=;
        b=UfP3rUrKFGJ6EMQvtpAP+QL72+dMdLmHpZ/ppS7BaBEkHkzVn3LpIufiidM8a8ENDC
         IBJeK3VuatTjIuDzw4RRmHaMAjtM67Rl19Wm/TfCTB1I3ihJJkr4rIn0pxhc5yGnqyCe
         hSyorx262v8gpAonmTLCiPYg7gS0bwbsShPm5xPtlZRwciRlal8ufZgwXUE3kgyK8l1o
         HdXvP/51J87FgSJdcT1LzYXq/OaL6qSS9UJpc9a/Jk3kfYfVcJnJZfRfZJeijVeAlx8b
         YLl4YgaFdTJP1PbMIWxLsXzC+qzxiZVpKXPgM4H5lhJT1EGmV5tUnqv4KKfGy1TsVq2Y
         5k9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762943367; x=1763548167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BOzNeziSlOyb1g3MGAncFJukfzAYPENN5aoa0rhsnAI=;
        b=S6Afwv+5H10itCq+SS6CFKB6G4iJNaVYm2wqd33VtIWbsUCjMyAq/NaDy4j19UHm8r
         D0gJTLoBu39dAvCaC59qJZxUMnM2PtAM1W8HbrWWeViqlKykHh65FYqZEl3LbHBkU2t9
         jmNEtRCTXD2zvwhJlulMtMF1JZJ6U9GVCt0VwxiZqLPsa6cbmNWmWcslhx3p9KcXuvFW
         KuB1TUiSEb14SNU3mndTv3Mgt5Kg9kHeN4XTSs/igruv6js6Q4oTwD00LARLV2JLoIK0
         ZRcnoYYVk/gxMtytBIHyuLHsWeJ84vPwybUNLIQ7hco8bLIHI4tGTJHEq3WwA99cO1Qt
         EuoA==
X-Gm-Message-State: AOJu0Yy1irvxb23AnZ17shuAlUEJc3801Jh6pUVUesVw5efeM7wrEuD9
	D+S1nZDa+5/RBhkfPPgC6aGhXD2W7YUjZSH0kSqxNhsEyxbNYSeI37W7x+PLVOfuLeY=
X-Gm-Gg: ASbGncsrZrT2XBjvPDPPzFFuZywEfgOuxTfx9VCnAVfZkouo7gPa1jVqN0xgM+TFeCg
	uhZ+k4kb90N36Z53dL0IFJLQzIVOW+Hx/QW9n8hVjJRGBC4UExnSTHOEVimNsgxDdDvs3fMmZW4
	Sa6jIJCK3J9lAHSYc/6nmkJLds4q4Be9DCAsdx3LtEt5mx/BMhJGZG+JeJRFyfEWZHhUziRzwg+
	AEoKQ+GDOeuafDpGXWMyOpT5UBivDjOUww5eV3+KeH0eUjxBhZ15ZiU/QN55q/nltYe+JLbMyn/
	L/UH6nGqtiZiClXnj0CWooauamkWNEaQZORJSwe++/9GStumihwCvXCG43vJ5VJ+zFVHSSQxpPX
	BTtkMSINEIBXJyNWDX6SKXkqezMwGWQ2mmfRKnAt/JGOFd/4ogbd6KAOvF1iXg9YHD+aC3a6nhg
	ybk60+hq7qgKRMOSHd
X-Google-Smtp-Source: AGHT+IGy7b4A4+u/uGsBiLyOXS7Gsk6nxN9fGfA8X4fo9GU6bM3+pQFL29gZ0wTZR8WKoFNMAnOUPg==
X-Received: by 2002:a05:6000:2888:b0:429:ed57:d17f with SMTP id ffacd0b85a97d-42b4bdaf0ffmr1104643f8f.6.1762943366954;
        Wed, 12 Nov 2025 02:29:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b32ecf522sm22020001f8f.45.2025.11.12.02.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 02:29:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 12 Nov 2025 11:28:56 +0100
Subject: [PATCH v2 11/11] soc: tegra: Simplify with
 of_machine_device_match()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-b4-of-match-matchine-data-v2-11-d46b72003fd6@linaro.org>
References: <20251112-b4-of-match-matchine-data-v2-0-d46b72003fd6@linaro.org>
In-Reply-To: <20251112-b4-of-match-matchine-data-v2-0-d46b72003fd6@linaro.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-tegra@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1047;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=GB94KyWxhTOTJwckGHT/UMyyYTBhNHxn8zgXA+NUlbM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpFGFtg/s4nNx0uYgFz0GOtpfIGABdMtbdQMANV
 +JRa/rp5UaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaRRhbQAKCRDBN2bmhouD
 1w/fEACKMeFrgy5574qcsFru9xUr0YzMLGL2fJ86eoBrcMob9jAASCEdZ4D1Ej7bxnGW90YnM8p
 kQTuDSm0k1uWwm9FiVqJrUcnQf+MzR+X7U/gz94Kt90nLdBQV5YnPGcIsm3iHmIP4oVXHOpXokP
 x2OCQWPmfvbyFBjPZBy/1jGg6gNsMuRrWRfRLgz8jGcpoJMIafCEYZfKGZHHy3oWdOtwum/ndpN
 lJWa/sWwNglSxmB4Nu9YPiMgt1dJKy/7Tv6q+BiTDc81aEuRjfamh5IFFc9Urmb7O3UHiKtdokW
 b1zy3QDFK7/HNrHvi3T+16GKEVsHfU1sSG6d5jbbhEGoCC9GzPoirQLGKCjP2yaONa2vevaXN2G
 eCDpQZj58sVFngMltyb2r24bL9TAKWfw4nb7Z3kkOHAoRHS3yYZ9Jukr2BH4hKPGGItXAk845US
 AqAxHGs1G+QmXZZE0T6JjmUDUuPP8GFF0/gXiPr8oQLTQn/qjJCF2+svvkeWcT5zGvadb1pZvRz
 sS70yht/Xs4f0SAUjiukfj1ZmpBioU08dGxd6BUYbPY3gEBd6rQAqXDRnOfk62c+DVnksvKFMWc
 jrZSlC+mX8Y6PtbObKFPeYpzQQgx1xpwIgMl1zj9pilDXpDo8QxzUh4CwjnjvF+KeaSAVtnx/8E
 ZrNgwAuRB6iES6w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Replace open-coded getting root OF node and matching against it with
new of_machine_device_match() helper.

Reviewed-by: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Depends on the first OF patch.
---
 drivers/soc/tegra/common.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/soc/tegra/common.c b/drivers/soc/tegra/common.c
index dff6d5ef4e46..d82b7670abb7 100644
--- a/drivers/soc/tegra/common.c
+++ b/drivers/soc/tegra/common.c
@@ -27,17 +27,7 @@ static const struct of_device_id tegra_machine_match[] = {
 
 bool soc_is_tegra(void)
 {
-	const struct of_device_id *match;
-	struct device_node *root;
-
-	root = of_find_node_by_path("/");
-	if (!root)
-		return false;
-
-	match = of_match_node(tegra_machine_match, root);
-	of_node_put(root);
-
-	return match != NULL;
+	return of_machine_device_match(tegra_machine_match);
 }
 
 static int tegra_core_dev_init_opp_state(struct device *dev)

-- 
2.48.1


