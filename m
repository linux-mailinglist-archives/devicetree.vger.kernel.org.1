Return-Path: <devicetree+bounces-91010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2E99476F7
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68BDA2813F0
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4144014EC7E;
	Mon,  5 Aug 2024 08:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="x1GVZ4Cd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3CF14AD10
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 08:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722845580; cv=none; b=uo+iXn6avy8DSgx4ATc6qY/0SSX1p1UO8y5drFVmp8o9YIQJv232exN4BCklrAzXN4J/J54MVhD3Uyl1mNmESlyS6jmxNXn4Fz3Zb5ikl8xP7lCeP3knU2k5TZVu9ZxvBBdxQ9AljfjD1UDXgGLeJuuWchIAHIIOmHKmsB0bNoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722845580; c=relaxed/simple;
	bh=7duusC5QL4D7e3OKwUsKMAterf36R2wP+wBL9KtuQo4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NjjQ5PE4HN2Jn23cDdKzYrUNF8YH2x5lSP6qZaA29akne9uUMrW2+6SUpON24ZjH8wr5tEnCXVmjUL8kBJv/ZkJ0ot6bLWbvExVeTDQzGM/e7h2HlDlVQF/L/W8P2ynSN3mmA363Mbkg94Qfv5sBoaB+IfDp+q5MGSbk3ptQkKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=x1GVZ4Cd; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-5b8c2a6135eso1576503a12.0
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 01:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1722845575; x=1723450375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ycAh5p8k6UMqBbJt12G5mHQ7FFA/SYxcagx0+USNSNo=;
        b=x1GVZ4CdfgA24bnO/o7A5y51gxK2+t+tmn3JfXD54UIi6A13/wMjE0WKyA9KesUDnF
         s1Y4SE9sdopIWZ+vJi0B5NEoqrBlUlU0fTdxFqgS87WJiyiNuIzNLKQ6UJ1nJJuypuK8
         jGyfG+TM2NItsIEbcZLu1QClxN0OGsSh/NZI8Pi3aj2q/L9NTo6Zehbj5LEWM1FIszDj
         84v70tRjVnKphwzWEyX3BlWg4X/ifP06XH1e7v/aa5Lyh0WmHNiDiQ2sLLQnwX4PzEjE
         NxC5RmigsmS1k47v0arCLsAl2NGFfiqlqG7XoLnyJPpRQNgIVBulCpkSKJra8bnpoQxi
         r/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722845575; x=1723450375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ycAh5p8k6UMqBbJt12G5mHQ7FFA/SYxcagx0+USNSNo=;
        b=bdiTFmA7P7hvV4zU7dpLvXRBddIud+RNdYuAjmvSkSAzN/Qf8DdyfAJYqPY3U6jDOL
         EtJjBid0+z425EVlwsqoqM5C3+rBRi//8FY86pQgMVDyVNJ2ZeVdFFcAYM9uAZTZWouh
         nvfXAdlPHXdI8AJesMdNlsdxCfadZEa9xj80AaxtsWUif3HK/asWrw9qy2L2Ai48ZeE4
         c0fDjtX4203Ni72IwF23cfHNvqNtGto7UMcpXndjBXnP6u1E74nUCJN9iLSubce04w3s
         fGKSP+5D7zvDjzoeX6P7vS2d5IVYWQFly/TPyh1Wnaz+d0yLWsGCGeQBqe9Qr19hCYBa
         KoTw==
X-Forwarded-Encrypted: i=1; AJvYcCXV6yauyekTIQIVO5lcM8D3uf5AEv9kbX0JWbf4ZVqPDslpXwh0tWHJhjr+ZMBBjylb4lQiBTymDgL+zDo5nFaoyXOm4EKqK/CFow==
X-Gm-Message-State: AOJu0YygsbMmqdPqGJf9A31l+ULJGKinybRaox9C/1v/QXgspckOMvTF
	4pFFV99gZJ827SscwA9XopbIZXCsLv6ZZGOgfq0rFhQiSQlDz4bnr3ejR/QdjBY=
X-Google-Smtp-Source: AGHT+IExS2llHL/Jf06oEQeHeQagTR3IMHmi0F9MY5S2rb/joQM6OCqnwsFiBXHvIIE54mwb+NQPGQ==
X-Received: by 2002:a05:6402:26c1:b0:57d:3df:ba2d with SMTP id 4fb4d7f45d1cf-5b77bbb1365mr10128837a12.2.1722845575281;
        Mon, 05 Aug 2024 01:12:55 -0700 (PDT)
Received: from carbon.local (catv-86-101-168-118.catv.fixed.vodafone.hu. [86.101.168.118])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bb88d1d9a3sm1231565a12.26.2024.08.05.01.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 01:12:54 -0700 (PDT)
From: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Date: Mon, 05 Aug 2024 09:12:52 +0100
Subject: [PATCH v6 1/2] dt-bindings: iio: humidity: add ENS210 sensor
 family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240805-ens21x-v6-1-5bb576ef26a6@thegoodpenguin.co.uk>
References: <20240805-ens21x-v6-0-5bb576ef26a6@thegoodpenguin.co.uk>
In-Reply-To: <20240805-ens21x-v6-0-5bb576ef26a6@thegoodpenguin.co.uk>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722845573; l=1982;
 i=jfelmeden@thegoodpenguin.co.uk; s=20240709; h=from:subject:message-id;
 bh=7duusC5QL4D7e3OKwUsKMAterf36R2wP+wBL9KtuQo4=;
 b=OFfTTq+MbktgkMY3Lys0akTTUOukMj+klWq2n9Upx7H8At2sYhC+OdKGfInC0onmOQJiju5fX
 sWZsvbY8Y7sDS9br9ZqSQQEoVU8J+uyXYZTEjBlZ/ilDy0sEOr3lYGT
X-Developer-Key: i=jfelmeden@thegoodpenguin.co.uk; a=ed25519;
 pk=tePkZ5iJ3ejQ2O3vjhsj7GrLYcyJN1o1sMT3IEXvKo0=

Add device tree documentation for ENS210 family of temperature and
humidity sensors

Signed-off-by: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/humidity/sciosense,ens210.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
new file mode 100644
index 000000000000..ed0ea938f7f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/humidity/sciosense,ens210.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ScioSense ENS210 temperature and humidity sensor
+
+maintainers:
+  - Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
+
+description: |
+  Temperature and Humidity sensor.
+
+  Datasheet:
+    https://www.sciosense.com/wp-content/uploads/2024/04/ENS21x-Datasheet.pdf
+    https://www.sciosense.com/wp-content/uploads/2023/12/ENS210-Datasheet.pdf
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - sciosense,ens210a
+              - sciosense,ens211
+              - sciosense,ens212
+              - sciosense,ens213a
+              - sciosense,ens215
+          - const: sciosense,ens210
+      - const: sciosense,ens210
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       temperature-sensor@43 {
+           compatible = "sciosense,ens210";
+           reg = <0x43>;
+       };
+    };
+...
+

-- 
2.39.2


