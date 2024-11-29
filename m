Return-Path: <devicetree+bounces-125420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8729DBF5E
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 06:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43230B21B96
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 05:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC65157495;
	Fri, 29 Nov 2024 05:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eRALDRZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85DEE15575E
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 05:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732859850; cv=none; b=D6utcXkYO1NzQX6/Cp6G/laQZUryFntDcvk2+0ZHeoFeep1HKZPjMxCy0kOa4WxYSi8pqXlF96xLn0Ftax0VJ4DeWDBIsgHV5pajNjvOvzASwoaabE4a1yEV56fK9/et43Jeo3c2cIz2z1muk0to+rqURZADsmduEh4WWhWf8QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732859850; c=relaxed/simple;
	bh=2d22fSXH3xHtYPQeuQ5/HB+WWNcQefsX3YBG8H/58B0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JHeLGlWEJSF6RZoXHDeL3DHfuTh2BReOk6+i+R/EiFxVqWJsDj0eUZTXZwvt9/K5g10Tb7eqHkSLTdciP0OK9Qwyan2W91VY5W+eG8nWTzGqYLQCKnx4JnslXblenx+1uTJLwwnUiBJKlAsAphsYvjY51O1NXvILCnVZm7Jq/gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eRALDRZJ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53dd9e853ccso1339058e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 21:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732859845; x=1733464645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w9WF3O3Q9CqJ+jQNAGLBDdeZMuKGc8yveqCJFxa21hM=;
        b=eRALDRZJ2l8B6Rq+/V+W7pr8hF/WSwCihJ6xVRx0OrPiBI8Ce3g56K3Q8mpXNPCdhu
         Gy8PbyvE5/nkWmPvW0YiOjw3azQQm8Ca/lwM8qwLdd7qhe5omRio40B79BXpy1DqE2cU
         iSBoEn7Fqykwbg16NIiPpsxtXcwEZZPUh7R2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732859845; x=1733464645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9WF3O3Q9CqJ+jQNAGLBDdeZMuKGc8yveqCJFxa21hM=;
        b=HhwNuY1EbUSSWHwaIEQoo+gR/H5qc6GFm1fuWO1JfQO+Lod1KGU1NgFHdllY5fkhBZ
         8R1P5Lc/jjExcpFVL3s0jaDSF0oE8VIMVPT5VusTMbgszr8FNC0SeEHikchZYiRIjxOv
         px9APAvmT4W4S7cSOzJ1R0hIXtY/9adSYqF5eB6F4iRDHBs2zvx7W7SSvsYMNYSupy3q
         H7UJbPyeQaLwYEk8ePIcoi6KW+wlbcUzkTosRISgzH+oA1mThXC/SUTGGUJcUMUfbV9c
         dWbcl8Rve+3u+z0iMbLDZn8s6jfio+sMHZbaVJqsIHXtsJNQsX6hO8EoZaUSJKQmwGqz
         WgAA==
X-Forwarded-Encrypted: i=1; AJvYcCXJp9a6Yz/NgstimL2VVueZ8wNvLybA4FpXaPe4AXbThEfchdZZSXeobgk/pgEeXY/vgCqSWRiR4aS5@vger.kernel.org
X-Gm-Message-State: AOJu0YxkISnq3Rt4sWC98YQ1KMhGY+yxhsUzYydmVE88gP9yRyvipWnl
	MEPD+pKwsZpBqRvStWABsgTF/VIuQT5CMXwKuk3SZnTzSdn838J8tnX3Yp285Q==
X-Gm-Gg: ASbGnctEJq06lK8JgdVKluaTERoEgkDfIozcOJdmeNmw6fkB94s7AOKx5oH23Pad9X4
	HJ2TZGE9K8XSS5aC1VpiBZMFxzWUkH5M/jHt0tDcoRmH+i1EC7nUxV/KZQQHpaSzZTdDgXmLSLt
	ZrdjBcGw53Kzg6QqAwQaoFdaLsTlQJTn1IgIY6yhauB7+qxOCzHFQTz+q4Wd5ejn17T5wcz/3iF
	5NCXSNSlbbsHQAhA52z6InWKtO1BylR6gSHVHiIsT2fuhunlLWZOzaDN43VNaTxvWdr6mBT/YzK
	LcwJZ45K
X-Google-Smtp-Source: AGHT+IE65JzRNArxxc+ToexNBzoPm9HjhpdDJXXa/EKqSE7i98HFux8rxp92UCOg27WO0Cy7mDBO/w==
X-Received: by 2002:a05:6512:2355:b0:53d:e41a:c182 with SMTP id 2adb3069b0e04-53df00dc9afmr5377517e87.31.1732859844507;
        Thu, 28 Nov 2024 21:57:24 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa599955662sm136615766b.190.2024.11.28.21.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 21:57:23 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v4 0/2] Add support for Starmie Chromebooks
Date: Fri, 29 Nov 2024 05:57:18 +0000
Message-ID: <20241129055720.3328681-1-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also known as the
ASUS Chromebook Enterprise CM30 Detachable (CM3001). The device is
a tablet style chromebook.

Wojciech Macek (2):
  dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
  arm64: dts: mediatek: mt8186: Add Starmie device

 .../devicetree/bindings/arm/mediatek.yaml     |  13 +
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8186-corsola-starmie-sku0.dts  |  31 ++
 .../mediatek/mt8186-corsola-starmie-sku1.dts  |  31 ++
 .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 465 ++++++++++++++++++
 5 files changed, 542 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi

-- 
2.47.0.338.g60cca15819-goog


