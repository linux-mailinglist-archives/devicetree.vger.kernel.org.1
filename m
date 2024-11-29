Return-Path: <devicetree+bounces-123349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A519D4274
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 20:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C6B6283848
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 19:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603E81C07D3;
	Wed, 20 Nov 2024 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="CSfOZL55"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C470715820C
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 19:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732130253; cv=none; b=ZIWZBjZNtr6HmFD5efb0Dia1iUENMgRY0FErFksM4euJqgfqo98WULVsMoz1vSJ9fbeXYNgKV+MEFzwtL9h852JRU8nwX4gcvaBHidiv0eidiJ5Hff2l74Yx9mlG4VoeY+Z5D4bqR+r1z84GWIEJIpa/yfQoHrcXZYcZWUxj8Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732130253; c=relaxed/simple;
	bh=vGcatcbsSuXPFzJR3D9welFSsng16vRjIJUPoyCUcOo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qcXM3E9QU3B9SjUC/qaKmlw1lp3Z5VYvA6/J9XvuvO6lXufKtn+V9oe458JIdzG22u+G9og1Ny5E0gDogM75lwV7VAGSIn5cb9pw/nZsgncS+HBQHKxFPQ8axn74UtKzyka0XF9gYpaEKN+cui+zr80SUYhGf7vPORmgMJK+ALo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=CSfOZL55; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4314f38d274so493995e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1732130249; x=1732735049; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jr7qqPzbHAkagf9kWZH8AFBjV0Ls4zMfwt5LoWCWDEI=;
        b=CSfOZL5525XLRhDbzTsxEHBy3Jw6o5O632zGnHtRUhsLBfqEK0+TTmI+Mzeon74t/w
         NVfNgyxyImlD/y5Du+HmYLZOil3QdwBkuy5j8otfNycD8osy+a+n0XoFOE5KHXdqdORf
         urJksUYwjps1slXH8O/UoGsiFEsGUYodKxYeMJcz6BKHCUBmV9LCsTLvnCkpHK+M0sfV
         TGMtQpx3Z3FyHG37/JtXGbbnJSaMJaU2HOtef7+gPG4x8mLLwpR39zIvaXlV4xQ4LkiP
         mMq1/K2iXH1S+pABI33Ue3c/yqUeQU1De+nA8P/BPPDT8jEIDlEaTmL82AZXsm8EBA+H
         bCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732130249; x=1732735049;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jr7qqPzbHAkagf9kWZH8AFBjV0Ls4zMfwt5LoWCWDEI=;
        b=QQviOa7inuJNjNcM+3rzcSce8UjPAbPTAhcImBK/l1obaON3VOuNRPWYvj5Sza/4Mc
         0MUYTQEPINO5cT+Fgn/B2GG3loNwhdRuVvojlUWrIrJQcotsAHV/4ae+5ndCFCQtJsNp
         msZlQixtNO+pXtl+/td3qi4UMVrGCYdHHhcL0+Ihv5zDwwtnHuQPa4cQ8ic1tikqVuvK
         HQzvsn6oMyA0c4/vYFJVcdtiKp/F99C9+Xc7WsU7SMk2QT+NOL+FsqUaogD5UH9fnscs
         4YUWgwmXC7WlGitBNeo6dBU5kCtddXWbnt+bnGvdJpsTH1UwOXXbYvCuInhbZLv48bYv
         /0/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU6PkCd3SRL1J7PsE0DYI63q1dJVkoezwrM5beHfFq7meDgiKud+5T2+YYmRHaD094cZMtpe8mrwI4R@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb3XEZ99xK7jFUx+SDFJpQeMcJ6whvGNm2uYCzM9fRv0VWXmq3
	IhPdgJjPEM8qR7S6SA1PM+n8yZb/KqGFqkiMCTdkzHmXKehDOpcnQYzKTj0fDsI=
X-Google-Smtp-Source: AGHT+IHvFo9WlmxcMV8IjdperLMhQZjV3VgLzVSA3y+8HnawYzK6+2xS69U+wMdnZmgdTzRDcgK+WQ==
X-Received: by 2002:a05:600c:1f11:b0:42a:a6b8:f09f with SMTP id 5b1f17b1804b1-4334f0154b9mr36081565e9.23.1732130249071;
        Wed, 20 Nov 2024 11:17:29 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3825a2c5ef2sm172457f8f.53.2024.11.20.11.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 11:17:28 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH v2 0/4] media: i2c: imx290: Add support for imx462
Date: Wed, 20 Nov 2024 19:17:02 +0000
Message-Id: <20241120-media-imx290-imx462-v2-0-7e562cf191d8@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK41PmcC/32NSQ7CMBAEvxLNGaN4cBY48Q+Ug5eBzCGLxihKF
 PnvOHkAp1a11NU7RBKmCI9iB6GFI09jBrwU4Hs7fkhxyAxYotFaGzVQYKt4WPFeHmFqVK4O2qN
 xTeMqyMtZ6M3raX11mXuO30m282TRR/vft2hVKl/dWouEpmnrp9g4OxLZZr76aYAupfQDVR3xf
 LwAAAA=
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.1

imx462 is the successor to imx290 (and imx327 before that), and only
requires a few very minor register tweaks.

Whilst at it I also fixed the todo over imx327 and imx290 having very
slightly different maximum analog gains (29.4dB vs 30.0dB) and added
that to the variant structure.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
Changes in v2:
- Added patch 2 to correct register 0x3011 to 0x00 on imx290.
- Corrected title for dtbindings patch to remove duplicated "media"
- Picked up tags.
- Link to v1: https://lore.kernel.org/r/20241114-media-imx290-imx462-v1-0-c538a2e24786@raspberrypi.com

---
Dave Stevenson (4):
      media: i2c: imx290: Limit analogue gain according to module
      media: i2c: imx290: Register 0x3011 varies between imx327 and imx290
      media: dt-bindings: sony,imx290: Add IMX462 to the IMX290 binding
      media: i2c: imx290: Add configuration for IMX462

 .../devicetree/bindings/media/i2c/sony,imx290.yaml |  2 +
 drivers/media/i2c/imx290.c                         | 81 ++++++++++++++++++++--
 2 files changed, 76 insertions(+), 7 deletions(-)
---
base-commit: ed61c59139509f76d3592683c90dc3fdc6e23cd6
change-id: 20241114-media-imx290-imx462-b6d1c24b77b5

Best regards,
-- 
Dave Stevenson <dave.stevenson@raspberrypi.com>


