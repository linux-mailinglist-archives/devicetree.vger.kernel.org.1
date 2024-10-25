Return-Path: <devicetree+bounces-115479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E449AFBEE
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29D2F284BBA
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8E41CF7C9;
	Fri, 25 Oct 2024 08:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sm/6RqlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D85B1CACD9
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729843435; cv=none; b=YJxh51OcHCixismAsHL9FQq4LisiX2BWV45ZOvTQOCXmguHrOWibCR04UqVFXi9rp7/MHms/kw9fDa8UtJHFkY/AF3no++YLUFnmlvqascJbK6w82P7mgoK3SPPVHonIkWZvaMYHrsM9NAMDJ3vLPsLtXGVv9GW/gps4o3W20vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729843435; c=relaxed/simple;
	bh=Vd5ZJMYgt+siPRttC3L85GxVr7ife3eRKgQvs9zCIUU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TUNUtGEXn8ggepkHBsEi05pl/VcGRY3SVJQ84WYojlU8c04W2QYU3fCwyHhHQS6YrjuQg2zcazwCoiFELd1FRTERLhRqp/YwOCH4w5I8vSZePlImjq4NJbQxOHep7Yjd8rVwF+zvKCK3vO5nkF4RkNNA/vo0p33kkwnd8zRH3Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sm/6RqlU; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20e576dbc42so16994595ad.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729843432; x=1730448232; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8XBC4RSh8TfpYO7N1cJ3hGiE9IZ5JY14wIot0+OdLjw=;
        b=Sm/6RqlUXR5ehjU4rGJxV9/U8T0PrAtjbtGSrglGw4rR50UMPdC+3MyuINme2LYRMO
         fRkJg0vlc00QMc0LcE//8Q4xgjc5quUcmAIBmtQK1v6ntC/9KkZ18sZIc3kqStIvaA/i
         bbaCC46Y2l+qivB+TAqeY2i513LOUShwajCMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729843432; x=1730448232;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8XBC4RSh8TfpYO7N1cJ3hGiE9IZ5JY14wIot0+OdLjw=;
        b=gpKWHVjedEWbjeoRF9rXr3YyZgW3DsvsK7YtyYuZ5yFzkrfU4QivZQpxkJqNiTiWb3
         wVGuIM4vgYHXxhXQ029lnyQdbs0CaltuRkv5j0kJP/WXmXfV2sJ4Y+0AZJmyZr9O91Nl
         vSe+Ywm/QSfN+ok836oFt7EzIjlSMx7QW4yg9VHt05PYGvywPOfwEUGlZcHfcq05vWC/
         2l2YPwyq7xfRs2CzwBp2OWQ3T+VzFQw9rEKldRhCeSfvM448WhjI4ZgCUXEeb8xz5MYG
         jZcWdbKUgntf7cPEP9IOUuuEfeosZE63TJbq0FoBFxg7P+osgR9eEbQZ21Neqkh/8gxW
         NHng==
X-Gm-Message-State: AOJu0YyM/4ErDWOUB4Z37fH0z3DgdSG3ph3T/QVHgX/V7oyO4sY3HviR
	z0+O9eWDK0icXTQHkgD6qzdiehT8KfpOVO+QPNmhQeJeSTPpN4WGQBoA9OD9YQ==
X-Google-Smtp-Source: AGHT+IGn2s+chrglz5njxh1erJWL0JkpBhiVbjoyPn5g8eTfhQo4rJVyhvThXay1WwGBJaAL6fX6dg==
X-Received: by 2002:a05:6a21:3984:b0:1d9:275b:4ee9 with SMTP id adf61e73a8af0-1d978af6913mr10351102637.15.1729843431913;
        Fri, 25 Oct 2024 01:03:51 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:5a9f:16cc:8d5a:55e5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d025sm558120b3a.101.2024.10.25.01.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 01:03:51 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH v2 0/4] arm64: dts: mt8183: Add i2c-scl-internal-delay-ns
Date: Fri, 25 Oct 2024 16:03:47 +0800
Message-Id: <20241025-i2c-delay-v2-0-9be1bcaf35e0@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAONQG2cC/1XMQQ7CIBCF4as0sxbDEK3iqvcwXTQwlElsMaDEp
 uHuIjuX/8vLt0OiyJTg1u0QKXPisNZQhw6Mn9aZBNvaoKQ6SS21YGWEpce0id7WUeOVSDqo/2c
 kx59m3cfantMrxK3RGX9rU1D+KRmFFL1xZ31RaNDiYHwMC7+XY4gzjKWULx3Szs+lAAAA
X-Change-ID: 20240909-i2c-delay-6d202918ee0f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-2a633

Add i2c-scl-internal-delay-ns for each device.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Add missing Signed-off-by tag
- Link to v1: https://lore.kernel.org/r/20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org/

---
Daolong Zhu (4):
      arm64: dts: mt8183: fennel: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: burnet: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: cozmo: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: Damu: add i2c2's i2c-scl-internal-delay-ns

 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts   | 2 ++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts    | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
 4 files changed, 11 insertions(+)
---
base-commit: 75b607fab38d149f232f01eae5e6392b394dd659
change-id: 20240909-i2c-delay-6d202918ee0f

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


