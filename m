Return-Path: <devicetree+bounces-27540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6CB81AB67
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CECA1284C74
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065484EB35;
	Wed, 20 Dec 2023 23:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="m67xZNrj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71964E617
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-7ba84897ba3so9214239f.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116520; x=1703721320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJduS/1fJUByj83cmxVS/XQjbXOMlAAEnEEqFMZKGGY=;
        b=m67xZNrj+bACUTayQ8vCk89bCG3aJ28wj3+AqWdfhb/qVO+YiEUYCVbWttmog6/dUg
         HBvQxuQO+CNyNoc4yCurTN7IgCziZZIwczOJmGTNJwYjCeA8UsJJSwwvt2z74jDeDdW8
         4uiIE/nnmHJxzfBWYUAEQqrJmekZ923LqZHuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116520; x=1703721320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wJduS/1fJUByj83cmxVS/XQjbXOMlAAEnEEqFMZKGGY=;
        b=EmqpaCaNyHfc7vWFgq4Fy1XVH5g2+0titMHXGfGIa8Or0LcKrqOqoF5qHOSfPH9niQ
         O7MNfaW/VV6doeBeTo1TLBAueBXBt0pjJzWZVuuASWuUKgkslQ7Vq4F7Diuyrv8oIeez
         OSSv8jmUbRWTCI63yI441izU5FCftS3I9JAZeWN0pg5r/zzh+53REz2TV93C42ayVRTd
         Rok+zsDwf+8nXYNQW8glh75A+BkFoVGrVVGaoYBmyvppUGKdlZJIeylrcQQBysH6U5gl
         VS0OgmkAsABClfrKmtiEv/baZqyPduCaQqw/ObW2VLd8unJ5SXZ2ki8uryOJXYoYv4yd
         QNig==
X-Gm-Message-State: AOJu0YzGKeYV0+N/lBc8YFnjiUmFL5WPfKWBBgH/lQhB+hCjDj6DNTTe
	KjKL/X8Z87uO8SwYZFPq8F0IJA==
X-Google-Smtp-Source: AGHT+IHGFtnZQ7iLgJfoVYEVEaK5odOPIEkB3kjTbyuaK6Zg3MTx5G7vEnhwrIdBftS6jyvuHgaTVw==
X-Received: by 2002:a5e:8610:0:b0:7ba:753a:ed0a with SMTP id z16-20020a5e8610000000b007ba753aed0amr1782436ioj.16.1703116520055;
        Wed, 20 Dec 2023 15:55:20 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:19 -0800 (PST)
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
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 13/22] arm64: dts: qcom: sc7180: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:27 -0700
Message-ID: <20231220165423.v2.13.I2ee94aede9e25932f656c2bdb832be3199fa1291@changeid>
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

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 46aaeba286047..f3a6da8b28901 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -649,6 +649,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ap_ec_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
-- 
2.43.0.472.g3155946c3a-goog


