Return-Path: <devicetree+bounces-27543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 450D181AB72
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE5861F2496C
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037A44F880;
	Wed, 20 Dec 2023 23:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mocD4svU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C87F4F201
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-7b7d55d7717so8994539f.2
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116523; x=1703721323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SmCkbB9UhMeKs9+2qDNSyTsxiHJD2y/t1pUjGilRTg=;
        b=mocD4svUyULAIqzBp0tCOvIKuM+S/+OaorsVAveT04GJ95Ha2HO1WWfA5xz0XoHvwS
         mkxAXh/iKbvGlydhsId6mWBrJ1AaixPcYaNP00qSQWUe2bKDoRO3iAOLQobnvCs2qjDf
         V432LDi9YMWbpwP2T5ECRjKK/uoU5p4XArJ0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116523; x=1703721323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SmCkbB9UhMeKs9+2qDNSyTsxiHJD2y/t1pUjGilRTg=;
        b=J4QSlLV8Rl8EYH3GMraBfrfGZgA9dfh+wU0Z6pyihNU4SYZglPemDXYgT3QuW433/t
         ix2rljljt9I3uGJudltIC3YBOtI9mwJbnahihZP1hfCqsElueWlo5/24Sq4Iv9URWAPu
         rDdu/rzdru2JiMqa9l0HlQe6FGih6Q0xLy53VAy7nbKI9TCHA56cbm0/gBHy/2GhtWqi
         P9Ar3IGtAm3ORIsKTpV3UwtRmqCYQDuIUC5bmozxs7cg61vyUrJgdDGqnUV6v22ErYyx
         7y8/jQigNvmAq4DT9dM11chnENopIN25kp+erCmDmk6jminbGHslGjw+Z1MLP98RrxIJ
         BtFQ==
X-Gm-Message-State: AOJu0Yx3UOtfo7KhHvDVYitV1xsaiO3LLuaiJtNfRjC4C2fcOtP4LqQb
	a8YVtZLRYv4VTNMXuQJlV7fDtQ==
X-Google-Smtp-Source: AGHT+IHK/bUEHWlzooHpOwEVS9+Oxk990sSaRzHv5EcAGd37/O9A0Vk7LwOVcnNWMGNdoN2K5E8zOQ==
X-Received: by 2002:a6b:7f01:0:b0:7b7:fd05:4472 with SMTP id l1-20020a6b7f01000000b007b7fd054472mr2991741ioq.18.1703116522877;
        Wed, 20 Dec 2023 15:55:22 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:22 -0800 (PST)
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
Subject: [PATCH v2 16/22] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:30 -0700
Message-ID: <20231220165423.v2.16.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
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

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88ba..b5734e056aef1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -603,6 +603,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


