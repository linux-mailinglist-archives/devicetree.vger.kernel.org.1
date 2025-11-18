Return-Path: <devicetree+bounces-239610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F67C67481
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 86CED4F0B1D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2D32BD030;
	Tue, 18 Nov 2025 04:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YSFMwG4X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e+4SKRGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C628C014
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440677; cv=none; b=Nod+XSGUvNoZn8ROmf32FkPk/2kS/W3KTb8W6EzZg8c77UbPQzdHNqInhc7p0Dmt1vaqnJFQMTUWCrewIP+L4ms6J+UAu49HhQi0m3i9H/fxYdJv9dyj2JtN5XUIDNABVJSNsUhleCytH+zLVva2K+O93vctn4reT9i3IgXSluE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440677; c=relaxed/simple;
	bh=qz4Xz5Ldc9/otglui7guw4sFZjWQzTzl5rBch2+0xBw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K5gcSj805oFGOFdIwx0XQrkgnyJplCAMv18eR2iUhXP75hLyBG5CQBNSOKRUY+WV13TCUbdC+NfA35WpA9QF9Y5OHIFdwEqC5gs1OGND4svCdQ4nCgOGBIodisYIV7lH9Rah56g3ruzaB2UbGHMaLiClUiqFZ27DPUDqk33LPMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YSFMwG4X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e+4SKRGb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHJbhme4107434
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6zDYrYdR+iycJ0sYRVFXMBXVR05ePvLN9oUY6h+GbOs=; b=YSFMwG4XQp7sdhPQ
	EO90LHMxcIs8FVq4UYUJdX0kDJbJaH+m84VQew4F5LxnBMv7zXzryzNqg1HQKuZE
	tQDjzHx8lBhDn3Oro81tKyEYn1651kcWf7IcjzYDjY8MoeZWfLl2Y2txMPhKU1pW
	rU+RS+uttR3YKO7r7oaStLWCqIVjMBVjzJrc8D9pldwG6UAmwtPrlpmXQCRABmFr
	LT37bOZCNKg5xypTzZILs2IGrX61EC0XZa94XQ2CPdvx6KnPqHw6DZNorfxQpzmY
	aCfPAwBVNUqyUTQMC0+Jw39VCJf8kV7HPrPtlLTF3N0s3dLuBejk8pva8gRI/saf
	6RxGVw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hpaqgp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2957babd7aeso18222645ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763440674; x=1764045474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6zDYrYdR+iycJ0sYRVFXMBXVR05ePvLN9oUY6h+GbOs=;
        b=e+4SKRGbHVCTUPz1OV+SQr1n9UlAUEcPOHodi/Hvlm3sJBa9M0K6omBsyP4RLDOls2
         wW8AGq+fHNnFzLCFCeeEWALaP8OSMlRhN0jN8tGJkIDWD1lUOhMtJa/4UDCOmO/Yi2wW
         1r9ZCN6df3j5KySuMVebc9O3KHl0roYTD+J7sKxyHDwrey0kQouD2hnpWogaxP6IF/r0
         w3oKKgfqyK9grN725SZXWGISVrZmnTYuNeZUgbc49cn91JibqLorZZg3Tv/Ya8WCOMm0
         EUchGynPBzSR9tBZ1NQ6IJOyG7449XIsjpwt69DbiJPvgeqLjwDkWwaTAtWWjhxFK3QD
         rUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763440674; x=1764045474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6zDYrYdR+iycJ0sYRVFXMBXVR05ePvLN9oUY6h+GbOs=;
        b=HddwyOapGSE7VFwP5L2fYB5oPfXJolB5dRo/ge90mtD/SnWmF3tc0aX53gN9CUDmYM
         cDBex6UF1tlLSx3kS9jPtBXFoQ4vBeDs1ABCOM6mnqipBflCNr/gC+2KSwjwhV2C8I4N
         oTCm6+P81j+bqGDF5zg0XLhIbKMbYFymfXZXbOJUysnVtKpSFcw418AEryhzgxXQmZy6
         FRvXxZBaqQTwx78YgWj0XzjMniGtVNqfxWOu0K4eajfuxvIcDvBd/j+cttQhi2rv5AM+
         Jgu3nMGxovxkWAWTDCaOIZOGSUYpHyxHPV/GXCzQmA0ia3d/I8Oa4Vg+6b08wcBK9m42
         SG4w==
X-Forwarded-Encrypted: i=1; AJvYcCUC0b7HFAMk+AtjanVeCPqHqLgyKcTEhMIPzR44dyG+wGjAZSj9cVJevrESDc+vQNzfK6zwpVLHD2f2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3BuWLy2Om9GU8IRk3Y6fJpOW6yp0EczMjyakrKcjxauNtOQL0
	l5oUnTKqVha+q6mOqjhLOb5l6WWx1Dv5djX26ShJtoBWA9YgOrRBc0JZwjzn2e47KsKXFL7s+8d
	+/2DyxOyNdseWslbmLTcKtOrWgbg8SqBE1kGaImfx62TXJPe+QZuIP6bhU6nMg+b4
X-Gm-Gg: ASbGncukB8rdY3cgi/r3brTTGzwfZQf0Peq0jj4whqRWkllgAhEVT2Y8mZool+Y2hPF
	vk8go9vZPKs2ouJB1FkxBSsjP5VxuOFWgEexidxo2xzer2Pe8yrVQKY1gwxOPF2O0WX5BGOXXok
	+l/xHy5PFk9T+oK7FzCnFKgWhLQpR0Eqzd9YX/QZPrqQLbOpkGtP5y5FZqmUhmcZmFwfTI67ZV8
	js7dt4PhNGDI3Ku0n7iEY7Ok5qzefaXEwc3UYiB/mtkTF00CHjK7QK/4scrttWWZUX8jAXQTYl8
	hvAkQDUI9f6/gBEA51QZZiFW67Zv4fzkrfELUVTRHS93CL4Cv5QHS87TLNc3UmiCQ3va2mNL9W7
	tmKkmIrZjh2nwYLoT56gYEcbjXbZDuVy08oS4Tcg2BGGOBF/RSOg+tl0F3aEDclqANQcpUPGxAh
	9KD7gtrl1AOgsiDD9QAww=
X-Received: by 2002:a17:903:38c8:b0:299:e041:ecd6 with SMTP id d9443c01a7336-299f65b6d93mr10616125ad.8.1763440674041;
        Mon, 17 Nov 2025 20:37:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0IvWP+z6wJPIorOdhkrTefI+9g5lpBqNUGn5qAJvKMh8WBTovxSfMz+uG47qChzgT+Aj74w==
X-Received: by 2002:a17:903:38c8:b0:299:e041:ecd6 with SMTP id d9443c01a7336-299f65b6d93mr10615955ad.8.1763440673537;
        Mon, 17 Nov 2025 20:37:53 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccafesm157426315ad.97.2025.11.17.20.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:37:53 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:07:08 +0530
Subject: [PATCH v2 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-lt8713sx-bridge-driver-v2-1-25ad49280a11@oss.qualcomm.com>
References: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
In-Reply-To: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763440662; l=2011;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=qz4Xz5Ldc9/otglui7guw4sFZjWQzTzl5rBch2+0xBw=;
 b=zqsKdI0DfPPtTVM0wc2TE1ThgxYOwQljX5vANAFuXAW/JUpgZoQvCGXMaguDjdTySskvt1xew
 xCdlSxzBDaXAPbHqltM6gpMY502FChFM3NpwYj+1SaOtp6XoaVYzI7I
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-GUID: Oy2SRv75rQjFOtadYsiJS9gtFbrkGGoL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMyBTYWx0ZWRfXxyL5TzyKliTV
 mfiZVeeHeyc3JauBfMmjbzsR4fz0fnW74exu/ja6sKuSm09n8Ox5tIqq0jD4KvCEqWnoJ565SME
 rkKQj8UPyxAIFr16Sp/vhQH8KntTs6Y2I3OC4RyLR/EMGbhT9WD66rJSSnaTz7Y4fQG9cjPzp7E
 CPqjJ7ZwsMs6Bq7ye+jO2vgOeaHRtpBamYnnbrkYzUrl81G6GC+TMTnUpuGwcB6vmWDtmSpl6FU
 /RRPAO+L1pFw4JDuNBU0zuL104ej/hhTdham87oTb+RQ3JNCGpO+l3PlYhT1HNUW8X2FUxIUZED
 om0Wko6oTjkjcQkMhrctt7b8b5HSPu99/aoWQewCDH3BkggkNktH720zO6IK0GpzJvgsi+U9LSQ
 S0NXyc6A2maRCtB6MTJ3XBODS4L24w==
X-Proofpoint-ORIG-GUID: Oy2SRv75rQjFOtadYsiJS9gtFbrkGGoL
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691bf823 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8
 a=0rundtbkkiGdurUZRnIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180033

Add bindings for lt8713sx.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml | 52 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
new file mode 100644
index 000000000000..3fb7e042c688
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
@@ -0,0 +1,52 @@
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
+    description: GPIO connected to active high RESET pin.
+
+required:
+  - compatible
+  - reg
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
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
+        };
+    };

-- 
2.34.1


