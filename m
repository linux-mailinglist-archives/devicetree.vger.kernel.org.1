Return-Path: <devicetree+bounces-103171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF38A979C8B
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48379B241F7
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D117C14B946;
	Mon, 16 Sep 2024 08:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zAchnQiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0D71487F6
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726474136; cv=none; b=Jbb1lRWFvaQJm+5T/rp37HIiawdFaj67mQYhlrWl/SViNbhTYkzfiNF9XhCUiv0bAFNpQ+33SB2GqZE8sXo2oCM2C9k2LPa2FHhfgRAQ2o11GsBOOBE9OKceutBJUw9ClhYJcBdmdZGNhm+tPm59nXbP/0WRPpoJdab+3lNeHBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726474136; c=relaxed/simple;
	bh=2hqg9a24qnxMOqiNkyVFjC2llgWcfLxzW3WoUdSP61E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ASRk4JMqUK5Wy491vZJPhrqfi1k6qVDcKdC8vdNsgI4xWMaGeUT5bszbUcdncuCgpclVpAArjTDZRkt0woDIkqj4hTKT442h1SmsWeTwxr5RwrQjVGFl/uIhxTBf5HQZDc/C5B9xkIJAp1hF7/xjE6ZXQweaEUdUYYkTIduBrWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zAchnQiO; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42cb5b3c57eso40966355e9.2
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726474133; x=1727078933; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IDILcTbSjW1S8sYtyN9RK1TYgzDvLjqVuAYASzyv37Q=;
        b=zAchnQiOUpN6WgUjWnEra1YDhHAy2TC2wlt+CEK6m3ib/5+RRkBgoN+k2FB6z4ainN
         R29JlHyJxoTQ912JGXEf+7EeDUFqF8w1YAhLi+pNP4UunlKzaV99TDGiHwT/A1uuSoO6
         SsCwMrvOz0Qt5DQlp3BlfsQAwCZ5vHcsp47zSlmaFw8sQNUeFklMNBAnvAw2HJoLo+jZ
         zp3QkQh6nqvQSNS5ek6R+k3faE4AX8cPCzRkb0ak4t6YJebYxjQhOqjt5FH7IVBjauY7
         ZDZDyRxC61XFc8jFTrpMpfqL1z6lqjVvpwDE43XuzoslfDKSiMOskKrPLkok0NayrX9f
         SKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726474133; x=1727078933;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDILcTbSjW1S8sYtyN9RK1TYgzDvLjqVuAYASzyv37Q=;
        b=gjUL8OgQo2pKXRKbdMglYlLTJPjUFOKWd7iv0LFwpPlPu7lBBvedbCQPlpjIOZo7Dq
         j5XuBvAPixdWtiUyCRz6mABpQ3RBCeI2H2THMUGcvh+xChB4clk9Snv4K45AtaGe6y5j
         znIbekJKQZ4sLaw9a3M1paZXgs3t826+Cc6y6G8A/JAYjzee1BThQwfO3qt5Ub6+xvRw
         Q9C+jWeuQrckYoVTS4koLLGI3+3yvx6pvmWXIeUfiW4cQgfSU1XxG8v2vDW2LN0QlmDO
         DwDjQPDbSXcBlFlSCWVUnuG4MfqRAK7F+eMAEOzYcg2i9hips67ewDsgI3yJmnYP5YPy
         x5JA==
X-Gm-Message-State: AOJu0YxMdbMNAY5C3KLMBtWABl82ujDOuIMvmlBo+9XvyRFEoOXNm5Va
	e6Mi1Prtu/eMepVGhXAqAyltqMZPlIcGshDjvuvKwkIAsM2rilGd31UuPgSGu3M=
X-Google-Smtp-Source: AGHT+IEPIYQXmB8ojnBkXTb3OyMGy8C/tBkDJrdGsY7qAssIZ5711xeeYXZ2JVBUsV5W/kUZF9M1OQ==
X-Received: by 2002:a05:600c:4e8f:b0:42c:c28c:e477 with SMTP id 5b1f17b1804b1-42cdb586fa5mr106731305e9.23.1726474132980;
        Mon, 16 Sep 2024 01:08:52 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42da22b900esm69309465e9.1.2024.09.16.01.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:08:52 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Sep 2024 10:08:40 +0200
Subject: [PATCH v2 11/11] ARM: dts: amlogic: meson8b-ec100: add missing
 gpio-line-names entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-11-0b20ed4f0571@linaro.org>
References: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
In-Reply-To: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1016;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=2hqg9a24qnxMOqiNkyVFjC2llgWcfLxzW3WoUdSP61E=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm5+eI49JfJ23NZ1RKPG6LjbxxrXSuSETW52BkplTd
 760JLgWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZufniAAKCRB33NvayMhJ0b0eEA
 C+z+DgFFIOAH0DFoy3o29AX4GZiLG+CIFLdJDfjTGuAbxaMatrjtNJRxjQ8HlWUX4fefjgg/EmB7LC
 i5XwlZq7oym1BPaKVyarQvVxiPjHXQ6IdhmEbomXHFkANV213hbwOudHrzzkE0JbnJk+w8S5lnJ+KQ
 +zCjL1NL5yiDT2qSbJVnttXIScqsbriStV3/y2vVbpkZTv2VmSStB4PsDs2SEIl+CUX5wfHW4ytvAz
 csUA7wiMtjpWbsSYWv8NSyW7kZNlZaW0R9Daq+NThZvIvfcElc2TGfcVy0KN7aGTqUbWWEsTZpOHp5
 H2NItf5WDZmibNyx35aOANcEHxjDbMUXp7rORHj6S225a3Y34/3ck2wQJ+ZfSYfNugXoeZfYnUs7l/
 tuVwoEnqh0y/UCA6dvvB/jEv4IVq4dKjzmyrwxSseil1EP803mFYHOcuAr24kIYQ4eH+hz8GpPYfKY
 1niJuNKwcdeTXYbvg2kle6xtVgWl3Ok8TPRm8BNFlsp7/R6WyUyhrFdOfd5WZxXceC6SG6Xl6BAIMC
 2BJEje7Bnt2LElEO09pkzaylbb7++Wll3fyWntJZT0eTUKRTYQlnGqKS6huChC6VDqBpEP5JU8Ig9L
 JonouduyHZbpdWfuI+q3t5xs9FE4X888bkoh+LnGCzce6pqQomHB4BkkKibw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The EC100 gpio-line-names table is not the right size, add the missing
cell and fix:
meson8b-ec100.dtb: pinctrl@9880: bank@80b0:gpio-line-names: [...] is too short

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
index bf1ef07de6c1..18ea6592b7d7 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
@@ -431,7 +431,7 @@ &gpio {
 			  "NAND_CS1 (EMMC)", "NAND_CS2 iNAND_RS1 (EMMC)",
 			  "NAND_nR/B iNAND_CMD (EMMC)", "NAND_ALE (EMMC)",
 			  "NAND_CLE (EMMC)", "nRE_S1 NAND_nRE (EMMC)",
-			  "nWE_S1 NAND_nWE (EMMC)",  "", "", "SPI_CS",
+			  "nWE_S1 NAND_nWE (EMMC)",  "", "", "", "SPI_CS",
 			  /* Bank DIF */
 			  "RMII_RXD1", "RMII_RXD0", "RMII_CRS_DV",
 			  "RMII_50M_IN", "GPIODIF_4", "GPIODIF_5",

-- 
2.34.1


