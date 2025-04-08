Return-Path: <devicetree+bounces-164373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6121DA80C24
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36A2B1BC51F9
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E700189913;
	Tue,  8 Apr 2025 13:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mhl1XHJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1219145348
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 13:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744118505; cv=none; b=i8YbNndtiLOuScwmuFWqByh+FStJuHplrBOGjPpco42i40GwU8eboVjZPLd/JEb87BhWwCSvwvAmiyc4s6bG/1lx+kF7rbsAL8yQA9H8n3m2aXFEvjPOWmL5mErMLgs1iTvg4H5tyt4C/Aqsgc1AOcpursyVHxnop+VPizM20Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744118505; c=relaxed/simple;
	bh=mJgJq+zZMLWqDbzOKvdDkq8EaWO1dzLuMwrkMz0KsXE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fs0jVdK/vOI/6KxD4SNnZbOjrRECBSoR3bYEOt/xAtwiRc6gqzItFX9IAV6mCXKH6lqSLSVNKdQ16jt/4gKDo76sDmxlJ9qiKAPbz9kmilmvqtBVY0MM7yaeWYDGvq65ikG/njmuhOYGLlpYXkyFngcK/odoWMOsHiyPFPwZVPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mhl1XHJD; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7340e6f3ce1so4260811b3a.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 06:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744118503; x=1744723303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xl8SMQ6yFSz1U//qzOWMiPyaq5J817/iUIFM3Px6Z1M=;
        b=mhl1XHJDK2IcvJMfVaV9eYBDBDW/rRNIA7PJJTcblm/L8azrynygygiiYpMp90iMSB
         u8UIgT2bW5C/w1z1iDfsyXZIZJsJSkFtNJE1xBn2yX5RRtvGNJFfA2LMz5McLBnxf5Z6
         t8F4h60frllFCIweaIH7c7y2Axm63nDkslwxmw8SISZlxeKEPjq8neOcvhqEqd0hmVT6
         EZYVFYKAb9ma+j0VVZTdOTySTL+YcTcATzEfkWLI+wvTrRAVIsCiMA/fQWtzSXbs/tKo
         wq4sOiy1jrcDSaA6juSksXURBeukpcYQKAGno9HILovjmo+GyZzMt/gTg/cXDdzZnQ3G
         DLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744118503; x=1744723303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xl8SMQ6yFSz1U//qzOWMiPyaq5J817/iUIFM3Px6Z1M=;
        b=FicgUexLBLQrL0Whww9QKV5o6RB+kovk7Hg1v2p/bR7/D3yUq8zrG5IxgoQPW2ZoNu
         cv88DmJFIqZGbZ1PTCuK8AfUIp7S9KIn5Np57X7zVlTRUjAqeI70e6jrkLSiLbwHpHq+
         cLmnBunL3FcPcvJTvYJ7sAwLiwju3ugxqF61pWLMESuNenx71xOc6z6vwm8aeH8g0Ijj
         7w7nuesDtXIilyQrp8qiKa17E8F4QW8+rMtXkJV4cY+UxH7/0Q4M9Z2N2E6F2Fo0E1kQ
         aWAgly6hy1LwXbHMBNrCBxnkDqXKuqaZWwZ7skvQoL3R4WaKHx6n2/ExdsMHTh3Pcp9W
         DybQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxBVcXDBi7XRcwWnJNbnWh1PnQq/j45/+6X1tG/uNip3Ym5mQWsdA7nOJR3OnDQF2cXT0zGgn8u9AM@vger.kernel.org
X-Gm-Message-State: AOJu0YyVje01xgnJLqdwIcIbpx/rfyfxEiV+zbq4qqR+YnEMj7uFWTk6
	m/10FdesuZETIGCnqKEf2DWfOGiZfIDfD42qMNqvIGN3zsczDOXKcJTo5fkkehE=
X-Gm-Gg: ASbGncugXE1UBRTiZ7IukTTreBJQ/VfUQGQZltnVKLD0QLIwT3SJlmu5w9ysCUqV3WH
	gMLh1l9k+tlrtgvNLPb4hOvN4SgNL47z+tak10DeoW2N43S+2EYX2LUys5hMbQ2t7affwcmt1lc
	xStz714w0fb2j5+4GFU8LV5rZ9bzcrHBm0i1W/cq0XCBRkdoNk40kj23svuOW1oPEsNvprOriCf
	jDFJqHEaqMVRsNAKTfLn6RqECvXT4aexan+5bSdT5rujrdwPXqewkWUmFWbCvD4FEqz1iMmSA3J
	qqRHwzPALkPkdZvyfBV8aWOsugIz6yJJYqqJVxlT2QahMrDSxZGrofAgjy8vti5WQK45oKJijLZ
	CX3HqnADE1nI4FMzPRA==
X-Google-Smtp-Source: AGHT+IEYI0yvG77vI7wLIcJ1amCXAazIRjj6uaOMMeamEoCcUQRJzOz8XlTJXNoLFtSNfoVsf7yykA==
X-Received: by 2002:a05:6a21:3942:b0:1f5:a3e8:64dd with SMTP id adf61e73a8af0-2010404f3eamr25769684637.0.1744118503224;
        Tue, 08 Apr 2025 06:21:43 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af9bc41af71sm7439565a12.75.2025.04.08.06.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 06:21:42 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Nishanth Menon <nm@ti.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
Date: Tue,  8 Apr 2025 06:21:19 -0700
Message-Id: <20250408132120.836461-2-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250408132120.836461-1-sbellary@baylibre.com>
References: <20250408132120.836461-1-sbellary@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The adcxx4s communicates with a host processor via an SPI/Microwire Bus
interface. The device family responds with 12-bit data, of which the LSB
bits are 0 for the lower resolution devices.
The unavailable bits are 0 in LSB.
Shift is calculated per resolution and used in scaling and
raw data read.

I have been able to test adc102s051,
hence adding just the missing ones in that family.

Lets reuse the binding to support the family of devices with name
ADC<bb><c>S<sss>, where
* bb is the resolution in number of bits (8, 10, 12)
* c is the number of channels (1, 2, 4, 8)
* sss is the maximum conversion speed (021 for 200 kSPS, 051 for 500 kSPS
and 101 for 1 MSPS)

Complete datasheets are available at TI's website here:
https://www.ti.com/lit/gpn/adc<bb><c>s<sss>.pdf

Co-developed-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v3:
	- No changes in dt-bindings
- Link to v2:  https://lore.kernel.org/lkml/20231022031203.632153-1-sukrut.bellary@linux.com/

Changes in v2: 
        - No changes in dt-bindings
- Link to v1: https://lore.kernel.org/all/20220701042919.18180-2-nm@ti.com/
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


