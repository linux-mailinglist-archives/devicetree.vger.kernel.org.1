Return-Path: <devicetree+bounces-100260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6645C96CFF0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16E6D285E9F
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49DD14D2B3;
	Thu,  5 Sep 2024 07:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eg0GRRrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13415179647
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 07:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725519737; cv=none; b=iS46l6/wDqkDhxgHkUX7WqrlFWMQ+sUn8dLqlBjbN7srqClBz4eWkO6EPhQq1yeADiHdCzrpudbWQftnpvIaZVgpMAtU+C26dx/478XL7ChTz1j4aw5fAQQwgIPVuxtzUCadFLFSTt3wqzFGq1npiYX2REjo9Mn9COY/XlWp99Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725519737; c=relaxed/simple;
	bh=cuhq/YZ1/hNdVdBIc06m/ERIsG8Bs5oT0bmbvOyYDZ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tB4Ytzt3fZ7uM/xrxEQwp5f+mviHh5YvaiNrQmiocUsd0R3dqOvvibMq3jtXbw17ecNeDgfvK0njdSobvvL821/QXdZqFwI3knspHAe3uWjody8Db3oUjJxjNMApuuWaMkFQf4nbgsWFlSjtOmjDg3kl1rmIRng6N8wp2rYoILE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eg0GRRrd; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-374ba74e9b6so285853f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 00:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725519734; x=1726124534; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iuGQxzeNLR7CXVElCDNlPl/GjShI5gnrrfDitQYmS9k=;
        b=eg0GRRrdpbPDx326hV+2zoALuhzfQ/+bL8/05E7j9mjwpbNgbiGi1oM7DeB20DIt8r
         kx+DVTQ5ZZ0d7ht8eu6b/eFcU4/yFr/QiWq/z3d+Px+n/m78hNxsHHFD7KIfWJ9uZ9TB
         LqxZlfyMJ2Y6rSHiiHqXAq2aukhk45Fj+5WjkpaUj6k4wG1MbFp1vAYsicWKFX86VUJY
         9ZyxMAXuVZeoyyXOhsAaHUsH87910yhhzhgEPkKmnOEKnlWqccMT8Fu33B/LeXdYwDgt
         ZDo02IovgNUWVKYVATnT8S6gya7OkcGL6QquCVjiUgblmJvCeWL+1HI3cFwn5A+SQS2X
         jMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725519734; x=1726124534;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iuGQxzeNLR7CXVElCDNlPl/GjShI5gnrrfDitQYmS9k=;
        b=TnJCz3JsjOvlb4Cq8XCke3V9xhF2m5wxF1LPBv6AmIF76o5w4tXGAZFHz4YuAkJtQw
         F3JfEG2dZQW2FbSTRz5dfgyhYCGtAnZCqi8YJJH9IewGg1oXp9e/cx2KEAOMtFexWxDk
         /l5nY0mVhheGsiZ0HniANsl5xTyu+BJtF0oD3qD3QZ+2AZ8H3nLU2z5jwWhBpZjfIuLN
         Z5OxkymOlBKBvrnYHP1i1KYoIQy6zhqYAPned9d1qHioDolwENMFORRfKQoLHZpLyhW9
         Ko089tMsQH1A1Jxad2/vmym2Ckan+R6wvJHP/l41+YjbRxMPdU3tBpYox2mlTqMvP0YO
         ggUA==
X-Gm-Message-State: AOJu0Yyn3x2tsMJGlfysN5pmmCPmMhK7UPBPpVIK+F99b+NvXEMXgyJq
	LxqOv3zWY5LW/mVcji/UsTD3hpv1ADsUaqzyBTQ8/LJXvHr5TuuaOZ6zQeb9YWU=
X-Google-Smtp-Source: AGHT+IF/zqAZKn/3kHKjMNy5ew72exLnFeqVMed6p0p+agFC9EzZMcJ+j2cDCQ85W3wW9QHpZBMjLg==
X-Received: by 2002:a5d:5351:0:b0:374:ba2b:4d1c with SMTP id ffacd0b85a97d-374ba2b4ea9mr13950066f8f.31.1725519733737;
        Thu, 05 Sep 2024 00:02:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba6396516sm263936935e9.4.2024.09.05.00.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 00:02:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 05 Sep 2024 09:02:10 +0200
Subject: [PATCH v2] arm64: dts: amlogic: gxlx-s905l-p271: drop saradc gxlx
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-topic-amlogic-upstream-gxlx-drop-iio-compat-v2-1-7a690eb95bc2@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHFX2WYC/52NQQ6DIBBFr9Kw7jSA2mhXvUfjggDiJOqQgRob4
 91LPUJXP+8v3ttF8ow+icdlF+xXTEhLAX29CDuaJXhAV1hoqWvZyRoyRbRg5olC2XdMmb2ZIWz
 TBo4pAiKBpTmaDLq1jVTSD3VViWKM7AfcztqrLzxiysSfM76q3/tfZ1WgoO2Mu1fGuE41zwkXw
 3QjDqI/juMLegIsOecAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=cuhq/YZ1/hNdVdBIc06m/ERIsG8Bs5oT0bmbvOyYDZ0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm2Vd0gxIfQ9jEaX4HZDtiq2U11EgkGIuVEoRDa2iS
 tPU4KjWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZtlXdAAKCRB33NvayMhJ0RzJD/
 4s5u9cbX4fYmrOsHrwV9udPQYLt2sO7rcgF2bvwzNcBO/7mFVCEecyAJ6CzLMARFCEhXcXtzG1hs+W
 2d57PKyqyAwpXjg5wx0yZL66QJby2HrU9gjgOsKUwrfEadWl5nfN7qH+gbEmca/AJZ75auh2XxFClD
 PsIGqW7iRSZJ/Ty6NDlDttao7X3blIlOV8oiwuP17pl+Qm3S6E4RD3RAJktm6dy9AU75CxUA9IiiPU
 r596npmo+2Qkw8EOw48k1EUAJbCcNSbHACiVbjYm1kxAmXglFURJOLL2ztCpYcdl8RwSX6ONibq/Vo
 K0Tx8Kn2MtlFN9UlMfor2Fgqzfwa3YQv1X89tF1Kc+TSMyOKBleWmhkoIwIfAL3vJRceb7MtNjNOpG
 e8czGe6A18eNLyYhlp4q7ZHWNuU6VxANvM25FI2F6zppquWU9U65gB6xniJfB3QTQ/EwRM12mwO2J5
 4pMZ6yiugMR+UcbaCKvV3ccuDGfD+eN9qXP4IFbd0rqq4gPqpS66K/pfCCwLrs4VdAxYeDR8nm4j5M
 LGb8cIDxAxKAUKliuSHtKp/nl9M17Et6tr7u05bxZJIZtJ1lunOKK8S/52TjVrVVqOPKAIEwejtDuC
 4Wbkm0iMYFCjidGvFmfiH4nakWetDmtNSwTQXvrxzH1YV/sGu0wn1X47x65A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Drop the undocumented amlogic,meson-gxlx-saradc compatible but dropping the compatible
override, and fix the following DTBs check:
/soc/bus@c1100000/adc@8680: failed to match any schema with compatible: ['amlogic,meson-gxlx-saradc', 'amlogic,meson-saradc']

Fixes: f6386b5afa81 ("arm64: dts: meson: add GXLX/S905L/p271 support")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Drop the compatible override instead of dropping only the gxlx compatible, thx martin!
- Link to v1: https://lore.kernel.org/r/20240904-topic-amlogic-upstream-gxlx-drop-iio-compat-v1-1-89ad63aad915@linaro.org
---
 arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
index 1221f4545130..942df754a0ed 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxlx-s905l-p271.dts
@@ -38,10 +38,6 @@ mali: gpu@c0000 {
 	};
 };
 
-&saradc {
-	compatible = "amlogic,meson-gxlx-saradc", "amlogic,meson-saradc";
-};
-
 &usb {
 	dr_mode = "host";
 };

---
base-commit: 6804f0edbe7747774e6ae60f20cec4ee3ad7c187
change-id: 20240904-topic-amlogic-upstream-gxlx-drop-iio-compat-28c5010ef433

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


