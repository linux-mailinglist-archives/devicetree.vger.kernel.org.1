Return-Path: <devicetree+bounces-36653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF38422D0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32CB61F2A9C2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19D746774C;
	Tue, 30 Jan 2024 11:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="gN5nViwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04ED66B38
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 11:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706613524; cv=none; b=cl4Jer7E9CPRIiNxah+cM/wLRor9dzUXywqpRQBYoqdjz/HXb0yI0nhU2fT39zGwmE+5WIkVjdcIRCycW69jksZr9WXNJ/Y+qts0SYlnKPqBVNBZBP+arRUABV+P8svdytaOKuTFwELG5d4a7gCH9uazpB34Z67OxfiR19gwycs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706613524; c=relaxed/simple;
	bh=kGS2YlYpwkaMeLuYA2ZJo9VryN5LNnd/3OS8jgCksRU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f4ZykxPuOrQ4YcPNmTpDQez94g97kW1JH7xSzfBX+1odustT99xmjcvCnkiE88a4AIPTi676u4WjaWuujj6GhRhqG5jBga1cCxDrZ2NsHIa/srp++H6a/jqSg79pBve5BmzQkDYCTgZhIZ6+KL+MEbcJebtSaY3MyFX+nUIR0hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=gN5nViwy; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a363961b96aso34780566b.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 03:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706613519; x=1707218319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FOtNl4cKe7GBawJQPo+KdaP0XIGpVVB++fTiPzkFZX0=;
        b=gN5nViwyIq+mAad0AUgZIWiljRPN7K0k1UbDJ9u8WH6WZjj6luj3ynXhHB5CdB2Pgz
         +7qeAFesteomf5lysPqhVXl6Qk4hUyVUUBUPQINMso0AsWlVxO/koPk6dBvCFQ+1D7Pw
         nMlKJrq4ogmajAi0yynsCeMe6Zv58+4pKzT26BHMYGZ2XHRAQZsffftTGrlvEIVOVdBM
         NTxmb/eiTa/Bc9tx9mo02bdEFPlyAOk38jfErBl2ayqn8w2GxMZaMR1kx3fBBy54e6z8
         BYpm78YD5dIYTg/XCSR88aU4O+2gZQb7vj1ILZl5ZQ2WuGXoOT8CZ1ZTzisfTDYWRVPo
         oWxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706613519; x=1707218319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FOtNl4cKe7GBawJQPo+KdaP0XIGpVVB++fTiPzkFZX0=;
        b=t1rCJgvW1b5WsRhz60hQ+mIB5YT93wvhu9bCYO1gkpeERvKt72ZiwnrFzonAxSFwcH
         Br0R1LMJE8rrdstj4HtHd0EnfaL/NmGTEV1lHAS+bFnmsICCqxumdnTs/7CdTWO9KJHa
         4oMcyJBNgxNo9Jvw0rmhtu/kX1+Q9ZLlls4/xTpcksvVz+O3Qt4o6oE0pkhUgACpw5cV
         xsS5wgz4LsNTwN/4DtJp6q5+C2450LeHiQEPk4bv+ByD6Kdik1BEnKPa3lX0jbZMBb3t
         jue3AU4O5ggXZZ6LXIJtaeJpYQKReiV+jaoA3cFbNVXoRcXC8QbchQwjlXHk3cJhWsJk
         mt7A==
X-Gm-Message-State: AOJu0Yy8xo40Bm/WMuHAXSSF8kVnhYlqHCaAdjlbBBOjMvipMpgQDh0M
	cNsitVTIR1hPPWLAZ5GXIGbP/6FGDLZU99NJwCn5KH5/fSegRZSlrMsM6dIbRqw=
X-Google-Smtp-Source: AGHT+IH/ny2CqOMsS25PWFkZVT2GcF7qm5uWsJ1Y+uwbTDUyS9YsNWk+xyeJG3SSE0spkJqW8yAFog==
X-Received: by 2002:a17:906:6882:b0:a36:3d9d:59e4 with SMTP id n2-20020a170906688200b00a363d9d59e4mr392530ejr.64.1706613518942;
        Tue, 30 Jan 2024 03:18:38 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h14-20020a17090634ce00b00a35a11fd795sm2559079ejb.129.2024.01.30.03.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 03:18:38 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
Date: Tue, 30 Jan 2024 16:48:29 +0530
Message-ID: <20240130111830.4016002-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

voltage-divider is always an iio consumer at the same time it is
optionally an iio provider.
Hence add #io-channel-cells
Also update example.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../bindings/iio/afe/voltage-divider.yaml          | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
index dddf97b50549..09f10d7c4e02 100644
--- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
+++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
@@ -39,6 +39,13 @@ properties:
     description: |
       Channel node of a voltage io-channel.
 
+  '#io-channel-cells':
+    description:
+      In addition to consuming the measurement services of an ADC,
+      the voltage divider can act as an provider of measurement
+      services to other devices.
+    const: 1
+
   output-ohms:
     description:
       Resistance Rout over which the output voltage is measured. See full-ohms.
@@ -75,12 +82,17 @@ examples:
             spi-max-frequency = <1000000>;
         };
     };
-    sysv {
+    p12v_vd: sysv {
         compatible = "voltage-divider";
         io-channels = <&maxadc 1>;
+        #io-channel-cells = <1>;
 
         /* Scale the system voltage by 22/222 to fit the ADC range. */
         output-ohms = <22>;
         full-ohms = <222>; /* 200 + 22 */
     };
+    iio-hwmon {
+        compatible = "iio-hwmon";
+        io-channels = <&p12v_vd 0>;
+    };
 ...

base-commit: 861c0981648f5b64c86fd028ee622096eb7af05a
-- 
2.42.0


