Return-Path: <devicetree+bounces-247688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE510CCA731
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 07:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBA96305EC36
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 06:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B70320CAA;
	Thu, 18 Dec 2025 06:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K0ie+oIn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dl4wM6OL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1061223DD5
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766039077; cv=none; b=AS4JReV94XjzpyUMBfR3WbBLQMNchTehI8Zg0mYmaE7RTL//AvCdDg4u4wmU6GPZ3h5EkNSPPC7xM75G03uBuloENyVOkDwqUe5cjikNKPjmLTeE0vRQ+ufud9AYVEoxonwZvnxzsMxEtyl+h+NPEIbD79uOZabnaQ8kXaDp15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766039077; c=relaxed/simple;
	bh=YS2v6vLCtx5V598IdOCf2ikhkqgSJA7lx9ZSuwPALV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZD5MXWTfmk9fb4LSvFmQcv90AC2B7BxE8Yu8o3wuF5S2ccUGwqanMLY7KtsGq5S889mXKxXpsUMJe35u3ysiPu87ebVw+A8oy9P72b6nuEhAu2oi1ODOYW9UACY/WLWLyp/3G6I4VVRoB2GOqy9hie0+Gpc4k3xS0fb6oYzwCzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K0ie+oIn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dl4wM6OL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI3aqLZ754977
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6uvKGEnhe6pjfLoE2vbLJnqxhEW8HHQ6u7PTnpBiilk=; b=K0ie+oInyr/8ullV
	pr9z0IVsiGSzm5JpEayA6eJnTmbsWQaQtAx1mpd0zP5nOgV75lR74rOj5P4TWe3v
	AyIvRrtktL+2fwOv/NjENHhHU7ugKYFGkKrvjMRe7WVbqECiJnJZi2QjMZSV+0hX
	feRf9PfOKyybZcP1OjaFU7AuqSQs+9q8Jj4nnGos6SjTYBbzjYh8K3lM3CWuOBVd
	qYq95kvGC8vTHSekcQ+p1M7/SvvBanPYCSvEaw/k0iayZrx6vhf4s55ijPZVpyX7
	uRVg9xaXgazWGtYnRqSiFFGh2gx3nuKajKd6+OsDMSYa3rGnks3dWXaZyX/zGHiE
	iLJlPA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b49v0rd7v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:34 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b895b520a2so436488b3a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 22:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766039074; x=1766643874; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6uvKGEnhe6pjfLoE2vbLJnqxhEW8HHQ6u7PTnpBiilk=;
        b=Dl4wM6OLcRUwr6lkmYFiDDBvUfUbfrzMyFpmsJtg5VJs6LMd0t5wBddy269WqO/DBG
         P5srx51rzQSBLGg2and44tL+fxWTUAPk6Jch/loV9DQpNPdD77RT02s4GX/4fk4esbM1
         fpgFIkK6zRK0TgUzSTK7O4pyA0PAcKNyB6qpS/7YXYTeXtyfyHnkqyhklX1yDiqMeYZD
         luWjzf6yZA0pIGHlB75EMkIGJCQVJ1Hkx1N983SB9+vYHbnxEmyyiyAlpoIF5FvLUny3
         /3c4IQ4RsnMHwOHN2nUkM3fDVjEruweAH39G8UFR+AJvMsnOkzUTaxVS6qeF4ujDCHgS
         yyCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766039074; x=1766643874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6uvKGEnhe6pjfLoE2vbLJnqxhEW8HHQ6u7PTnpBiilk=;
        b=scjoRnnR5DOEY108sCFWWsSeybO/q3gXNcmk1Wtf/10TBEh1qvE/a0588AGTAxlUOJ
         SD46t0J2nrQGJFeYPl+Ds3wkfnaSudMH8RQMrJ9F8w1BEjEngWxgkBqEK1SAtA+imIRM
         ByM/NLehm5dYQIPvN8SUt+SWUrobeVAFneMwQXNaVgqm1bVzNLqwCOz4FyYVSSkxevcc
         R7pnajDz0+aH/g/2jnFMr6n+Fm6Qh0oVHX42Zlt3F76TrWqOpT90NwA3HnnwhfDAKGcj
         gndRWSug4oSAdAB9QIOSpy8usai3VC0zY0qyf5uYhwfS36WJE0S4NKwiHT6E8XpzODQt
         4SNw==
X-Forwarded-Encrypted: i=1; AJvYcCX+QL9IOaJJ8prwJ6uv+012YTc8GMDD+9zSQN0ksnX9lHbB+A6vT1Ysy26Tzbq8wIbhLZMWaENxZi72@vger.kernel.org
X-Gm-Message-State: AOJu0YxNmrjIgEpxT/L9IPZXpxDw534AsIWv472L1sG4fI/C6w1jau5u
	qe/TZMcLb0M2OUB8NO3CCj+axQXC+wM7re/axLwdOLEkG/xDSwWukB3hsDqe1No0m42psqkCkjR
	kLRL6+JUoA0qkPxq731RsLsQaI11YAxBnP+NwcX6JiaAX8NEMf5fENPmqDGjAeJPc
X-Gm-Gg: AY/fxX5pUBYP6q8Z+y3XWUvsIjV0oWla6GLTIyUPnd0J+ZzE9bb3s+OQ9hzeUNFvSAh
	uv1kP3FIePW8zK5NE1Ys1/VJKJ1NR2nJqsFipIuNW9Rs05mGtHmKYvnAPoZA0uaiqYV3S47UQXf
	Tmw6y9Og5/dpEX4QSkhqtmj5kZrGBRLz+64mdwBL7uvfSM+Ym33lHmWG+JVzcgaELLitBwaJs3j
	KTGtN2dmooOHJvQlbINOG4I9UsBywPGuJqAT79w6Md79TzU7mN4YWCby+DkmC9wwneTz4LQY6I5
	zOkICBoWN+wSUR4vpQCECcqs8FvrH/i8f10ttF8fDi53G5+OGcVcDNoSQjfTankgDhdg/2MTvJu
	v+6MGaw+U0mHwkAx2rZMRjA8RIy0wE+Z14fgzhog+ug5/UiWglg==
X-Received: by 2002:a05:6a20:4306:b0:366:1e4c:e6dc with SMTP id adf61e73a8af0-369ad9d825amr18490201637.3.1766039073583;
        Wed, 17 Dec 2025 22:24:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiyTPRMnsbhCkfiENIikkJGznn0RbyEhUjF2FXxdiraJgjxsN9O0XTm9l0bMUuqzjp/DDR5g==
X-Received: by 2002:a05:6a20:4306:b0:366:1e4c:e6dc with SMTP id adf61e73a8af0-369ad9d825amr18490176637.3.1766039072988;
        Wed, 17 Dec 2025 22:24:32 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fe0eb24d7dsm1433161b3a.0.2025.12.17.22.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 22:24:32 -0800 (PST)
From: Venkata Gopi Nagaraju Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 11:54:07 +0530
Subject: [PATCH v3 1/2] dt-bindings: bridge: lt9211c: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-add-lt9211c-bridge-v3-1-1ee0670a0db2@oss.qualcomm.com>
References: <20251218-add-lt9211c-bridge-v3-0-1ee0670a0db2@oss.qualcomm.com>
In-Reply-To: <20251218-add-lt9211c-bridge-v3-0-1ee0670a0db2@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766039060; l=3457;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=7q9+o7KY/Qy4pzF2+VsQ5yxUwbBaD/W5k7jescl7Efs=;
 b=v8rkInL5CgcZZZvMO0StOu/K6sIaUsbER9QWkNYqLQ0+dJ6l61G3mD6ItJ96I9u/YmvmThdEG
 vnXVnw5+YvnB5psVbkKSRloXwjCkbGm2IG9WTfkkyT2qwi3OyPFbDe1
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-ORIG-GUID: -Pl10XPIyo-0dlpzPBnpTXol3-BWTJHE
X-Authority-Analysis: v=2.4 cv=Q/HfIo2a c=1 sm=1 tr=0 ts=69439e22 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=Xc6W96i5Xe6cDM1WBtQA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: -Pl10XPIyo-0dlpzPBnpTXol3-BWTJHE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA1MCBTYWx0ZWRfXyZkUP4LHRe0k
 28qY6gjWBSZ+8T5R2qp4KQH6k0xrbW8xE9FEoCH2J3O3HKC68PX4vJS9SsjWgl+EQ6AcTAoZyrR
 sblmz5dT1n2c7FsLv/dvnG2NFgrhqf7V9+yleAAMWo30EVt17RGMIsDtSj5QiQ0UrrEqDAjJ7zR
 qBAxGdQGqGsr8Rkwyrjaqp9kMN7KZZGpS+NlrwaI9bFLc7ffJ0reWnK9WL5356/ikBJiiUxBq8g
 aS6fGw0HuFCYUUB7Nd/GiYvuKsvCKknwpN1wZipBzsSuOWJ488Bk6QHKV6zT7gEa4fWrWnfepm7
 QpuiOSG42HAFCjyBIxafHehMHR7+whP86hOD4rQSSvdciiuPYdWGkbkwhE0c2RYoSWZ3bb6fl+I
 4GEimIwYPJSnvzCQajKGYB56pfvACw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180050

From: Yi Zhang <zhanyi@qti.qualcomm.com>

Add bindings for lt9211c.

Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 .../bindings/display/bridge/lontium,lt9211c.yaml   | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211c.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211c.yaml
new file mode 100644
index 000000000000..619f718618d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211c.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt9211c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT9211C DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  The LT9211C are bridge devices which convert Single/Dual-Link DSI/LVDS
+  or Single DPI to Single/Dual-Link DSI/LVDS or Single DPI.
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt9211c
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to active high RESET pin.
+
+  vccio-supply:
+    description: Regulator for 1.8V IO power.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Primary MIPI DSI port-1 for MIPI input or
+          LVDS port-1 for LVDS input or DPI input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional MIPI port-2 for MIPI input or LVDS port-2
+          for LVDS input. Used in combination with primary
+          port-1 to drive higher resolution displays
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Primary MIPI DSI port-1 for MIPI output or
+          LVDS port-1 for LVDS output or DPI output.
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional MIPI port-2 for MIPI output or LVDS port-2
+          for LVDS output. Used in combination with primary
+          port-1 to drive higher resolution displays.
+
+    required:
+      - port@0
+      - port@2
+
+required:
+  - compatible
+  - reg
+  - vccio-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      lvds-bridge@3b {
+        compatible = "lontium,lt9211c";
+        reg = <0x3b>;
+
+        reset-gpios = <&tlmm 128 GPIO_ACTIVE_HIGH>;
+
+        vccio-supply = <&lt9211c_1v8>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+
+            endpoint {
+              remote-endpoint = <&dsi0_out>;
+            };
+          };
+
+          port@2 {
+            reg = <2>;
+
+            endpoint {
+              remote-endpoint = <&panel_in_lvds>;
+            };
+          };
+        };
+      };
+    };
+
+...

-- 
2.34.1


