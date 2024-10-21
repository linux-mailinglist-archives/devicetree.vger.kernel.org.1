Return-Path: <devicetree+bounces-113661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 352959A68AF
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E283A284E35
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65041F4FDE;
	Mon, 21 Oct 2024 12:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nh8sptLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF9C1F4287
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729514343; cv=none; b=uV84n6t0KfSg6ENqpVXMO9SOV6q4AslM6SjFP2xlYWMBwih39p3suyI75gmunm2mFepBTejI4fJD7ixPV+K139DZHARbiU6hsIXqn7OBGzUGdKsxChX7+UwlpLBQoZPjOcY1BTf+pCqLqpksF+SyAlEUEtzKBB+mkftekjWS2CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729514343; c=relaxed/simple;
	bh=6JbclynyTugxKaIjESMJd92knSsFNAoaR1Vx40UA7Gk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=puMYr23DzN4NUp/aKqyNK1kBVlAQ3hKHEgoTE9QrpPo0c7V9undKE0zh0kbDjv8aGVPFUOPjnHyRkG9EL6s0j83dcxM0EP/tlk8X8Y8F+NTT7rTMrN8RF8LBoYzt02bl70tlED9xCNQB5ShpwIwgu+ylr9ax2b38VuAqX+SHVvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nh8sptLB; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43155abaf0bso43652375e9.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729514340; x=1730119140; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/WK7HePxIeEuP+8yhI57WfjmdfhB87/oClelJretk+k=;
        b=nh8sptLBT59GTxhDzP5JEllN7gsG/a144tWw97nTW5PG1kESgJkPYcYzLG77RKbF8y
         YtfvZqPxuXUISj1eIq7Jun6Eze4+7i0SJCdl50QLB0B0UKvHwfFDnT4GYEazaZVYFwLt
         HNrez7+RJvVLwJEoDUyqeTAHoWB1UqCfWWej880wwiorsiVeA8pWRs1b5xWvKC91N1U7
         hAKsBz0pocq89JRAvwPGRyuBALUdxTEt+6/8mcKZOT5WMF8etLwFJ53FMzhav/Jfl4f1
         7NCxGf2z4GEuPpkaZ0Ie++CmzTIFDm3Gxoxin4+4emrzp9/slR/6LxVpY2ANa99RH+Px
         qFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729514340; x=1730119140;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WK7HePxIeEuP+8yhI57WfjmdfhB87/oClelJretk+k=;
        b=rtI8y30gnhUBzjL7TemecqusgEJSMhCyH2DtNmZ7Ako/IZw2mfLsE7nBQLKWKIHPNL
         +trK7XgmcImUkfq10JzlDK//TXzMzrT60FVCmVeV7DfYCv0x52rEMs+OKHFnSYrIMZHv
         DtOIf5AyqbQB1NsthoJ/t+giJ7ccn63SGG/1qyxEKTuzaG3R70Jd8vLJUQYLHZ3hIv2z
         +zUqru/byOm5c/gopjInKYD5Vxyh53dn9yeBW6ANC7YVZVTBO3+3uh8ZYqy1CvNnoGkJ
         wAVO8O8yh9eeTskDgPLd2rc+xrC0uo6jiRsa0Z6s8LhUjNvOlxQSBv85SppVp8X0osRf
         Lwcg==
X-Gm-Message-State: AOJu0YxLeHbMDKIvsku7ByGkfJ4WzRoLRyaWhFohVu44NoS7QX0UCV4O
	WfQxmqd5bcuUDmwPvuIBUnRLjPsjb8+Fyta5My8EHlO7IQi9hSpAPanYP/Mz9CY=
X-Google-Smtp-Source: AGHT+IGQy8A58Y9nDWDCZndjcYGfLojYnZXw+VZv6D935LcgxkznJAozxf7L+x8gowf367twRIdHig==
X-Received: by 2002:a05:600c:468a:b0:426:6f27:379a with SMTP id 5b1f17b1804b1-4316164c5b3mr85092905e9.13.1729514339681;
        Mon, 21 Oct 2024 05:38:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5c3023sm56273955e9.32.2024.10.21.05.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:38:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 21 Oct 2024 14:38:54 +0200
Subject: [PATCH v2 2/3] dt-bindings: iio: magnetometer: document the
 Allegro MicroSystems ALS31300 3-D Linear Hall Effect Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-topic-input-upstream-als31300-v2-2-36a4278a528e@linaro.org>
References: <20241021-topic-input-upstream-als31300-v2-0-36a4278a528e@linaro.org>
In-Reply-To: <20241021-topic-input-upstream-als31300-v2-0-36a4278a528e@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2331;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6JbclynyTugxKaIjESMJd92knSsFNAoaR1Vx40UA7Gk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnFktgXHvbD4r5fTTOoBpu7aLy8ziferlFkJ3jjOJ9
 uQXVRkKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZxZLYAAKCRB33NvayMhJ0V2yEA
 CeNiBjFz4YBQ8ny7qTYK1xTHcLOPNO2m39BWCSsZoN/rycIMt+ap53UUHQRbCwCwUGVPeacScsbHL/
 /sus9a/RNsMwF3nKXinIjKTvi2RUEs+r31TXKCCnSWqDMJpM4Dr4FZIC/GnYbCZqDw6PAWUdcIc8Yr
 lr9nErt7IUO1T8z/mhtLyXSFGsmj1dui17wTwE+/TLLkiEEXGeF68DlQehBeEOO7BwtTO8jatbDX7t
 mG0IpToaDa5fLMwxU+2zqZ2Kw0V6xLSay7XPSO54Vt8xP1Fid98BrWrPiQLViIw8fhfNIL1Q6dm3OX
 8nwD5T37nMPJ3sVVLZ+q1eAgn4upFc4oydYfVJUyyoaXhJJmQ9R+0FL5hE1p2hM3G/gbBOK2RI8jcc
 vxQOlvXqpS+aKAmOEjom26gDcGMCOyhVc4UU61poUtOZ8SUrE11Z7Nuwx0Xmn0MduO6C3FqHwDGuFO
 TYmOFTHE+pUZyqQkDwsgdIDxtPCaQ/HsF2uzpH32NzREtHOF+lThAm3EplGXPgPwcXlukZxxFr9Bxo
 xEOt4slysreSkbxkxDuGRoHlZ03YmV24VeYbmA7OQCIjkx3npwwBTkbcnqwuyPUFkI3fDHxuy+luEe
 tKrsthwDBiPXymkoEaFafM7z8pEEiZdlRvqkgVsW3EdmSybFHtX9dzgYXfyA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the bindings for the Allegro MicroSystems ALS31300 3-D Linear
Hall Effect Sensor controller by an I2C interface, mainly used in 3D
head-on motion sensing applications.

The device can be configured with different sensitivities in factory,
but the sensitivity value used to calculate value into the Gauss unit
is not available from registers, thus the sensitivity is provided by
the compatible/device-id string which is based on the part number as
described in the datasheet page 2.

Datasheet: https://www.allegromicro.com/-/media/files/datasheets/als31300-datasheet.pdf
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../iio/magnetometer/allegromicro,als31300.yaml    | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/allegromicro,als31300.yaml b/Documentation/devicetree/bindings/iio/magnetometer/allegromicro,als31300.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..52e3781834ee9d98aa84c5d340ae75ffbf76f925
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/magnetometer/allegromicro,als31300.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/magnetometer/allegromicro,als31300.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allegro MicroSystems ALS31300 3-D Linear Hall Effect sensor
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  $nodename:
+    pattern: '^magnetometer@[0-9a-f]+$'
+
+  compatible:
+    enum:
+      - allegromicro,als31300-500 # Factory configured at 500 Gauss input range
+      - allegromicro,als31300-1000 # Factory configured at 1000 Gauss input range
+      - allegromicro,als31300-2000 # Factory configured at 2000 Gauss input range
+
+  reg:
+    maxItems: 1
+
+  vcc-supply:
+    description: 5.5V supply
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      magnetometer@61 {
+        compatible = "allegromicro,als31300-500";
+        reg = <0x61>;
+        vcc-supply = <&hall_vcc>;
+      };
+    };

-- 
2.34.1


