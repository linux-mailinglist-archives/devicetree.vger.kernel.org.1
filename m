Return-Path: <devicetree+bounces-229787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F82BBFC39F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91ECE626352
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 13:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704A4348880;
	Wed, 22 Oct 2025 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gBhLgU/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E306F34886C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 13:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140073; cv=none; b=cOPUGf56mcXG1Lld1YgGO545ykm2T1a/6sXUbbjQQzd2ooT2tucWwAaS2JO+s/KK9pYOUMNjaH0i93ALUrbYo5K3BJREVlBC5dPg157E3hEvzBFolkvrYTWN9fGcSgkT4+b16M4dIdXSe1giCpIv3XWspif5Cw6ovpHNv2mVPsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140073; c=relaxed/simple;
	bh=t58k7nuf9fXppT7leLM5wPeiFjCn4yr98+SyB7CjCIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m6tlMI9jc/CJ195LDQFIXII90vgBZMUrfrd5Vvx4aiCaaGfjf1FvPORAvLCb3l2Jils/gR2nYQdj7FaCcB1LSBhh6qOO1CgBbL0hBRKcLVq+WfUy/mJLxW/24kuU9FJG0pncYLjJu33+hFPUaDSF6y9kG69+U+eJe8JZ9KBvbwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gBhLgU/o; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-427087ee59cso765804f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761140068; x=1761744868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rFXbojovxWliJMkNJdsF09HvmueXHOHMsMOPKrCfmZA=;
        b=gBhLgU/ojivpduN2gcdB3lUg9+9Jw7ht01gSzRJMbpFRrvZ+TsIcl3tzsrQ06XaBYG
         b/LGE6I5n81903wXqo+Oj8YUcX9v2nTq2N3tkW6GZQpPck8w/Pum/0u/RAJu4722PNgX
         OOsuBrDMVTccEUBqEflyQojt028JOadAoosJXDH/K6f8MsDlY8PWnKXQXFfQPmBNAMEL
         aVvi//PoQF0unp1IUDv2llfwZ/pM3QWUMpzFeeS50lXHlD5BtgE+jCq96b1pGGBPcasy
         OZQkOTuqoW7zZiyVw3/KiA/3NKHozYEDWHNd8RRJKErg7Ik0/uuPM66ay3u9bxalaaxV
         5fmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761140068; x=1761744868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFXbojovxWliJMkNJdsF09HvmueXHOHMsMOPKrCfmZA=;
        b=s34M+qtAwmalw1B8CvcGjsRUin765Uo9hmdAOH5BXnqsoFdvWyzvI7cTSOxmE/0+ZP
         sQWNvdtuk5+lHBlKC2tHsEqgnorfPmqy7UtL3kc/87JbZVHbuseBar7t05RbL4yc8jFS
         IKcy6cBRPR7yHkPA+UQ4wGhVZkWCz4R2au4OKTJBcTWnOEO6P31GzJX2VJHHZjf5mmy9
         lazXTIU3L8QJANWPUJ55nOncpqIQRCzz2O77GEXd2eP0PZBSsZtN5k/3rU8utNQS6C+u
         SBvrzpqlFAkmELJhoJ4vUPRB3qZdn/TGn6ucqCsWSOyaa2REs8xizjCQW1WYGu1f1qiD
         6hFw==
X-Forwarded-Encrypted: i=1; AJvYcCXbk3Sb2OnHaECDqX04MAszLGSp2Tv8sFPKG2kg1AEaCTi71kNsgzbPKXOxY5Nz6+r8uZtE308BSjWg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+IkSIJXBju9LOsTzpiFJw1FzY20PQQsth9LNMlg8Q1HZpxxtx
	Uh15w6ZCDFvPON11MNevSanRvFFkL4CTDthBnHZZNhYp9qrEn+cvU9ZERVPrdqnPg8U=
X-Gm-Gg: ASbGncuh62PaghSQ6qDj+mk/kQFI1BSviZwyqeQz2mmGEHllT4t9gSZpT3DmeiQeogZ
	DbwokkWBOLh5VmKPO2CyvNWDYhpe1R1IhUhUVdFWo2qOepTC6JmJbI/CVu+Ufebn70br93N1OR0
	UqYnDlDktBFoUYaD72GTAyCAEfL1BGhmNXXeolNhunQUUCP0lVecMYUPKKd/B3bhH5fk7K+lPTV
	sP9ZXYbWRUFsM2uENBKhzu8luEM5IfGrkZ9c5k2xMIUprIY2CkkVJ8gEvAbbvU1HgAJ9rLbjNhC
	JssdVKJTNlRt9SrZ8tI9kVqx1tAkK5fJ2YjwaHUKk55cqxJ38SeziwJiWvTgHd/deN06tyWFZNi
	oUVoiz/45SJQ822WVkXM3xaBL1cD5+RgcpLUODKhLcIMjQ8tpIn8krZWoblle3qd5tJWDAUinGH
	JmKHlwSc5sMybHs3Qtmhqzdg==
X-Google-Smtp-Source: AGHT+IEWcnZIaP2wLBKfRqry0HILeS5KfSEJcKKwt34JV4PPLBebPsmgOhwbhA8EkzXLqs8P73MPpA==
X-Received: by 2002:a5d:55d1:0:b0:426:fff3:5d0c with SMTP id ffacd0b85a97d-4284e531afamr2257012f8f.1.1761140068108;
        Wed, 22 Oct 2025 06:34:28 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42855c2fb92sm2981201f8f.46.2025.10.22.06.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 06:34:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
	Punit Agrawal <punit1.agrawal@toshiba.co.jp>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: pinctrl: toshiba,visconti: Fix number of items in groups
Date: Wed, 22 Oct 2025 15:34:26 +0200
Message-ID: <20251022133425.61988-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "groups" property can hold multiple entries (e.g.
toshiba/tmpv7708-rm-mbrc.dts file), so allow that by dropping incorrect
type (pinmux-node.yaml schema already defines that as string-array) and
adding constraints for items.  This fixes dtbs_check warnings like:

  toshiba/tmpv7708-rm-mbrc.dtb: pinctrl@24190000 (toshiba,tmpv7708-pinctrl):
    pwm-pins:groups: ['pwm0_gpio16_grp', 'pwm1_gpio17_grp', 'pwm2_gpio18_grp', 'pwm3_gpio19_grp'] is too long

Fixes: 1825c1fe0057 ("pinctrl: Add DT bindings for Toshiba Visconti TMPV7700 SoC")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../pinctrl/toshiba,visconti-pinctrl.yaml     | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
index 19d47fd414bc..ce04d2eadec9 100644
--- a/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/toshiba,visconti-pinctrl.yaml
@@ -50,18 +50,20 @@ patternProperties:
       groups:
         description:
           Name of the pin group to use for the functions.
-        $ref: /schemas/types.yaml#/definitions/string
-        enum: [i2c0_grp, i2c1_grp, i2c2_grp, i2c3_grp, i2c4_grp,
-               i2c5_grp, i2c6_grp, i2c7_grp, i2c8_grp,
-               spi0_grp, spi0_cs0_grp, spi0_cs1_grp, spi0_cs2_grp,
-               spi1_grp, spi2_grp, spi3_grp, spi4_grp, spi5_grp, spi6_grp,
-               uart0_grp, uart1_grp, uart2_grp, uart3_grp,
-               pwm0_gpio4_grp, pwm0_gpio8_grp, pwm0_gpio12_grp,
-               pwm0_gpio16_grp, pwm1_gpio5_grp, pwm1_gpio9_grp,
-               pwm1_gpio13_grp, pwm1_gpio17_grp, pwm2_gpio6_grp,
-               pwm2_gpio10_grp, pwm2_gpio14_grp, pwm2_gpio18_grp,
-               pwm3_gpio7_grp, pwm3_gpio11_grp, pwm3_gpio15_grp,
-               pwm3_gpio19_grp, pcmif_out_grp, pcmif_in_grp]
+        items:
+          enum: [i2c0_grp, i2c1_grp, i2c2_grp, i2c3_grp, i2c4_grp,
+                 i2c5_grp, i2c6_grp, i2c7_grp, i2c8_grp,
+                 spi0_grp, spi0_cs0_grp, spi0_cs1_grp, spi0_cs2_grp,
+                 spi1_grp, spi2_grp, spi3_grp, spi4_grp, spi5_grp, spi6_grp,
+                 uart0_grp, uart1_grp, uart2_grp, uart3_grp,
+                 pwm0_gpio4_grp, pwm0_gpio8_grp, pwm0_gpio12_grp,
+                 pwm0_gpio16_grp, pwm1_gpio5_grp, pwm1_gpio9_grp,
+                 pwm1_gpio13_grp, pwm1_gpio17_grp, pwm2_gpio6_grp,
+                 pwm2_gpio10_grp, pwm2_gpio14_grp, pwm2_gpio18_grp,
+                 pwm3_gpio7_grp, pwm3_gpio11_grp, pwm3_gpio15_grp,
+                 pwm3_gpio19_grp, pcmif_out_grp, pcmif_in_grp]
+        minItems: 1
+        maxItems: 8
 
       drive-strength:
         enum: [2, 4, 6, 8, 16, 24, 32]
-- 
2.48.1


