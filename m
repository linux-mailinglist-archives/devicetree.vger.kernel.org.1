Return-Path: <devicetree+bounces-182801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 742BBACE142
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 106453A6403
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D59F7DDC1;
	Wed,  4 Jun 2025 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cEEDtvhr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40341B3939
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 15:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050754; cv=none; b=kYgu8GR57Fe/vfobF+IMG9V4QLLcHZsSnObS5NVGqcnCdIZygnaVewKSnlQ24HwZvcfbJ/t+KgHMxnvs5ZdRDi59wJuzzGocJO7iCjD95TeFtkRJrJI9iQKFYmTJnQnlrn5zhGDAZ1RibSTQccuJjt9nTwH4/xLEoPCSukZ8t90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050754; c=relaxed/simple;
	bh=ZloWrNFeMmVe3/HDuD1aXKWP+8PNEOlvbHUi95SknjM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A0PSV3aunznBBKG3T+KJf6Me93my6WIwIvhLq4ilwQQCCkVt00paI+GwzJAy+ibxVsaO6Djs74VTuGa6A9Sj8gR0g6qci8kW89+qAe452xtFSkS2j7VcSPjqLVwrKvmP/WUEZVG4Th6u6YYQGyjvE7qFz9SEDn0AVWAOfQInWPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cEEDtvhr; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-601dfef6a8dso11559569a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 08:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749050750; x=1749655550; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RK6fDlVurrAhSO63sHrDo/ZYoV5lV5EQ9BPN02YtAuw=;
        b=cEEDtvhr+N7PEGXPEhrUeFyCa2qMbNtm/P0Ohq03cvSAEPWkKTQWaWgvMzPAwZ3viP
         zRE3yGsRYKJMYizY12jupVh2sj3akcOfCWdc/140wTbE2OBIDZWodN3ul+idJosE70Wl
         BY/6GrHREpcUeewuFqLXsOvtYOV1JaskxSaHVUbsJyyOHlWHBLbNi0mNS/pfnmupNFSA
         tXt9l0KeJhXI7DAkb0Zl2aQOo6P5IA35b9XKeGqJJURCP+AVdn4so4fa8Ezk3m3TXbqv
         4dhlX32QPgpnBAjxfTJCg3PHnfEAX3Ig3NsyaNCKZKqNb2OwczUasGSt2lB0HXxTLiRm
         QM1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749050750; x=1749655550;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RK6fDlVurrAhSO63sHrDo/ZYoV5lV5EQ9BPN02YtAuw=;
        b=p4OctpImIH8SVVOyxKbLivxljgZPG2MJe5u//27LZUyFJEHAt+pWJTzQ7oXXAfCQAx
         Zj5EAmipUZUNYgGQK+rL6weDwQ54Oaj1AvfivbXEBLJvHF9vfLB/f1AqpFEJifu5thXU
         HAqhvIZ/QdKmwYF/jOAyWsRYL6CB4jUOIa3gmoPUsk/ztlU6gu0u3oi9l7VG8MyHcL9o
         XZz3/SyLHxkwO2Yh0oOr3A4ES7BxckN0mfgmORwreuCf227sVVxt+ZGtwwgAL9qUxMij
         DV5JxdPOFVaQOKF+p1QHPMWm6jjwC9AGMxbe3Q88O5aIYIfGryrEYxqlv0a2innxi0L+
         RL3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1+k9g2edtmq2p8bBzf5pp6l/nY0QexKWshPaCFYY3uPHoO7A4l4jG4ucl/++L5GIOs74YIQXIPovO@vger.kernel.org
X-Gm-Message-State: AOJu0YypY1R90aM17lJdUJSJ6bW6i6IPKV7/hM1QaeUM37tgoEbA4IJU
	9kvFj3aYxml6ylZI09MudDPNd4MGkK2+nzoMyCmjRzS+1JnCfaTEwqn8/Q74TlwNyVA=
X-Gm-Gg: ASbGnctl3LTp6QTW/42tZ2ux5dEWt8Lywy4uBPoL8TgONo4Jwz8ziMT1gw9Zeg0O2iw
	ekjD//612MXp0oclvirk96vf3Z4Ra+IOEjrb9TpEl8z66hJiOKnPbFzSyBG598qZw/KbcBnXt0f
	HvhKd5aV02TkzgYtWG4VsGzSPnyx1waqahbd8vq4PVKu5DKi9VVxqRcjG3pFkg15U9t9X8gkePU
	xkUhqs8U0rp/G5VO7oE5i3NyYLZaryOvR7sL6SUwvcD44meDDbBSioPbojOfxKF/VpFPiE8j9qo
	zdVeLvYxZUPB/WXd0z6uoUPLqh7BWIbcpVNpk9IP1mE4D9XiJ6JsHV3b1Y5DrjNOgebM/EtUto4
	PVeLqcOwF2JF5V3vbSxZzbf79q9oiN/WTXFovI7g+wDK5lw==
X-Google-Smtp-Source: AGHT+IGie5OT/C4dKIZS01jGdu9pcMB4S96GfIIlXrVLkYBNWiD38sd2vviPzRoeqlZOJ6SG51yRIg==
X-Received: by 2002:a05:6402:1d49:b0:601:31e6:698d with SMTP id 4fb4d7f45d1cf-606ea190c59mr3038407a12.23.1749050750307;
        Wed, 04 Jun 2025 08:25:50 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-606ed984f63sm1051640a12.58.2025.06.04.08.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 08:25:49 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 04 Jun 2025 16:25:48 +0100
Subject: [PATCH 09/17] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250604-s2mpg1x-regulators-v1-9-6038740f49ae@linaro.org>
References: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
In-Reply-To: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The initialisations being removed are needless, as both variables are
being assigned values unconditionally further down. Additionally, doing
this eager init here might lead to preventing the compiler from issuing
a warning if a future code change actually forgets to assign a useful
value in some code path.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 04ae9c6150bd5ae9dba47b9b3cfcfb62e4698b6d..1f51fbc6c7b6e158f9707c04d9f030b9eee5e842 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1207,8 +1207,8 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 	struct regulator_config config = { };
 	struct s2mps11_info *s2mps11;
-	unsigned int rdev_num = 0;
-	int i, ret = 0;
+	unsigned int rdev_num;
+	int i, ret;
 	const struct regulator_desc *regulators;
 
 	s2mps11 = devm_kzalloc(&pdev->dev, sizeof(struct s2mps11_info),

-- 
2.49.0.1204.g71687c7c1d-goog


