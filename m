Return-Path: <devicetree+bounces-56458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 001C88995CB
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF158286208
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F06D2D059;
	Fri,  5 Apr 2024 06:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xxKhsRUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C73722F0C
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299598; cv=none; b=pfeqGOjnif6kgtE+uuMtLF9HLcVW31ESFEGXG8Ji/5JfmduSiAGnk99P+8BXdNufDlIkujWSSvAt2pBfTGuzmLTsv0WMfmg65CVSvDUSvo2p1YxNLNsiv2iCHH3/okstnd1FJ8FNI1HtX9Vat1DoyB0eIWo1fd5t5k/J6od3Jh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299598; c=relaxed/simple;
	bh=waqetObMvnNvavo4PJvhq0indN1pJDU4Yd8ifTWsybE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bjKuWmMTg+Gs02kn8oxV4a2PpNobDLtNIn4KaoLGxniScY99odMwPTYO2yTBd+wSSeJ94kjIabYDriyj3TAGmYreHLPrfxEpOMrVTj0bI/aJwB+q7rcT1BbBo9Dp+7dAcAYSPgPpOnuUfzspAK5lS1VjfvQq+0q9E3ZSZWA5b8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xxKhsRUk; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56e2393b073so1799816a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712299595; x=1712904395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OsNd1Zvbhvpy0Prr8UcMcF9SUo+KwwufXMf2s1i4ho=;
        b=xxKhsRUkoQv4gFVbar8u20HXVSmNBKsuHItWRRyAyxzaSoOdSw/aURl+0yqJ8ztqXi
         cogvndTkfuq1LdgG/DUPrCC6zOv7kHz5M+G5ulQ7xKCNuMC7bpub2rzJu8gBSIKGX4OW
         5qtJampXVtTYBZz5axc90Hyj7f65Z4uGokvS07e0ofQsuXwGjiPasSgLeEXYTapVIG2x
         SOE4cdKMQjW2xEpsy4uHw3Uz9kQHf9xw+WWBclIpJubQHoK99ULHOXDnCYloqRsNzwII
         q4oBbS3icW2UQWQP1uRzA86dab7zBdndrav+Vy/ewy+jEyXA4BNzDMG19qWWzKr6yaBM
         RJ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299595; x=1712904395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3OsNd1Zvbhvpy0Prr8UcMcF9SUo+KwwufXMf2s1i4ho=;
        b=gE+x9KD0aibidpv49lg9S8i1stNqKURTgY5WCSi4VSmEAvuQkZA/9OVyio39VSj0Zb
         3kgmBUHkJYHklXW+Wsu1cMZu9TRfuqbe7M7R+eso02sT9CatF/olnPGB9WkOMXENEpsv
         QHd++aNNZGfOiPuPqS47fK4i8Jiqwp32kmBeAQKg41RZUW++EhIW99Y64UwnslS3dgXn
         NilKVcq0j5XK+xa4RIaS7pjgSR87g0gUGK4KT7pxlsRHgt6wiKkgdKu/je7psLsRb9mw
         Uv81v4HWOw0Bj9Fa67KdHQEyR+Px9MRgxjFu47ATi0XBI+Vcli18EDa6vN3TFQmWfwG7
         i5zg==
X-Forwarded-Encrypted: i=1; AJvYcCUzTSyyYKjhWqlwEVcE19SeZHKM9TdX8HdZ/WRkb5qUFK0o+Q3EzPqF0/1SKACQMl0AOQVhox4gVQKvX9tH/KIWwLcTekZF9nsUAw==
X-Gm-Message-State: AOJu0YzYsSFC8fpEVOEdEe7wHc/258UXYO2iqqga1NqwsEnT0oSYZXmg
	p8OjPRDgjO8MftpwUtwxUioYJlqaKyPqm3lwkpRqxtll9QNs1fDt+In4Nsi1/Vo=
X-Google-Smtp-Source: AGHT+IGcSW6YjVx2WoyiEZV2vm8/F8YAbla7uK0FkCvrxBbSwJQKhh3paZslTk5YzeC3tYo10mtLDw==
X-Received: by 2002:a05:6402:1c07:b0:56e:2d0a:b9f6 with SMTP id ck7-20020a0564021c0700b0056e2d0ab9f6mr891890edb.14.1712299595023;
        Thu, 04 Apr 2024 23:46:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id en16-20020a056402529000b0056e310e6655sm278888edb.68.2024.04.04.23.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 23:46:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 5/5] ARM: dts: aspeed: drop unused ref_voltage ADC property
Date: Fri,  5 Apr 2024 08:46:24 +0200
Message-Id: <20240405064624.18997-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
References: <20240405064624.18997-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Aspeed ADC "ref_voltage" property is neither documented nor used.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts   | 1 -
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts | 2 --
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts  | 2 --
 3 files changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
index 7b540880cef9..3c8925034a8c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
@@ -813,7 +813,6 @@ bmc_ast2600_cpu: temperature-sensor@35 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
index 9a6757dd203f..998598c15fd0 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
@@ -211,7 +211,6 @@ &i2c13 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
 			&pinctrl_adc2_default &pinctrl_adc3_default
@@ -220,7 +219,6 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc8_default &pinctrl_adc10_default
 			&pinctrl_adc11_default &pinctrl_adc12_default
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index 1bd555a6c3ba..b4d003cbae8b 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -596,7 +596,6 @@ i2c-mux@72 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
 			&pinctrl_adc2_default &pinctrl_adc3_default
@@ -605,7 +604,6 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc8_default &pinctrl_adc9_default>;
 };
-- 
2.34.1


