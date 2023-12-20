Return-Path: <devicetree+bounces-27539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E356881AB66
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93C0B1F22839
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F8D4E634;
	Wed, 20 Dec 2023 23:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PhzhskKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9CD4E1C8
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-35f519f3ea9so1031455ab.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116519; x=1703721319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NsTh8joUVqMg5ezobFr/U/KJPW/QvWwfP5qstPNIFW4=;
        b=PhzhskKtQnql6Cf6MBNgp3MbQUt4W7vUw1hDCxYygoVRAzjKYF7tudOUsnLhRQeOoX
         Uk0lpUNhqpkOvCrEwWpC0GZ/dUGxlAz8nVr+LBYGosS1kaittF95Nzz6OHoYpijigsUm
         3gYfkyWL09zkUUJNCtl1TWpze0FGuSKQO0F/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116519; x=1703721319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NsTh8joUVqMg5ezobFr/U/KJPW/QvWwfP5qstPNIFW4=;
        b=NMJdbiUt7fJj7UnNAhGb0upOTIfSP38c3nXYnUqXaqST3F2n3X45i2A+xwLLWva6Oa
         Olfl4srNhqowBiUFZeAFmzNFFo0Ebzyf03NPEUMMuAsWAE1wkunTGUvxIfUwggZ0bHmt
         92xPMK0qAXYoriUHnVyasFntJM+CdEhVBQJjwU3HWMXZXZcD1FRp+mwAneXvswB77Vmz
         13dKX1Aeisnv1so7MKRi86a+JmYYp77SUvCPAoA+HcY6dLPMVJeHn3bAKdi9hHMhjFZj
         gMMIuTBihdjZRvNe/cAGnUJPza5t+UuWyv1Jh9vybXFlsMtwAOYqqGPIXN1/Cwjm3aEf
         mo4Q==
X-Gm-Message-State: AOJu0YzsSRey2aqnXbE6LoQne0T28n/SorEfTFSKE5a9MjDQfjJQe1s4
	9mOgt/Zm9JeMIEB4XCNBqITixA==
X-Google-Smtp-Source: AGHT+IHpd/hQAO+JzgPTfDrP8J99ho1LatjOhD+y+1pzGqV1gGpidEZh0CuNI5ZEZbQoXBE9btwq6A==
X-Received: by 2002:a05:6e02:2607:b0:35f:9920:1111 with SMTP id by7-20020a056e02260700b0035f99201111mr9605176ilb.129.1703116519155;
        Wed, 20 Dec 2023 15:55:19 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:18 -0800 (PST)
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
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 12/22] arm64: dts: tegra: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:26 -0700
Message-ID: <20231220165423.v2.12.Ic12bf13efe60f9ffaa444126c55a35fbf6c521cc@changeid>
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

 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index bbc2e9bef08da..14d58859bb55c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -762,6 +762,7 @@ ec: cros-ec@0 {
 			interrupt-parent = <&gpio>;
 			interrupts = <TEGRA_GPIO(C, 7) IRQ_TYPE_LEVEL_LOW>;
 			reg = <0>;
+			wakeup-source;
 
 			google,cros-ec-spi-msg-delay = <2000>;
 
-- 
2.43.0.472.g3155946c3a-goog


