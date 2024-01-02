Return-Path: <devicetree+bounces-29264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5619C8222F8
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 677241C21856
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298AE1773A;
	Tue,  2 Jan 2024 21:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TzvupCHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76B8171AC
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-35fe47edd2eso20695395ab.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229728; x=1704834528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZjO95JnMkaDwwshxg++NkSMHj1Inq11nKJ2Uva51g+s=;
        b=TzvupCHxAkkrsakCQUzqs0yVAGMgiH7X+OVX1f6xgCQZhuzy8vI+jmgglIB58+S9A8
         KKgaCT7i8KW2AG098C8PjBrgHatDj9qcDiI1C38wY/xg2Wc+6TKcqQT0FrkM6Obe5veF
         Is2QuhFPtC644eyxFHEh5OClumx/XWyBD638k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229728; x=1704834528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZjO95JnMkaDwwshxg++NkSMHj1Inq11nKJ2Uva51g+s=;
        b=EWTAH3YWBiuKP7SBwqn0Nuvn17FYbWJLZKZ6NWfG+8bqyMsowZRjGwutpJFjETKYtx
         6Kpc9vyf8DIfzJjUcTm+42Tps6+cqBoqLBnNDLPOxDuc0RA288OKwYsChuwJtrBFsl+/
         E8ZKr+QHw0jb/SybrNWuLYQnbbyyQ11MGjULjWu9Bfm0GiFd2pdDABeIPECzzMxxAylR
         ky40gfVl+HKPIeROYHf23rIwsZH6TX9Jt7VZjlNwq/n56v5LJjE3aCNMlMJqE7ic+Ogq
         +XhEQDN2KgnxeHOkq8K79amav4Dfg8gIeVl/ACB4YVcevynvYsb1uir9Z9c5YZ7QfzAP
         eB1A==
X-Gm-Message-State: AOJu0Yw94edYcabM1hj5G3cDLBM8YdGsdEeVt83fW5Nq4Igw+6xMFA2G
	fTiUukQp6yRZw24/fSrzaGvdXjNnFlKI
X-Google-Smtp-Source: AGHT+IHfNiRymIq/Ou3HrROS4WwsUL4yhL5gA1ghZKZZRYnQQE6kSgie8hkLsVKsxguzK0X1QgYH8w==
X-Received: by 2002:a05:6e02:20ea:b0:360:142:3fec with SMTP id q10-20020a056e0220ea00b0036001423fecmr44297ilv.6.1704229727943;
        Tue, 02 Jan 2024 13:08:47 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:47 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Alexandre TORGUE <alexandre.torgue@st.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nick Hawkins <nick.hawkins@hpe.com>,
	Paul Barker <paul.barker@sancloud.com>,
	Rob Herring <robh+dt@kernel.org>,
	Romain Perier <romain.perier@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Wei Xu <xuwei5@hisilicon.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v4 05/24] ARM: dts: tegra: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:29 -0700
Message-ID: <20240102140734.v4.5.Ia598792a1386cca61844068be03c3ccec9e81753@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
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

Some Chromebooks use a separate wake pin, while others overload the
interrupt for wake and IO. With the current assumption, spurious wakes
can occur on systems that use a separate wake pin. It is planned to
update the driver to no longer assume that the EC interrupt pin should
be enabled for wake.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to signify to the driver that they should still be a valid wakeup
source.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v3)

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

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


