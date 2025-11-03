Return-Path: <devicetree+bounces-234506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57592C2DDDB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:16:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0758B3B96DA
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFB7D328619;
	Mon,  3 Nov 2025 19:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ixb4czkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11254325496
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197301; cv=none; b=MQuIdy0L37Wrvj/j8rstwROes+T3EA4WSQHn08Bpk6g9wxbPVIc+CPw6OWLtTSAvqldUV9kZgNgyuKQov+VYiVf/HNE5tIgl3teriPZSeoBb+yXuUiIpSPPWL9Bf1TXN/2GN4L2n0XZXMDwjeVbAVw65TXhoi0c+yL4xN/QBHig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197301; c=relaxed/simple;
	bh=2sTVmTa86pv8fJgdD5xjz3zgzXpYVywXrSd1pVhx6YM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nZkg7rpucmPOU55wSvWQG2JnPyebUkVeZOgJPDhlu86QSzjfy/bBD9+64XgCW5KiIeDA8U3E4K8g6VEoBA7oG2Y00hoKtPLEk+hKhG4AoyvJIvpQ745BH6E0tFIW6hmSTjb/mp/mbckjiORrxcI8tEolraskCSBqRkfT+1+1SHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ixb4czkH; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso898096066b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197293; x=1762802093; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=swaPnlZ0H028w7OC5FVRDI8/szcqshYIBFL4ftY69C8=;
        b=Ixb4czkHCp76ittYEZ60gpEpQMoN0MUKFJEh0y/qG/qRr4oCt0gHjh56+u4bzCj9rV
         d7IUlkOzUVM0D7mamTzdY1kTIoJFCJONBnkqhLa9m+YaDJyWXjTym+o2Zq1inP2VeJjc
         L7Vw/deuhmRQRP44YJL8c7IsgprjmpbGsJo2HdWGWwhO/auHWaia9owRMq8Y03CKFYOc
         CVINsRzDV0CYuQjuli5EvJoN5NAnwQ2VcBXRM2mfpjh7lYacJG/kfkWlasbPz6nYzXg1
         SzxEiOr4OErPXv8t1qgpR0aGmaPbXAbzxttGoqkC+YzO1N4I4OnHE9EXVR4G9esrJgME
         Cvew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197293; x=1762802093;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=swaPnlZ0H028w7OC5FVRDI8/szcqshYIBFL4ftY69C8=;
        b=Mqk41jknamUnKzHLQypKA3tjsKbk6u+sOYN7etoZh1OrVnpwf/8zZfOtVZCtfo2QL1
         OptIE/xtydOLjBYpgDv/B72j2AoMUYYn4gMa5/GLQ83ytj7jlaKbKyAQPwTj0Z+NArHb
         bdfYp7CasBwOCKOLyanW1gBE+LQM+tku4PwEL3qw6RXb0IIbgAAQmHtHFoaWCEZyfiQP
         3f4Et6ZdKLv99AaUuulD9n1uSpnSGk20oCTrq7jN7qe4lY+KdoMEzW/C/yTse7C07B5B
         geNfHtaKuFPhOW845q8GagqQkE4Npq16EDUE1M2XNU4loVXMrD5k4+GajAZXtnkK8FqK
         Z0aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiSWdME6hdkq37WGviyXpPQ62YpjUnoXV6W+mBuBUjGqVw5m7yQZDpgh5U+mjcpdCk6AcnF9xQ5hTN@vger.kernel.org
X-Gm-Message-State: AOJu0YzA7+gVspyjiyTT4SuN3AMwaj2r6/zggl5xAW/dbRWPpw383OhD
	0xWHVdLtWUu6ovnqfD8KGbbZFLo5YPkNS043jRC2v5pFXWX2+dTJKJkfJeohmp0+dVU=
X-Gm-Gg: ASbGncvBCNbHPpw+tr41nIh4VYE9MNkSGWa6RQgRTmyTSXdk0JLHnCBnuxqTC/SFXvL
	lIQ9TDfR5SfOQCx4uWaxZtYPNz1p8rezIXOI+oTnJYv7lxioJPzfucvgMMXX4ny8h46ugkqNHdl
	Cdz15HCkA5jsgk1oOD8LGKM1Fa1QCybG9bj2SNRtBjO7rpn4vGMYlnOsD2L2A6w75+6FrUo/Ams
	d0L0uTcnbCXT7IhBbxfe7uT/6SIg4G/wAlHVAbLVyeqc/fDg54hdnXhuajPHaYW++rs/xYNeaxL
	8gohr5s1sjr0yiS2PDdXrefYnkTngxdX0AL640s/wKFecrM0/Zwz1wKqfssoOnFz3UWcnY18zZi
	UA/2YMNQ1X8zjRvBhaI3qAI51mGiwQDJBI/CK7p+munOUBF82b0mAi9AQjVDihX8N2gBPsNiuF3
	1zp+nSm2xsPB6K7oUpTaT2TukSTFQbs9GwK8xeHZCF9ZT+pR9spUKs/jd/33e9yMSqSLLsz9E=
X-Google-Smtp-Source: AGHT+IHiNqxvdvsqsXOblsPDou25GeBmEyZiMxNTIJQm/CkhHutRBIYZb/OdlmtQUhYFXs6N4+W+Ow==
X-Received: by 2002:a17:907:6d08:b0:b6d:3a00:983a with SMTP id a640c23a62f3a-b70705ea59dmr1451359566b.38.1762197293134;
        Mon, 03 Nov 2025 11:14:53 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:59 +0000
Subject: [PATCH v3 20/20] regulator: s2mps11: more descriptive gpio
 consumer name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-20-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
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
2.51.2.997.g839fc31de9-goog


