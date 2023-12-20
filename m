Return-Path: <devicetree+bounces-27532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7081AB53
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F0741C22702
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4A44B5AD;
	Wed, 20 Dec 2023 23:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lJNijnIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5104C3D2
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7ba84a3cc96so7622239f.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116512; x=1703721312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCBYuSyv1htu4Z4UMY79JiCUyFE6xNOmu0NfxL7CL1o=;
        b=lJNijnIQqt6zUOSl4xal2gPN3JSGaAbShE86eaxXK1s+pzdkYO0ADji40tV9EEDyhB
         cbggHELnV5v2dCBlhDHg59hxqkWBMYigXmnoBJ35sFb6X5zqS2ywNsOeRDarxXec7355
         qBIoEaeYpAZ2TijzBss38xJOkYZWAmiR1NxME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116512; x=1703721312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCBYuSyv1htu4Z4UMY79JiCUyFE6xNOmu0NfxL7CL1o=;
        b=ACETTKteYdJjGRJQorhHflG72si+H1fZi9b22fpfehYRHMlFAT62j7A2v+h/sdmwj7
         L1cg1G2hTNYjYFWhpsM8YLCBVomK+bLlVMNKp+7W7TywhGX7hxe/5ZK3/H3TxO52iWsk
         cIT8V6a2giAsF/X+aXqENV0lnxcAC6yu0JStfMKMir2Nr/tvOtKgwuCD+PYxOErY4Hl7
         PSfLxTQ4fKxfp46u0I3X3EvZRbDe59Hq35lT3fV0LeBaD/2BZLggv3dQm/P4lXpJjeqj
         qQD7ktKZ606wC8oBZq5pb7Aau+NNAfesvlYnXD9s85rCXkTdp0lGsjBlWESUkaBJ3zPb
         kbmA==
X-Gm-Message-State: AOJu0Yxfw2a5p6KfyT3hXWN17Hb1U2go02QwHofMFco5F71GUD5KbO8m
	5HmfPXYzWgvUgdX1yr/RAQa/BQ==
X-Google-Smtp-Source: AGHT+IHSg3mJJWavfesm2hpmBZ0S+/Z6QyumQes9iV9E7AinPPpe4ysdoPMdMc1c/Ob/o7mRjGp4Kg==
X-Received: by 2002:a6b:c8c8:0:b0:7b7:f971:8e75 with SMTP id y191-20020a6bc8c8000000b007b7f9718e75mr3226475iof.12.1703116512588;
        Wed, 20 Dec 2023 15:55:12 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:12 -0800 (PST)
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
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 05/22] ARM: dts: rockchip: rk3288: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:19 -0700
Message-ID: <20231220165423.v2.5.I8249df4df0b7d12fb68ea1e69f84ca589c574bb1@changeid>
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

 arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
index 092316be67f74..1554fe36e60fe 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-chromebook.dtsi
@@ -112,6 +112,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_int>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


