Return-Path: <devicetree+bounces-246497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7BFCBD39F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5D06304EFF2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910CA32AAC2;
	Mon, 15 Dec 2025 09:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UjkvHY0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEC2329C60
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791539; cv=none; b=ZcE3+umJxbGogkQqS3Mtemof4Ph8vwXSloyQXgvhT8J50SHfswXQRpIUOpU/q9Bi6RG/aJFKYYliBjwtqXp+MqnU87YGwPY1N97oHBMH670r1+qejSQZGy/JCpRv3TrhV3ymYQbJ50ANwzGG0MtNTBqq4NjTnrDY0pdGULyKXJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791539; c=relaxed/simple;
	bh=QydWi+DoiY9Z64QzfXeb7huM2KW3vZ6y+zBjHRM0skY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cuBYuxIQcDGmr0HLyt6Cu3RTHasdbiqdhBgHMQyovlblUg9+yej73jez+MHOQL5KIpKOnVCmMfdYpmD/o0guz3qlWDlcnQ5BPIak/PxLnGgMUfHmXBd4/8jn/TEoltYQjfb4ZFbI6MGrZCjwel+4HDX25kdnezKKKEZ9AHPJu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UjkvHY0X; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0b4320665so17140805ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765791536; x=1766396336; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pK6jEIYP2YnHjgeCSwjCYgueG0ykJpebH64ci6c2Og=;
        b=UjkvHY0Xq0UJy73I/OqNKpoBSQdfFQq4EqazPhDCvXTFAZv6dXFPgoZ7LizwceY3c4
         nOAcliXa6uoVCLHLEFuzqRNfgpDPG8Ha39dKcYpWxQa0StnCCvmPUUJSmSwGO1oFAgvH
         /RTKri5+BrUcs8ZS6rDZpfhg3GaPiNmQM+jdcabWogNkq1iiuQlFhCBzIKYM7y78CcB+
         1pcj8QvNyOXcebiflMSfvNKtI30AcIvyIW03yPFYi++xHj8ZZaGUqpGIK+WMfa2wg4K5
         8vGFkXxARywAmmovJ1legc+uCwA2nLWrReziRO+93oMUoO/zyS+0/wHyQ3tZhcVghsFz
         t2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765791536; x=1766396336;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6pK6jEIYP2YnHjgeCSwjCYgueG0ykJpebH64ci6c2Og=;
        b=hZO3P7lUXW9Pcx2QC19VWPsP/Y4eXV0TdaVXjIndW0TFlf7/sJ2dtHn2YOK6Am9ZLD
         Hp0e57jpN+hvYlfdJKNLMXr0KH2KGVJp5bHUE5UP6eOeOhSUfJs0bANqd87np9lvt/JC
         2fucb+nfGLyveZGnvL9r8CgeG9qwv4Q7pJG6pz6cR7GK/2KgPL8HWz/MoMGfNK8qgWzp
         5Nwrxmw/GrQZKpt7+HMs8XhkvVTSDVawnNvXRpBKXCn3B/lGI2rqKsry3Zr5gtfozriT
         vqiOtH1EDU7Yt4ooHUMa0WBW2lfrUkEi0yHt9BCz3hUYj9dUG77gs0y5aNH9Y9Tb7S05
         bMgQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3+bBqCBn+I9Z2CV3Cfr4oCqZ4NgGy0dKzF96kjxY0aXXsYwXudg9sDj78VCD4sjsjVZ6w63vfKJPu@vger.kernel.org
X-Gm-Message-State: AOJu0YzqxdQnXZUGE2J8dERrCkPigEplmYsBS0BzVHhl5UzwE0PVncWy
	7bhDyqa4e4GLbK+iQrpdYsxVgJA09brll2re3CRucHgEO6Pvym8Tjnlj
X-Gm-Gg: AY/fxX4/RvuxXdAkt8K9yTtI4M+1TP3wvdJ8FUlDh2Z0zqcuM+te7+RWAx4qiccn/Yk
	rKA597RNxSc3mq07WeGCXv3n0SuzAsqe8HL3aJo4xtGux3st6Rr48fBKjfadBLg4EDRUL2R0rfF
	r0MTYf5Ujvni83esyP3zTy2bqMW0o0BVOOmnLjzdussJUb793ken+94RqNd0xeRaqMd+atN5Kjo
	Q7PN/n2uwVy2qXyOH9LCUPxUzEcIklFw8x1k9SIaNgfJts8JIme5p0yA3KY88/qbjU6ov9rLabd
	98qeJw5AKZJkiMtUbk6CBDBosZVQmezC9T9mDFpqw2/i5YJc69tiA4GR4gewYynj9f9EB7/psLb
	SeofzJi3qqhHxmFMUv+GvRveh3Dd1sDAxuPwsYhHJriMIUuzdHIswJvzvLiJAjI73iNTifuGghV
	7ffkSlDuWnUgA2GJPcOaIDxi1Fu//NvfrTV2QWBCGKqWyE+TVLLLRJdBpjfroWCAoBGXQFC2WTl
	C3gnPltKXXrR8Q85Vhg70WaOgGcdH6O+gCuu+t0Ndi3rwDfY1xhNmygG8S1+OdMoXw5IfaCM9a1
	9Dwer6nek+8eINbkrH0642BDp2L7qjDtHg0PFvLSvhovLImnovU=
X-Google-Smtp-Source: AGHT+IE7R5Rq59mcZglu2dMbSmwzQA0DuoEDw9ET7Cf1MleDlYYipJlEUwm/OuRe6KJQVxXlQvBRNA==
X-Received: by 2002:a17:902:f70e:b0:2a0:97be:61a9 with SMTP id d9443c01a7336-2a097be6574mr64303105ad.35.1765791535968;
        Mon, 15 Dec 2025 01:38:55 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29efd74f5e1sm113017705ad.16.2025.12.15.01.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:38:55 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Mon, 15 Dec 2025 19:37:49 +1000
Subject: [PATCH v6 5/7] mfd: macsmc: Wire up Apple SMC input subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-macsmc-subdevs-v6-5-0518cb5f28ae@gmail.com>
References: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
In-Reply-To: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=QydWi+DoiY9Z64QzfXeb7huM2KW3vZ6y+zBjHRM0skY=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJn215ktRXclLcr81bZJ/cztR0mm1/JFf93fenKz6+6l8
 py6fnM3dExkYRDjYrAUU2TZ0CTkMduI7Wa/SOVemDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKY6uJGR4amuWV/mXtO6mp0XihoUH5fHRSRaVhe2f+TVfXRAQXC6GyNDh446+7P
 CrSess8xtlknsz/4hc33JghmFvFFfQ2ffZbvLDwA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC input function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index fa7b822d55bd..85410f357603 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -45,6 +45,7 @@
 #define SMC_TIMEOUT_MS		500
 
 static const struct mfd_cell apple_smc_devs[] = {
+	MFD_CELL_NAME("macsmc-input"),
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),

-- 
2.52.0


