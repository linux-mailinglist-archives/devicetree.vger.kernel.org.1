Return-Path: <devicetree+bounces-239829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3521CC69C60
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:01:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 886893837AE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089932D641C;
	Tue, 18 Nov 2025 13:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zjkt0vKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0260E361DB9
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474187; cv=none; b=gl8tJUBa9gmkGIkjnc1MJd52u2P64IXJITnVegjQj7XrGrBsFEkh3Wff1NRq2vGlzKph3V2mvxEEitt7Iai40XUhheW/iewoKpAQjI+d8+Cx52XiF3RlpDZvzwbTBaRXWh9+/iWYaUv8CKs2qFjYDor3E1VQfMzXvXmfGjjNsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474187; c=relaxed/simple;
	bh=TAfEcJT+KP/gybnFuuKe3YB9Vr01lZOY0yg12JjdBGk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j3/xgwFL3EjgPA709amjlW7InOLJuNLJmjf/fuxsx41UwZfGE/de+2z5nLM3hpYZTxUErzV0aZGFrS5eiIPQu2eFNbhyT2ne03dE5adPBAnwblHR9EaSLzaoi4/r/9kQbZz3uJML8GJFnNQUcTYXTU8jePPekIzjjJsD1HI8pdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zjkt0vKt; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b39d51dcfso3096013f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474182; x=1764078982; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FdDgG0OEtr9VDO6FlrjC0lVVwasyx4VrXjolMp7eFK4=;
        b=zjkt0vKt/lzBxvLlAIzxTj5aQXMQeLFW5fAMmPBjUTgMlkMlj4nW66sv2bPWbQn5si
         u01S7i+E/gYRbNXcxXtZGKGUVK4mI9SLi+AIGx+16iYsNRG3nDDPKIVlXPj2rn/M6exH
         JrVNRdEEfh/6IjevOB/8DI6K3AvoAa2uh70pJWV8idL3C3qVkwnj+MFelUyohQq42/Qc
         MXwUnOw01pxMNMKp9x/tVj0Stj8P+UYijF/21iozL95dwgR+inQteCxtBHH+cJtgj/of
         o5ur+LUu89Ms9c1flA1kDeMWih2qJREEhP14aaYaz/ZGtxkeSyw+mySCLBEMgEt8IX2m
         FsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474182; x=1764078982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FdDgG0OEtr9VDO6FlrjC0lVVwasyx4VrXjolMp7eFK4=;
        b=QMm0ctrqccAiKSFybtBOsS5z+tipgXpd21KN6+9d+zrkmi5X/eEBuSGVEQ56S4xzDn
         03MFWp4baF0tW0Dvc59yzPEm23LesyL5cMZQZyFUqI61eY1J06WNGJDkZ0oZFhZMgM+Y
         y4lS/S8x3rMTftZZssRnT638+B8ExL7w9RvSqPlqVFS9zTNQe2HhqtamaY3fhqtpVgBc
         yVkq03nOIaF34gVX3P1BU9gdqZX+hsfdXZvRcxihTXTw4PXaQLdCPKPhJV/vGWi6K+L5
         bQmQzNSPAoDJnbLCM3+CchtuugRt3MaKfw0zArRaER3pOZ4VZWW7K5nWnTWs9gaGcSKG
         BMJg==
X-Forwarded-Encrypted: i=1; AJvYcCVfawHAwMwOy7tKy2bHymbJwXtc1YvlN/rihIXvBYN4ukH4bEVWUIojO9Hwr1De/rAWJjY7oXbOSQ5k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd42t4xqexyufEA5KLE7DuLhxzWFpuYD48Cj44wKpx3Hpap9uH
	XSQ75kuGO71hCAtAnbB2vdLX37xJIsw7J3tYGzzFl+T8MDA135CdpKiPWKaJKP81mx4=
X-Gm-Gg: ASbGnctM+fjKUU8qnfZpcuaxGbynVTsDxSQFXwBMTX1o7MuQk/Mbw+TDyqgE12MXFcM
	WYx6oXPk5iv5xKjjaQ12P2sqOpMDJmtgL4ZqC8RmFPiV3qJYfeg2vWMdGZS5MGVyBP5CbSns4He
	YL67Sw/eF2+aF9+zypT07S4Sky06SwgRGoq83B/IS60D4iWXxr6NZ6LxSTc/Fakp8spjwmIo9xE
	HHyR1IJK15p/y4IU7q1IemGru4MO/b5AyZ7AyVGNfSw43kmlvjsd1w8MwvFfGkV5pkbMSXLD6pU
	hDhjzEQULUyakaEz/Ff1qqL300sramkcC1W13Xa2Cs4t3ID6qilsyIJ5Zi4euNwwLsuZVxSaIQ2
	PftT8Zt1KtPdbhvUX9E/IR8CmyBsJQ+cdM64VGKz4tewtYtIMi/2JaPSbGsFAg+eHXbj228OTrZ
	HIVoPEraLTXsPx1XU082x5AWqji62XM6MNqngRh8cP3hhSRduyYvHTpFYbyH5K8BpCA/DQtELWO
	Ur/yg==
X-Google-Smtp-Source: AGHT+IGfMObgF/k6EWKW7rlaiPXKOVwaG77gXtBdH9U/El9uEDye1QZpAt3VR8koJaZq1/x7ozt+1g==
X-Received: by 2002:a5d:5f49:0:b0:42b:36f4:cd21 with SMTP id ffacd0b85a97d-42b593742e7mr15653326f8f.40.1763474182223;
        Tue, 18 Nov 2025 05:56:22 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:21 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 18 Nov 2025 13:56:13 +0000
Subject: [PATCH v2 6/7] soc: samsung: exynos-chipid: downgrade dev_info to
 dev_dbg for soc info
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-gs101-chipid-v2-6-e9f1e7460e35@linaro.org>
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
In-Reply-To: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=1017;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=TAfEcJT+KP/gybnFuuKe3YB9Vr01lZOY0yg12JjdBGk=;
 b=acfWU97bc9wGkUoK1rXcht5oTK4PtuVsKYgoVLSw2tRBT55ufu6Iai72t/xeAp1NwaT3i31gN
 wHgEFrsKmGkCnjVfQYW1FIDIJ4bVWlqAyFGVpGVfPJsZKyXYU23iwUX
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The SoC information is exposed to userspace using the standard soc
interface. Downgrade to dev_dbg to stop polluting the console log.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 7ed7f44b6ae5357b71fee3994e4a4265aa870d41..e1b939e526cea9b2069da6e37a1a16950ce5ac44 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -224,8 +224,8 @@ static int exynos_chipid_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	dev_info(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
-		 soc_dev_attr->soc_id, soc_info.product_id, soc_info.revision);
+	dev_dbg(dev, "Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
+		soc_dev_attr->soc_id, soc_info.product_id, soc_info.revision);
 
 	return 0;
 }

-- 
2.52.0.rc1.455.g30608eb744-goog


