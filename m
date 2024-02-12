Return-Path: <devicetree+bounces-40597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9B5850EEB
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50A771C2166B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51193290A;
	Mon, 12 Feb 2024 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hHVahMUL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719C610A0E
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707726874; cv=none; b=g07QcuMhjx3Js+KemMXs39Auj/+jlNOYZl/AK/ufZNYmsy6SZ4+Rg32EQCNDx6RbjvcapGdzzckyP7pHYBo3ZqoIQFh/bAZFHjc9LPIjD/+Px8wHwMj1XaF9bOFVEXbobJy+kgh2lm7GxtbV7RQaO/3JOHso+yMmN3WwtOmV2Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707726874; c=relaxed/simple;
	bh=HlXn3h+kaQ0ElD0RQ8Ha9CS2kgD8dt6z4YNhjTiljZA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ALwGOqxZL20z0SJkeGO77Ic56Jsr2d3WWNbHdQ3vAAQYkeLrZvEc8BNkuyWyZg+4LGWjMcySBoVnFno1naAPK5TQEJOX5YuJw0nEs322fiAorFP6eGaDNcEYKsdV6pqWVnejffoZDpcYKwXldcvBr3UEZkg5FqNcBt8+Ag31PPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hHVahMUL; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51032058f17so3415155e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 00:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707726870; x=1708331670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gv5wKhvz2IkMiVTY6JBsKVbcSvEbLs7uJIPS1y/GGHA=;
        b=hHVahMUL7Ie+bKU+dKwYKKqREmmxVR5DYml1yKsOevkq7Fyc1rggzJIg5dGjU8aTRT
         zcamReHQwBxIt1g17pjoqcaZKvVw0C/msaA6RqZ+7S/0pn5vekU2qP3H4kWvnn057oQE
         MLI8aAGZcfH8NZDFNYUGbtJsNuDw7c4hNuUWftJa2gx7LrcUosN/aZpGf8/RHwh/gknv
         Rc8jYSylKOeChQkViHIsSLaP3UFAuI6i/5U/SHVEOJ73lxcd+gR0l9vL+HqFUDKEZAhg
         3bCUfxacZC417VUSrXsSvhzerTzuyMCCEKs124Elbwyk0Yez2Gek7NkFbaQZtPkN2JIE
         NBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707726870; x=1708331670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gv5wKhvz2IkMiVTY6JBsKVbcSvEbLs7uJIPS1y/GGHA=;
        b=uqaxDKPEuF2kN/ZFxm1+m3luW40RB8Mxjqz3XKZA6pedybt+cnX8xC0/OmGePTpdpV
         oyeVP+iQ0hyO3UEX4+UBtMxbKHffT1TLzgLVaBal+Vd+lJ9k2x81mT1Jhy6rkNq05EcR
         IU2AvCBnVdi97IXW3N1WdazU2xAuTxNNd3Dfq8RPjnEG2JEjhZnwA4sDrpr7jEbQ295g
         zUXTrRaT2h1z0O5VPZH4L95dwe6Puk1KR23iF9Dw7rq5i6dlXmqfX/FC+RKUT7ikszbD
         fpXCbWAerdC3HqADY4p0zEyYDr1xuourh8Xe6FrmWaxaYZGPejiOn2LPOeZatDPxCwG2
         WOZg==
X-Gm-Message-State: AOJu0Yyc1bxwxULBrvhJbGEvT+BCTAx2olm4QgG9PNvNDf2+1q41Sj3c
	YCdQdZAtEBKH8MW5VL8CLG2eAY6Z2+g1v4Z6c7JQl0uBLEJ3Od+28bEXhQXmARg=
X-Google-Smtp-Source: AGHT+IGxLy+g+zXrEzb6fK7p+nnX2U1Ebgap6clpVk38ct0XBVElw0mqtAvQW8HzVwU5SlBZAAnqfw==
X-Received: by 2002:a05:6512:ac3:b0:511:622a:97bc with SMTP id n3-20020a0565120ac300b00511622a97bcmr4332576lfu.18.1707726869900;
        Mon, 12 Feb 2024 00:34:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX2/OOxwQkBfCOqrL69OJ2Og2SLXQbIWxYUftBYaEdpQwcR9KvBj46EaZ/X0p/ECSV6BbcYFfOvCibaxWiaIH8O+40/0TBOGdb42Ra6AqIcOSAVcCwIRGv573ZeMpqVLuvr4YJKNtDlP1j41LiGSiUDlEV69bRyqOTMbMYfZeoUo/MS13JUVmk16rtLWu02oj0un0+f1SKLSEAaBfb9PkljhnaKNk1CPrurjGfcdB+GOhPzgd8rYFcgPH+jHSpRy16k6PrmGXja33hzMUoD53Nor5PTjdU4ofSJDeXN6g8VETb2iRyUdxHLWklpu51CDB2n9fe6R729XyFpfNQzuu558tQ+sozROWCXAuzkCRW8gjrffGPFBWPP01J3r+6Y4uah0YAmR41ZtopZObs=
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id y12-20020a056000108c00b0033b40a3f92asm6111024wrw.25.2024.02.12.00.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 00:34:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin van der Gracht <robin@protonic.nl>,
	Paul Burton <paulburton@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH 1/3] dt-bindings: auxdisplay: hit,hd44780: drop redundant GPIO node
Date: Mon, 12 Feb 2024 09:34:24 +0100
Message-Id: <20240212083426.26757-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Examples of other nodes, like GPIO controller, are redundant and not
really needed in device bindings.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/auxdisplay/hit,hd44780.yaml    | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml b/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
index 406a922a714e..73d07f2cb303 100644
--- a/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
@@ -99,17 +99,7 @@ examples:
     };
   - |
     #include <dt-bindings/gpio/gpio.h>
-    i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
 
-            pcf8574: pcf8574@27 {
-                    compatible = "nxp,pcf8574";
-                    reg = <0x27>;
-                    gpio-controller;
-                    #gpio-cells = <2>;
-            };
-    };
     hd44780 {
             compatible = "hit,hd44780";
             display-height-chars = <2>;
-- 
2.34.1


