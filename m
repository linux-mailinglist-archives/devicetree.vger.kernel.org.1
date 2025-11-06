Return-Path: <devicetree+bounces-235814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B5FC3D258
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CD086351FC7
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5279134BA4B;
	Thu,  6 Nov 2025 19:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EtEVGkns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA6A34FF74
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762456094; cv=none; b=eFjblNtqdzwkSmex8C3jzjasN+FBh2Hnzn5n2Akjm1W3Ag6w6IA2k7LS4Bud+o2vVP+Ex9pyqzNQIcbgIIpcnucFU7gQUwkY8LU1cje8cqMj2VvG/nbHtKJJZryQn79jnVKfkGNKucJ4qX3NyCEadreAKkl28Y9KFtcPyitlWwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762456094; c=relaxed/simple;
	bh=O33tzwOMuFzj5je6ou6p3VavVz9CrO7CoaSioDAC7d0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FNZ897sPctj4jqncbwgDBnirOfuNcjyQCUj1yb0TOcZPL8s5ivw5p8ll+8Ol2SsEfL1UV5GF9KhN3WcXPKwhbSbI5yARM2Z5F34ZKVUqqriNoApgwl3ryQ/fX3UNX2RiOv4jW/sRcuNtjhKp9yi2An5Y6RVw0hbJuwpLsgwyQJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EtEVGkns; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b72a88397f3so12739666b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762456090; x=1763060890; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UC7o/Lm5tysqi1r/QiS1zppEaC6hX+4dTRHAwtxyreU=;
        b=EtEVGknsOFhCcSOEMc2+Slmr+7GwYUBA+JQOZ2iFjK4vC9Nwdn3PfUD3iWkslImcie
         lppg8/FSu5qmeVp4E670ra6wh9oOxqrW/yLR5NXgK54A273jBcCdfD6Fg/2uPXAduM4r
         E1Mn3jNUK9hNDMUVxDXe0q56gGdwGaKrbnzU2DpFvIWKUnV/IhZzJ9krccoCuSoyC4TN
         r/51yUb08M2h+SQRN9CYy6vor1DQ2hNnrBen2t/xmCCNLEXcNizC5DC68oRwLUDvSffa
         Oa/0GRUSaBXRSSJi9R2sfjdM9AnS7Bojp75SZvklkNDaBKJztt+qeY8aZ60GbLOKX/Ms
         +uxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762456090; x=1763060890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UC7o/Lm5tysqi1r/QiS1zppEaC6hX+4dTRHAwtxyreU=;
        b=ILhlFtRpvOCInBEIyVQI7e5USsC2FErPBaSmjmXo253XDTYSa0fLpLfZPYNBsmhSG5
         gBCvNu0hO3xRAr52aMYHf+R29ybfIqTNP64b1/6lEddueM6sJ0bT7SkGFfEOrSP+4svE
         HkbpZ4zaT1KO8HayCwM5pKZ/oZzP1XOpu3xRk5He6s7G5pH7D9RQn/C1aeNXRTuJPoHx
         esW0qJkkERVEeXyDqhmjPvdrUHpZ2jFbqEA3ToXEuN+zWAfu2WQx8cQ6dIXQu9QW2x+a
         Y4C7S/TpriuUCy4lzktT9xi/9qL20py0GYHK8UbFu/oM2pD2llus6JjlVvJ2XSJKqiku
         HKeg==
X-Gm-Message-State: AOJu0YzFEhR/j+bgCguvKJaRpd0rl3xT+cY/bGsX17waVZARC2NpdzsP
	yR4fFIv0Xzzbm6CsdzDiPfvtrmRONlA9To9GKxiCeTMDU2Y/WxwOy/haGuEnEW3iOf8=
X-Gm-Gg: ASbGncuKWw9gsvcXqQF3oFsKT7Qboci3PFj/r4rtw8QN/7M/FyGYHG3rmhZqf9DLVbZ
	wxTTkcee9bqRC6/obopWFVPijesb3j6Q5sgSAPL9AxJdah0TZaX1M55ETCbxvB7AQR/60zS3OYh
	Wt4YTn4CqhUJlMRFQse/4DZmnY7pcCUBHawEihq00+EKQHDrCSkq12cu3Za82VY4lmnrVfdByBh
	StACSCkpIj8xqu96fz0XTs4QpraFSHyIPR1EREeUQawIe/UDzd9ciOx4spZO9LjtqEaFxXX6JxD
	Jy/pXrkPJj5oQOqMOyg2ikCxhl6fjwCsKQ6Pmnt43058B2TnmQ6gqxEjHzTYebNhMQKC4sebZMq
	+O6Z+jBVANHeH1Jovhk7zYWduNY1SWhF5Y+ukU54fXhjgT2SqHz0Z2RmuZattLbI+YsoGRUQT+G
	h1Y0DMqptyJyVl7SJvUmn1Q+lCMhE=
X-Google-Smtp-Source: AGHT+IH4u0visRizZo2d3rYJCHF6DFTUhu6yOMzJeaTU5w4S3ldRzQL6ooWntCfuedndsflKkieXmA==
X-Received: by 2002:a17:907:1c01:b0:b6a:382a:1516 with SMTP id a640c23a62f3a-b72c0d52bf6mr17951666b.5.1762456090174;
        Thu, 06 Nov 2025 11:08:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa2510esm26739566b.72.2025.11.06.11.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 11:08:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 06 Nov 2025 20:07:08 +0100
Subject: [PATCH 01/13] of: Add wrappers to match root node with OF device
 ID tables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-b4-of-match-matchine-data-v1-1-d780ea1780c2@linaro.org>
References: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
In-Reply-To: <20251106-b4-of-match-matchine-data-v1-0-d780ea1780c2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3693;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=O33tzwOMuFzj5je6ou6p3VavVz9CrO7CoaSioDAC7d0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpDPIJjcqOIsRPKVtKm1n48qkLFTKl0iTeRLJML
 O0ig2VobJSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQzyCQAKCRDBN2bmhouD
 16upD/0ZvU0jba0Dx7VybPnYT2mGXlqQGiRbmnASkWMky8rIi6Sp8RSTLDhpclz2LmVx2skpz9v
 0r6fP/FAMEFShI7EOBA+3f2t6USlukHdnPVV5xooagFdsMEyVL6+LwbgBm0f51zE6VM/tdjSDvM
 lCVONspGTJH1L/sttThdI2ovYpqbZYDhIgRcyLipKeWZte4YfeSzgnv3mOsaZFNFZKNt1Y8jn5q
 lAnXZCY6RgamYZplen5FS1RlMwii6jqAT4iMGTBELYGQSe4sB6WFyV4jpa5ZvU6gKmSjgMPVrAa
 u+SHuX1DmTVBI+iqI+OHv0K5lS2PQIvbQOYEI1nVsSxLPQj3FZDmO2dIMvtZq/A1xk150fjigAN
 IXNMW7CdnSTV4oloo/K2XJKpIqVWKtkjEMeQz8y3d7z+i9ufMn+SvYkCQwhDWwr26gkfEIHxLRd
 GcS4JoNkEeK1NPDp1DJsvbGwTtKcfxX5AE/GI11SX5KqZmCOcZfsh3AxXQsI6q/r/HIoj0pWGr/
 aawjN/1UsCSiEDwm7T0yFZgc40VQp5wqrhuIZclvDr0ycCO6vt4LEFykBHRt5xA27HSsxSWVT35
 oEZvCZypUBmVZTUMfjm3P2tcxblSskFAWSXealeXfawQqRW3usvcwdwSGsJ4wz1RkezOFDOI08h
 PmOXu5HeggsWkCw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Several drivers duplicate same code for getting reference to the root
node, matching it against 'struct of_device_id' table and getting out
the match data from the table entry.

There is a of_machine_compatible_match() wrapper but it takes array of
strings, which is not suitable for many drivers since they want the
driver data associated with each compatible.

Add two wrappers, similar to existing of_device_get_match_data():
1. of_machine_device_match() doing only matching against 'struct
   of_device_id' and returning bool.
2. of_machine_get_match_data() doing the matching and returning
   associated driver data for found compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

All further patches depend on this.
---
 drivers/of/base.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/of.h | 13 +++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7043acd971a0..0b65039ece53 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -434,6 +434,53 @@ bool of_machine_compatible_match(const char *const *compats)
 }
 EXPORT_SYMBOL(of_machine_compatible_match);
 
+/**
+ * of_machine_device_match - Test root of device tree against a of_device_id array
+ * @matches:	NULL terminated array of of_device_id match structures to search in
+ *
+ * Returns true if the root node has any of the given compatible values in its
+ * compatible property.
+ */
+bool of_machine_device_match(const struct of_device_id *matches)
+{
+	struct device_node *root;
+	const struct of_device_id *match = NULL;
+
+	root = of_find_node_by_path("/");
+	if (root) {
+		match = of_match_node(matches, root);
+		of_node_put(root);
+	}
+
+	return match != NULL;
+}
+EXPORT_SYMBOL(of_machine_device_match);
+
+/**
+ * of_machine_get_match_data - Tell if root of device tree has a matching of_match structure
+ * @matches:	NULL terminated array of of_device_id match structures to search in
+ *
+ * Returns data associated with matched entry or NULL
+ */
+const void *of_machine_get_match_data(const struct of_device_id *matches)
+{
+	const struct of_device_id *match;
+	struct device_node *root;
+
+	root = of_find_node_by_path("/");
+	if (!root)
+		return NULL;
+
+	match = of_match_node(matches, root);
+	of_node_put(root);
+
+	if (!match)
+		return NULL;
+
+	return match->data;
+}
+EXPORT_SYMBOL(of_machine_get_match_data);
+
 static bool __of_device_is_status(const struct device_node *device,
 				  const char * const*strings)
 {
diff --git a/include/linux/of.h b/include/linux/of.h
index 121a288ca92d..01bb3affcd49 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -407,6 +407,8 @@ extern int of_alias_get_id(const struct device_node *np, const char *stem);
 extern int of_alias_get_highest_id(const char *stem);
 
 bool of_machine_compatible_match(const char *const *compats);
+bool of_machine_device_match(const struct of_device_id *matches);
+const void *of_machine_get_match_data(const struct of_device_id *matches);
 
 /**
  * of_machine_is_compatible - Test root of device tree for a given compatible value
@@ -855,6 +857,17 @@ static inline bool of_machine_compatible_match(const char *const *compats)
 	return false;
 }
 
+static inline bool of_machine_device_match(const struct of_device_id *matches)
+{
+	return false;
+}
+
+static inline const void *
+of_machine_get_match_data(const struct of_device_id *matches)
+{
+	return NULL;
+}
+
 static inline bool of_console_check(const struct device_node *dn, const char *name, int index)
 {
 	return false;

-- 
2.48.1


