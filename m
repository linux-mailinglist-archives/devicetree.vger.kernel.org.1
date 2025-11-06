Return-Path: <devicetree+bounces-235816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C98F0C3D279
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4647F188DB2D
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B28D1355808;
	Thu,  6 Nov 2025 19:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CAffjnri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722D4355025
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762456098; cv=none; b=rGKAGssKLcT/+s00w01dwYeyY7zg6aj6i4Ek7nNWxQBF6GsJ5XBba/12Umc1Ux9mmocgrsGqVLA4G4X+Cmn5PGexQ6GmM8nA0p90T/LzehrDjC2KCWlXXRu6n+KWWf9k9gLSLGSmw/MB88IGAY//owy4GrQUzaUbp9xV+lj+MBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762456098; c=relaxed/simple;
	bh=CTPERwGR0vMXN1C8guhiuGxeTUnLxrLtg8vK5MEHVnk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rVHnYwZgwvAY4gh4B8Y42/8NCiomxKwJ8XSxPz91/368EjK55/R+vb+pX6FOS+shSfzLHRcGICFSKlUVeEzfZ2HSvNW6+bugPprDOTcFQ9OBlzoHXhxNOkbLoBT6fpZ071s/gQoCul4ZgKaCC6NuJqyl8fBJmmQyc4e37VqXCVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CAffjnri; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-633b4861b79so268808a12.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762456095; x=1763060895; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R6naE3xvBLUOEj7qpWoYnnhA5sncyoH35f6mKe7kp0E=;
        b=CAffjnriq0Dy2UjvoDl0BUBw3zhNTb8WHWWpIDzLUIUvADcjpG3skKRNerU8gmh6SV
         W4ZSXhrooNFkIBnbdUiBe6DUKGYGNGKlBO7Ja23K1C3y0gu9p+D6ng36LB29mrVc0M3Q
         V96LW4Zod13dA84ov/geKemH27mFEKqr4DVzDGVoDViY+AJBXaFQalyY579s0lMXAu7Z
         7y2ER5I202JuxBO3KFxxWGKgYXj1TZeMl3N7/Ha9yk0o0We/qNijt7ICCR8q87/LEobq
         VcNrsBQMAgWRDaTHzWdTC2SbZNGpD0a9eW4F5i2bbEJ+HenglkOAgy7Rlo0cFFfZNC24
         uoOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762456095; x=1763060895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R6naE3xvBLUOEj7qpWoYnnhA5sncyoH35f6mKe7kp0E=;
        b=Jl2pah4kGrSyNAo6URWsRyHM0LYzZ3Iv+/FbcVsZiI2H7dlcBzw/J/Fga/GddoU0kn
         WKIBWJgm79qi9aF/+GSSNAqS+Oftlg4Kf9AEFByNEP8uZoRn2dfZIxPsuv21Q02TPAvz
         z7BEt0dYvQlvGN5HA9Snj98BjmN7wxerEf8q2MbKAKVIJupYpYXZDH/1ugQwJbB5Odqn
         rgrU4yfWOGsxVPr1uvxtfP/8enTWQXdry5J3ZWvH4tXkaUiXxUgyR/Wb8Np5Z1CVP4CL
         Yf34+4xU7RgCxLiAhx/mgwAaUU9gs4cMnOxrQbDf19+QrEwC4gWNgAbRtDgLL+uzc8ID
         lj/g==
X-Gm-Message-State: AOJu0Yy82Vmjp4WLPIReJCyEoZSkTBPj88Cl/ZED0gz3cIqPDD7HKs2v
	7JpOdcncQOu2eQOyecSsMn2X+blJJYC1BGPcdnJadR+qmtVCYxzhq1BXzZhedIbyle0=
X-Gm-Gg: ASbGncttrxnAVkaAa32F7YKpE05JNOCEB4nl44zHU4CNB36vbMbzVvU2PWdGu07gApK
	CPBmya6B5Gs9OxL1tSF3Yx8yHjT6gYQS9BS/SHuZZFrXJ2EOZXfrntKcttPfQcAilUIc34qZEXJ
	bo23PPzpss2f061rWrhqvp70MNlJS0ahdQcSBTk8Io7VhktwJj8TdlT0o4NNf8Rw9LlD9PXGO8L
	qszItFS8sfrglBz3oecdS+Eka+gw/hPzMN1a6QwGQ0H0cbSo1fKzq+sMX6lIbTjze3uJPodmF0Z
	keZMDXgJkw8Dmz3P5BYpcZz5tbFsvH2XixaP4Vbc8DgrZOnaU8w91Dg9pt+tYlXcIR/XdvjysL0
	hhtuFnSodDrCjqZa1pVqAr97gh8IAv1BkpYqlESIwXLSlAz/fN8SxNn1Gg/p8GfpTiAzdRcNQwl
	sWO7N5wR0069SErXOzu+jpDzVF0MQ=
X-Google-Smtp-Source: AGHT+IEr4RF4E5wCG++3YWlDKZbg9YIivFvXtw4OBS4Iyhln9zaKKk5C0r/mzjc23RBpruUfQanxFA==
X-Received: by 2002:a17:907:1c01:b0:b6a:382a:1516 with SMTP id a640c23a62f3a-b72c0d52bf6mr17966766b.5.1762456094708;
        Thu, 06 Nov 2025 11:08:14 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa2510esm26739566b.72.2025.11.06.11.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 11:08:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 06 Nov 2025 20:07:10 +0100
Subject: [PATCH 03/13] cpufreq: mediatek: Simplify with
 of_machine_get_match_data()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-b4-of-match-matchine-data-v1-3-d780ea1780c2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1257;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=CTPERwGR0vMXN1C8guhiuGxeTUnLxrLtg8vK5MEHVnk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpDPILAuS+lVwfFACNKPjz22AAYwy2bMRt/Q93S
 DnUgdU65maJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQzyCwAKCRDBN2bmhouD
 1zn6EACV/mnoLciIGb4VTtmzF+e3USbZjuRip476+yuuWtnAhwJj3BwMkKgKezM4jwZiQ1WrGil
 16TT/t9A1kxXb/wtajTcOSOreBQH/r7cTofVbfolf4PEgMwNSA4fR9doVK97Yx18uPTlPdbIR4O
 XOkStiIMqsv4e7klUNKsXhdTjrheH9GCA0oWRbie2Daqxt+11029JL4W6yCgsxSIIyjL8tmnhDc
 devdZzJQJkckT6NdYe6NaCszbAstRhJa/mI3ReNfIxrKRjXZ6xOvbgqvUyjmhV7g6rPrMfrJevl
 biLpFS2mDn1cF0l+Fgz7tY2xFzEF6YzZ8reqiCXSLdysLlawci/V4J5drxnWmrH9TF1/OLXAOXv
 b8ePYzRjo7D7uf+eMEj7WB7edc8DFauttnNvvc2AV5hgAdUJNuQ+BDUgtWlc0kJzjjlhSa/BcKy
 3Jyud64JvwzEc0w5YSP87RP30/FppcGBhmjk1/dwn2LNnHSihOgsXxHgO5GHu0+3BUojGHPcCr5
 6cbRsV7B+esMM+vWK5zpDIgZQBe+MkZyehmRahg7X6c34KQabQVPQSpVS39nvYFTpDldTeumK6W
 PALkPNvM6TQ/kkaMJXNUaNPT9sQnP6tkCgCXvou2jIXiZ0CnulHJgiu40AHRP0m47yn2possioW
 ujbvgdZ1rNqGpAA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Replace open-coded getting root OF node, matching against it and getting
the match data with new of_machine_get_match_data() helper.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on the first OF patch.
---
 drivers/cpufreq/mediatek-cpufreq.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
index 5d50a231f944..052ca7cd2f4f 100644
--- a/drivers/cpufreq/mediatek-cpufreq.c
+++ b/drivers/cpufreq/mediatek-cpufreq.c
@@ -764,22 +764,14 @@ MODULE_DEVICE_TABLE(of, mtk_cpufreq_machines);
 
 static int __init mtk_cpufreq_driver_init(void)
 {
-	struct device_node *np;
-	const struct of_device_id *match;
 	const struct mtk_cpufreq_platform_data *data;
 	int err;
 
-	np = of_find_node_by_path("/");
-	if (!np)
-		return -ENODEV;
-
-	match = of_match_node(mtk_cpufreq_machines, np);
-	of_node_put(np);
-	if (!match) {
+	data = of_machine_get_match_data(mtk_cpufreq_machines);
+	if (!data) {
 		pr_debug("Machine is not compatible with mtk-cpufreq\n");
 		return -ENODEV;
 	}
-	data = match->data;
 
 	err = platform_driver_register(&mtk_cpufreq_platdrv);
 	if (err)

-- 
2.48.1


