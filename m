Return-Path: <devicetree+bounces-35034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF3E83C238
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBABD2910A7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 12:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BED45971;
	Thu, 25 Jan 2024 12:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yOmUmARZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556B441742
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706184693; cv=none; b=o7fcRoGFf0RqFeFSM4mEifEPEjF5/WoZJS+MszXmaueKosC5jEfb9M8qySl11Ybwi7nS8DI5nHj01xzjn4MqIXyUMvzGQ2UyMrUFV2kBZO01gdDIJTRzl4OMsXffVOn72Q4R30L4Ivd/+amsFI2CPLP2r0d072teD3NaG64YzOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706184693; c=relaxed/simple;
	bh=Xt7YAEyjkpAAOCyAkOs7IhbYyAxT097jjtamqFpBtpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Loww+Narj1jSJrdXGZZyNjX8Lc4FFtrtYO5+qtVaX4I9OFzXgIvsgqCFmSt0Dl+1NjVmoNW9gK46ShI8JcQ6zb1dQkrQdDkpFTcJkCHY09S+6LxzyuzwaG0dFPZnoc1p4C/FfJtsfoQWwDYMJ9NAwtJS3ja/4uU/qRY6JDLFsYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yOmUmARZ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5100fbc27c3so2688483e87.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 04:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706184689; x=1706789489; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=11ARpJ3LB2A44PAyJ/Y1XtoWgM3SgViyHp/Y/XmAtrI=;
        b=yOmUmARZHKSW5nylWfkw5suq5c1Wk/NCULog7IF5BQye7bv+vf/cB+pj0ELBN2v6eo
         RjR9ZTE1Eu4lGG+CvacZJq0OuTIEOXHU4JmylKDgTgUKTz30gx/DsqSkxE+Yg5r7cdz8
         pHhpXYPYuNxPUjoVM73EzprucYoYoiVzid6n4qhP+uwvd2hHrBp1l9/hdTpgTKnM20+a
         QvpWOzvsLIkvhjkPrkhjTdmVIoIu+4YVp2jFoMFzcGHlEUA/Ckm3SXCweduWqv0ILpvi
         p6w3Usr1Ke3VCCYpnbbD/shBohGhisgIB3wDhcdYov2m3/gaXhnZjz1+CsD6WOa+3cDr
         pV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706184689; x=1706789489;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=11ARpJ3LB2A44PAyJ/Y1XtoWgM3SgViyHp/Y/XmAtrI=;
        b=EShIaMzKwAhikWs8n35TpGclDicMNXt4fGJ0oXRaICK4Z8afg69PJavHpRdWlOGYnl
         W5c3WfE/i7+1zGFSvatCeuPsBm7tj838EPJV0QfJwlEkRJhrRPFlDbtrvzvbsSHvEDZp
         xkIu81/SBNrkgj+cX3c+mV+ifvXTra4AMzXpwa/AQtysZYEV/kFDOFPmwKBDMQM96riI
         P5r9oI9aJ/qUv7LWoyD5teCGn2NyH7hPUFcI5A6+sl80uD1mlxKV0LoGdv5pbeUM3Pjh
         DROlTUM+0snPi1+8213CZDeMdbZyj2j/JDWziAwA3gRsQvjp0Tl4Eal5KCil4yjujG7R
         Ot2w==
X-Gm-Message-State: AOJu0YwRb8GAJ3qa8Qh+42eXj86vubJlG6F1mmu7IBgmoTmTqbUtjEvS
	BWbI+z9m9CL4uKWL6U4LrVYocishHyC8kL/jgCtvjCWe39564VspclJiRwwwP1s=
X-Google-Smtp-Source: AGHT+IHyBYcRLfSu7I+hi1BBRsoo2k4V4hrzHWdQQFe+plTYwSAodOBw82LZZh/KF4FP3oB3onjW+Q==
X-Received: by 2002:a05:6512:3d09:b0:50e:e888:2c48 with SMTP id d9-20020a0565123d0900b0050ee8882c48mr690981lfv.22.1706184689285;
        Thu, 25 Jan 2024 04:11:29 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y20-20020a196414000000b005102188d154sm21221lfb.108.2024.01.25.04.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 04:11:29 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 25 Jan 2024 13:11:16 +0100
Subject: [PATCH 2/2] thermal/of: Assume polling-delay(-passive) 0 when
 absent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240125-topic-thermal-v1-2-3c9d4dced138@linaro.org>
References: <20240125-topic-thermal-v1-0-3c9d4dced138@linaro.org>
In-Reply-To: <20240125-topic-thermal-v1-0-3c9d4dced138@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

Currently, thermal zones associated with providers that have interrupts
for signaling hot/critical trips are required to set a polling-delay
of 0 to indicate no polling. This feels a bit backwards.

Change the code such that "no polling delay" also means "no polling".

Suggested-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/thermal/thermal_of.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index 4d6c22e0ed85..61bbd42aa2cb 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -225,14 +225,18 @@ static int thermal_of_monitor_init(struct device_node *np, int *delay, int *pdel
 	int ret;
 
 	ret = of_property_read_u32(np, "polling-delay-passive", pdelay);
-	if (ret < 0) {
-		pr_err("%pOFn: missing polling-delay-passive property\n", np);
+	if (ret == -EINVAL) {
+		*pdelay = 0;
+	} else if (ret < 0) {
+		pr_err("%pOFn: Couldn't get polling-delay-passive: %d\n", np, ret);
 		return ret;
 	}
 
 	ret = of_property_read_u32(np, "polling-delay", delay);
-	if (ret < 0) {
-		pr_err("%pOFn: missing polling-delay property\n", np);
+	if (ret == -EINVAL) {
+		*delay = 0;
+	} else if (ret < 0) {
+		pr_err("%pOFn: Couldn't get polling-delay: %d\n", np, ret);
 		return ret;
 	}
 

-- 
2.40.1


