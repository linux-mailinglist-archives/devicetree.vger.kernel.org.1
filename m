Return-Path: <devicetree+bounces-236114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C3AC40046
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6B7AB4ECE7F
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56D825A2A5;
	Fri,  7 Nov 2025 13:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuLzNU32";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hda3PcoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097F1299928
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520598; cv=none; b=WqqopC97MCtQV3G4DBwBFtLlbw1VC/X2a52VgsvW7d1tix6Adu0S+eTreCpJS6qKj+qH8g+lIYCYPaGshUGGwLqIyvLzj+BBQPE/ksWA4m+T7RoCP8X9oyfHV8JPs23BBmEbP1h0n2XQUwQdh1deGrrf9/v7cideR1FE+mZdUyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520598; c=relaxed/simple;
	bh=gaAkl13+hLTaTFl4XxH8wVSJLs+i2Xf9TdiN3O4IE9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NDSMYepC+KIh17xt07mUbAPFSJnkWxqznxvS8yKgCvNsFNN0yodVQP7X4vYEYJpDR35VIz7nGzqJfrjwxyhUoMrsGT2CSQnSjAza2AK+e2pXtF2UUwVueXky1nUh8wCiiiutMdxVF3LExeCIdhejPWTVPT3BmutX9pflWZBy4GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuLzNU32; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hda3PcoI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A7B0RpA2878602
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 13:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G40SlKpdS7e4bW3M9vZNvOUg9wFUDrREVO2yeCjm1Ic=; b=KuLzNU32VFXX3PL/
	Ly7KFKRWsRRyLpP96a5isxEzitSNgTn5+T30TrrEwtIQib4Eeh4UGzXneti/Cv58
	ldMRMgT3Sw6BUmajVsmqgCth+M1q/sAYuqLh/soLPAK65vwH7G53GgLL/Z6YTZC3
	9iB/f777v+mjf51rXsrb2lSaJ3qNF3irGl96B/XwySGlbOpQxADN6jmo6W6FyoTG
	FfHIhyb66k5D3+IxyxFXn3yayLydpdWRlhJSl1X+8XU6rpgnydLF8M2uJonRjI9I
	ajux0KUL1zv03p9C+Q3M6nd45WJY5JV2yrDvKDK1lYSNLUZ2N/hW/gOb5j35JCGO
	tWtFFg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9fh1r9yc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 13:03:16 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29085106b99so14547765ad.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762520595; x=1763125395; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G40SlKpdS7e4bW3M9vZNvOUg9wFUDrREVO2yeCjm1Ic=;
        b=hda3PcoIPY4myvZQXIrOpqzb6wqiyFn+IbmZqKWgRLKdpsCRaRggkqDzoOcETk6G6+
         NTrXtqRCFEwRHcGBNMuOXwGIB9gttiGezWVsP2oJQooTHXqh26CRfgwP0K2RrUKfaggx
         ibDWs+FNnyOGOpBZrHRI+xCrc4vkA0i5kq45nsFOA6yhhrbTladl3BDJn+hBQhRJRdYJ
         DZxMAwKl1RjF7S0seINLty2x26meYWu0eDzka67MqlJArhaLtTkKWaD0S2l4MT2QVOY8
         zPdld8uueT2v56tA36G4jW0djdkuri2y6gJwyvF0jHRXrib0NMZYmudIgBvqPlzucTHm
         z0wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762520595; x=1763125395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G40SlKpdS7e4bW3M9vZNvOUg9wFUDrREVO2yeCjm1Ic=;
        b=vsHC83QmJ9iMTvDxz+YCuqE7tDL5mjSzWmGp9iIUKruvHBQh4VF9nGwzZ8qUayFqKm
         HnCGWLd7YDF1rooJkwtFs8EeqX7sgs4F3z8B/g0KIlPUAS1T8i4J48lQ4ESYJ/eMylp/
         fwKjEVruXvLKoJdZL1JP8FQfrGLX+5ZlYlkbW7RbGFIkoyLuUOzX138h8B3ZTF1neJJH
         z4elWov3EfJB+h8Q866XsAAfQobn9+SeCpXZUd+p5VyQsbVfZyzIXqfReKXivrj1wyvI
         8NRNPsqpUR28FU2EVGvZCXgK2IP2pm9AFxGl0cn73Iz9TTkjiLnSNoUMMCJxE83UXyCK
         RNog==
X-Forwarded-Encrypted: i=1; AJvYcCXXmYqAXHZHIilX0vGP0wWKB1pt5h0Zk+bhS8jZ4WB2FkZb8fBmS6I1iK1Ekc5xe88lN//AEPm7tQh+@vger.kernel.org
X-Gm-Message-State: AOJu0YxXZcX28vhoNAqbl0igjdP2l0AaEfFXTmQHiyJY1duEPvQSrZ+J
	gEn3r3fqI80Ef7bpmRbFVVtv3uWJ3WHQjRAFwPq+Tc5Am7oMWcOCFexw36EVl+KYcyPtpy1j4Nf
	gHZioyYVIUmmxCqGDAcjNh/Idd31I74PhWfK0GIfB9ar9YXYUX6iJ7M5+2dpZo8Jk9onaX+A=
X-Gm-Gg: ASbGncviFxng7jkHxpwWVGK3ZXvuidRpr4OP2Y1JWwSTKQ0hoNHSxhT7lrkZ5Rl8dpv
	4vtFdbCfALGyZUxS6vckStZcpz5NSGXYk/GZQAeTm5jwgd02OrPGt9rxFYkvVLJvRTQ2RtQq5OB
	/WCCEnYXjsv0UaDYqxwek5EEe53i22SZAfEi4W+Y6d5toU6elVXat2NyHV1Zzn4XrYXLz96sgNu
	wyhlnOYxYc9UYKxFzzjjXW5bkviTzUtko6nH4MBAFkElSQLWERXKZpBMsimwoGWXTIVw/VPkDvQ
	GiNK6ytdV9ttU1VeEVaC7RSIQNfeYJHYXvfIEKqJOO7Ibc73shR4hgYXFsPmczSuhDgdTClg02n
	49SZEaFisLOGSW5kf1aHEjkDf
X-Received: by 2002:a17:903:384f:b0:28d:18d3:46cb with SMTP id d9443c01a7336-297c03d8fcbmr44202285ad.20.1762520595193;
        Fri, 07 Nov 2025 05:03:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1NShUF3UtYHtrjbPiVmio0Nnbx07gYYOUbClFgiyLSaZbhV+891/JDNA6u3MCcjSBxwtjDw==
X-Received: by 2002:a17:903:384f:b0:28d:18d3:46cb with SMTP id d9443c01a7336-297c03d8fcbmr44201605ad.20.1762520594431;
        Fri, 07 Nov 2025 05:03:14 -0800 (PST)
Received: from hu-nlaad-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509680e5sm62477745ad.1.2025.11.07.05.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 05:03:13 -0800 (PST)
From: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
Date: Fri, 07 Nov 2025 18:32:58 +0530
Subject: [PATCH v2 1/2] dt-bindings: bridge: lt9211c: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-add-lt9211c-bridge-v2-1-b0616e23407c@oss.qualcomm.com>
References: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
In-Reply-To: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
X-Mailer: b4 0.15-dev-a9b2a
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762520582; l=3387;
 i=nilesh.laad@oss.qualcomm.com; s=20250718; h=from:subject:message-id;
 bh=Cc83NWmW1/dAnYephO+V19Kl2afDLNqD9vMBq15QmpU=;
 b=xZrZ3hN+em7gs+lxlTPFVBXdsZC4IcKxjtImY2IMxTEIRL62qrDH8Z8INVgQpZxriJ4DSXywX
 oh1E1F9PH+QCQzv7eUv6jv5t3h/E8gq1HgY99ZjjtuxrMy2iSMe0I8h
X-Developer-Key: i=nilesh.laad@oss.qualcomm.com; a=ed25519;
 pk=MjLHvGipC16awutyYh0FnLpT1nPxL/Cs1dCevHMrrD4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDEwNiBTYWx0ZWRfX57XT3Vx+bDP5
 rcFbxw+u4+4yA9GN7U5Y/NbQUTFkbDqsRfn7gNP38m1L8WXgj5J91Gko91EFTWGWNWz09pbMxkV
 2vvbbWxTsAgERu3k1BSb/cOifEh7CiYUg/oJ97tD65mtrJdkP/6Q2OfHuSQfwxqUG+V/emI532c
 dADksZFNoVt0eqLVWhR5FZUIpmAhmuNizLV9jV/f0g9c8JK77uImFTmZ+bwBNKPd6J06gA7/5cU
 9JnrzWqe3fm29SxmScLfRTIpyF28i0MED+AC77VrjGqUjP0C9J8vgTfketwMg3stMD0dP3zIlnm
 WY/dzKRlpLJsjEjllrjo49IFOH/qcB9dOpX9QpmL2Q7TXLZJYk/1GxKHZijnJGO9E11vhB5u9yu
 Sww87R9psNv6YSIoJwMcjPJsxJ08rg==
X-Proofpoint-GUID: FonaFEzhQx3KLiIux_bCVfGqvDNMnBNG
X-Proofpoint-ORIG-GUID: FonaFEzhQx3KLiIux_bCVfGqvDNMnBNG
X-Authority-Analysis: v=2.4 cv=IcuKmGqa c=1 sm=1 tr=0 ts=690dee14 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=Xc6W96i5Xe6cDM1WBtQA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070106

From: Yi Zhang <zhanyi@qti.qualcomm.com>

Add bindings for lt9211c.

Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
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
2.50.1


