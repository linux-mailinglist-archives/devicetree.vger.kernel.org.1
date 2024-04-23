Return-Path: <devicetree+bounces-62028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8527B8AF7E8
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25B161F23F37
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1383A143871;
	Tue, 23 Apr 2024 20:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pKZsi91W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB51B142659
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713903592; cv=none; b=NURsbqaugi1nLk/yCXnPP9JL8BmuuOkZjds6ZTuSjW1wqNmExr9tm98PJmj19LQiDmdkQLumn39lNsBj1U4ABznxI5gFYKxdvbLEkLfc0XaRdfRjo+S6rBPSVEtWvEooQhbvdLFlnPz+gh2b2hLN4uh9yUh8AEq983ayzW91hik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713903592; c=relaxed/simple;
	bh=O9JbCQMTsEdc3RpE8YdCk//UJvo94xhIq8ZtAtz4OjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d7b2qgYkfJ0tmu27MEf6M0pRheYvliCufKT9PXmGzr476A4EOR2mK1BJp7n/N5VWWKfqUbmrFk10oQUupFQmUq2lV72ZNewoUjJHuxUa+mMQ3cEJBNQfFrhRL+ZsrezM4+bVpsNg6IsmUWfC7nBeb1EBxO3ngsoo0RoVr3S4Awo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pKZsi91W; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso33830515e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713903587; x=1714508387; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p4vOKvRCallk5kGR2Wbh/Tn3Hl0el0YNKiGA9haFVMA=;
        b=pKZsi91WahOATcShIiLRcHGwCci1BbOrkGYAufPHUTR7oNzmUOFKcKticDQ+nh4fds
         h+6G0FcdyFAeBWUQXhkx6+U4B5sEV2JueVpkTHtDYpFDmkTepdmAVglEShWb5K2Q/wFc
         VNwmwXHoy+/wXZ1ezD4Myq/sdo6TUaQGpo46JKoLqo+CSxZHRiMYEIGZp5Mevtgw1CH1
         DOa4QP1rzoODvjg8O0o0nxEDuLROF6hh1GIXoO4IZrrgreN9e7KD1TkTfc4m45FHEZuP
         rb5l7ZpG59kuEwLh5ngUjLpgaCKfhEyAzML1pqa30JQ7aCqdryLFmQHDNu7OrSDKGW4H
         j0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713903587; x=1714508387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p4vOKvRCallk5kGR2Wbh/Tn3Hl0el0YNKiGA9haFVMA=;
        b=RP6mGHPyGUYXWy6y8UJOibfkzFijDvjbhs+BbefbG/oLgIjiLN8qYkzK8RTFqGzBwv
         rZ4QOtqilmpSniKwro1N5tGHnVz+Or5hdB6nPSX6OIlFBjwiNKGj3fh7LLueOTNYRY2W
         HKVtLlUxOVpyfKs+BeXHURe1WT0mB1jvq3xuXneD4v7AI8RJTLbMyBesAO+vAFLrRV9t
         rVyf/y8tSLBlOOtk9TqU7Z8WyrQS1m1cM5INYrDCJWaAykKgLto+lg+Rpajk+JEk/EDG
         oy6Psz8fjA0XLESFrRosS7fAN6zzmMPg87UvF4lkdB6IXFoSqbK7qGv5f+hM9ePAGTEX
         Vc9g==
X-Forwarded-Encrypted: i=1; AJvYcCVJTQZ42AN0gh0nI6Yhc7+GpJfePdIm4iv1Pys9o+Pw38U1/T154g85dd/e3mdSssrXuQJKohMCEBzQ45fYkEv2TzM8PP0nYZCerw==
X-Gm-Message-State: AOJu0Yyy288vvsToOIOQJy7p4LYoJbsG28HZy81KrIunQo0DdQTqCH2k
	Jv/POsNFe/tH5Fx+2D3g4PJgNWmJFHI6AQv09k27EQHi3da1Zt1BCi95QYKVVro=
X-Google-Smtp-Source: AGHT+IFY+ITgeee3a+C5KSYNk4HM3XF4Psq3axU8IwvLxAQYs6W6bvgmAlGVlqcAphnYYBlae8wbfQ==
X-Received: by 2002:adf:cc85:0:b0:34a:75f1:c36c with SMTP id p5-20020adfcc85000000b0034a75f1c36cmr179194wrj.61.1713903587154;
        Tue, 23 Apr 2024 13:19:47 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id i7-20020a1709061e4700b00a52244ab819sm7552431ejj.170.2024.04.23.13.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:19:46 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 21:19:46 +0100
Subject: [PATCH 2/2] usb: dwc3: exynos: add support for Google Tensor gs101
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240423-usb-dwc3-gs101-v1-2-2f331f88203f@linaro.org>
References: <20240423-usb-dwc3-gs101-v1-0-2f331f88203f@linaro.org>
In-Reply-To: <20240423-usb-dwc3-gs101-v1-0-2f331f88203f@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

The Exynos-based Google Tensor gs101 SoC has a DWC3 compatible USB
controller and can reuse the existing Exynos glue. Add the
google,gs101-dwusb3 compatible and associated driver data. Four clocks
are required for USB for this SoC:
    * bus clock
    * suspend clock
    * Link interface AXI clock
    * Link interface APB clock

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/usb/dwc3/dwc3-exynos.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-exynos.c b/drivers/usb/dwc3/dwc3-exynos.c
index 3427522a7c6a..9a6e988d165a 100644
--- a/drivers/usb/dwc3/dwc3-exynos.c
+++ b/drivers/usb/dwc3/dwc3-exynos.c
@@ -169,6 +169,12 @@ static const struct dwc3_exynos_driverdata exynos850_drvdata = {
 	.suspend_clk_idx = -1,
 };
 
+static const struct dwc3_exynos_driverdata gs101_drvdata = {
+	.clk_names = { "bus_early", "susp_clk", "link_aclk", "link_pclk" },
+	.num_clks = 4,
+	.suspend_clk_idx = 1,
+};
+
 static const struct of_device_id exynos_dwc3_match[] = {
 	{
 		.compatible = "samsung,exynos5250-dwusb3",
@@ -182,6 +188,9 @@ static const struct of_device_id exynos_dwc3_match[] = {
 	}, {
 		.compatible = "samsung,exynos850-dwusb3",
 		.data = &exynos850_drvdata,
+	}, {
+		.compatible = "google,gs101-dwusb3",
+		.data = &gs101_drvdata,
 	}, {
 	}
 };

-- 
2.44.0.769.g3c40516874-goog


