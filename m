Return-Path: <devicetree+bounces-230988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC00C086A1
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E326E401D12
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AF9191493;
	Sat, 25 Oct 2025 00:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bynZe1Dl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB971A0BF1
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761351927; cv=none; b=c6ph515JMnHG5OZElxg4bU9Ez9M5mYQAQMAzVnNTE592euFTW9u3mdptWg+iv8sF1tX1XBWvZMEZ5vm7UA2kuXuXXdooCxYMH/w+2uuEiD6BhRCGUBP0Rvg8WIpJ5Hq+V6VNc6uW77Rne0hC67J1ZRjzYIUK0XcG7l81GKS4M2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761351927; c=relaxed/simple;
	bh=DIjn1i6LYuHnBLhKvNWo/fynkhJW/iU4X0uf260tH6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OFXWtZEhbU5xa5YzspT9+SqsmvFI5M6nduxbYmSJqAgccUIyqvBzBXSdTEm4hpJp5QNB5WMa3nolwCf3WxEDXhAYxsJ4RK7BLPZfHVL6KitLfV1x8ovXoZdPQE6Ffp6YSWQSLTnJUi0DhKGgJtubHHSPz4kqH6ZZEXrTx2srkUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bynZe1Dl; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so33356015ad.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761351925; x=1761956725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3l4kEjsdDE6a6BGdSar9SEMlVw0yVffjguWwMFXN/4=;
        b=bynZe1Dl3wixpsJtZ5VraFHDvtNdkXGPDfRyGHiaZkV3UsRltVmZxze860+P2hFbs8
         QiEkcmuQUaYSNG72BMx3NLzy5KfBcN1j9NMmxMxNYkTYKcabEvIqjms5US19S9Yhm3Nk
         vxPKJm7lDV0gkBdPal5BAIObYytjZUVfTnLb9uZSyBWoWrtkDvy2eFX9VPE4KKE/GyMz
         seESTLnVgqgNUjms6kcHE3anx7xvcMfw75ElTfyWKBxn6GJBFgXtuZk5ve/bbOKBtzk4
         lPnQNKN/AFj813dosBNiylXs58hFm0hd9CtEk/A/DE0upKPZDTnPTYnsEmhi9ByBdmHB
         B5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761351925; x=1761956725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U3l4kEjsdDE6a6BGdSar9SEMlVw0yVffjguWwMFXN/4=;
        b=SdTT4VoXWCwTVZm61x4CO+9HcHINKyxgiCRiFJnZkB7OM91NM1e3VtfrjRWJIauaRq
         5WqLa8aXbHwWSm6FSK6XWf6AK0D/k1uqE+09j6UorawfrTqAKtTIZX18cYs4CJQ7t0WO
         5CVlsyCSQDGHKQTj3qqlMUH3QSATBYzpoAAMqPO+LnAmWTF2wd1gX7rJRDQXVRV5l7Tv
         YHPHfL00ockzK8/1/G+Pjm6b/0Xjgdy+iP7pzemYmpjs3Pm3y8e7+5UGQQnFAet8/apK
         Dd9/GMluexT4+/z/v2roTsin6JbN7h2f0J7rc2Cl0O5BiHiiLF7nckBwK57iHp2cuZng
         LQzw==
X-Forwarded-Encrypted: i=1; AJvYcCVn5uPA8PKIqCJ1CEvaF4gYCXqvgWflr1N5STmiT0sidnGEaaMrhRoGthRCww13Jya7og2VeLeJoVRE@vger.kernel.org
X-Gm-Message-State: AOJu0YxhJ+tODIXlbLGVFA3Ak0pwh4CjdgKVmPUjR8UXwd2c0V3bveIJ
	yMUTSyAwwDzf1Lf5coSh+zIRVlnrcwulgVqiKKZbKNi9o2AgJrbzSWU7
X-Gm-Gg: ASbGncuBw5cZQYFVaBbjhMGGuRbnp073WiRz37qwV25kSdyHi9a9jN/2LyocO+5R6Bb
	cgMGAImpXkswck4LN1I+JqBuUv3+ib45wt3FZTrIhIObncSaH6o5uSrj7G1tnMclbZ/SnGNQjaf
	I9t/56TQs54NfqHtlJnoDqOimwXwfwRwSAc0JIgBF8WWvAMV0QWokEnoX+mGKHlQ/3F435SRo1P
	iimFkytXcHrZQssYO7j5Jowj7hGFz+IsPnWR3aDzTj/sJpj4vjePjtxYLe70fan4t8PEQURuMCz
	4/uEVw9qqcoTmIRl8s79X7UBrCXuGXkqJ0AgfNBrQZxt9cZBT2UgYzOjqoh/lgTcHekOxkqm4xG
	uJ6K3LFUVPwrhaP5Pn0vtoL5Kw+TAxPvt0CSBA2xuPUnZsO2uKjSIHz2cGQXuZd16PnEMmJPM9L
	1539ZlMSE5W5QGrmzvY2HaVYW4r6H9GBUENqP+SYJd43lfdEqZypfoAKdE/RpH71xrc6JsUpEi2
	BHawhW8467TvdXNf1A/npqbEeR46uGrt2RngM2iWuD6hRR9tFbQrivuM/zqVLSi
X-Google-Smtp-Source: AGHT+IEcAIrM5gDLd6A2M9OWpDkFvdgMAQWlJmHHcjPPAuvS+4wY77QHgPJLW5SNNNq/wEEOrEct6w==
X-Received: by 2002:a17:902:dad2:b0:286:d3c5:4d15 with SMTP id d9443c01a7336-2948ba3c6a1mr49230345ad.36.1761351924748;
        Fri, 24 Oct 2025 17:25:24 -0700 (PDT)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf3f4asm4728885ad.11.2025.10.24.17.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:25:24 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sat, 25 Oct 2025 10:24:35 +1000
Subject: [PATCH v4 04/11] mfd: macsmc: Wire up Apple SMC RTC subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251025-macsmc-subdevs-v4-4-374d5c9eba0e@gmail.com>
References: <20251025-macsmc-subdevs-v4-0-374d5c9eba0e@gmail.com>
In-Reply-To: <20251025-macsmc-subdevs-v4-0-374d5c9eba0e@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=747;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=DIjn1i6LYuHnBLhKvNWo/fynkhJW/iU4X0uf260tH6w=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDBl/JM66XLGLz/n50Chebub0Ao9Nf53uT3wfl11dXS33N
 9x2ymOzjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFSfMmdkeDBb4PWe+6s0vbok5oTvmR4jwlY+maPo+DIp1m2PikI7LzD8d963dV/
 l7GSLoMiFjx35q83EPmxqWT39yQmNyVyhhrPc2QA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC RTC function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index e6cdae221f1d..500395bb48da 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -47,6 +47,7 @@
 static const struct mfd_cell apple_smc_devs[] = {
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),
+	MFD_CELL_OF("macsmc-rtc", NULL, NULL, 0, 0, "apple,smc-rtc"),
 };
 
 static int apple_smc_cmd_locked(struct apple_smc *smc, u64 cmd, u64 arg,

-- 
2.51.0


