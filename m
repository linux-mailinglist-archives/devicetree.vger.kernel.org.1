Return-Path: <devicetree+bounces-214376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD5AB48E9A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 15:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 201CF3A02E5
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 13:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD52B30B52A;
	Mon,  8 Sep 2025 13:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XHmaNLhz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF2430ACEF
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 13:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757336671; cv=none; b=sgfhjMtxhRvOYMkuccJko/bb6ucaLkVPpH0+D3yuewtpZbLZce39MIep5AFDHgOWupyXvPgZHzigY7RMF5n6y0u3XhQAhqY2RuDYhRXypTbpmKnk3VtqqQSKnOPfaBgzMsTcgyNk6dTtlajqJxFCbEZc7XYjwicyIIA07GfCJtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757336671; c=relaxed/simple;
	bh=l4jGjPnr6kkCLH/MgyK2xCnnHwY9L5KdNaTbIaLUKls=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jzUTmKUnLeEch8zFfjlzLE2sgSxnpzPPDxT6cRqZoxZTK3pjd1Yz5G6wkAkN5WLsizeuDhpCIrPYEbFoZ0b0TCCMCYPhpoybXeK8xO7Wm/HDbD0+zQFpVJEzq8vNuE6oz1XLaeL58wmHWmzMzCmv16mAcWxbtA4N0ok0n68H3Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XHmaNLhz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3e7428c4cbdso786156f8f.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 06:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336668; x=1757941468; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3lH/JWdCi466yT+Udujas8igi6yje6X10bcnQeYQ7U=;
        b=XHmaNLhzPH5wA2iONOJPrMN0Ojd25JBC8LMiitfMj+xo5jU6j4UhMXcTxqcYINmzYS
         hN8FJOGQyhVcG7MdK+fQbQMe4tTQFTHXCZW7xs8rxMy6YWtH0eTwQ8SjHw16qKzjxPSQ
         jsLsSU2JKlObioa2fcH7eW1mcbS3bhhRlOQZcXO78EbBKdv7zqVp0vxeH/NYmiLyuyRm
         j1xjmQTdQXED4Jhk+3AAW9K/uN/kUpJI2ovB79s0jr5OvsblMVK/o/8AHJyoQyJoobMV
         6V4k3I5iBrv86Q4iJx6NQ4CFeKtH1/lDFtCDBgIJ0Y+ZOucWPb+UiX3E2fImYeMnfgjw
         EWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336668; x=1757941468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w3lH/JWdCi466yT+Udujas8igi6yje6X10bcnQeYQ7U=;
        b=OlY/SqIGYhjxmi5aqATrX4FsRRWLUGbtCxSxT9U902W2n4G77NJeikYco3j5FKcL3G
         aX42WCgj25CTka6qxwd1I8GPdfXLHo76eiIQb6yzkaGOsc7JpoLbYjVoRIJ6PELzUGHb
         O8mTqtSE6cfb7fmXstzu5hIzu/++q3Pe4W8doB/gZ3g9FI04Blr60Xag8PScyO5S+EwC
         BNzNin5Mjm4WUNHlXrwcTiD9yTRPOftZLWm0KycfagSypa42xwSwr50BQT32zX/koHFX
         T74TQ9eJro5QAiWhN5x2Egwxin3DaHPl1esaMu8CrwVsfSY2HJ2VUo/tio/xGYk2t7wz
         axSg==
X-Forwarded-Encrypted: i=1; AJvYcCVoSDVQJdWLaZIHlDwH64gba7+pCCzAcKpk+sZ32CvEnSk3okx373m2AOcPQ/s+nfJgk/s7/csZYKAG@vger.kernel.org
X-Gm-Message-State: AOJu0YzNNMtBcUuHZ9f24yTVKBmlpwx3d30Xheu4tenNY3LNMCt8Q+CL
	JtCz9fVIbYQrkGOpqTKP/+V0fJ15h/BcJkto5ZhLz5IUTjW1EpKjPVXX6GAyhpsDCtU=
X-Gm-Gg: ASbGncsuNf7+utR3HfmwX5PnX1yXKHkKuhJAXCjPEPtVx4t34SPKYEHGOvJxZtRY5r2
	CVMpyfCPyC4GXRc3Wdd8E3vBC5l63FMr42Cve8p/5BClncyWpkLgdQKSqcZa4j84VXxBHpBsx4E
	48THLkoXxBlm5oYUXCeE4gCaYi8kiMHjiwX4z5oXILXL2jH8hMs47pLGVFU0CSzfKXGV6siy1si
	oEwy6wGXC70C7tkmu4YxN3/Wh96SwbCT/92jetiF7M8ozC9sq9/WflRSWtmf3Qo07wnigUreXyT
	exGFEzcS3L16kVNzMqPlXRAY+Rm30hci871AnU7H/m0fJzqzv+mYMfeOkAWBz6NU4Rfr/rGv+xY
	F7EXOD8CITsI6gHuJq5ylk3YW6cHpXS4l0y1rkbJR2HZUnQ350yDhGQ==
X-Google-Smtp-Source: AGHT+IEoCJMvrySbDq5jyk5RqjV0NPwALftNDE3q+qWzdFdOy/QBMsqqG1w+PllPiaKresF5LY8s5A==
X-Received: by 2002:a5d:5f42:0:b0:3bd:13d6:6c21 with SMTP id ffacd0b85a97d-3e2fa64c720mr11205775f8f.0.1757336667919;
        Mon, 08 Sep 2025 06:04:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:20 +0200
Subject: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3818;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=l4jGjPnr6kkCLH/MgyK2xCnnHwY9L5KdNaTbIaLUKls=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRWHuZlAgozjbJFii6xfRJsDGdI6qiUd5eBIkOO
 gHg1sbqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVgAKCRB33NvayMhJ0VO0D/
 wN1IoFM+6iDMczeX69C67hBvvLtrQstZFRcQP2yOXqNzF+BNoOKcHNvVJwlesJ/bhhkmogtc/gYBG5
 4XN3Nh8lpDkzzH0uHemVY143GefTfB9r2huYqAUa9QQS+PHrWvDRPrsZnTlkqgim9ETpSWSY5XaaY3
 H75bzT+NVggBudkNCaMUgqU5MTzpuftNb3q80bQDgNCuzrKdNCwqtGGQ+4GGBKYJvXI/TMHT9tb88A
 zk9Qg7hq0kDunLwjNODM8+iMRPqDsi9VenmJUejjO/4Qv0Id4+4c8SXMx7xNDCGcdmy4X2PhUD+/vZ
 tuBuhdooBoUTXuL1IsBaqtg40K9EUY+pwAlTGfZr4WROgsgdmJ8o+VMsdj8bC3fGxTSAo7d/0H1gpG
 fI9wHZbMZkgvxbFhCWedjMDD0lRymsX9FR6z67Kg24aW7df04l62Sinpn7G+v9f7CwdtqY2z3RruP2
 prGrPv1UHPtK0RYzkdBO8ZNpO82TRCla3tvI79pzi4BQLnM+BkqLiz9IL2/phpG6YpG+GDThG3E4EI
 bUnLnZdlap7QuzJ8beN0t3zc5VHCQo/FN0qn0pJpBow49cDWzRVgbHrJr5i52VwvkUhge/6+4782Nk
 Mrd94O2dUWbZKQtUnToaTfid3nnf2bZZOL0lei1dE1+cP+ZQaM7bYHHRczxg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

The layout of the lanes was designed to be mapped and swapped
related to the USB-C Power Delivery negociation, so it supports
a finite set of mappings inherited by the USB-C Altmode layouts.

Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
connector, DP->HDMI bridge, USB3 A Connector, etc... without
an USB-C connector and no PD events.

Document the data-lanes on numbered port@0 out endpoints,
allowing us to document the lanes mapping to DisplayPort
and/or USB3 connectors/peripherals.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -81,10 +81,67 @@ properties:
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
+
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description: Output endpoint of the PHY
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: Display Port Output lanes of the PHY when used with static mapping
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                maxItems: 4
+                oneOf:
+                  - items: # DisplayPort 2 lanes, normal orientation
+                      - const: 0
+                      - const: 1
+                  - items: # DisplayPort 2 lanes, flipped orientation
+                      - const: 3
+                      - const: 2
+                  - items: # DisplayPort 4 lanes, normal orientation
+                      - const: 0
+                      - const: 1
+                      - const: 2
+                      - const: 3
+                  - items: # DisplayPort 4 lanes, flipped orientation
+                      - const: 3
+                      - const: 2
+                      - const: 1
+                      - const: 0
+            required:
+              - data-lanes
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            description: USB Output lanes of the PHY when used with static mapping
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                oneOf:
+                  - items: # USB3, normal orientation
+                      - const: 1
+                      - const: 0
+                  - items: # USB3, flipped orientation
+                      - const: 2
+                      - const: 3
+
+            required:
+              - data-lanes
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port

-- 
2.34.1


