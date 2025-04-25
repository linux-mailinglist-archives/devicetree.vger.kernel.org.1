Return-Path: <devicetree+bounces-170676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFEA9BF3F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:09:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C86F7AF200
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 07:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9158F230BED;
	Fri, 25 Apr 2025 07:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WEhm6XR1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4448022FF5E
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 07:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745564937; cv=none; b=Dx/ojZDJsYNZNnmAdstdoS/0AM7mGB6RQVT8abiQ5D5I0io8AOCOpnjrkUY6pCXZoGpxVaJa8cJFtgbYJW7QFfPHUaKPRL0HT0RM6O8L6945ZRWG/rkz9bB+m/DaNavoecKej6wK03CUjFG2R3J66NBIVXJTqXJALaFl55sqO8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745564937; c=relaxed/simple;
	bh=X2Z23jKDJsecxCviqGVqQYUJRkbYk4LNa2v6qY+TyYo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ns47LK2vgoymyhDnquB9m6tU8WJyOvwQe0nedA9T7mF2sTSTkQb7LE5nXMwlvsM4sQy30CxGRIPUBjqnfqJwZ+z7ECrH611HwgiTVFJEjWUdUD1MamDEhugPeH7g4IjjdXPd0IhvJF6Z+IMtCdBXqgBfFybsh6MDyAJr45O5jtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WEhm6XR1; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso16566885e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 00:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745564932; x=1746169732; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M9UsH/AGSSX6ZhEgS0KQAvySVPB6RHXjoHgehdLPar8=;
        b=WEhm6XR1vLsJ7Wy3zwHBAhFrVXySCqvmdQ1nUmO5djp9zn27Rc357jEFgnyM/2sVJh
         j3fk28TxHLz6FGhAXR0fZRASQlumM9bJPV8Txq3HfySNPymyYxE0i/miGWLGJD1KrI8v
         1AEl7ZfJvzFpukvarrZz4K3XwPBI/VeRzlWRfmZBzBKmz7XrwuDI4zNMtMCa2IoohTeZ
         oOieltvZCZEe3MAioVpANmH0dtnrEbt5zPV50UrNH0QHdtwM/pGNPhsAKgVd2fiyrmgj
         NzRGL07iqObNxlImWjSNwUIltIzQ9YBMDqg5C9ScnFGJhzNYXsO/O0SeKUWT97HQ759s
         I9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745564932; x=1746169732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M9UsH/AGSSX6ZhEgS0KQAvySVPB6RHXjoHgehdLPar8=;
        b=CwYB6GV6AOWFQLcG/pD3y5qpRJggU0zG5PjJ1DcKPXx/xwqOTx3BIkoSfsMxyOp0xA
         6RDg82QvfXSxLmZhpSAK9zpMuwZh3BbPEIeLGkZk3Tsia/PQQsyVGVt8hUpLkPEhzG8Q
         yrz0In5eryE8y2uRyyVTKCs1IcYZ/1BabwZPJouzxTrtRkM80oIfMkDiVJBLM8DaB0j3
         cEfaQ4vP56B1DLwPJ+BmiRmipk57CtkfCr1GY/v2K/vRn1l2jPUTai9AMRL7Ni1OlnX1
         kplMOQ/QyBhrpjfcYexcyV/WPnHnHPjSMpIvMv+RlCVVT5EKgD7cAliGwGLz/wMowVvk
         WrGg==
X-Forwarded-Encrypted: i=1; AJvYcCWg2xXwPaLTc4gRfzHVzRv9ofC4dGoxRUv74kRcDh4hFMziNxKy5feXAnJALIALkxQdByKJwHIulTg2@vger.kernel.org
X-Gm-Message-State: AOJu0YzzyljQlkTrJwcgHPoATu4Ep7habEqZpiMFJGQYOY9yphF8M0yK
	aVwNOx1OQXZKF73BdrfwA9xWqwu0zzinvtFsncPkGouPFOzg6aNyI2yHg5SYVZS3a6s0eIbNxcd
	3
X-Gm-Gg: ASbGncsRbmBC/0/LKraNjE9jxMlJrGuraIBWapwe2tNbRTn+T+QrUk6J2OkPAvJUyZ+
	Dy/ZsbT7mhzuN9XhkqHrowPQzlQLKW656I0Ylk0VXLsLOFIvkGL4dJZOzH11pRQ1Gl6XvLQx1pP
	h4N9Js+9XHMQWB6jkUY4qPX29ovjveh8cbyuJBocnG+4mbSJ0G69PYbxxy8c+3oWuCF9c5hhdwq
	PNVcQTUBn2YmKUU0P8WlWhJ6/zo0ABjtQkOaUl+0yz6fwtIPih+kI08w1A0Q51eVVBBaWz8O25v
	r3X6wU3Oqxr+ivf/6go8o7IVPLAPiBRgxkI472TD5NcDWgvVNIVvXFwdnXRlDpoeQnrZ4kcBi3q
	OgserLCeV6YU3Beq3qy+/281N1IqYp5lX5xsucbcI0NbSp1+Q8DxLxhtR
X-Google-Smtp-Source: AGHT+IEWNtSZZVP35Vam0NTmvm1HOM6Y8YGU+5T5y5xZ0nRYsgjM+CCCJ4GSJzI2hQRQDGH0PBqSqQ==
X-Received: by 2002:a05:600c:3548:b0:43c:e8a5:87a with SMTP id 5b1f17b1804b1-440a65fe6ebmr9397705e9.16.1745564932540;
        Fri, 25 Apr 2025 00:08:52 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2ad112sm46202735e9.24.2025.04.25.00.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 00:08:52 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 09:08:12 +0200
Subject: [PATCH v3 1/4] dt-bindings: usb: usb-switch: Allow data-lanes
 property in port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fp5-pmic-glink-dp-v3-1-cc9c2aeb42fb@fairphone.com>
References: <20250425-fp5-pmic-glink-dp-v3-0-cc9c2aeb42fb@fairphone.com>
In-Reply-To: <20250425-fp5-pmic-glink-dp-v3-0-cc9c2aeb42fb@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-usb@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

The ref /schemas/graph.yaml#/properties/port forbids extra properties
which might be specified in subschemas, e.g. like in
usb/fcs,fsa4480.yaml.

Switch to port-base (and specify the endpoint with properties) to allow
such properties.

Fixes: fd2a052ccd69 ("dt-bindings: usb: add common Type-C USB Switch schema")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/usb-switch.yaml | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/usb-switch.yaml b/Documentation/devicetree/bindings/usb/usb-switch.yaml
index da76118e73a53c0e1c255ff115ff959d256816ba..89620191263023bec800dec114c0017c41b7c056 100644
--- a/Documentation/devicetree/bindings/usb/usb-switch.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-switch.yaml
@@ -26,11 +26,24 @@ properties:
     type: boolean
 
   port:
-    $ref: /schemas/graph.yaml#/properties/port
+    $ref: /schemas/graph.yaml#/$defs/port-base
     description:
       A port node to link the device to a TypeC controller for the purpose of
       handling altmode muxing and orientation switching.
 
+    properties:
+      endpoint:
+        $ref: /schemas/graph.yaml#/$defs/endpoint-base
+        unevaluatedProperties: false
+        properties:
+          data-lanes:
+            $ref: /schemas/types.yaml#/definitions/uint32-array
+            minItems: 1
+            maxItems: 8
+            uniqueItems: true
+            items:
+              maximum: 8
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:

-- 
2.49.0


