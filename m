Return-Path: <devicetree+bounces-107599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2652398F2CB
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D874B2819F7
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF0D1A7076;
	Thu,  3 Oct 2024 15:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ENCNE+cL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E881A4F1F
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 15:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970094; cv=none; b=cky6eRx/4KlNus2NcNlwMOrFFq7zoOExeuDk3n77jZA+biu0ofl79G7fbQ3rC3B6+ouL6wDz2T+DcikyMcJZjourdTtl9bFKvenHrItg/+qF6vVQxCb8DRDvMJN0jIrc7mJFVlGPWg3Y9aSChmNf00daQ60KcVALFkJgdAUbxFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970094; c=relaxed/simple;
	bh=KuJYhS6BLwFHq2M3BsUApExs70W98G5/TG0tISRMP7Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K3dpw4UPZvdgI7YyI+4mp8i7rESjtobl/LlDPK9uzNfGE4/wSGNdoy246MOYS80QQqd2BueJwKtVcfyO+mqu1y9iCuMwSJU3vvKIcypvZ2wb108R20DhI7qHksJ0TCS1PeLcYMXWpumYXvI6UtznVTqPCf9skMIiHpAvpJLpXV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ENCNE+cL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9909dff33dso180711766b.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 08:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727970090; x=1728574890; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=ENCNE+cLdICmlPtUceRaEBy6qY0M3cJQxPHM6jZNf/WD8A0cuU7c96DMrEguQxCX0g
         IvySPeg9JFjAwprcHDru3fIGB09XjH2fd9kwGhkwjsUjs0pGHVdG38vcgHVd0Ua9CEql
         ddPdqosYcZfuUd5zNYjk5mcoBde0bO0TqvDtXTAMNfljSEZH3yaVlhsDB1a8yJjq92Sr
         xxPRasxhg5I07F0ubmRXCBbm+3pjc8B6YJAwHpc9AoHDCw3pnFOlVk+aVOGTnNKqLgl1
         uTgQv3amBoB42RMP+sZYFhkTqFGYidOWmJDj04KUQ6jZkEnlVb24Zgdiw7QMWnsSy9Wo
         JiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727970090; x=1728574890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wDWnOefZjmiIEjMknhotah0eI13dQMdxoD4kz7zvhSU=;
        b=g4bdCts9BX/dBcBQW2owEBxM//BiztZ2EfQnGnOng1kGVV4NPrvnU02d+yvy6XvRF2
         CZ6PqgBFyyBitzshfQBsrPuiLlA8yoBUv5CyxAMFIfadiProZY5wuOUJ2ceUijM5llBI
         LPHJO+rzcTmNsjG2KsB17IkGP0UlK3ISzlnEWKZGZp6SJfat8y7BtlGDN6EyKSbliwLa
         9EVn7m+E3AEb+ezu0zsHpbLi7n/UGxPq63Jf3ghfxxidX8yXM4dQmmrNB2EuiGW08B07
         8CttjVkOjdnNUdfA9Ov11l71Ef/uxCJbA6HW9YUAQ43gBQGb86tT6gPufGZwqM1AwruM
         Mzkw==
X-Forwarded-Encrypted: i=1; AJvYcCVNfU2Kf0UPT+MVUB4ISVKjIxJDH6VNNO8t+Kqck5e24kxtQ+pv1GZXJ2s5cGlp8ykONCW5Fz6Z0sVr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4tiWgAtLb6HVBv5Y0NslUiL5E2WVIUypSIbqDAy5rEiQeLaTI
	D+6RMrc/wr481LK4uq9kihQ+I5KyDk0q9aCOK89gpldd4oCWgD1tYMWg50LQNmQ=
X-Google-Smtp-Source: AGHT+IG3rMtoMbI9NN5aMRWEJU21BT28htx5oYE4D7ib0ifyGr9FipmKAjWzxrRPM3WSGUHkvnJTYw==
X-Received: by 2002:a17:907:1c04:b0:a8d:7210:e28c with SMTP id a640c23a62f3a-a98f821eabcmr730643966b.20.1727970090572;
        Thu, 03 Oct 2024 08:41:30 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99104c4f3fsm98492866b.200.2024.10.03.08.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 08:41:30 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Oct 2024 16:41:27 +0100
Subject: [PATCH v4 3/4] media: ov08x40: Rename ext_clk to xvclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-b4-master-24-11-25-ov08x40-v4-3-7ee2c45fdc8c@linaro.org>
References: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
In-Reply-To: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

The data-sheet and documentation for this part uses the name xvclk not
ext_clk for the input reference clock. Rename the variables and defines in
this driver to align with the data-sheet name.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/ov08x40.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index be25e45175b1322145dca428e845242d8fea2698..3ab8b51df157af78fcccc1aaef73aedb2ae759c9 100644
--- a/drivers/media/i2c/ov08x40.c
+++ b/drivers/media/i2c/ov08x40.c
@@ -1215,7 +1215,7 @@ static const char * const ov08x40_test_pattern_menu[] = {
 /* Configurations for supported link frequencies */
 #define OV08X40_LINK_FREQ_400MHZ	400000000ULL
 #define OV08X40_SCLK_96MHZ		96000000ULL
-#define OV08X40_EXT_CLK			19200000
+#define OV08X40_XVCLK			19200000
 #define OV08X40_DATA_LANES		4
 
 /*
@@ -2081,21 +2081,21 @@ static int ov08x40_check_hwcfg(struct device *dev)
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	unsigned int i, j;
 	int ret;
-	u32 ext_clk;
+	u32 xvclk_rate;
 
 	if (!fwnode)
 		return -ENXIO;
 
 	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
-				       &ext_clk);
+				       &xvclk_rate);
 	if (ret) {
 		dev_err(dev, "can't get clock frequency");
 		return ret;
 	}
 
-	if (ext_clk != OV08X40_EXT_CLK) {
+	if (xvclk_rate != OV08X40_XVCLK) {
 		dev_err(dev, "external clock %d is not supported",
-			ext_clk);
+			xvclk_rate);
 		return -EINVAL;
 	}
 

-- 
2.46.2


