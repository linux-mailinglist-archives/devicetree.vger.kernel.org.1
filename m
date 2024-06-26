Return-Path: <devicetree+bounces-79970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CA7917809
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D9AC1C22795
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 05:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A0114EC59;
	Wed, 26 Jun 2024 05:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oTtv3ysl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B601339A2
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 05:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719379376; cv=none; b=tCoYTacsEwbWD8ZNdru8WwHRxTh3qb9WAHQswpHD3/nmPJWoIYx6UkpANBhde5EAZFiFeGg3VvJC9ee/J6fSxeVzAA5k9+Dxy1RlNUfWfUTWTApuxzDMCVg6YqJybX8nNxXm8Olr9ZXF97pYZy3+F0B1SN2n72gNHR6HrC1SfRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719379376; c=relaxed/simple;
	bh=AFul6/rVxErYdfibglKP3IwBx5NV3GxUyi2GHxTd6Yw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=o9xJJ2h5OfdmC+387Nsal/pa5I5CrmV2oI6P1MD8jPXY188gQqQBRjyB2mW1lYQ4ArEv7LbgPclCJL7O+We/bLfDehBhZAddJkQSaXRuQaviuhFiN1EbJtUxBmvkwXlFo/B9OsCHR3gkLF1EvGc++n5+iQTom9eug9x//y0pej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oTtv3ysl; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e02a4de4f4eso12872654276.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 22:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719379374; x=1719984174; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=jJp+j3ZA1th5Jj4gYDkzEc/kDoBtu3dOqn1pl2+YPAA=;
        b=oTtv3ysl2Hvu3r6Y6RsEHQKekU5YTEn6hw/ziLsaLdC/MPz2ijQggLPppY5tVRJgz9
         tIGjm8zOHsIS88MTm8DCb3i3Y+D6nEaTIPLEIfI27RaeB3sMR6u4R1bFTShJoYlwktXo
         gucDI5H6V754bN3MLXUXp4cO07kuMfkrp2iO3plp/y3IYbRgphIRIHMSALZ4nRZf3P61
         1cOl0RBEKdKB7pkMzSmfa7PA6H178GwgC/OgGBDhfNLdcmvbeWoPtidpHYVC2nhg+cJs
         R9iFWeK5GLiwvbq1DVd8jtwnH2v0URDdiiMDnxAiqhRx8sFQvhB0AZj6IxoDSApU2ggW
         IU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719379374; x=1719984174;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJp+j3ZA1th5Jj4gYDkzEc/kDoBtu3dOqn1pl2+YPAA=;
        b=PHWN1dP9zXQe5d+rAGnMnzak/qqaoxnK7cj1mBcL47o//Sbo2dbldzpy+/JunIAj84
         t4fQIRmczHRM2jX8xGBmir82ab3l0R0yKn4yE3/wW4x3bl0+hHRiSaIruiY17Z2YcZ5B
         vjjCRMi62E18gbT/4esJiLuZk6JskzOhVrw+ddMdfgvPDwHRYGux9JynaR2K38EgLIlq
         09kdkXxfRBNQ8MYTNxx71hocKM3sHcYF4TPhcHS5CyaBQU3MTZhfID6dLM5FI6+F9Guz
         q/Az2cqwHsz4qc8G5ka1yjF4G1L/JsDnzCPyPELTD7SaHubHzs63Hukm3h5amUKnpcUd
         +Kdw==
X-Forwarded-Encrypted: i=1; AJvYcCXyuzYEgovekkYyJfGXQS0O79jXO/dkclkKtPZum8+7ee2mrAd+NhPZw7MHG5ozamp9nas0LQ3Q/qUKrxpUeoAizWZ1vnS6zYgQoA==
X-Gm-Message-State: AOJu0YwB76qADFb0QMuvMfG4WYdJ+hflU8DAvfV/tBUyTVlJP3iPsyHv
	QZY4iLFv3jm2rL2jmx6j72fxp9ErGcd2LVZT19DurrBhwr1LbRCYKYK7CyaeDv4Y3LFuSxgFaQu
	6sQ4zcVbnMnYex9vNNC9AZOBMaA==
X-Google-Smtp-Source: AGHT+IEAEget9B2vSdhGeLcEtW2e3iM8MJIc4bsMLsrXaEbRkZRTj4Qt0WXm1du3qsvVE9pndMPWkZy9XMdUDczBICE=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:1893:b0:e02:5b08:d3a with
 SMTP id 3f1490d57ef6-e02fc29cc0emr62562276.0.1719379374381; Tue, 25 Jun 2024
 22:22:54 -0700 (PDT)
Date: Wed, 26 Jun 2024 05:22:38 +0000
In-Reply-To: <20240626052238.1577580-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240626052238.1577580-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240626052238.1577580-3-aniketmaurya@google.com>
Subject: [PATCH 2/2] i3c: dw: Select ibi ops for base platform driver
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

The AST2600 platform driver can always select the IBI ops.
We also need a way for the base platform driver to select
the ibi ops. Hence introduce this DT property which can be
used to register ibi ops from the base platform driver.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 drivers/i3c/master/dw-i3c-master.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index 77a2a1c3fd1d..dff4f8e4e44e 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1547,6 +1547,9 @@ static int dw_i3c_probe(struct platform_device *pdev)
 	if (!master)
 		return -ENOMEM;
 
+	if (of_property_read_bool(pdev->dev.of_node, "ibi-capable"))
+		master->ibi_capable = true;
+
 	return dw_i3c_common_probe(master, pdev);
 }
 
-- 
2.45.2.741.gdbec12cfda-goog


