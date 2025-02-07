Return-Path: <devicetree+bounces-144000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7DDA2C80C
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9EDCF7A175A
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E100225388;
	Fri,  7 Feb 2025 15:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJeQsdqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6550523C8D4
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738943812; cv=none; b=OUan4I/HvP8g86ovnMUADXW1Cri566uaxmMJodLmYQlS1WCvQsEjD95xgs+DLgStvUzQfiZpRitOvr5n2kG0HiVdD55mo2V/Yrzn1C4rIvEJPz2+bAiHEKsXUSe913vpkOFrCEwGabZlRxCdvViAJuvXdMwBy1qJCZ3IP6PTY2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738943812; c=relaxed/simple;
	bh=zqmyyeN/kAHahNeROhtKWHf1vZ7bvcbTcmNPC79a1h0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dsLIOCMgFyZH9Kk1V0/Vq33knyrxIHfFpoj7uTOIzgvHzCsAHxxCSXRj3iipUzmGFX8NWXvj2uOG6/Fe6RWIUcOI7E6LDQw07hdOal04RewkirZ42IgHpuI/1qsUd3lRzZf5mqHaHryeJmrz4LhfH8JCIRLmzLT8bU+GP2XWHyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJeQsdqC; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38dd0dc21b2so131997f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738943808; x=1739548608; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHHEMHsU+0a4+oqKZwIsh83OdLTXo1gU/En19+RQunI=;
        b=aJeQsdqCsC8cCTmrXarhIirgG2L8sSq5FMTXjy20YrVVfG3rYBqBHXL9abYtizUOF+
         8gRUxk95dX8QpoW9kcSQH04FGzAJQAQHQHQgEHWJvcISgPWPNIGMZZ66xhH3V8IPkXSl
         nXXcbCNisRy5d/DJ75ywKN+toEJnJtc0jvKNZaq9Gu5lC7O5ISGQskvgX9B3Qid2XOKD
         MB6lg8iBF4r/IK/H4QxNv/PbPIpsvfrvjUGnH/f1KGfChWZMX0GOP7tVZcMttpcOHsqk
         fHZF4ckl2xM66wcifjp2UTAkS/ewywfSV+aHq66GgZUK+6Z3PNjtzubitrRedeUO/+m6
         pSCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738943808; x=1739548608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHHEMHsU+0a4+oqKZwIsh83OdLTXo1gU/En19+RQunI=;
        b=UiLA7iMMzqQ8Q9i1dQS0Ru7LW44CD6vXdTW1Mk9Xbgr/6vC77sz1yr7rF0HYlN2UdP
         9iWGC1ULpndZ2VVOZeoBpV+ZNIf6bDLaRAx5ZdQoyRMPqkTLmNr+vGSipg8zBX9ceOwg
         cO3msB0eOV14G9z9eIwh3aiwgr/ejaaM6WexMHv8rnh0MjQdk3Q0XkLqYBTV7xhL+B0E
         3cGHYE/S2S8kxpZKcvRtkco8csulU26xcL+4D8CzvVoXLDIpwg/T6SK/WbYjOu5cI0P6
         YxdJj3tyUyt0Ior8GPg6DOHnj0KAnJD9y7/mq91E6v8k10JI0VzdGLe3uE0pPBSQ9HdJ
         nZyg==
X-Forwarded-Encrypted: i=1; AJvYcCVnONQtabrY4x5Rvo3yorRSw5diRaOSzxQdOB2jTYg0Y+PFmxW7UdlLywzZcTqKOYj5aawhJF+Dlmxj@vger.kernel.org
X-Gm-Message-State: AOJu0YymyNBC1TOpKbL9SiRRvfnkrx/lhk5bxWyYBKof/WeEkbuzyyuP
	4CvyoNzUJv4BxPUMf5D80A7T68JU5NZAY83AMsOHJV87FVjZfXlANnId4a83Tho=
X-Gm-Gg: ASbGncswiqt0n1ryYGecq1BTEe9YJglqIGFi3Ps5TwQMkIiPoFM5XuLTmgiQAgdSaFh
	8TF4bPSLS7jA1klzYwSxQrjiXW8pzOjLmIUBWNlapYIm96RH8p0dyZ1B2v16t/SADGfWaspCpks
	EC9/IbMCV/n7SmOhKz6hJ2KWDxoIgT+YpQbl4UI+ySFGwPOWhYw84mJGvvAyYPy/JAQ7/sMR7Lo
	Q+gTedH2hBWhUjAHiAtoO1XbrL1PP1XXxVMZoYnwa7TS9rgayu/NkRyV7gFnloAgkYaB3A5wRy/
	VwWt9mUyBGlF8w26vv4gnhcS0xKUgnboNJGKKUtw9YcfHHw3xdb0b5qWFcB+KMwjQHc5Wdo=
X-Google-Smtp-Source: AGHT+IEDZvEs9s4rKpAVm7wDLvW/bLNvak1Ptn/SkxGZOdPZ2WxEoPVQJKAp9WJcIeZNJtkpg4J6hg==
X-Received: by 2002:a05:6000:1448:b0:385:ee40:2d75 with SMTP id ffacd0b85a97d-38dc8dd9511mr2508329f8f.20.1738943808512;
        Fri, 07 Feb 2025 07:56:48 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc09fc2d9sm4197507f8f.6.2025.02.07.07.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:56:48 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 07 Feb 2025 15:56:46 +0000
Subject: [PATCH v4 4/4] arm64: defconfig: enable ACPM protocol and Exynos
 mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-gs101-acpm-dt-v4-4-230ba8663a2d@linaro.org>
References: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
In-Reply-To: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738943805; l=1030;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=zqmyyeN/kAHahNeROhtKWHf1vZ7bvcbTcmNPC79a1h0=;
 b=d7DWG9cTHp3/0OLPztRrajPmsnKM3gPa+i7ZpieVei1gzfDXy+CtBAQnvfIs9uoSuXu6EqLbZ
 Zu1Scp59poYCz1QFb87V7AZEXSwyx+B8/yOAT5CxQ9bh0+TpNKXyXx1
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Samsung Exynos ACPM protocol and its transport layer, the
Exynos mailbox driver. Samsung Exynos platforms implement ACPM to
provide support for PMIC, clock frequency scaling, clock configuration
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cb7da4415599..18f96796298c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -264,6 +264,7 @@ CONFIG_IMX_SCU=y
 CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
 CONFIG_QCOM_QSEECOM_UEFISECAPP=y
+CONFIG_EXYNOS_ACPM_PROTOCOL=m
 CONFIG_GNSS=m
 CONFIG_GNSS_MTK_SERIAL=m
 CONFIG_MTD=y
@@ -1403,6 +1404,7 @@ CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_TEGRA186_TIMER=y
 CONFIG_RENESAS_OSTM=y
 CONFIG_ARM_MHU=y
+CONFIG_EXYNOS_MBOX=m
 CONFIG_IMX_MBOX=y
 CONFIG_OMAP2PLUS_MBOX=m
 CONFIG_PLATFORM_MHU=y

-- 
2.48.1.502.g6dc24dfdaf-goog


