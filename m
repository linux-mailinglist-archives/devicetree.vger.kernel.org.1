Return-Path: <devicetree+bounces-72686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC98FC88D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 12:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CFB8284969
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E222E190065;
	Wed,  5 Jun 2024 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQLzxtYz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D408549644
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 10:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717581686; cv=none; b=tHsqulTBYjEc2bV5aFh+C387MFU4fIUuMs8tZ/slYNgPq2Juaf4nTmBcBLiwvsReldVRLtf3CLhzm/QxXuLbuE/QVD3cr7szFkdQOaiH03wcuDiAkQToADwTf3nHyymC4zG1WvenTFa2F1lQooxsLK5HMwJPGhqePvzUPJAPyPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717581686; c=relaxed/simple;
	bh=X4J+NHCPUK/pGeuU2jk5RSkU7NENxyMnKn+lp9gIWQY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=fIapdABKpGC962hbvE3pXOtck2pvMs+0us6WRYQiEgwN18QHB5VPEHgwDTuL+CSJJ0M66TBsGSOJzQWuarXdTklmshEKpA0WZxO9Z57F/rsTE5DKdN2G0J4sL05cCnrR3Qo0e6W4EBtY4iCO4N7AxMkHvQ6tcQrwOd8KUEHfhaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tQLzxtYz; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-354f14bd80cso1565782f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 03:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717581682; x=1718186482; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9DzuTZgbZabvBJ626xcW1V1Egdfb6MOgv2LEKNybpd4=;
        b=tQLzxtYzxu2+Ru8+klts8EHgg2RizfAG/TG8uwd2wDI/1LRrbaG+zosv4/GPBozw6O
         kVd7DhpHk61DHijT6vq7ccbb8Q1hOUz943Tk3p6Vv2TSTKu3034HHdNmZEWpKGTaVnzT
         x7VvAj8rebSW55yk5YIE4hoV3hZdTal4nHFCERhtGAF0Hrr4tA61xZpEceVMZ3os2DV9
         I8opD9bNHIcd+Ef3dHOQDXL15kNX0sf09tOYjZsokTJU9E58wrAMBzNMn9ZqEvumSqbz
         SfVh+62Nq9Cj7id2rDLCDExr+Cg2EjLqX6poVjyLpdRRH1j+PIZ/8IAlVyaIRm5CWe5K
         eRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717581682; x=1718186482;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9DzuTZgbZabvBJ626xcW1V1Egdfb6MOgv2LEKNybpd4=;
        b=usfDLB+u+MAUn6AkabPdBLINbxf4l3ZWIg3+JIJp4cVmdKgQCfRuYUlH/s1k+V08l8
         yK98SOgW1Qoy7Yqq/Wa6fAZsUT0rxrsV7qUn+BvVjxxuxbt+U8jU5s002P7LVpj0wx9o
         Ua0saBvuCbxRdf5/DUgpOWRjzpdeUNEb7J7OeNpZlyUr+bDkz/XSQcF+ELVtKRlUkS/e
         FNt0Mzy0clIAzBAdhL5lNdnrn6vN+viqNY9Y//nN7Jg5IoGaJp2rzjdU42PKsLVdZZgw
         He8sUQ3KaOaRuJy+DoEjv3Fw6chI0y9Ym10mTTD5hh2ocSwB8PPYn1avYHJ6qTS+ZPoQ
         iFeg==
X-Forwarded-Encrypted: i=1; AJvYcCXHCCtE7Kj1W1+7EXrM0hrhqd6hE4x6d4yJ+3GgoiRwjpDKn5PoVcJwLUl17AvzYAXeJbyWMwWNhnMjpxBkhNyAMceMHUKpSaQMSw==
X-Gm-Message-State: AOJu0YyYVPXsKU991LVHImHwuEDjYh2keWWct6bn6YSyvoV8PeyW/m/j
	CtNKDpdu7KyYX8U5z3i3N/ZeGrA/Xir20wNC38WF/EWRyICV74rEFF957bzge/LLBNNrBGNty4Q
	0
X-Google-Smtp-Source: AGHT+IFGB6+8XGX3B39GWLZTV1hN9L0hjBlUU61Lpb7u32G6xWF46KpUdOIbw9v2lAWlyu68sGB/ww==
X-Received: by 2002:a5d:64c3:0:b0:356:6c6f:2609 with SMTP id ffacd0b85a97d-35e84070f54mr1572425f8f.17.1717581681967;
        Wed, 05 Jun 2024 03:01:21 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d98sm13952677f8f.24.2024.06.05.03.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 03:01:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 12:01:20 +0200
Subject: [PATCH] dt-bindings: usb: dwc2: allow device sub-nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-v1-1-915893e0cb20@linaro.org>
X-B4-Tracking: v=1; b=H4sIAG83YGYC/x3MywrCMBCF4Vcps3YghhgvryJdpMkYB2wSMq0Kp
 e/u4OrwweHfQKgzCdyGDTq9WbgWxfEwQHyGkgk5qcEa64w3J1xq44hhftWsuzZZOoUZJy6JSxZ
 88JcE0ydalHUqNalc8BcK6Xz11oGWW6f/TcP3cd9/Uub03IUAAAA=
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1269;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=X4J+NHCPUK/pGeuU2jk5RSkU7NENxyMnKn+lp9gIWQY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDdwUDjjv9AL8LPyasrSreKHRVDjunpIjJGGPuCs
 SFm8FWaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmA3cAAKCRB33NvayMhJ0RHqD/
 91reH0EXlToPWL2lQdQz/ocv7rkKkEopctmGkYidL3n347CT+/C7ZIhK9dRAUxJi4ht0SC+P8871iv
 k3sW9oW7Yt2DrgRLzaQvZODRodJ3SYAkpBU0uNXJ6oYUGFyQrI376Zo5BL5Pn/j2Y43smPvaLr8kW5
 zbY66WL+5KrnX7BqgEJ3QkH4x+8enMhdh4RWaUM9jExizBN0evEgJPmzbQX4laIvNg7oP6FXel+rQp
 H1Lv/ziAnQxX5Tay3FIhwcS1bbCG3q9TS3k7qkJXUw1xXpSXGQ+Lf90Fs2g+lJ751NfmVcB2CbrO2w
 nYKxbGVyoMgJTpMHEbBS7fujVIalvaHwbqXgW0CEw4oMUL7iLgHHSRYQcr0CQsywAP3TWQiSOrlT6s
 x37eP4M34lbN789gS/sWrmYUxrxHfBZSXN+OnLcVSbM97uN/tpWLgCtwfeaJQzQsH13Sfr96m2GhiA
 5GGNBzvoZ8T9qwVK0k2JMhoG55L5uP1bUcskCZU2jWnLor270WQyoyukLL50lyvqkBDrrj0EHWSuVn
 KVz1+rV6YTf0JniqimLr+VJHek19SLIw7SAS4vFKcyzBkPpsWREOGKfLr9QaZFUioVdjt8MPr0bUSP
 bDARGb2JCqkXVFe2GTAROTaL5MrDY6vRtmR3OekfD4oF1VVHipcWG5vvJSMg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow the '#address-cells', '#size-cells' and subnodes as defined in
usb-hcd.yaml and used in the meson-gxbb-odroidc2 DT.

The fixes the following:
meson-gxbb-odroidc2.dtb: usb@c9100000: '#address-cells', '#size-cells', 'hub@1' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/usb/dwc2.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index 4f36a22aa6d7..9e737f587664 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -177,6 +177,13 @@ properties:
     minItems: 1
     maxItems: 2
 
+  "#address-cells": true
+
+  "#size-cells": true
+
+patternProperties:
+  "^.*@[0-9a-f]{1,2}$": true
+
 dependencies:
   port: [ usb-role-switch ]
   role-switch-default-mode: [ usb-role-switch ]

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-dwc2-subnodes-4a68ead79624

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


