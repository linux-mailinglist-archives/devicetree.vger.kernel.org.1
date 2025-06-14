Return-Path: <devicetree+bounces-185879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E78AD9BA8
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 11:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DC403BB952
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 09:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97B0298CC7;
	Sat, 14 Jun 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U1+j0zPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C91F1301
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 09:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749892519; cv=none; b=n4O8ryUMwF/QmPI9ojr2Sk9AQktfxlP+jwld4ZdtVT67Gd5OGXcERaai+7FQYtBfX7/tJMj60hkrY2AeDVFOxWSltkjtOVg0gS7bQbs1rmm8bjthVo2xA1oosnKTWfonzP8Wavvjk+UCBPtW1UApaIqT/te6WC6IilkuN7uFJdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749892519; c=relaxed/simple;
	bh=O+kW0dEk97iE7ihlWeRUku6iBnu/KXC8Ng3kX0sCUJo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dLyiL7f6o75JQ9sP96JCu3AA5ERpr9kuoy6Dspw1xZq1sNX0WFCzR0wTFoh0EWN6x0YRez9P+sOnuJIBta8CY1Ts7xGplCB/WtOB3+CmRlBYY/mDRiSYKGcDmGuz7D07/q8mZn6XDf08oYckb74mwkKqJKhQH/qNIwrWlXH3jkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U1+j0zPI; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-748582445cfso1881068b3a.2
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 02:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749892517; x=1750497317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xAvD+1q8T/M24rLYq6SsWUhjFGHiNFVDMXIDxaXAbBM=;
        b=U1+j0zPIqa2W68t4Zg2P1y0XWCjozo+lt2EaV0yTv8SWLXKk+jPA4RbKC/hNapVdRp
         wJFP0c2Qk1vWHmshsosAmomF9dgz/730MKB5yOhSLaV6igBG5dsciPahMT3Vtmn9qiY9
         S25YIZ8FlpYteDOPgx8org8LhOiLv6aLEY30dmwoSglYYL/R05ZEB0Pn00LzY8V7eWNN
         p9lCeegG7CfWbUVzvbCcrEVl6/yQsLO0pDnTBLC+Odk02ASx5n8ScvxihJ+7UHMhT4WG
         FCl4+yaX0VFuSraxtVBCxRcZP9ff6GweNGRHzBuD+MgiGLlT7Zg2ZizIjHtU+9di5yIL
         Eqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749892517; x=1750497317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xAvD+1q8T/M24rLYq6SsWUhjFGHiNFVDMXIDxaXAbBM=;
        b=vUZiqPfa+Y6nVpP3n+ObNIlqzQkIYhyh3lFoe4Ifmp8dq2NfiYe1tkP26brACdF7Ir
         QQt409joX+rbDdGmI+Cw061HwrNOmwmP/T/ieMc1QgMS42R6NCTn/XGHx8wwWnL/Wd0d
         LBAWcup+I7c5yLKlyLl7Q3JkYXi/WCaF98DK/LMi2M5WQsA4RNTxKYGSIZsipYVh2foc
         jkQpUc4clO3yRHQjwRc7rHufj3cb9sLqWggAQ2evfoTacaLpRre7F0T9xrdlHZN2FleU
         v7xyRBSgpCtGDcFiY2JpdQw1e/hJLNHQ519vviJpRusVvogV0ko9TfwFgzKmYcADnWup
         j67Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQKnbaOOTTrumXV1qpCzFWYYfqOBxMS/2iIr+CfHfsQcvYP0sR7wSJ77jVw+JZkuDGRHjSl2ZIkdCE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5Chti9+eevpozhPw+on0twSZDD0QtO9sFX9YDMOBpklX6uJAV
	/SqL32hIQcVjjS/VEzF1ZozUD/0kpXDuvYGXNXukBSoMlL1abYCAnfx5qE+hAoBtDZ0=
X-Gm-Gg: ASbGncuKmm2gUE2y+9a0t3yS+9wfV7H4xw5GpNiMEwSGxF3A43N8VvEt4p05eDeTAmh
	a3FDVJP0J8Q6r07lLbPD5C5r5yxGxK3lqmVo1DGI4Sh4jNUHD6Pd9uQjDjGxzyn4YUgGYPW1F2p
	GzQJLXVWA8Smg1d7W3TSMGFFJc/5WuXTVniVSR0VBLyaVJA5CLcHOYxxedcgd9+1rpTcS6FI7Jf
	iSB0xucv9rkyD5z0+1OC4r7dRyN94S6Ngh2OeQy2KiO6u+B9IA3mtSJ3PHrpfffrI70fpMwX//G
	LgG6F0DTiQmWgVpUOIKDwdeZNuqfNuFeScHVr5DMb0hRjgwtxxo2lNrbVSUsQAMN/svIV2dcopI
	e2zuMdGRlA1IDgHxLxvc0oHbF
X-Google-Smtp-Source: AGHT+IGOG9HBWv3d+gV+f7KJlI3h3z4Kx/asseIF/i31+VU/itnDpzuPq3XTnisDhRpUkZh6dsrzow==
X-Received: by 2002:a05:6a21:348b:b0:21f:8d4f:9e3b with SMTP id adf61e73a8af0-21fbd495049mr3668790637.7.1749892517466;
        Sat, 14 Jun 2025 02:15:17 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488ffeca93sm2969630b3a.20.2025.06.14.02.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jun 2025 02:15:16 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Nishanth Menon <nm@ti.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/5] dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
Date: Sat, 14 Jun 2025 02:15:00 -0700
Message-Id: <20250614091504.575685-2-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250614091504.575685-1-sbellary@baylibre.com>
References: <20250614091504.575685-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The adcxx4s communicates with a host processor via an SPI/Microwire Bus
interface. The device family responds with 12-bit data, of which the LSB bits
are 0 for the lower resolution devices. The unavailable bits are 0 in LSB.
Shift is calculated per resolution and used in scaling and raw data read.

I have been able to test adc102s051,
hence adding just the missing ones in that family.

Lets reuse the binding to support the family of devices with name
ADC<bb><c>S<sss>, where
* bb is the resolution in number of bits (8, 10, 12)
* c is the number of channels (1, 2, 4, 8)
* sss is the maximum conversion speed (021 for 200 kSPS, 051 for 500 kSPS
and 101 for 1 MSPS)

Complete datasheets are available at TI's website here:
https://www.ti.com/lit/ds/symlink/adc<bb><c>s<sss>.pdf

Co-developed-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/iio/adc/ti,adc128s052.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml b/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
index 775eee972b12..392b4a3e867c 100644
--- a/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
@@ -16,6 +16,12 @@ description: |
 properties:
   compatible:
     enum:
+      - ti,adc082s021
+      - ti,adc082s051
+      - ti,adc082s101
+      - ti,adc102s021
+      - ti,adc102s051
+      - ti,adc102s101
       - ti,adc122s021
       - ti,adc122s051
       - ti,adc122s101
-- 
2.34.1


