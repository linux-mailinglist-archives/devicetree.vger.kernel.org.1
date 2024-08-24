Return-Path: <devicetree+bounces-96386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6745195DDAE
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 13:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6936283335
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 11:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2411714AA;
	Sat, 24 Aug 2024 11:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X6a07QXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E12158DD9
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 11:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724500747; cv=none; b=UyiBEnZu/NHnMjIOqMnXQpQvfvCH5U4b4XaBK7GiY+LihlPhl+XPQWr8SzJVT/FGBG77+DcOgxLdI3+H2EhBhzOWMI/aFyd5Gvd/y6NORxbBcm741tNUg21X1PwzCMzWUagOcIJdQFwGykP19PylDM1/Axq2Zusx13WJsdbUhAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724500747; c=relaxed/simple;
	bh=0DuzVKEoj/UXgJ7mEwk1mI8XAwz74JJWB+QxpB2dey4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BtQ7QJqGaoVrIkehqZHjF96gRdLVTsQc6z+b+Ft0O3aB2K4+KXPl4yQ7EvAL2C6haYK6SBWNNyMKpxM9fgRLw5gkDG4UqcFAbyThGWxAW5hseEdRzd/lI4tQq9M7U0QtRgk1SWOwCA+15ItmmMA4hoVGYN4HUBpWjbGc3a/WB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X6a07QXB; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a8695cc91c8so298918466b.3
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 04:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724500744; x=1725105544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFI93y00zMD6bCmpfwEIFGjVAprudVxyzc0oGsV9Nws=;
        b=X6a07QXB62MNUrElErXJ+PQ2QJnh2hMxPNfZ9YfkG+0VYxnANmoJv899mwfqqtlSBU
         URvPL0nXwcA5ytbANWlmXYjOnrDJgC4VG3ZyxYdiw9VdhCk11yiqHNRviVffrMEpYgrV
         nZZooPltoUDOydmo6bMQA6I2CytMjSQiM/MUJapP/GKhUWpf6Bx9rQMHsqDQeShioe4v
         g9fn3M9OvpHawxrASbM2bi2skrZmt8PS7qSs6sXt2vxK9AVpJhvIRUC43cZlA5st1bFJ
         gaw6rHX0O/wUCsTrZaBcuPoHxtxxXavGCV41E/XFBQlu/0+rOOxkKfvhQ+t0knh2c038
         rhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724500744; x=1725105544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nFI93y00zMD6bCmpfwEIFGjVAprudVxyzc0oGsV9Nws=;
        b=wSQoznmybKPbz8BKPzMva26XzC4b1o7gGOyqWz+3OsVjiVujCpB0+vcRcqLwijl4Ko
         BRacVNlbZfcGO9JHjiopEYXT+R+cXfjoM6fOIh9VUjL+yZ2VuIYf3Qo8Rj6A2UON+DV6
         wx9Qy+gYbrGF2jGnrOFRMFoJX8AILJ2XYIQUOgv2u/7vTkFqws/lU74/9kETF9K1JbPI
         Q7LMTk8P0NEladK3/SYKaQAcMTHpRzHqaOV2IeuEydxQB4eaIf4ccRDK8myq92m9J7N6
         yZzMKXMPyev7NB6UALvZsT999H/SKM7YULXoloCSTQzyqGQeTIClHdZVy8Tz28WdLL/u
         jhww==
X-Forwarded-Encrypted: i=1; AJvYcCV6/ezwSg9ZZLMtVNz+pMjuZ/gJ6+i7UrmDDMxTKEuI5GT769xUiBplV8H3mT+NDvShqjLtbPCWQufx@vger.kernel.org
X-Gm-Message-State: AOJu0YxTw5xvLeFDBmXjcciLG929/XLaYpUQVkSsK97Wf1+gCN7yD0H3
	ng4m2EFoKYe/cUbfmV7s9cEh4RBtgHKSSs6B644tyYX/NpcsFj0FZ91Ax7ykfXM=
X-Google-Smtp-Source: AGHT+IFjioJWqfHoLZSyZtpbC3hGCEXMM/p8fgRmV3Ro8hWJPu+jWJN6wQIPD2x7AwJXhGlaVxPS1g==
X-Received: by 2002:a17:907:e2d8:b0:a86:80b7:471d with SMTP id a640c23a62f3a-a86a52de598mr403785866b.37.1724500743573;
        Sat, 24 Aug 2024 04:59:03 -0700 (PDT)
Received: from sagittarius-a.ht.home ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f4a95sm390881166b.210.2024.08.24.04.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Aug 2024 04:59:03 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: mailingradian@gmail.com,
	vladimir.zapolskiy@linaro.org,
	loic.poulain@linaro.org,
	rfoss@kernel.org
Cc: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	todor.too@gmail.com,
	mchehab@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH] i2c: qcom-cci: Stop complaining about DT set clock rate
Date: Sat, 24 Aug 2024 12:59:00 +0100
Message-ID: <20240824115900.40702-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <Zske2ptZAV12YLyf@radian>
References: <Zske2ptZAV12YLyf@radian>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is common practice in the downstream and upstream CCI dt to set CCI
clock rates to 19.2 MHz. It appears to be fairly common for initial code to
set the CCI clock rate to 37.5 MHz.

Applying the widely used CCI clock rates from downstream ought not to cause
warning messages in the upstream kernel where our general policy is to
usually copy downstream hardware clock rates across the range of Qualcomm
drivers.

Drop the warning it is pervasive across CAMSS users but doesn't add any
information or warrant any changes to the DT to align the DT clock rate to
the bootloader clock rate.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-cci.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
index 414882c57d7f4..99e4305a33733 100644
--- a/drivers/i2c/busses/i2c-qcom-cci.c
+++ b/drivers/i2c/busses/i2c-qcom-cci.c
@@ -602,14 +602,6 @@ static int cci_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (cci_clk_rate != cci->data->cci_clk_rate) {
-		/* cci clock set by the bootloader or via assigned clock rate
-		 * in DT.
-		 */
-		dev_warn(dev, "Found %lu cci clk rate while %lu was expected\n",
-			 cci_clk_rate, cci->data->cci_clk_rate);
-	}
-
 	ret = cci_enable_clocks(cci);
 	if (ret < 0)
 		return ret;
-- 
2.45.2


