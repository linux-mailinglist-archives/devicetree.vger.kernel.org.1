Return-Path: <devicetree+bounces-168946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C690BA94F4A
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:14:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE5361892ECB
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59D12641C1;
	Mon, 21 Apr 2025 10:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GsxUWMiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549D7263F4A
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230409; cv=none; b=kFmc7ooqGfKjQ7ThFXh1CF/ODcKlDGCPgANwdykdfwKVV3tDnn8zuYmMxIo9Ykh/EKsn+7/Xm8K3mD1xvBMLCngdpsT8zZBv1Ve9P2MM3ijz4vbljhYt+xvC+iyWviJVLJmvZws40mVU8PKU3QEcHPRHNhVSCnyAtQlM0S1BTs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230409; c=relaxed/simple;
	bh=qF7jWnTilMBS2qcmpMwmTaRPTIW0Gr0c/UFCDNrCywY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GWcfEMvYZ7i1aeH6awjFM/sSfVu/n5g9yAzmDb2/HuuegBpjGu/L42MFOfiVvB4FQYW1FErAv1cfg7fS0qlfroqSGaog24weD8xLw2daF2JzejZmNgmWYc9wg4GnXDToXq97jTcr3vh3tyFy5S6CzTp0pTQ8jBwiPEq7VKFUbTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GsxUWMiF; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2243803b776so59623585ad.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230407; x=1745835207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcjHyP3cBWKaEk01AYLfxR/iTiJMn9iHLwLqY1LLLpk=;
        b=GsxUWMiFK0oWYAKsRY0F5+gFDuXQv06/pFo9Cdam+ZNfTR2Cq6J2m+YtHsFvqVBJtP
         QBA5FCVFI7PaXPzbST3fzJ1n5s3mbscuTQsYkhurNXrS6AAfij6h5H2uZSO6gygWcAR+
         brHiEX5yebvHgBhNlHtnMs3BAo0aYQoLycePU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230407; x=1745835207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcjHyP3cBWKaEk01AYLfxR/iTiJMn9iHLwLqY1LLLpk=;
        b=fDDLoWTE/uxPPohdv+x5HxRAtYmuCF/+XkqI8cLnFKnQ5mqKRCiawBMox3rlj2zTRo
         Z5mTbu1e9nhZ6ebLZxahiNH6EDPfU8PDRE5MjOtgMMY6Vwn2xjTcMaX1I/vxIDufz+dX
         r16xdKtVPZhFpxo5/fHYTGBoYSgn17oZvMNa+8nWaXn10Bza8w/uOPPOGNEbwOG5uxM9
         dtAZ6F2wJGtZtR6mi9doEbMlGrYJhz1/Oghjvg/4BblbONjVgp9p5kvDPwhXhxAbCuoG
         FpqJmg9fbUBx+A4JbZc++m8TThN8p8KsmDxEyXaxjKZVBO0sZ9wGnFuE9LmNrnSn/zhS
         ncSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXAyvr6xTa8zv2uN7G1G6Uvq4NCIYKMCHbcVDONnaPCZJwjpeNsd+KCKX3evkSzDHXcy3SeL1QgUeq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3HnI5At4+OXx8DYF1J9KPzWVZQe1NI/W0qxuLVnyQh3cph/Yi
	QN1oCV+03kdlqQoHw250ss63SH5rY02VJBumN2qepyL2xcCqZ1HvR57gNYaFBA==
X-Gm-Gg: ASbGncvZbcHehW4I7mqxNKcld0ePpbqSublxiZNPmlNMe/q/AUXUfkmDFM4K53pyugk
	RSsV2qEUcK82WULGD9Hp7GEdy8FG2CJwEk5QqSAZOE7iXxSlXAMsDs8nueVgKi7cv8COuraC5s+
	xQD7eNuubOA7Ozx4+LDyA8LzQmMuizh4rhpvx79/sU0FLczyUngD9ToC3Wd/wijZ/0vYq6yVYkc
	7GeLxMELePwKWyFpW9OCaVzDA2UrrlVxe8DU8GOO4H4dweE2Xdg/OBgJx4ze0Nq8nhvWu0AkBn1
	5nsMiAdbPT0QLqU6zbqpgxVSQ4yG2z66+1x0OdAf5WIbpSS52JRLjTKpCViEBJEQlDHR5Q==
X-Google-Smtp-Source: AGHT+IHuFSunYBioxk4Fk/97b/EXhuCRKPWNocxu/A5uMoJPd3zI4mtSEWbcD0F9jrilaVzVx5rPjA==
X-Received: by 2002:a17:903:41c7:b0:220:faa2:c911 with SMTP id d9443c01a7336-22c535a4b39mr151608295ad.14.1745230407602;
        Mon, 21 Apr 2025 03:13:27 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:26 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 7/8] platform/chrome: of_hw_prober: Support trackpad probing on Corsola family
Date: Mon, 21 Apr 2025 18:12:45 +0800
Message-ID: <20250421101248.426929-8-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Various MT8186 Corsola Chromebooks (squirtle, steelix and voltorb
families) have second source trackpads that need to be probed.
The power supply for these are always on and their reset/enable
lines are not exposed.

Add them to the probing list.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Rebased and resolved conflicts with "spherion" trackpad prober
---
 drivers/platform/chrome/chromeos_of_hw_prober.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/platform/chrome/chromeos_of_hw_prober.c
index 019578bc7ad0..10dbaede0541 100644
--- a/drivers/platform/chrome/chromeos_of_hw_prober.c
+++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
@@ -57,6 +57,7 @@ static int chromeos_i2c_component_prober(struct device *dev, const void *_data)
 	}
 
 DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(touchscreen);
+DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(trackpad);
 
 DEFINE_CHROMEOS_I2C_PROBE_CFG_SIMPLE_BY_TYPE(trackpad);
 
@@ -88,6 +89,18 @@ static const struct hw_prober_entry hw_prober_platforms[] = {
 		.compatible = "google,spherion",
 		.prober = chromeos_i2c_component_prober,
 		.data = &chromeos_i2c_probe_hana_trackpad,
+	}, {
+		.compatible = "google,squirtle",
+		.prober = chromeos_i2c_component_prober,
+		.data = &chromeos_i2c_probe_dumb_trackpad,
+	}, {
+		.compatible = "google,steelix",
+		.prober = chromeos_i2c_component_prober,
+		.data = &chromeos_i2c_probe_dumb_trackpad,
+	}, {
+		.compatible = "google,voltorb",
+		.prober = chromeos_i2c_component_prober,
+		.data = &chromeos_i2c_probe_dumb_trackpad,
 	},
 };
 
-- 
2.49.0.805.g082f7c87e0-goog


