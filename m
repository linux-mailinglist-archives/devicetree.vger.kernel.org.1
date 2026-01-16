Return-Path: <devicetree+bounces-256089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A6CD31AFE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81F77307A812
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206BD272813;
	Fri, 16 Jan 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mOjnHEaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFE9253958
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569452; cv=none; b=Ommaf8zd6iUC2yzntvtyWFlC6zYhh8iAi1bi638adSddHS5FbQhpNzv3PaX2rOIvZ+Lpv0Ku2f8BPtAzB7UHR00ffMPaWfvDaz9AI3fZdXW1FZ7t3UrSepo85cii+YHsl+3buFpsPdJbN3zn/HyAwnxp724id37UQx6GsduHJK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569452; c=relaxed/simple;
	bh=5i0VsvUcS0SUwOVd0wGHGUe0uBItUE4uGBSE3yIgsYw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hxJliHGZW4A4X8A3iCqMTvF0vFo/CJrhi9GpdEZHJxN21KuYWzAfMXelhlfLyA6z2oRkoE2tkTxr/Jpi/QdcQIzoJILTYhvZy8V3LhoDG5yS+6m9H+an4cLLr5I9k0yTbZhEhxSFm0i3ifHvBOsshvLQj3g63Q+bayDgT5sJU4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mOjnHEaQ; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6505d3b84bcso3115296a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768569447; x=1769174247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duq39jBoqDFtabq63HAqX5adf5fdfb9r8RBQ2RPSZD0=;
        b=mOjnHEaQ0xxNRyxaRCwgz00PSnpOxde71MA1Cdyi1PZpG1XySlKbhbPekX1OJPrphr
         FBnSrVjmcOvp6VIwJxNpZkarwpgCNFaqwl7PUkzMNSG4VAIORELm6u0O+pw5p9Fe7uKv
         n76OKCHRioCRE3mJXgxGlZwM+tDreLGwshH9yNW7dikStHvDuIBm/qCRxG9hUipKtJV6
         SuMtQqasEkJsxY1h3k/YQBnJq2xQmQfXdmEP8/lfuwflQHgvKGcWPoHCZpbsJUGFTRSA
         FrcopB4CMrUQDykTUbPwZkIgIh4fK5NREzImnnXvShug82Tj82j8k9o3tPdYflJQzFqf
         fEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768569447; x=1769174247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=duq39jBoqDFtabq63HAqX5adf5fdfb9r8RBQ2RPSZD0=;
        b=ilNdlMpkQFtZ4f+G8PGgcapr0Nr4Mu5F/AfB7Pzn6BDBNarI37wyVG4ReBq/BWKbtq
         qFOn6DJZwWKS67UohiuIxCpEOPOFstWS3hw3OrzKTGKmmb051+SNKrVt4FIJQnSh89mV
         5uiXav+kDU8v/WFePDu6OvuFPdDQ4qcCE2hkv8QYYMtcUbbLe7oI0dsjJ/j2+rew9vJX
         +icoM10urChOohFH2MO5cUILNZ7WDS2y3v9FR62mFuYcfpVj2b+sgUcXQQAWIOBmyvYF
         8abNwGwqDDTzTNZlQf5Qc4oT0f49sY524ZkLTGVw4JZFlfD1aBtmmdqeth1WTIjFRcb7
         NBsw==
X-Forwarded-Encrypted: i=1; AJvYcCWekoikGvOcv8a05+dIT5RMhQNlAh1yY7EbUZLivTvbO5WDyx97r0aFnmv9MELnvWQLc9I2Cc5nfEEg@vger.kernel.org
X-Gm-Message-State: AOJu0YwkvZa5ov0XRAI8jFDExUj6QJeWYNnpDpGQ7bdNj8Z/HoJ2mY8C
	rNmmg+kAU1eCYXYkx6ClvYe+XG8Pqh9zZChnfISk06U6FMVVBpwbVPMfpw2GvpRfDYI=
X-Gm-Gg: AY/fxX4mChDWL34hA67QLb5YnoFyBnubTyvTao/JLsU98glRpKn/eNFpUzfIQHVzN6M
	0/w9VaobRw2a5FCxHuUyIZyDC1+5O8KQ5x3lCV3RKENvtCkAyI2m+Qlm8V/de7TEC6SZJ6FFEFK
	Vh423PtgbLFMUhgLSI1UpcUCu6A/EMxIOmUszNoKkB/GxDwMwtSSvUsB+O8hWw6y7dB/744VeE3
	nwVBkhpe4kbG6oQLyiqm2Gk7DoC3KBdgS7NJN2Txz81eDcwF2lfN3/9PlxkVSVfIj7WfMtCEf1p
	vn9GaMOOwO/FFUhytNpAax8aQ86oQdac4cPpswY/GVD1b3K5l2wng7KTdYbZ0PccXpPk2rVKLgD
	0PIb94B27275hsllC4BvGDPtgYav2wcrruy8kpAz0n01ruCVhdWHJSA4b+WwJdHuDqjGYQh0/Xq
	n9sLNyK04oqq+HR3SfZKmuqhSO/PXKfGdoRweXbkNwZ7UYmEATwsegjdGWtWIlqBnZ
X-Received: by 2002:a17:907:25c7:b0:b73:398c:c5a7 with SMTP id a640c23a62f3a-b8793008849mr255921666b.41.1768569447170;
        Fri, 16 Jan 2026 05:17:27 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a350dbsm235507366b.69.2026.01.16.05.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:17:26 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 14:17:23 +0100
Subject: [PATCH 4/5] clk: qcom: camcc-milos: Declare icc path dependency
 for CAMSS_TOP_GDSC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-camcc-icc-v1-4-400b7fcd156a@fairphone.com>
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
In-Reply-To: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768569443; l=942;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=5i0VsvUcS0SUwOVd0wGHGUe0uBItUE4uGBSE3yIgsYw=;
 b=pxIbdFvn4Pi8X4MwhDSzKXEcKRx9BJ2hA91ot6BC8vc+Xctsgq8QVNEsD4kc47w1mvuNfbMGT
 fbkIhmEQvCTC+X+GuHJJaZKe/3EgLXqaOD5082PO4UqZCO8X7y851YF
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

This GDSC requires an interconnect path to be enabled, otherwise the
GDSC will be stuck on 'off' and can't be enabled.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/clk/qcom/camcc-milos.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/qcom/camcc-milos.c b/drivers/clk/qcom/camcc-milos.c
index 0077c9c9249f..45e68165a2f0 100644
--- a/drivers/clk/qcom/camcc-milos.c
+++ b/drivers/clk/qcom/camcc-milos.c
@@ -30,6 +30,11 @@ enum {
 	DT_IFACE,
 };
 
+/* Need to match the order of interconnects in DT binding */
+enum {
+	DT_ICC_TOP_GDSC,
+};
+
 enum {
 	P_BI_TCXO,
 	P_CAM_CC_PLL0_OUT_EVEN,
@@ -1971,6 +1976,8 @@ static struct gdsc cam_cc_camss_top_gdsc = {
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+	.needs_icc = true,
+	.icc_path_index = DT_ICC_TOP_GDSC,
 };
 
 static struct clk_regmap *cam_cc_milos_clocks[] = {

-- 
2.52.0


