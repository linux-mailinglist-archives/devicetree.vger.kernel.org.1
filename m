Return-Path: <devicetree+bounces-249399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F52FCDB91E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 329753032FF3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9186932ABC6;
	Wed, 24 Dec 2025 07:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WtU8emUI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="foI347Pp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA35513AF2
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766560321; cv=none; b=U/CKI1fEuUCp5hM2y3UGO/kc3q3ExgE3QQN0i8rb6CPG+1se5u24OtGEzo6qQpf+oSgc0PTqpOvKS9lMbkyviCp3HrLBfi2mOUxW78VMffLnlnpCFiCRvWvPF5GuGlhZQtXTz7EkI64C/rCbFbc0EEkhq+J89LnVM6rpsGqGpVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766560321; c=relaxed/simple;
	bh=5NPWrOeqD//utJO3LRtdoVjbKuz28kd6rOAhLnF/cMo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n5xN4iU6FtIw5FiYEdp/xK3i+yVSlG+HCsp8LNtaokPeI4r5U+KSAHaxtmQu7OHst51ixnsTKQWyumZNFFSKaArLrER3OK98cKZgLd0l2zzyl5vS7qy28VauGKE3NQnQPIZkGon0YAjhYVJJ19nxaMfEXFr3oJU4/Lie+AmXho4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WtU8emUI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=foI347Pp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3wVoF3796889
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2YfFfMSB4exFplLupweAVHt/pUfFT0Wd3bKSpsIdM24=; b=WtU8emUIOhpvv+m3
	WeKl1dZWFpzWOEsgc9g3P+wMIZZ/JGxX1ItqIEew+BvBsPT+zxDpdyB+c9dXmYjy
	bl8z7dTIFboe5TPp8TM/gSD47ulMlIcMf+auV7JB/WT742NcpgDiEKkwKwy5Qx6r
	RN9McbkqK/fymZQdhhFUyQVOfSCkXx6ddg+sz/nR0ZlaBkMSD5mCzpPwynDg/N4b
	H/ipfrAgdphL3t9xyLt8fcSP0xVVZXZdMx5SsQTU6KgfyxRoejDOWgl2N35uDGRS
	KbS6GciPmjf5us+CaA8YdwlQ6hBAtU9uyKaTsY118wvcoFjAz1Csmy7gRs0uZS7b
	vSxT4g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b88r68dxr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:59 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ed2so6202101a91.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 23:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766560318; x=1767165118; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YfFfMSB4exFplLupweAVHt/pUfFT0Wd3bKSpsIdM24=;
        b=foI347PpbKWu3o8jYN7BN6rmdFf9+mZaStUNQpag7WXVaM+2+fKjnj+6t4Kb85TVLQ
         TJ2Eg56I1dkjaFFbZ/WKK0QcfckMU2D6qhuk5d4DZC1RND5v921sySy1IexSgf3D5Ng1
         TuJNg3GA5n5r7TdgFD1/DenGKiynU6VmHlt9RNu44u0e8Lp6Q1K1cT2FPeP3zSWWrInM
         AvpxUnqtUsWTmrx4GW0qc2xpG9ngcIddW2PSkrbRGucMAkhq8sAhjup3T07S1pm9G7S3
         j6BXLydbVEckE8nvWYsqXJ+GFLS5j6+5l2Uj1uxuNokjv9Hy4M3g028vuSzTXAANafpn
         yAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766560318; x=1767165118;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2YfFfMSB4exFplLupweAVHt/pUfFT0Wd3bKSpsIdM24=;
        b=UFGWt5tTu6UDvtR4wPDsXhUm/Wm5oPtInmZb/xvF6FrsraY50iqYIsyKZXo02qdud8
         MVXyIAyblIqPIuu1vFIxKSPmiqFENyEl/CvF5spDKmI17fw729LZjk9gNhYvejOJ0PDW
         KPmLE3OeTyv1U3UbhXVnBQZU0GYo+WUqtzOm3oUplUVFvXlyOv0KdP02TRYIHm69lszk
         t0oypej0VzLsGPqc0eA7DFzTQt78Vn+WhwwB417UGvQreK597CErekXxEFH0mkyX9ehj
         pivjaMJbwC87yGLqZJd5cNDljrl6/MpYFRcZY8jTe/37+W9ZhDr96BqbCZCWp9UaCFWp
         +NTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLINgGlgXLnaXLiBudPN7Go9oGLIcXFQUTVHVuwuSFDivSJ+OBpUjeBJRTV33a/LTW0+79Q0aEV5xA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd1cO7H0NIYEw2B7VDld8PqjRc87N2lsN9ohqUNNXyCeZ4abol
	88Tz3Piz7XW2a1bH88KIEPQbmQyAHncaFuaWpgHoy1O9jUPgTTnkdBUzA5KLH/HSCYDiC2fvA66
	2Aj7g2RSmsja05GHbHKH9k+U3jPyLUew/J+HmiwLRu7r8ofBHbm7fRA+3Rp0d8OW1
X-Gm-Gg: AY/fxX5cK0j3C1CE1Z2C2yGaLy8sr7Qbj404oY2PgQnC7I4LD/OuyUMy38LMlOjejaC
	YuD0B6VEGn8hoTLD0Zd1Nhe529kszoZd6qjEOyjLoQAFUW5R0AkYFXgRXsDOVUW58abvX7WbOCO
	4HvXUhKvGVhoOR68rknK3FhQgleYb5mnzWyRrIOTz0aQTTKgV41O4E49eESeikeIPCNdHhS0T31
	xJjkFDAw3mM37E/afmuRTiiKNcAsDPilxW/GSbfJUEm/0B2YkncR+rL9+TfWMoDuGGaxYiDD+Xb
	Y2ryTEyxXki2HY7ti84XS1pRDKHIgAiFnDbIqmgkf8XMPRG7NZ4Y/FAEw7T2bGGdW8+N5Mvgs94
	j2VhZ/aqV/s8Obpn4EmqkLPHMZq5hUOGJ6ZIAYtEGEP7B33sKSA==
X-Received: by 2002:a17:90b:2248:b0:340:7b2e:64cc with SMTP id 98e67ed59e1d1-34e921353d3mr15053981a91.15.1766560318377;
        Tue, 23 Dec 2025 23:11:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExx/RAYAffGknp8W9r275ggkrkV7HXP1HEd06LyL1fEDWRjxE4J83htW2R0rnM8BM/TmyhiA==
X-Received: by 2002:a17:90b:2248:b0:340:7b2e:64cc with SMTP id 98e67ed59e1d1-34e921353d3mr15053955a91.15.1766560317860;
        Tue, 23 Dec 2025 23:11:57 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm8977146a91.0.2025.12.23.23.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 23:11:57 -0800 (PST)
From: Venkata Gopi Nagaraju Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:41:40 +0530
Subject: [PATCH v4 1/2] dt-bindings: bridge: lt9211c: Add bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-add-lt9211c-bridge-v4-1-406e73ec28c5@oss.qualcomm.com>
References: <20251224-add-lt9211c-bridge-v4-0-406e73ec28c5@oss.qualcomm.com>
In-Reply-To: <20251224-add-lt9211c-bridge-v4-0-406e73ec28c5@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766560305; l=2323;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=d7nkcVTQqp03kvoFSTF6KcENWWENfBKsBJBvo2yMm9c=;
 b=/ZOd6I6G0zKL8vJQa0CP3RYCfnKVVXNUAwUmgWyR4V0PpM5w2oU8YnZVyk2PcWX6bJsCR7tTB
 j9jeE4nJoRxCv7fOhRvwRjn5wk7mMroAEFIemxB3ht8cCPesPrZJUvX
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-GUID: OoD18_FV7rS0QRv61wla-z5EqxkY7sBB
X-Proofpoint-ORIG-GUID: OoD18_FV7rS0QRv61wla-z5EqxkY7sBB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA2MCBTYWx0ZWRfX8q7fXaKFev06
 WKM8gmFyYcE+bMN8Zfa/ZDuLqzyP2QArRcrAYLayAVFgfnsEj4zfd4DZXC2f1Tz93nPSPklIY+F
 NfCOZZ8eZojZwF3C2zcE66J9X8iwXovHYkgfpRUZ0+7OXQ0Q+mmDibeyfRo+3EELh8V8XV0x/Jv
 j+/0yBA8xpOBZ1yOucaEkyiZlLXhC8TB4ADXie3g4dcd9nO128JKsONK0zll9kgxs4hgm/LrdW4
 1R9GleCBq6woDMTSu3FeIp8uhUjWcVkKO/uQmzCQ7Mc4ll+6E7+DxrhRtKtf16pqox0t/SbluJ9
 sgEuGgWPQGeKqFY7h1/6CH9Of6OGJeAgIk40P5y2FGNySLkVgjH8xlLlJl8XO26Ql+pFFu/+Fr5
 SAtfDyLopdGnhf4wFU6hYR/JnRgiM9yJJgC+avi3bMNMR1QV05DQ4T05lBBaVBweUsDW4Ej6t2l
 ggioODopukSTStP3iZg==
X-Authority-Analysis: v=2.4 cv=Qahrf8bv c=1 sm=1 tr=0 ts=694b923f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=GNq8Cu9_-0EbQeekDTwA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240060

From: Yi Zhang <zhanyi@qti.qualcomm.com>

Add bindings for lt9211c.

Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 .../bindings/display/bridge/lontium,lt9211.yaml    | 42 ++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
index 9a6e9b25d14a..98079df61cbb 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
@@ -4,19 +4,20 @@
 $id: http://devicetree.org/schemas/display/bridge/lontium,lt9211.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Lontium LT9211 DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
+title: Lontium LT9211/LT9211C DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
 
 maintainers:
   - Marek Vasut <marex@denx.de>
 
 description: |
-  The LT9211 are bridge devices which convert Single/Dual-Link DSI/LVDS
+  The LT9211 and LT9211C are bridge devices which convert Single/Dual-Link DSI/LVDS
   or Single DPI to Single/Dual-Link DSI/LVDS or Single DPI.
 
 properties:
   compatible:
     enum:
       - lontium,lt9211
+      - lontium,lt9211c
 
   reg:
     maxItems: 1
@@ -91,6 +92,43 @@ examples:
 
         vccio-supply = <&lt9211_1v8>;
 
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
+  - |
+    #include <dt-bindings/gpio/gpio.h>
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
         ports {
           #address-cells = <1>;
           #size-cells = <0>;

-- 
2.34.1


