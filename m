Return-Path: <devicetree+bounces-249932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 658D2CE4B5A
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 12:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 745893007FFD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 11:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01AE12C2349;
	Sun, 28 Dec 2025 11:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D3MW3z40";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dF0q2Ul5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D8C24167F
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766922096; cv=none; b=DbbMVj8u+L4X/iJZ2Wear4qKMNAhwVuRYtQB/S/UKTaKDa6UPwpEhBfjetWFGAxioTTYwt+A2WIXGpxtMYmW4gFCjx+PdIS0Nemz8vAdabEP68KOV7niyF8ip90EHOj5ohoZqhksvtkucL1p+EDBIhvt0vxsbRj0w3fEGxrZ6jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766922096; c=relaxed/simple;
	bh=XVPQ7rPYmAEJm3mRiqhhzmp1bAkwnsvuW/w6LudOoJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tBfQCoSklpZEnTpjWcCAXHD9brq/oWHyXYK/TIY84dWdwwPARRAB824RqNi2P/nc0rY5u6uaV5xtWqKnGny71QPuxarV/lCq/Qo1DH5w29EfdHra43F+Vd72DWNNqzjPFqHBOeGPZxyuoAAXZ0ZaTytoEDKf/C5W5LsjZeilBK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D3MW3z40; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dF0q2Ul5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS5GXK51731321
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FNT26ndq1t4/QCNe8yPe6Cu+o316T1+uFmgBr5OVFOM=; b=D3MW3z40+TqJTav1
	19BrlbI3hdzcXV4QtIE8X7n2pp5v8RisK2k14OlGoKiDMd13JV+jdXyMVZAuGLvi
	kXu6CqlAsMWKBW7AVbZGTHKeBeib0DNBGucKITj+3av6Hat3WhamwJh6lU0Xl3Km
	bpV6BGIlX75PfliOOu83gLNe4QabThLU4AP/OfGAwyaiVVbIxoKKvBw1xjUWzKDC
	EdLwpuqCUN4XUOaW7HTiUJemS4fTDz7rq94+zkJW5sGkHcVIIJlj17yeeIASOaQv
	q7e8xHtnJdyVgyXFB8BngyDRsAkdGjkXGcMNN6QFx3YB0gAKyQRMSbFyGA6NgiYI
	G6W4qg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba55e2a5s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b87d44e265so1291831b3a.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 03:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766922088; x=1767526888; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FNT26ndq1t4/QCNe8yPe6Cu+o316T1+uFmgBr5OVFOM=;
        b=dF0q2Ul5/Va14DdSv8S87eiLcTaT9Cf6iWXml7GTB6eo4LZ8rAg7H0ikRqLbK6h5kD
         NVoCXXPPNj1KqOge/kYz42NBcHMFcgLfQvnLYxVemuIEX6xqZBrqwqQ8yE8MM+pqOEIf
         hgj8X5mbbeTY7qWULcsTOI2xd1XTgh4R17hfKC70Md5Jk5/J10eHm5LVUPNp3ST6kX7V
         wr54FPka0+9MmeYyp/WawCOYBSQyQXPDK9XgonAaWWuLZ6M3qVF6Fk+tuA87XR7NIVsz
         TWE+o2IUI1oLeyzZ5wN+iT0DBb57V85TdtfidYpsc/IxfFiTkR98xOGSrvFsyq9QC7gu
         F0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766922088; x=1767526888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FNT26ndq1t4/QCNe8yPe6Cu+o316T1+uFmgBr5OVFOM=;
        b=m8S7y9//GuOdQpZUOR7y0WFVPZKsmHUIfvbnO6YcuyAXbe9kvibc/4mBWhbEILW164
         o2P3TnX3E1pJfGUznuyVg76Wl1sw4gVF/ejvm4d/ZEni3Fw5tc39QTV4F64Hx+Pz0V8L
         4YOMpJJu41WklhH1iFv83IEHWvZLl5jHAQajtXDlib9icJ1tnHDvVBv9qewh69GDel8S
         7EcG043bXZ0zUIsse1WR0uEekbEj0M0q4ZNYFs+J8Zwlv2gGgO/ZkD2/OYFYtIRfXoEO
         Y1m50HVEZyRyHeZsWVgIoanoPKvVD1hAxDGXtLiZJf+0QOgDHHj5R3r+7Re35sbtCfCQ
         KW5A==
X-Forwarded-Encrypted: i=1; AJvYcCXeXQ/9+RD/b2d78WL+H3gDm1lBNYxyg5jdkIs1A1H4ULbtTM00NL6wlvExXG4ZheeVUQg6B/JVgnBy@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQB3dVJbTsJ77how8nysjltJ7nvPbWDFrSaSrb509IRVyZpvV
	EZH46CQrBO258HcArIoEoi5fN+/qSzjvb4YRKJUYyj2ogpt6uBA82/mBBEJ3TiQRm/zaemFaYfY
	rmzJcYDCggTdyU/jjUDsmkPpzc1nITVSGBxq6WxE+oA+wCvngO/n/5ATsBG5ODVgh
X-Gm-Gg: AY/fxX6Mc7N0M4VIpExuawqclWsbe5PY5LVBFdCDyjkHYhq/hsDDVOkPhxF3Og2rMzK
	9SuTXXKrL1xAe8sKKfCVtz4z0oDeCuwVNh90/y8I+GfkM/Sx2xuzYVCCXBdvWncSbuiTQpNbcXC
	Q/HGnj5EJp8v1hbp0vTOUoeXglId6wDyRYU1IbyZVukOiYLmfXjBE4QarH9NHbueirQPrO8DBRR
	DeIeJIDNWW7vhFBYdnG9Dr61/UpD4uBm0LHLSS5UgdH85dLuKKoP+EZ4AlvTccAbQ+dnYdhe2fD
	kq/sECLgrPIRE38+INPEupoz5l/W+kQxCfRUmQvu5loC3hX1/O+AGNxLkDmKe+WBb+kt1NE4z+A
	cx1ivyC4eSvy9W1mn/pX2JkIlhiCEjAbJrdUQNvCsicQOKa2Hbj6VKIIXLO7aITcdqSbkFt8X+A
	a8bdUEg1jYfealAshFNZPhMkMiI9X+Sw==
X-Received: by 2002:a05:6a00:2d1d:b0:7ab:9850:25fb with SMTP id d2e1a72fcca58-7ff648e4c38mr19484091b3a.2.1766922088247;
        Sun, 28 Dec 2025 03:41:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5lXiGHvxQ4uJ4M5pEORms1C0F45w/GKGFFYagT0cJBDkpxnUqrLm7f71ENER/q9umScaIqw==
X-Received: by 2002:a05:6a00:2d1d:b0:7ab:9850:25fb with SMTP id d2e1a72fcca58-7ff648e4c38mr19484071b3a.2.1766922087808;
        Sun, 28 Dec 2025 03:41:27 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e197f9asm26214067b3a.43.2025.12.28.03.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 03:41:27 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Sun, 28 Dec 2025 17:10:39 +0530
Subject: [PATCH v3 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251228-lt8713sx-bridge-driver-v3-1-9169fbef0e5b@oss.qualcomm.com>
References: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
In-Reply-To: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
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
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766922077; l=3328;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=XVPQ7rPYmAEJm3mRiqhhzmp1bAkwnsvuW/w6LudOoJk=;
 b=LraHjzxylvSG8j/1IBKt7BGO3vHl6tIWqljjLLjyhBaPzV5EKiOklZZon714wAlfVmsYNorcz
 ShxYcXM+IsnAhriKmMZWOx+qvNnXwWnk/ITJVs655y22Jr9FurnNuEu
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEwOCBTYWx0ZWRfX3uFl1NWs9Iz8
 npPzWpmppmDTRMdL4UEyo+5zc/SacYpNPAM49Lw9mCaFmBCkpsOGlIj8CUStFtvAthXL6DR88Hl
 nPnq23iTLIk6awzeUPgGYsZ6JbhZzYgiimsn8nej9DdXzj8CuXY9o0gNoV9RXJ2jKV80x5Pv1Ej
 0gyfiq8QqXQXXwvzw9HY648J+QK+wS9UBUwhG/EBhMPXVgTFkPrsDuS93d+/5BJDZ6LItlSCI3c
 561S7uvizBYRIpokTqQgYs0q7B3dQqceJml0X4A/PEZZ9rmX40niUD0B1GMQqdnAU4iP+fQd6Io
 YaQ3jf78+9ngYddfJqHDTVb2oh5JOY7D3C6a2wBUe+mS/ddBX1rUjmcDDsYOJ4XFz+d0nFFyTTe
 6mFM+Xe2eWuma8zhLTfk6rice5d3Jhyncu3aGp3XHqp/a7NDKFGwOQf1Wnk2yyE2HSI68p3bFsV
 jNnFZiZAqLba0gHhylg==
X-Authority-Analysis: v=2.4 cv=UMDQ3Sfy c=1 sm=1 tr=0 ts=69511768 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8
 a=u03R5FaqcccxyDpVlScA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-ORIG-GUID: Lv5plDj776h1V8oY71X6tc0YwQuaIqYu
X-Proofpoint-GUID: Lv5plDj776h1V8oY71X6tc0YwQuaIqYu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280108

Add bindings for lt8713sx.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 101 +++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
new file mode 100644
index 000000000000..0a6dc56e337c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
+
+maintainers:
+  - Tony <syyang@lontium.com>
+
+description:
+  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
+  that integrates one DP input and up to three configurable output interfaces
+  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt8713sx
+
+  reg:
+    maxItems: 1
+
+  vcc-supply:
+    description: Regulator for 3.3V vcc.
+
+  vdd-supply:
+    description: Regulator for 1.1V vdd.
+
+  reset-gpios:
+    description: GPIO connected to active low RESET pin.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP input from soc to bridge chip
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DP port for DP output from bridge
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Additional DP port for DP output from bridge
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        bridge@4f {
+            compatible = "lontium,lt8713sx";
+            reg = <0x4f>;
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    lt8713sx_dp_in: endpoint {
+                        remote-endpoint = <&mdss_dp0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    lt8713sx_dp0_out: endpoint {
+                        remote-endpoint = <&dp0_connector_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    lt8713sx_dp1_out: endpoint {
+                        remote-endpoint = <&dp1_connector_in>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


