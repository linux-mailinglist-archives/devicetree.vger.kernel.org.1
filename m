Return-Path: <devicetree+bounces-158896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D8A687BF
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F830188FF58
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4391F253F04;
	Wed, 19 Mar 2025 09:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v0GRtoYq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB8252918
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375877; cv=none; b=cWNVVxJRuIDh3uoWyCSC9ojcU4XxPKo6o1USa2DHNYX8V7+hUnVi6fh5y4REExwvSUklPh/y0m8uwll1XNHFnvN9a02G7Jp+IHxeXdXCuxgbqjn2nxMj8oYPlFRcpK9OwfqT6n7xYda7torm74VdcHF1dnsJsyHHpMhH+sHkja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375877; c=relaxed/simple;
	bh=ULRWIRzW3ClVMbPCwKcuXk3yCqOKBA/uzUXVWNbco5U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qJIXWgx/HbGLZnsFVrLyiHUg7StSLo9rWDYZfUo/GhFzxnTm+EOncJkskBjgJK9/VWcjphnBtgiti+sOaFPkNtrbZ+p8BXhRESAbclCyQrHVWhjDrKiF9g8/HXs013kG6KW0I52bdC5IBkKQQrgocDC9Aisrb+yrM+PvkbvKFcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v0GRtoYq; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-391342fc0b5so5402582f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 02:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742375872; x=1742980672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ySdR3tj80pBDLvsU4QQMajiIPqzNIK+BJx1XMf8UJs=;
        b=v0GRtoYqQoO0WTUTIXqtbK/IeO4I9Wco8GvnRvjcB4nxyblIwdeAbaguhXo/Z+Lcv+
         p4dnXhZM8Ai5AZtPmOEzVMDSCEaK5uVvQMhtr+bWd5AqFgyf3PbhrxB73ufXBk1qiLKL
         roeEsLl7hlgtKM7ltpWdophjkSshDavruRqDif7dGE4ITQAKNBmSM7MkGvKOnwOY+amj
         qqmNgNIK6b0Ub82dz+8GghTxHeItl+xfLmpAwRVVTD66dkBjnJTvq+DaWAkWwX9XRdDg
         4DjeueOtZmW3RmAt/HjOBU+kYNmJPUnTLr9x2cYzErnXBwRDDIGiow2XIHsUPhbpjWGp
         lRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742375872; x=1742980672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ySdR3tj80pBDLvsU4QQMajiIPqzNIK+BJx1XMf8UJs=;
        b=ExlHB32D3qiEkMdtKRFjY9/ExWZnJWui1ScsZHT0NmJt+pnE2IniupC2TI/JtMLgV6
         no36Q64Oe0SVgfrNF25EZSeA0lhAjiCNE/mr/gk0Nyn8emnQRE5qHcB0V99QuxVimnop
         ke5iwt8ESW7ESMZXCP4LPFKIsibrJGVr7PI2p38FdHzlHd1XqnZNs8htdiaZRRQllQWR
         EKjyAP0J8vjKhgWV7+YShKtgJjwLHrL7U/HjsdCLrlk2AgVWZQ//FHAKZKva5ODCQ1xR
         EMNp0K5ES/NZkLGt+SIb0AFY0xUq0lg5Y+w7fyKATHYNgnusSQuMpzhnyoJPfMeoJL3x
         UtWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfnHopjAyKXYKMCwPT6TgiEq9QmDOARpUQ2dasnJ+/ET+58W1PpYbbV490VBAEZMQg9jcUvggkDh/v@vger.kernel.org
X-Gm-Message-State: AOJu0YxMGAU34EN0A+H12BapEyCOKxcsT2PLv8YEF7cColsm5IPmvtr4
	Za6mjhARrqHnR1AQPr6YOCjFWEVeLmiWS86c55yw+Qs0hhQit+trEn5tzbVxOSI=
X-Gm-Gg: ASbGnct+36QTOVufQjf97/5PRbgNz0gDPD9GUTkkgP7GL7D53jJ58C7M/0+WtQ40fvb
	Hea9ikj+iPhbpnt8IceaFqxCTF3ZPhwxHnxofunjq6qGYpkEJfYPpZe/yxAZe9S/XQFjofikUyV
	MBjAM85f0vkHuGZK5OQDdZRBq6K8Y86i+gJ7MDB/c1iC0G1xktWWBXwU4CQefgBK3+gqum+Atv2
	+lPnIP4+mt46BhJQh93Pw4NViBZre3xvx6zTjvo0DQOEjUTcaZpxv2hSi6CGkkmgvfyWEAh7tJC
	eTGRrMmveD4wlEi9P4huZlL2kg7chD7BDSXDpZTiVApmx7HLf8Aj3pxI50WwVSROWb54GRN3NpI
	i2TBV
X-Google-Smtp-Source: AGHT+IFGBgrP9XrQ3f2uafyicjPKMzKkkhYZU6En9bbVWfY5B2AqCcmoR4UU0JrQIUMOQW0ppC9i4g==
X-Received: by 2002:a5d:5f91:0:b0:390:ee34:228b with SMTP id ffacd0b85a97d-399739cbbd6mr1493601f8f.24.1742375872457;
        Wed, 19 Mar 2025 02:17:52 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c82c255bsm20023810f8f.23.2025.03.19.02.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:17:51 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: broonie@kernel.org,
	andersson@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/3] ASoC: codecs: wcd938x: add support power on hp audio switch
Date: Wed, 19 Mar 2025 09:16:36 +0000
Message-Id: <20250319091637.4505-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable. Enable this regulator if
platform is setup with regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wcd938x.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index f2a4f3262bdb..a00845089e13 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -3267,6 +3267,13 @@ static int wcd938x_populate_dt_data(struct wcd938x_priv *wcd938x, struct device
 		return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
 				     "us-euro swap Control GPIO not found\n");
 
+	ret = devm_regulator_get_enable_optional(dev, "vdd-hp-switch");
+	if (ret && ret != -ENODEV) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Couldn't retrieve/enable audio switch supply\n");
+		return ret;
+	}
+
 	cfg->swap_gnd_mic = wcd938x_swap_gnd_mic;
 
 	wcd938x->supplies[0].supply = "vdd-rxtx";
-- 
2.39.5


