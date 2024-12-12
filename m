Return-Path: <devicetree+bounces-130333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9719EEFC7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02EA418996FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FDC243B90;
	Thu, 12 Dec 2024 16:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oc3pg1tG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B5B22A7E6
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734019256; cv=none; b=BxWKPSBrgrDIv/fOaicIiw+Q0nE5S7efkXUZLZxuyG7LKOqdm5p2+df//x5RlpSQh+omaNX9aW+kttMxeGBTB2xB1fAUwTyTiJdyHorQRHzgCxc76cYKng10OU/vujsqtisVWHwywQ77pdQYgSYgT/ctpqFaGYno0xHZgolvgBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734019256; c=relaxed/simple;
	bh=/C7bHQrkgGdLprOLUDNL1QPrbsGLOKte0YUezSURupU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZHcx7bYCpXgcYKR3YTiyGPHCP+HfQTxCCkv+Ecpak2TDbSqYH7MczLP8UZr6V6ASdSKiXUNYhW7CSEsqhUGXrG4pcQpYmGDIAtONkW9qtAJ/attmfhVQrfX6WwkpfXaO/TGHoRU7+GWRBqdJXo6JUyLDf0gSYPWn0fsgMqkx0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oc3pg1tG; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385deda28b3so563527f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734019253; x=1734624053; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mUJZKl6ex9Y6tnVneUNF04HScPdq/LgCtN2B23fl+ms=;
        b=oc3pg1tG5cZU3BVT9S1eH4v24orfEjakcbFRdzF40K32ojWsMRowUnw0RX9Mt1Vxdy
         O0EhVQ1o+YqWE0dgYZSiQKa5mSUbKNzfPKI8vX4dpUJYlRMbW2ATxV6+WJJMJ99zTP8A
         DZboSDqEWInTm5yYp3+Q8L13C4lawOFK/TI+0PoDXF6u6ElwWA2aciWqzndQjd0C1Opj
         YjqwV4pAHnM0jHV5e18l/NutkLlolc+MpHF8/XHaLwwieBe6VzVXb/wzlpD8iVaKnu3A
         GJGOQ8ZfYyLLGQCxfAvpQF71JfeDBwsDXQ7J0GzXrofn7boMgCtA66mECU/z0VwIHIUK
         YLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019253; x=1734624053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mUJZKl6ex9Y6tnVneUNF04HScPdq/LgCtN2B23fl+ms=;
        b=BTC/vKqxxAvp9dFEKCG7qjj+2y/8GogceYapDn+lLIjEdk6BKOvo+XScqYOaiikUFU
         gfAPyzU9lMySYdDwCn693wFM0Xnidp9DHP3IuKfSyLdnXlZrvyF/xAibRsWuXZxWuZYo
         FVJVbc8nKRyhZAKCNEvcxUEQ5Z2djrtBGt2//TLMW0GA/cg7cOT3dxohBSf5DLQrYxQo
         jSLZhzdAHzRVnoqBYfB9R5HbQuCi5VOIv+c6zuhyqVRhVcGGporEPf4SfDTEhdh7cy+J
         YIt6hL5zNXNCWG0OcqHb/ZqIhheKCwEE73H0/kFJs1wml6fkVV73mFYLgDoVFholEDtb
         nF9A==
X-Forwarded-Encrypted: i=1; AJvYcCWm+E9bhbuVUwNaZwC+CmCWmmVQHVRquoxk8JkBBNt66THGqWj6pZe/uy4bs9AC+JdPzyYKv9kputtO@vger.kernel.org
X-Gm-Message-State: AOJu0YywzxlH9Yi+lZAqzOQbtaMt27kp7fYiyHoVWhSPd3u74Bc58kU3
	TbJmWg1FcPp1QMJqww6BF+IN9yD+6CzbjR6WuiCVXcz1epFVOhaw09I3Nj9ymf0=
X-Gm-Gg: ASbGncs9580WZ49ei4bDzuEbjqYb0btBdT++z4Eb64tz3blNIJdHZad/hbFpg2g43Bv
	/4BTEbwUYzpaV7SCe5lkk824FxoD/eQ879E95AO0X3oj2WWPpazzNwkYby9b7YcvNHHgCq4GqBX
	GLpS/5OhYbTrILdvl1AbzX/ZAaTOcoKzZO2Et6smegGO5dn1fIr2DcnJDFvCFfu/xiusFnUUp8P
	6qWTj7/lqZskIR6d/7JG1/4XatfK5obtsgGgLxgZpfSGZeQyM5hmuQxm4B3sFuqwddhGArY3AZK
	54gjHTXdoraOEq8/rE0TVwoWR74NFccf0w==
X-Google-Smtp-Source: AGHT+IEN5nwnyUkAQMvO2q9jKMCm5xWXv8+YOzw7jcftLoAsAmmzmAcKvyZSzw3KzqJ0H/b/wrjw7w==
X-Received: by 2002:a05:6000:186b:b0:385:ec8d:8ca9 with SMTP id ffacd0b85a97d-387877c98ffmr3397430f8f.42.1734019251001;
        Thu, 12 Dec 2024 08:00:51 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514d35sm4462941f8f.74.2024.12.12.08.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:00:50 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 16:00:41 +0000
Subject: [PATCH v2 4/4] arm64: defconfig: enable ACPM protocol and Exynos
 mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-b4-acpm-v4-upstream-dts-v2-4-91b7a6f6d0b0@linaro.org>
References: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
In-Reply-To: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734019247; l=1030;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=/C7bHQrkgGdLprOLUDNL1QPrbsGLOKte0YUezSURupU=;
 b=q/qMWb3Eov9H0T2BHl7oTCrCuPXOj90JVrh0cjnd8k61RuCnu1AB8+Cevc0d3x4+b2BnG9tb0
 ExoRQa94+dQA0btBlEStNmn/o64BWNR7SWxVKOt/i78pqHEKVU8gpwT
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
index c62831e61586..91139b1cf813 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -262,6 +262,7 @@ CONFIG_IMX_SCU=y
 CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
 CONFIG_QCOM_QSEECOM_UEFISECAPP=y
+CONFIG_EXYNOS_ACPM_PROTOCOL=m
 CONFIG_GNSS=m
 CONFIG_GNSS_MTK_SERIAL=m
 CONFIG_MTD=y
@@ -1378,6 +1379,7 @@ CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_TEGRA186_TIMER=y
 CONFIG_RENESAS_OSTM=y
 CONFIG_ARM_MHU=y
+CONFIG_EXYNOS_MBOX=m
 CONFIG_IMX_MBOX=y
 CONFIG_OMAP2PLUS_MBOX=m
 CONFIG_PLATFORM_MHU=y

-- 
2.47.0.338.g60cca15819-goog


