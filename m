Return-Path: <devicetree+bounces-27531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 201A781AB50
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D17FC2849E4
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08ED4C3C0;
	Wed, 20 Dec 2023 23:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eXZNoUFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586ED4BA98
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7b7fe0ae57bso9896739f.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116511; x=1703721311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=moVzHQYgk23qLvXFemqZkcgdvSUVJ85XUZMZayldchU=;
        b=eXZNoUFY5kGrDYszgBwIu+A0GPgmLRnEfb7PwYqw4ReaovROvnrJhwCdzSnZ4dSh4f
         MGempUz1PI4sZCdPzea8dLWFFpyM28LrhOX++nD3tzy03trbJDXFEcfbXMuTuaGC8EUL
         1mA2QDFy0GojmZdaEB3V50Z0RIHfPhqscz0k8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116511; x=1703721311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=moVzHQYgk23qLvXFemqZkcgdvSUVJ85XUZMZayldchU=;
        b=RMO5xGcepgoe73GrdhD/CQM3V5xOi9yyhvKop2esWGn2BCXAz+seHu7MTTnAGGw/KT
         oUGxp+7ia5KzorevdTgShik7+OXtvh77r/s4GSb3SvkJ4Ln5Ez+SA2yRIUDxKSdBCqHA
         nlWEmjIvjIeol1It9AMYfCq/oYuj3lFIA60kJL4i1XfahH8YuJNhMw5NPbfa7bMlbCTj
         DwcqITzj/gu86pyv6LzKns0AdVQhH3Ib7AhJXMYR/F5BXPYwBV5DOW7TvhcGJdFhm45c
         cXtc6uVZ1RSawVR5u1V6adv+oz0+9zB7q8ZM0/K4Kc8gir7AZlS09VhiUmuK1BBOCgkS
         mzKw==
X-Gm-Message-State: AOJu0YyxrzebW9igqeb8TfOkznM5sqn4o7+9RlgW5dj4vaYgzk33wm07
	kI3+tY3Q3UiX19EukAqgSQK2ug==
X-Google-Smtp-Source: AGHT+IHIYrjffUfU5PYl/Gof5mJUZa0K5TBE1VO+JQ9wu0i35S3zZy6iTiKsMWq0lfhMRfiZfNNpMQ==
X-Received: by 2002:a6b:6e13:0:b0:7b7:f3f2:9a97 with SMTP id d19-20020a6b6e13000000b007b7f3f29a97mr3933437ioh.26.1703116511607;
        Wed, 20 Dec 2023 15:55:11 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:11 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Enric Balletbo i Serra <eballetbo@gmail.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Romain Perier <romain.perier@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Wei Xu <xuwei5@hisilicon.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 04/22] ARM: dts: tegra: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:18 -0700
Message-ID: <20231220165423.v2.4.Ia598792a1386cca61844068be03c3ccec9e81753@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to match expected behavior.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-Split by arch/soc

 arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi   | 1 +
 arch/arm/boot/dts/nvidia/tegra124-venice2.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi b/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
index a2ee371802004..8125c1b3e8d79 100644
--- a/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
@@ -338,6 +338,7 @@ cros_ec: cros-ec@0 {
 			interrupt-parent = <&gpio>;
 			interrupts = <TEGRA_GPIO(C, 7) IRQ_TYPE_LEVEL_LOW>;
 			reg = <0>;
+			wakeup-source;
 
 			google,cros-ec-spi-msg-delay = <2000>;
 
diff --git a/arch/arm/boot/dts/nvidia/tegra124-venice2.dts b/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
index 3924ee385dee0..df98dc2a67b85 100644
--- a/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
@@ -857,6 +857,7 @@ cros_ec: cros-ec@0 {
 			interrupt-parent = <&gpio>;
 			interrupts = <TEGRA_GPIO(C, 7) IRQ_TYPE_LEVEL_LOW>;
 			reg = <0>;
+			wakeup-source;
 
 			google,cros-ec-spi-msg-delay = <2000>;
 
-- 
2.43.0.472.g3155946c3a-goog


