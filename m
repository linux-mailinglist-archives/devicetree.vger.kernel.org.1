Return-Path: <devicetree+bounces-156849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC42A5DAC8
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCDD6179C46
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37302248191;
	Wed, 12 Mar 2025 10:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lAwCkucf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5D62459F1
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776256; cv=none; b=E5MC6AH9brfMhTnxkD9niAoanPkPdoarIxev7zcjed2thqQYGUU1pSXvbiZH3c0GLtg4jNfrEG/Tck91mxLUZzigMLb2I3EH5FZR+Wzu7A0o6dZYEsoDq6YISLaLu2QAQ891kWUghA6H1PsNpdCzghttTSxLyLwOk3GxPi3tHRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776256; c=relaxed/simple;
	bh=9hXJ05Bllblc/HNvRr6L30WMFsTUsEOeU51KuFxzBIU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GtPyU3DxiA/D6FYFu1Y9m/G45cn2iGDFv7DtGIeQU/1bUy0BUjqhnXMMod32wR5aBbYwDJb/NoJYF09BgFMnO+kc7jfBYiQ7Ngbyzps3Leid0PVFlzfCbIuy46HCLhY0gxLD/pcgzlQsEyvUHAWQt+e++YI8ieLYxBR0YvR5Jcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lAwCkucf; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ff80290e44so11127906a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776254; x=1742381054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07NeGidiEoFI0vJcWncCuXXVE170Ua3zDu2V1ci+TTk=;
        b=lAwCkucfkAByoO8irfgFun7M00BMvmyymxIxyCUi9NyJCAJNin16elYQyOCm/G5Gw1
         Wj0+XT4ablczSmfsm4lO9yGxf0CQoGt0G9YldIUBCkqa1M3A029sepUS4ahkQwaE/bWV
         YRaslabLellu8hCSz4gYQQouD8/2ksfinqaec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776254; x=1742381054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07NeGidiEoFI0vJcWncCuXXVE170Ua3zDu2V1ci+TTk=;
        b=HoYMXPuU/kuaTWYtPEI+uPGmhzz77buA6uOLayRuXKSWC0/BK/aMK/TKtu9X7lND0q
         hLWJZBCTNb7Ifi3qyZz6lqNiP62sDjTpM2Kd8GfMyyRfsyf89XdvQ3/o2Bmkdqs3s8e1
         a3/PTB3QEf832nGtsUhNbfB/cAPDdr2txmhjoSUqSUFi4bZJZZzc/0U/wddwbmbpounp
         wu8NGXhlmX/A2pBgEmn3yUI7LE1eSlMPLE1KUhVqy9QoOT7I85EP9tdjoYU6TSEWlLy+
         X95Qu7rDLylMFgYNEPYCLd9KMY5+z+wN6hDuVyY7ZiVjNAV/e6LmiATCmQQTopnvSybU
         V5LA==
X-Forwarded-Encrypted: i=1; AJvYcCUIPspixHqpZXHkDkUEVoWLWMCGw27jfo/BTqKajNr+zjRxM9jQ2BTVS4QIUkOrF4IYOj9Y4M4Dq3FL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx78cUewkwnUbnAHcA7wJQ6Q9YJw3QbUjvXR9VDkt66VVy56DpN
	I5JM3CMJiG3kuxrDlvtvyv2Hlfs2evWRV3ZOR3yNlBlDS1RR0n2exRzySq6JHQ==
X-Gm-Gg: ASbGncuAgJAtLLQssqrkdmeP2k6GBjwzTckSTWXRfEtKkdDKZcvtGM/7lApmiZ5j6xC
	61mKxdqHgZ56oAZkPS+UICVERQ7PVm3UTDsTaF9MgjBUCzO7KCcvzbHVezh6JsqYoYGVQbHs6Vd
	NpxdtOXmLPFM7EO/RQ9C06DdL/BrvtSvnj7mdK8OGUeTRXX27jSznoeaUjr1w6nRh4JiG6MiUG7
	EcOa3NszTnpHL6Ope8dbHF2TFQ6rIw52d4QWw1Ebj2+L6s37vcIbTcS5B5x3Ewq26/CIn4DeTVO
	kLnNMTrYJpR+ZqhABfN/akzK2xFaKgFjvzX2apqQqtG/ipaETIH2IrDCOoCQ1Rk=
X-Google-Smtp-Source: AGHT+IFSE2gHTCSWYPmLv3kDZjxj214O8BELRgRt+BaoekLoQKZE6r3o5wS+pqNMYHoEB24uQ1fVVw==
X-Received: by 2002:a17:90b:388a:b0:2ea:bf1c:1e3a with SMTP id 98e67ed59e1d1-2ff7ce94cccmr37763724a91.12.1741776253695;
        Wed, 12 Mar 2025 03:44:13 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:44:13 -0700 (PDT)
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
Subject: [PATCH 7/8] platform/chrome: of_hw_prober: Support trackpad probing on Corsola family
Date: Wed, 12 Mar 2025 18:43:41 +0800
Message-ID: <20250312104344.3084425-8-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
In-Reply-To: <20250312104344.3084425-1-wenst@chromium.org>
References: <20250312104344.3084425-1-wenst@chromium.org>
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
 drivers/platform/chrome/chromeos_of_hw_prober.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/platform/chrome/chromeos_of_hw_prober.c b/drivers/platform/chrome/chromeos_of_hw_prober.c
index c6992f5cdc76..eb01851e1cf5 100644
--- a/drivers/platform/chrome/chromeos_of_hw_prober.c
+++ b/drivers/platform/chrome/chromeos_of_hw_prober.c
@@ -57,6 +57,7 @@ static int chromeos_i2c_component_prober(struct device *dev, const void *_data)
 	}
 
 DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(touchscreen);
+DEFINE_CHROMEOS_I2C_PROBE_DATA_DUMB_BY_TYPE(trackpad);
 
 DEFINE_CHROMEOS_I2C_PROBE_CFG_SIMPLE_BY_TYPE(trackpad);
 
@@ -84,6 +85,18 @@ static const struct hw_prober_entry hw_prober_platforms[] = {
 		.compatible = "google,hana",
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
2.49.0.rc0.332.g42c0ae87b1-goog


