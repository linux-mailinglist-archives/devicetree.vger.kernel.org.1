Return-Path: <devicetree+bounces-146034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D12A330EF
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 21:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF31E3A892F
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 20:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA90C20103A;
	Wed, 12 Feb 2025 20:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nqgXU07x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E898C201025
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392985; cv=none; b=hpPhz6fpvbronakiKrrFyknjHfST6nVo44srBJAdOKAxvl1ZbtFP+LNYUuyCvc+ldaCfwRop1w6wPoaDGeX0pzKLfAzlMD57TsAgYKnu4qchhDLbrc3Gi2s5AoGY7mn3P3niKftwNhXGw7xbg1cElUBx2l2f48kn/YilBv0ZRVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392985; c=relaxed/simple;
	bh=XgqP6D3slvW2XhE3IfH2Ry6mr+8u/wmiLlSz/P2+k1A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nXMgsSDh1yNnY2kXyPTnOC19XFzAf4udOA4WpwY0mipy6fqB6il6bij2GHNxEKRX1ms6/HV/tVz1R1J1BNWmxTOJ84ilguDseyFBpvOIyKjgrtHQXaPQ4bb8IRwCQ4oOQKJC/Bmo78cuC3IWzXZr8BDOqnUzIUbCMScv0o5Cy9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nqgXU07x; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f20fc478dso19169f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739392982; x=1739997782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5PEaEtl2laaTtSXlR7EepykbACdsERKpfJRZ5RMDW/s=;
        b=nqgXU07xMtgs8hRtlcjtowFRHM2x2eib96XXIygzdzwJGjykGi2psXY1Xe7DNPJQ9M
         qq54lacXPxOCno0/m9A92dbhdTllcdHm6ZB2Pzu7v9aQiyOPpXhZW8YJjWusR1C99cSg
         4xlsfeXp0Q2NxU0tvGABKs3vDmw3BL9zfW4Dfpw/RqYgw6Hf7jlNV4WeEjfnoh+lkhV4
         S8i3oKg5U6j665N7v06KeZH+4M+f3ufAqFzxgU12NBz02FnBHnQQHcITcDUlQBXIzBvY
         +BATtrpiUsALI7/ChtXxPoGVsw7QFM8mobPAHyO5XOM+Bk+Vsglv/JFoMKj5hWfzgnt5
         GDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739392982; x=1739997782;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5PEaEtl2laaTtSXlR7EepykbACdsERKpfJRZ5RMDW/s=;
        b=dGKH7VHrugqnD7ZMtng1WcLV5VXZ77nrSvNPLBtl3cyciDHoyNJXnmf4Q43srumoCI
         tP0kFlmURvTmXQkekOvW2xCj6vwNvK7GnFzo/lxHQV27Otrqila8hWpYvyJFl2HxbOUn
         Z3D0Rus8qaoTlK1ecUSM1BuC1NNuuZETmbjRBQ4DhJXAVQJj8nYC/SMkGPZrsifK0Jer
         ZQEByhZexw8e+XtISITsyjwZKVRhSKQdijAxVmrh4ZH3SEIZlKCeNHwHq7qOe6beZMio
         4P3S1bksqEUM95SwBQ87c4sAElHWMT0diuTPwEZFV1NHUldvSJq7XLG6qLpVxBpwvgrq
         qtKg==
X-Forwarded-Encrypted: i=1; AJvYcCXxxFX8VIBifTcDxBfLEqliNzKEemtL2s4SBvlNMtIBnGA4d1cl8KGmvE7Wn+h3IHFnrTdAlZzh08OL@vger.kernel.org
X-Gm-Message-State: AOJu0YxPEtypMPti5rEMYveKagA5yBZnEZ15sbFJg7pYz5lH4bxp/PTg
	f/VmZG0+Qc6O15uHlEyiCy6z+E1For9/sqbE2yLmNBWPJVBme2hHfRDu70iDtm8=
X-Gm-Gg: ASbGncu70ST9h9+OQEWcI/UdZhO9vg25q9qqGGSbbyXXEjE76ynnllbV32BHGK0kpCu
	ArcxKGFa6qnzFtx6f6zrYvPYTG5L6lAMrgDTZkLZeOawPPaCqq6pmVCnWHRZtWUWSvrcJeOjwvR
	IfxacQ2nPDSyaczG/H7FVX2mZDd//rDX+GL8hGb8uCo1B93ud6RaY3Ubt1Z9pmSW6Eyl/AgMU8D
	yq9tV4ToDR6Nt6Zlxz9myWjpHRnQTk4AN91RKM1nH5HglV1U7MW/zNGKzw8iUm7S59hpPGIHBmL
	jcqpsGkQ+4zTRk+vDRCanrq+i7pY2w==
X-Google-Smtp-Source: AGHT+IFFs77Lk2FDJk54yPret+BrCBmHkbbfJgHImDbky3pssPs28syG1zh4mSnU8lo0JUZp/V9gVw==
X-Received: by 2002:a5d:648a:0:b0:38f:2113:fb66 with SMTP id ffacd0b85a97d-38f21144679mr1179580f8f.9.1739392982175;
        Wed, 12 Feb 2025 12:43:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcfd7d153sm14237664f8f.84.2025.02.12.12.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:43:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] ARM: dts: marvell: armada: Align GPIO hog name with bindings
Date: Wed, 12 Feb 2025 21:42:58 +0100
Message-ID: <20250212204258.57514-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warnings like:

  armada-385-clearfog-gtr-s4.dtb: wifi-disable: $nodename:0: 'wifi-disable' does not match '^.+-hog(-[0-9]+)?$'

Reviewed-by: Andrew Lunn <andrew@lunn.ch
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add forgotten Rb tag.
---
 arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi | 8 ++++----
 arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
index 8208c6a9627a..7aa71a9aa1bb 100644
--- a/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-385-clearfog-gtr.dtsi
@@ -453,7 +453,7 @@ &gpio0 {
 	pinctrl-0 = <&cf_gtr_fan_pwm &cf_gtr_wifi_disable_pins>;
 	pinctrl-names = "default";
 
-	wifi-disable {
+	wifi-disable-hog {
 		gpio-hog;
 		gpios = <30 GPIO_ACTIVE_LOW>, <31 GPIO_ACTIVE_LOW>;
 		output-low;
@@ -465,7 +465,7 @@ &gpio1 {
 	pinctrl-0 = <&cf_gtr_isolation_pins &cf_gtr_poe_reset_pins &cf_gtr_lte_disable_pins>;
 	pinctrl-names = "default";
 
-	lte-disable {
+	lte-disable-hog {
 		gpio-hog;
 		gpios = <2 GPIO_ACTIVE_LOW>;
 		output-low;
@@ -476,14 +476,14 @@ lte-disable {
 	 * This signal, when asserted, isolates Armada 38x sample at reset pins
 	 * from control of external devices. Should be de-asserted after reset.
 	 */
-	sar-isolation {
+	sar-isolation-hog {
 		gpio-hog;
 		gpios = <15 GPIO_ACTIVE_LOW>;
 		output-low;
 		line-name = "sar-isolation";
 	};
 
-	poe-reset {
+	poe-reset-hog {
 		gpio-hog;
 		gpios = <16 GPIO_ACTIVE_LOW>;
 		output-low;
diff --git a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
index f7daa3bc707e..cf32ba9b4e8e 100644
--- a/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-clearfog-base.dts
@@ -34,7 +34,7 @@ &eth1 {
 };
 
 &gpio0 {
-	phy1_reset {
+	phy1-reset-hog {
 		gpio-hog;
 		gpios = <19 GPIO_ACTIVE_LOW>;
 		output-low;
-- 
2.43.0


