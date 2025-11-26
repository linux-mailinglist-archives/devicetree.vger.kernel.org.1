Return-Path: <devicetree+bounces-242302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E8EC89088
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:44:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAB943B3134
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F05831D381;
	Wed, 26 Nov 2025 09:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hvatAegm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gvprkAvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8227F2F692C
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150125; cv=none; b=qaKeNcJb+Sktdo4u2HccOr/Wbj3d6S0Ji0CHQG2lWVAodstsvy+97FLAgGUTMAWFMYA2hPhegvAadkHUAcrgyCerNFnmKw4CDVeyIbyeie+CiewgTvQ0TQBFEe1xVzYPMhJqeb1bQvS0RugzjuEeN+D1hwd4A2Xo+UHqtoHWLmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150125; c=relaxed/simple;
	bh=PEszj94UmZrlOqu8kjPM06p3g5SyuWzzyqxwFEqmxnw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Va6JtPfHaKDbreDpeSv1rHZENFmkhz8HCK6+Dwyz8NjLuxN50on0kb7EbS1QNVSuSYBoY7140qdYAv0s0Y61BkQdCJb1tEYb04cP6raSpIWu+B8VQZ1lsL0TeF+dermI0XA++1+BkNgxDBE/G3Rp01rZKNGsa1EG8X1/s2KXSqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hvatAegm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gvprkAvZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ6Fd3Y3587808
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:42:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JJkgW/Uvf1cq5FzERoTioInV4MshvX7rg+ISf0Tc/jQ=; b=hvatAegm9j/RX6Wb
	97zkFE09DunLqK1t7gU6iYvloVe5Ml9F2QWtLhtFnYDB2IBlb31w7poF+mnU231e
	dELddOLh/IL9w0I6Gh+OFVVg3xjQU3GgVeME3S5q/44AAU8REbWCD9629NndApVx
	1Y0CNp9WyXSgus9IwXaUJU3WRPW0YAWEe5pHIXF1JZ+vbglIE7kbi/qowgilgMTl
	ny8ER5JuJKFm865XlXfJUA94SuC6M/18GYL1RFYVrxj0saEzEmguyzSIc4ytJMg8
	fwlW6CWWOHRdqS+DRXrhA7H9J7//Oyr4amSjgqeYG2LGjhV7J+lFEm59+3HsvqMZ
	WUqlIQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ang792e3n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:42:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8823c1345c0so72072946d6.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764150122; x=1764754922; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JJkgW/Uvf1cq5FzERoTioInV4MshvX7rg+ISf0Tc/jQ=;
        b=gvprkAvZvoC9UQcu76G7rWZns6IJ9teU0SW2d0+3GXewdCVVczMTyLra+7xbsXe7K3
         euefU1Mu6x2Oh65Zv8Q689YBOdxtYVQykcHscpVTEtCjehT56o9FB9qHiJzDdl/Il6iE
         7ZjF2QV1nnAr1XNmrppfxmPvR9286JOj85YsE1+o0zr0FdOP7XKP479xtXiIivmzwXig
         08Ds9tDX9NcMlNZnZBpGj60kGZz590q0gDRnVXQN3RJSd66mov3iP9bnEqk2bKjua/zG
         6AR1eZEPrGdEXdHPxoHWgN/tc/VIf8QwsRo9EebqC+JZhHM5k4chPgwSyWEjgnmUN6hB
         l8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764150122; x=1764754922;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JJkgW/Uvf1cq5FzERoTioInV4MshvX7rg+ISf0Tc/jQ=;
        b=I4ym2i60BOKg2UnRhOR1irOLn3k23HGc+K9dJVF+Shya72skI2U6GM/kl2q6bI+7ck
         qnlDjUHU0JkG53GmJ/c1WNE8DruOt7ImyRRw8Yg9b7acrd4FO9VMtu8fm/JnAnnRpiTY
         69YbFNtkJy9+Ay6FJleefq2w1K1nU8115MEkGHG+UrRr0E2gw5a+6K5L9k9B42/q9qNq
         UWqVm8TMuIROXQwIhfONtzTMpqoJbBgtWfHxA6hHDGD7uI6XbK+MFZOSYnNwSnMXY25S
         +x2WBx8l6sFlGnaHNBkfv3o3WieTh/fiM+ZREA9fvTl3xWSXtlHGWKVfTu4FSXlU+P4h
         AzEg==
X-Forwarded-Encrypted: i=1; AJvYcCW9qWHtSMrD5nLvtUpv6wmV5zi7pkYwELaHOzgsz7QsqFM7GZszfUEjtvtxsWzHoh2LXqck2CYYgv8o@vger.kernel.org
X-Gm-Message-State: AOJu0YxcYV9Y+hcrPrlp2veSDhZvZI0QBEw9ge9d4uTe4vUQIrWJQzD7
	kTPBPrzcK4ezRQxepEz9N5ZVorAgAPUo0ic1g4xohcwoN/hAaX/2A8tHlmRKShNtf6e2ikAoc/g
	ESVq28G6rpp4vZk1EQK9ePF0orGCIER2zE2nbBxP9N5ecmEjkiEL5YUs6duc9dRgW
X-Gm-Gg: ASbGncvh/YFfmmbCh/EJzkvWqCURXiWQfDSz5MtPUSENZ8YTi4KXTDEcsX8WhiRqHCs
	moEugYWWUt12Xo79AB91DVhaSmR5+orlBZgOIqTYaG/jD9gzk534XrQm8onyWBoD8ymlqkmypay
	d+mc4+8Y415mYsn/gkc0N9KMYIUnVj5PfMmAIsDBwTqP1iAdqoRXi5yfrS/U0qpRV9CDTtxrfMo
	BqTR+Z8j0J+GJ7ZXiOMP/gPGpXrlYwU4dZL+9cqcaQJ3fCZtJuhSx7TFRcxEP1GEI1e0C7VT1d/
	AFCsbw6bF54Smv6Q7db4XNiLPHkVpy3MV11Ksrjs16LKslbg9x+wR/jEwIas6AlJf4Mc0SLIP1C
	zP8pRHbpFfxuoH41MWW0sIdo2oG3iZWW2RvGGerhAKYL9M0+WSOMSJXPhxRL8lFZc9+xvxEVq+4
	Zy3zDQ7ZeyEOjSTP104YaVODM=
X-Received: by 2002:a05:6214:519b:b0:87c:1ec5:841e with SMTP id 6a1803df08f44-8863ae886e8mr90713856d6.8.1764150121474;
        Wed, 26 Nov 2025 01:42:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGC5djSElZsKO3EDcFcfPi617QMf6JHLy+ZCw0r27LCZYcjpxFAaKu0JzF2v/wVweu3a2cxyw==
X-Received: by 2002:a05:6214:519b:b0:87c:1ec5:841e with SMTP id 6a1803df08f44-8863ae886e8mr90713396d6.8.1764150120843;
        Wed, 26 Nov 2025 01:42:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbee86sm5772682e87.49.2025.11.26.01.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 01:42:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 11:41:56 +0200
Subject: [PATCH RFC 1/2] dt-bindings: drm/bridge: anx7625: describe Type-C
 connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-anx7625-typec-v1-1-22b30f846a88@oss.qualcomm.com>
References: <20251126-anx7625-typec-v1-0-22b30f846a88@oss.qualcomm.com>
In-Reply-To: <20251126-anx7625-typec-v1-0-22b30f846a88@oss.qualcomm.com>
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
        Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3940;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=PEszj94UmZrlOqu8kjPM06p3g5SyuWzzyqxwFEqmxnw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ6ba6bRssQeqcj6b7rLaCO0L60k8JJpme8ViR2pz+4pj2
 lqn9nJ0MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAicQLs/91fFodYy9e11jF1
 KErtCsku5Vxiv1rDWCuvctlD9XzT1kSH82Zi+RKPHrWKLY8T4ZONnSn8Jbdx54HV7rrdjxTvnii
 4s20V440Tj3ex/L50S3kmt7Lr/MpvWzp2StUZJsh7HO7gffLQiX+V18kLzxzmqiyoKqrUkP1cMX
 uP42/Nsu5LUobxWu/KVIs/lmc6rPzfIb7u+ZrpmmeNf6zXjy81VzzZvyjXjynmRb9xrtafe/t2P
 uJeUnVxW+pl5tQYzi2BgR9UrrntkJz9a/WeX87LJ6tO9Ve7oHpngdWZW7/WystdUGzQnJFlz9hY
 VmbqG55u/dN/9edwx18lXh0+1UWVdlc3h8xeybiqhjcZAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=P9Q3RyAu c=1 sm=1 tr=0 ts=6926cb6a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eOiPeOEgsxahVY17qz8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: SeywjzIRmjVV-v5ZK4RVL3kI9n8BACgH
X-Proofpoint-ORIG-GUID: SeywjzIRmjVV-v5ZK4RVL3kI9n8BACgH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA3OSBTYWx0ZWRfX2Gz/SpUw7gYm
 W9wds8En4+7rfd42y/tfr5UUwb2idYc/mVz7gqJy43PtElL3iwSR5JnXOVnrHy5lfTfkCDbEiLR
 eKs7CJOPrrpYTk77Sh1nP9k+aLeSpD1ZsuECLaED0/GAu9qohxdkLTKEq8rdIvMGXcNRE0Dh+rA
 faljKZkruOHh3qHvyGHZIrcQo3GoNhTJ6PvxCL2WltYp7P0eMCaFWr2fu2hiNhc/N13w94eHolf
 AIJzhRpz73pVJ/8Muf52tjr4yzxDq8Lwepjw06eNY9qeLKc4pn6TIMJUCUI3Zx2hMaVXbDp4igA
 WadejoERbxFNeF78slLjJnbcB+Id67CPgV4j69ptGmXyyygWEHyl0bH/dZ55zW+89mbe8nfrpF5
 P40SfghG/p5v+4A0QbPOaIwBy6nxPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260079

ANX7625 can be used to mux converted video stream with the USB signals
on a Type-C connector. Describe the optional connector subnode, make it
exclusive with the AUX bus and port@1 as it is impossible to have both
eDP panel and USB-C connector.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/bridge/analogix,anx7625.yaml  | 98 +++++++++++++++++++++-
 1 file changed, 97 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index a1ed1004651b9a8c13474d8a3cda153a4ae6d210..6ad466952c02dbba0b1dd9b7de11e56514a438e1 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -85,6 +85,11 @@ properties:
   aux-bus:
     $ref: /schemas/display/dp-aux-bus.yaml#
 
+  connector:
+    type: object
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -117,7 +122,6 @@ properties:
 
     required:
       - port@0
-      - port@1
 
 required:
   - compatible
@@ -127,6 +131,28 @@ required:
   - vdd33-supply
   - ports
 
+allOf:
+  - if:
+      required:
+        - aux-bus
+        - connector
+    then:
+      false
+
+  - if:
+      required:
+        - connector
+    then:
+      properties:
+        ports:
+          properties:
+            port@1: false
+    else:
+      properties:
+        ports:
+          required:
+            - port@1
+
 additionalProperties: false
 
 examples:
@@ -185,3 +211,73 @@ examples:
             };
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        encoder@58 {
+            compatible = "analogix,anx7625";
+            reg = <0x58>;
+            enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
+            vdd10-supply = <&pp1000_mipibrdg>;
+            vdd18-supply = <&pp1800_mipibrdg>;
+            vdd33-supply = <&pp3300_mipibrdg>;
+            analogix,audio-enable;
+            analogix,lane0-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+            analogix,lane1-swing = /bits/ 8 <0x14 0x54 0x64 0x74>;
+
+            connector {
+                compatible = "usb-c-connector";
+                power-role = "dual";
+                data-role = "dual";
+                vbus-supply = <&vbus_reg>;
+
+                ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                        reg = <0>;
+
+                        endpoint {
+                            remote-endpoint = <&usb_hs>;
+                        };
+                    };
+
+                    port@1 {
+                        reg = <1>;
+
+                        endpoint {
+                            remote-endpoint = <&usb_ss>;
+                        };
+                    };
+
+                    port@2 {
+                        reg = <2>;
+
+                        endpoint {
+                            remote-endpoint = <&usb_sbu>;
+                        };
+                    };
+                };
+            };
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    endpoint {
+                        remote-endpoint = <&mipi_dsi>;
+                        bus-type = <7>;
+                        data-lanes = <0 1 2 3>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.47.3


