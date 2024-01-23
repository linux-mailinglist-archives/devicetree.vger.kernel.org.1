Return-Path: <devicetree+bounces-34199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A08CF8390EF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F0021F2A456
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 14:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B735FB97;
	Tue, 23 Jan 2024 14:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vPW9oAeS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200745F863
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 14:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706019219; cv=none; b=ZbN+BE7N5gXVbuapAHZmcdZ031Aj1+FTqagaaKMryrRlWUNwdwusn629qR08MbxyrqKQbAbFR6UZsDifr319clQMuz57nhLP3U5zSud+cFx0j5cuQzItq3isxGEWZzLMyUoT2ZKnC4PZ+Gux1G26g8QSgae3kAOoFbbnrs2Yq9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706019219; c=relaxed/simple;
	bh=DeKmmRTD5CNQ6B+HeX8UYe9vDMCdXGtr2srSjXnVNns=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nsIUcIHEkYg7C0fta4K3X3sjIBoJO36eET/CPxrv87PHVVqVPW2gv5xpkTdNysZ8zwAr0acDVAX6aA+BSYtJI/fWlOOXGowZdbZfo0vgSCGZIrEb4pSLfGBFJeDqA0AxTFJ2i9J/cU4w87yKqsA85OoJeqQNz9g3aV3E+7SYhv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vPW9oAeS; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-336c8ab0b20so4431263f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 06:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706019215; x=1706624015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BMoHux/To4Z52U5G1RVrMYaeJYsNbnrs52rE7GNgAZI=;
        b=vPW9oAeS9uFZhKOgwpZux7Fe3Ss2tiCP2dZ9ThYDqGbVUJyQZXf8P3xUnHSYfA7fVb
         ocza2WoVq51hcQ7TmwlxRokz6rVeB1GDZPWWuRnjRq1bt6aWasj3PZukAWSUyFqo1EXn
         qZR0nMbd4+cHDeDiBAaTk3Dn/lafMYa1nMzOQF4GqkruwCU7WTfs81IblycD8Qrzp9YG
         AUTF6T0G4tBZP85GFazzesZoNyQqinsfM5N+fvJzIkZm6bIzlk1AUlXQ7nGNxXNFuxwz
         x9M8P4+7zy/WbfN3t33dZK/G6s+mdrx62AwYf2A7kNK7TDjutPaWvg7fJs9jkJBbhAys
         lAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706019215; x=1706624015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BMoHux/To4Z52U5G1RVrMYaeJYsNbnrs52rE7GNgAZI=;
        b=j84bh+Y86/15B2yglimRODl2c+TY2mUMbHXX6J34mkqJkBrHuWDJWD3UABIN2neD1M
         viYLAjtQAQLJwQWEdlaz2UUZoQLJE1/5IWwHqV0bNERRfUYsqePc7Bb9TUCnediEdAxP
         zDHcDF1ntrMjjkqcrSlMx88xFdXwRSQUHkpw5G1sZlEhffZqSGZK811CN1o2R0PA+Ewq
         d20KjCqMkeXC4qBXOOLErAHIRB242sUHsOCDnfHhqGwgrhq9ZKijUFmZBidwQsJzNMUH
         l0LQg+FDz2NqrL9q9F1IN1MV2MGMPBwhMGmf5juIXUqKMJl++15TF/DXq168unrikOYp
         s0JQ==
X-Gm-Message-State: AOJu0Ywh6myjBd0ooRV8rtKsHcujCqy8B0yUiNtHqyd6kI07cR0oQs3k
	zFKfhmma/rAw1UBLmRQjjdvjz5aUmV/drcD1VycM+lqO1LURnMiTtV4Ar+tDwus=
X-Google-Smtp-Source: AGHT+IHo9L/aNhs2YMpki7iiHaEqAW0G6bDJZdhRv+OHQG2adVInlM0yES+a35JGzEx8ngUBwfPJ4g==
X-Received: by 2002:adf:e546:0:b0:337:c702:98f7 with SMTP id z6-20020adfe546000000b00337c70298f7mr3509879wrm.95.1706019215345;
        Tue, 23 Jan 2024 06:13:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id r8-20020adfe688000000b00337d97338b0sm12132298wrm.76.2024.01.23.06.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 06:13:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/6] of: Add of_phandle_args_equal() helper
Date: Tue, 23 Jan 2024 15:13:06 +0100
Message-Id: <20240123141311.220505-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123141311.220505-1-krzysztof.kozlowski@linaro.org>
References: <20240123141311.220505-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a helper comparing two "struct of_phandle_args" to avoid
reinventing the wheel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Dependency of cpufreq and reset change.
---
 include/linux/of.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index 6a9ddf20e79a..85bcc05b278d 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1065,6 +1065,22 @@ static inline int of_parse_phandle_with_optional_args(const struct device_node *
 					    0, index, out_args);
 }
 
+/**
+ * of_phandle_args_equal() - Compare two of_phandle_args
+ * @a1:		First of_phandle_args to compare
+ * @a2:		Second of_phandle_args to compare
+ *
+ * Return: True if a1 and a2 are the same (same node pointer, same phandle
+ * args), false otherwise.
+ */
+static inline bool of_phandle_args_equal(const struct of_phandle_args *a1,
+					 const struct of_phandle_args *a2)
+{
+	return a1->np == a2->np &&
+	       a1->args_count == a2->args_count &&
+	       !memcmp(a1->args, a2->args, sizeof(a1->args[0]) * a1->args_count);
+}
+
 /**
  * of_property_count_u8_elems - Count the number of u8 elements in a property
  *
-- 
2.34.1


