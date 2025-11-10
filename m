Return-Path: <devicetree+bounces-236903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B029C4914D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87F223AE73E
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F8E33CE89;
	Mon, 10 Nov 2025 19:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rTnk17oz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321D7336ED0
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802957; cv=none; b=dnxxsPZjE1uTXnT1ARpyB/4OQ8yrhsYAgVbQGltl0BX4aWARxk3dL5/SjQUzALSblajkzAbPX3SDkfZL0FF8HOtaQm8H5XQz8RY4Y10fZibaWDbcECG+J6VwCVkBcXNikvveJvwPQXErDIgGQxCUs8MabGMe1OUW1Ld0d8QFt8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802957; c=relaxed/simple;
	bh=RzBGsCn87G8Sx3N+xmIXdtBJ0l0kWfW0p7tCuHwvI9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fiv6TddtjlcG2jsu17khrJRMZPVHFjO9+vYAj545u50jjuAfdrNz8XcJj9xWVp1YE7oIjh56rWsYYwGf9cLJUEnetEVxVjo2fM3wEalj1sIZW/9wXxJaRcNgaipWJWsT3uRRLTuTAMkW0hwYVDU3EQk4fwXrWNdg+Zxmt6T01hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rTnk17oz; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso497599766b.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802950; x=1763407750; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jumGSBrz6UJPB93YzP/ypMhQMv7kILadjYtPvrV2cZM=;
        b=rTnk17ozRBwpoSJoTMGRHP/mdkG1ZwdxIj+43UUty2dcF+hxkGHan0pyeiJoAHEPEH
         hsya4xIr1KJBlJAen6ShfDd87jB4mRKEWLgfGgocYLq2v7DOEesUuDp4z77d69ltanVS
         ilrXi3OWebiy6izoNvAtyaJu1xrTZ9lawzz+qhZoNi1OA7y7YkTxVMYlob9jgY/Va+i3
         B36ueBo8zG6C2w4iP34Ngbu1HOrmQehv4XbEF1IMw0Y1HcMytnWqDt8MuYHGMxo59KWC
         FWBWarqm5C9lAeaOLZQr5g3SypAhdN5McC8fqliq0dqb8lPnlx2E3YOLeA5IB8Y2I/q3
         RHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802950; x=1763407750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jumGSBrz6UJPB93YzP/ypMhQMv7kILadjYtPvrV2cZM=;
        b=e8d8hCrsaDGwZdrJGIbVkSH6WV+wSx2IVMFjWUNhyxSX220ndq/NViSjA27w2msrnN
         J3f35zHxJxWVBjaBxMMFDPThRJSG/0+z8ir6H5rts34h8rSwdTngNBX/F1ZPpxZtYuN8
         2WZWgsIIA2tfOcIKDLqm0TeEgdMg8yhOJM04sYNVpclVKmSYmc2CyQQTwT2ZcePkAsMd
         symRenQIrMc1Xdp/TVfl6shj9Y6x+cBmJ7pRIJrFgHn27P/5+wawsIwFp0Iap4kQxKM5
         2hL+QRVXiniAncnZH4D72VZXHVCWY55BhQAAZtacX1UHmlw9Fb8vEs3AhEkOVlPOqPk5
         oggQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb8CwccSMQr00IqKZftkeHOERfx1QjTauprXXjk3n5itfhy4W0VNKHZgp/CNiR5iYayf1uYUKctgDk@vger.kernel.org
X-Gm-Message-State: AOJu0YykSpiX7wSFz2atOGBzDRzl8n28YAhcPqzUWyYZWzy2AcuHjNe4
	tWITSK8bu1x+Od++2pChOCiIdyiBRgSXxcab8S+uKkeB20+mbJku4J07Cv4hjF4GKzE1RxeTqjL
	cT/ZZgZs=
X-Gm-Gg: ASbGncsaM48vHtHnOqQQmqFk6EdoYQCyCKrE8EueUS1idq69ICHhSSRpqjg4rkmiL0E
	EqYwFiDVSW7jLhgog+mjpW6z9V9r8soLdsq2iHcsqaMcyoRI+EroPyysjALKxhqITihNhjxgZ1f
	jk+fCbwQJE3uBMJ9AauBMgFxGDs8djQhB7CA0LtrQPG96BD8cWmUvOya4ZvOn0kzDvvSKfnuPeP
	loxe3bzpDCmPIWpRX1ISe5yZzL/gWVYnRRGgMQMRKlSk/wtD8W9hDfyeMhTdAFIqnYlRBJ+ogFD
	xJGb1lUpi377Kl1f+TqwB3nMiyI0pbA9G2H1ThEZIvEOqzQBe8PAcgG0jEpvW9RXlMTezVjTmB3
	nhi3tIGSmuT6HFEXqJ99ZpOlGLk0VsECzxZsp+kqSMemPKKmVz7mtt9+loJ0MPnSDORdZgeJg4Z
	ZGcoPhdTy23kyoGXBFBHcls2/e0+M9bll4X6WlkD51uwOqT3/fP4gSG5oXyV3L
X-Google-Smtp-Source: AGHT+IFpqR3MayLxCuVGV8uSOt13EYeoXGaPrtL/jHLhv195Pfx49CWhTUu8/3DnrKLv5DW2F0sE3A==
X-Received: by 2002:a17:907:5c9:b0:b6d:8da0:9a24 with SMTP id a640c23a62f3a-b72e036c9e5mr914118866b.9.1762802949657;
        Mon, 10 Nov 2025 11:29:09 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:09 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:29:03 +0000
Subject: [PATCH v4 20/20] regulator: s2mps11: more descriptive gpio
 consumer name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-20-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Currently, GPIOs claimed by this driver for external rail control
all show up with "s2mps11-regulator" as consumer, which is not
very informative.

Switch to using the regulator name via desc->name instead, using the
device name as fallback.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index f19140e97b9d7a5e7c07cdc5e002de345aad32d9..3e9da15081e680d7660c60270af54ba2a4f8da1d 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -363,7 +363,8 @@ static int s2mps11_of_parse_gpiod(struct device_node *np,
 	ena_gpiod = fwnode_gpiod_get_index(of_fwnode_handle(np), con_id, 0,
 					   GPIOD_OUT_HIGH |
 					   GPIOD_FLAGS_BIT_NONEXCLUSIVE,
-					   "s2mps11-regulator");
+					   desc->name
+					   ? : dev_name(config->dev));
 	if (IS_ERR(ena_gpiod)) {
 		ret = PTR_ERR(ena_gpiod);
 

-- 
2.51.2.1041.gc1ab5b90ca-goog


