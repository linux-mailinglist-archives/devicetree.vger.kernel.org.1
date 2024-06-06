Return-Path: <devicetree+bounces-73130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F198FE172
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:48:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FCF12878B9
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555F813C8F0;
	Thu,  6 Jun 2024 08:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lbarfGcp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D33F130497
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663700; cv=none; b=FxKKfP243oDjxx99A6/RjbuQyChlWN+XBgsNQMD0LV1BQ2zLN06HAC8xAUfbxtl5AZPQrtaq3vEBZzNB01gZ2LXdF7DKGyWej4i38uW88p/dYHqlTHFEE6w/Jkjlnc99hs761S+pG402kjDPBQe/0ir7a0BbivzJWIXKo/K8YPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663700; c=relaxed/simple;
	bh=sNilSTNy7onJWc0uTbgdd1uABdsGCQf5JooGVu7ReN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BjLQ5CG7p4eR6wXaGGL0pqPiFRk1WpCF1g5p2As+dopKVW7fAflMsAj/o6fZRLG7BTygm0B16F3sKEtYf4RjDekcMOdVWhcAIKXJqcsQFSHYGevFhUvc6AdbkFmAI6Aux9TQsWTNeH0x3xtrO3Gp7FkuN6dqY+27SfsdKgQPphk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lbarfGcp; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42122ac2f38so3597385e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717663697; x=1718268497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/LxuYDmiq5fzmLpnOdguSgqEOVkFSy/ReEuW4nl1vrk=;
        b=lbarfGcpjMrx22vRXp8DSx8QmQFSaQCwXKFRwZf4bSz5MYtoRepClyP6bLOY52jX6T
         mCyxVpgYLQVra6iRS1RNQbT4Od+xeJEo4dMORrhzzJtK6b9ODMZ9KKDXujFntUDAUsE5
         OrtTeKEmpOtN9gWGt5e0bz2vGmrgvtLMGTmQgphq/yvtXLXxmAlzYOnuui2GPZFh9D1A
         W1EDKDCYNR0Iz5/RvL6osQAMGunCZRijv6nxdilyv0WBE4msRixMtR90nhgJNexI7pYw
         Q8dQzMyV6Y99u+xG9iDfb8u/DILmizpHTwLxDmG78UOHJ0Q9/kDhKfsKKVz6m7Z6CERg
         MPTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717663697; x=1718268497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/LxuYDmiq5fzmLpnOdguSgqEOVkFSy/ReEuW4nl1vrk=;
        b=oYWvTxhlvla9FBlw80jqly/OAa3YdOcSUIqmrT4Oizs1A/MPXioHZ5GCjrpgPVue6K
         VyZpuFl6p6DfLZFXF5PLZuZkuRv/J7BqMwf7aIiN/4e5QWpmtAAUoZH+3GjJKYwiABQ6
         GEI2WVpyyPW+stJPbWYiqcA1TnwqWEs5X4yCjtIaQrAUF4DruOD2n/tO/rh4ttwBd/hm
         gefgBILDfk/Demje1kymcw4GhJPQSzUYSNK+kzbmlXN1vsOxnCJhF/sxvAtcIQZazPkG
         +UN8C4C0NTa0Uzt/9L+jHFWZ+gjZsPuMkgLSQGoh/wvHw5MxQv+sILIuRyJOI5EvgYgQ
         85AA==
X-Gm-Message-State: AOJu0Yw536xx4spY9UJVWjTicRFxfUJz67KVJzi1cku/kQQCs20tS8zT
	dJjrmVsK7yi2djNScL5s3Qa/vEEx1Pii54x7Ghn9vtBf74JfKeHzKlbrU3LRjWQ=
X-Google-Smtp-Source: AGHT+IGC737hhQwCtbzi2qs+Nh+6AjJoMmHhd/AfeVEaoCfNGjCA+xScDrwx8kHLuR4jh5SnacBuHg==
X-Received: by 2002:a05:600c:310f:b0:421:561f:4c with SMTP id 5b1f17b1804b1-4215acc489amr16495415e9.3.1717663696902;
        Thu, 06 Jun 2024 01:48:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm14227445e9.34.2024.06.06.01.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:48:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:48:08 +0200
Subject: [PATCH 01/12] arm64: dts: amlogic: meson-g12b-bananapi: remove
 invalid fan on wrong pwm_cd controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-1-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1595;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=sNilSTNy7onJWc0uTbgdd1uABdsGCQf5JooGVu7ReN0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYXfKQPRopuS1pMiyV9+ZLfIj26wDhYO3PqW1iXz2
 +i3LHL6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmF3ygAKCRB33NvayMhJ0VkRD/
 99mZuq73pGJa/SRpIhLugkV4LvE3hGxTpfUwrwtJN1NP5QpuMWc49wdVZzkQK3FoVWTZt4KoTdZHdZ
 yYfUTimcGVwuawK1TQ4taISgd1GKmnp1xUWGpuDSL9OrAM95eIZgb12bcb4txpN4aVpQpkitda77h7
 tF/2q+427ZwOP6+wToxyEafMcpw9VC+2ZZv63aP+FOEKs5W8AtZZqIKV6dNUcbaBEYvUjD1Cqy4GQf
 /VOcwTBM1m8KEEnq3dlTUc4oaHJLwdAc/LJKGjK57X8cJKnd/teem9kTtAeIvnL9vrEmTgdsH6mqLh
 NfizZqa9NBmVE4TRkU+NsA88+nIL933VVUGF4U3xA0ykMC+4siGZeElFIOlyB6DuW/fi21f40LHtBe
 vdCySEGWcmntFSAeRTOSau3MjQfEzoaX9z2WUKCwef2Zq5Qm72Aq38DGDtPrg1RmXu/DapWXnA3paL
 CEhwYqrnPnte4B/F7lF2vj4MIjEc3PXQAWYMvMcuZOj0X5ffT0hA2I3xgmq9GtSQJ+MaVL8fT9iOdu
 DniQwCaPFLKpD2Y4pGdX6uqDXMyqS3C4oYAC2rCACX3YiwW9bvS6v/VuOemCemYG0nORXWER0EwtNy
 0qdt0PSZ65lEJiH5+9qWizGRVQeP9ZFgK4QEEu5LA41CEYN/sspZGpuXdbsQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The fan is connected to the GPIOAO_10 pin, which can be connected to the pwm_AO_cd
controller, but this one is already used for the vddcpu_b regulator.

The fan was wrongly described as using the pwm_cd with the invalid "pwm-gpios"
property, both are wrong so remove the fan until we find an acceptable solution.

This fixes the following error:
pwm@1a000: 'pwm-gpios' does not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/pwm/pwm-amlogic.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 4b8db872bbf3..6a346cb86a53 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -44,13 +44,6 @@ emmc_pwrseq: emmc-pwrseq {
 		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
 	};
 
-	fan0: pwm-fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 120 170 220>;
-		pwms = <&pwm_cd 1 40000 0>;
-	};
-
 	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -374,13 +367,6 @@ &pwm_ab {
 	clock-names = "clkin0";
 };
 
-&pwm_cd {
-	status = "okay";
-	pinctrl-0 = <&pwm_d_x6_pins>;
-	pinctrl-names = "default";
-	pwm-gpios = <&gpio GPIOAO_10 GPIO_ACTIVE_HIGH>;
-};
-
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;

-- 
2.34.1


