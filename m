Return-Path: <devicetree+bounces-66407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E048C2EEA
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 04:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1E71281136
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825AD224D7;
	Sat, 11 May 2024 02:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="vkyjDWmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0C01C696
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 02:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715393631; cv=none; b=OrWhdM5AWEZ9i16z6D2bOy1IAv16pxQb6xgHyLCS/lu7nMfogKJOedygJcikaJPo28e3tQ4IiMDINLRihfDWlccR/FwKNidsiKjZL+W07saTIiCOAo7/d5sMLU9OX1frUzhoyLE8IFpqxbM+GyLqlFADrvLq+cYAkGNCJ8oAmHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715393631; c=relaxed/simple;
	bh=4fLHwQPGk0QeNw9l9ZAq3BhROY3TA9pGgOZXf/44uJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fMrRQGmx7iIdKHf3FbbRgl5Q1LmiAp/i9ppg0o65CC8/clyRWX1IVdgCmw9OJZuAM4z+PDK8BKNsYrZJZ97Wu5WWukMYkeVdMzT/i9JL25YCMHPwV2pmI/VnDf6zUWqAF4sQjd1eqwLpV8v2DccpDIexCJfy5cAvTFq4KZQV5Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=vkyjDWmN; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5b25cee6b7bso1451341eaf.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 19:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715393627; x=1715998427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=vkyjDWmNDPo1b4pY47djdSB8dU79zLMItLmzVBf+rDUocTjqFlrWkSeciD0P4FgJ0q
         8oh0hsUWjxoS0xPjqR4fbh+9w70W7zVU1DBmCMMocGX06woFVaRp1Su7ib3agZOsnT7/
         PZo5vgBK+Pd/myxHpx+imHZt2/S1jWjSaeDRrEi/rLblWN2C1lQY3sgYHA1qt6t0xt23
         f+kFULHqfdzvEm158N3B1CMDFd8od4ksOfGrsd1M9puHn4+U6l3FqfAh91ts3wSb5QQt
         XrGY0XMZkSgWdfZ2ZCw6PQhk7T6WJ9DsKXQZCu2hCFKDeXGtuZJoS2nU221xK2P1GYiB
         zNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715393627; x=1715998427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=lcZWv9Tv9D7jvKSauiJSFWQncDmEelk90wUwEcdhuTg9B3Tt4hTPfR2t0vTzOTfcIb
         zJVGSubm4IvekwRzHuAScB2I6iZK5ckSdNO3IGDCqi59XZYkRhXRQfDv64YHyvG+KEd/
         quiS1GDugRt2o0xqbChb7YFnlM4KCdO02nkPrtceFvtS3+fYSanC0hQQxZEIk+Lydrcw
         K1xZrij5r1ErUtO7uFJl4AaiLQIeGAwmUZpIRuHje7zm3gGvJxag5vP/dstE6d6PgMhX
         Df1RL76yzJQQDT2yjlpEgqfSexXUZh+its3+nrV9NsV3F9oVHIHPjXRHnOjhDVzrutp0
         YVLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyzDe30Hjr864LXLE4g+yJpeZUjowarzHUjhI4Zp2BjdO147UZbcIv+pmeE0+VJezOM/v7NlFZaDRFoMyJuPOm7C/V+4a73O8hxA==
X-Gm-Message-State: AOJu0YwQdY/mNNaopocVVuuat/8Ffd+Ucg7jna0HbuCF9SuDbwN8Xdfb
	geU3dbN+c/4FeewwBsDyfUoYZn6x/txoAmhK72JAaYXJTzurVb9HpN6KRhQPwI4=
X-Google-Smtp-Source: AGHT+IGt5ozTilihdFm6QnwK53QFlUL+BcLhjGe5iaw3ZZIAu3O12T/s5KX1KobrB7H34Ewr4Z5x3g==
X-Received: by 2002:a05:6870:fe84:b0:22e:cf91:7046 with SMTP id 586e51a60fabf-24172e12675mr5393992fac.39.1715393627283;
        Fri, 10 May 2024 19:13:47 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d9acsm3680340b3a.90.2024.05.10.19.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 19:13:46 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v6 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Sat, 11 May 2024 10:13:22 +0800
Message-Id: <20240511021326.288728-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_NL6.
Since the arm64 defconfig had the BOE panel driver enabled, let's also
enable the himax driver.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2c30d617e180..687c86ddaece 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_PANEL_EDP=m
+CONFIG_DRM_PANEL_HIMAX_HX83102=m
 CONFIG_DRM_PANEL_ILITEK_ILI9882T=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.25.1


