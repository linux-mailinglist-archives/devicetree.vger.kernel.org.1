Return-Path: <devicetree+bounces-110061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E025299919F
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 21:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B56C280E7E
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45901E5707;
	Thu, 10 Oct 2024 18:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="ZqrSaj6g"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic308-18.consmr.mail.ir2.yahoo.com (sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15651CB53B
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 18:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.178.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728586337; cv=none; b=DiDi9HdrnfYNLvLAwbCPG3c8OgbtZ48ZiXHrCErUo6d61dWbVXZagm+QXCJgzS5oyX6eGMiwLUSp3R7r3VquCHbwKT5g0oVrLXoEzPEsJDuE79OiqU5S+2VhHQ18XazhZpbVN5a9p062Vgz4LU96CvtaGKSgxhl7iK81KYQUqN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728586337; c=relaxed/simple;
	bh=VJR9NQ2efHzfRgQtDZzAeM5DxMMYp4vaiW6QZ3ZumyM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ATmZHkxhfd8zNV9seekQBNzLRUee/eztb4sNYa8H/NW6Ss4pOY7OovZkMPPfVoIkrl7O/HZpoozu/XTJlrvN/ecUgyG0VBhX9zqZcJ4O7+f1xgDj6B+QYZ/AQmWBAyrjNN7cyJ6SSsAnUCSTjZHYdD5pMuwyIlKsC3gZmA1ahyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=ZqrSaj6g; arc=none smtp.client-ip=77.238.178.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1728586334; bh=jGaLpCXi0hWPUJkD+IJdr0e4LX3vaWBC+o7fEAUZV0c=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=ZqrSaj6gic1ZdP4dta6tCNjahq5/VKJgk+SoaSDrKscUclFHeI32rp2e1Z6rULxK2WhmmDWxVjbSg8JEBTRNZt6e6DmU7Xjw+Wa/+dFgwNDifEwOpJe492Dru9paOpNhvXFvDd98GvD8fDO74sJuKSbj2XW4f1dqtvuli8QwbfD7Twd7D1qPCBEIkty8jFHWbaDeU7Wf75bSe9bTG1AS3/SxqZwUNucK8O1Tzb3ewq3tHyoVJwHY1AoYoEN/e+q6xYtPoFloTh0LPZ562yU9k2nNvnsilh/B8CD8Hgj3gJuCdPxzU1cAvu5XGI/U2OY6eoNY8MxHmpRaew+ipXDy/g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1728586334; bh=m+SfjqZZbV8mOFUEY5X34izRJvdHcbSFg/+t2iWXasc=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=o/sh4127TXPDhDu+NT7LcVxk3GFC3BT+Ako7ijhz+oXUu7DM8ZAYgSIPPICU1SJVb3aiHHmZ8J6M0BUXNbySH0K2J9dIDTrMgL7LomqBLyel122O0LwD1o4SQGiJgfjEte/s64jzdQFDVEMol0MoG1FIzV0U7EH5usuQQVBiBssmVIh5tDlSPkyG4bIjk5i/V6xLzruLDpTLjzSdu74wiFKJ/Eks+lltiIAqu6HyB8HMZnDdCQjCIMGs7tEMMD1MRTBmFx2gHSyzGTuz9HHoxJk/4F5CU+44v+iKpJl3iVJ62Rx5T5UTnfizjFZyl1aAMmBNDz7Wsp1zfd4VKbnXHw==
X-YMail-OSG: 0567YTgVM1mMr78UotIDX9bc7iQjTl69MOE57kqUkRNSnC6dhkNM.QnAWVTpy1u
 4CbppctekZ7ZyxZY4t.GXw7tRLuybG6lE0hTnW4Hdd3js99E49zZnMBuN73Y2RvzpV3fviAWRzmY
 mqy0dpnFy8n3SskYK9QIo4dRCteFv5qIukJm.juSSXA2GeQW3sVdhcvKCFY7lQD7Sqk8t4cfxBTO
 vF7_1_J4W.izFWHTXYNwQpdChEz.v08OzUqQTpprNQfcd5TNc85eCBICz.68Hl3fSu4y962_v8Wo
 MraPdh5h1e_cgknnRlwqOtjSBkiGay5.Qtro_GqIdreJDPDhyLqmekn_Am9r4rFNHmS__72SJb2b
 v6Qq82eDnLnRXWP8aftG1dkgy8BimfzuLYnd.DD0IkWdjCJofDAt1JtxW8tYrarvh0DMPKTgmqS7
 8si4MDX2nlcgzyc53ulXXzmNRw2HiZ2DrrQvnOKwBXwAUr0IT2WABGG8bi3Kisx_._Ze4xy0B60X
 QFamoy7tb5yEMFzp_382qPATroeiV8fcJPtt65Nta.1nohtiKPIdmbPnlYHPeFDa35iFhYXHrVx9
 ppWvY8sdSNXnfMsUsNG2sHLzHx4dz5V2jGWvEtcTMoFgI4xST0DE3hEqcwpWF6x4Me5WB0YHtZkN
 BO_8XFcjvCAJERrnCmM9L.fBYaL_QEhV_Zt_8vQsmnJesul8klXDEw3uv0Jgh71w16Rq7S4fiA8B
 4Ot.Mzr4Oe_tFpQqokbv2nsq_0CaqltyMhY4FyW464qm3uXwII60DYwt.V7dqulN5cDhEPUx0aAv
 T4VkrZjNjTc3g2rmtIKkwfWrxo5EU4l_OEuADOzgJXZViGMCK6IUfA1lX4CnjWuYG4PtdUY_stBD
 dtYvKTWuZ7SoqodXJ9rBFTulx5pOzoVs33H.NTDntCyNCNiTX9cJPhA0C7lDcuEaTX2z7m89sHgG
 pv38mp0vSI33ttKeKkyOasAf3GYLQc1u8XNAPqhDFzPK7GIS4CyK1FevO7bx2davLMiPuFCs_p_E
 RPMwHzTDu2W6gq1A0OaASfZCAT2zVkjUr6TnFXQ8FfPAg9QVre_isCEUQUMEOQ4KBx2.fEzo7Kd7
 gcciWuu6JsCJTq5DCmBA.QCDcSImZFSsa9dGqsi2LD9UE.uUkZoviUq9uBj3962vbhB5oMF3xWfN
 UkrH.aSplr87bnWYdFwAe8Q4qempNqlRMMN3G.ymQ69eWMSG48ma7T8aTSt2kyg4xXd18FShBlzs
 8hr2wBgfrEZp9LAYRmJDUlKhgBLqjXnmgF_KnxRFnC5Sigrans3jadsIQlqGIqrDMbpE3pNuPbfh
 AXlKe69jWK.fdEVENvbIBKZosTfYPc3dC7SwOUB5tdWpRY_sXf.oRL3_bSDVNSCEd1eC3VH69bPe
 bvMbiwCe84lYB7G.VbQy59qMHZQxFZHEuICKN55SfuzCvJyc8ahW3qvTsJOgg4f1Ml3mJjNYGch.
 J1laZkRbX.UWehJ2hAYFhLs9VUpcBGq8dlyLfucJk5_SD4OwLjUxWy.3sgIzfPHGGoWX6IqQDBPr
 IGXuwPcoZV0nZyHZmFrsQGPoqjEZRkBJNKDu9wp88JFuyOa9Imm5HYrL9a6YYI9FY7orgja_iKeK
 L8.aNJJEd66umiwoQbYsxdBdSJJEon38zlQKeZczg8jfvibq0TUBvVWCH6wSDKrn8T2ANlgpYmc4
 EuA0oPdcekLjmaBg2SVzSYN5Md5lNDluWcWa722m77B7W9_DS_Ac.SBJkwtdsdBZr2Ss2zhrpxGl
 Qt6Ae6v_W.3asFVB7Njp..Lmo3HxzeioImv7YQcALaYamYha1.GCCxenVDfhwwwpWe6rwsDqLcBs
 fOvkxQ_0ZglEIH6BMXfZCauClSQsIEZ.O9ZEfl3oMTnPtjqlHbC3uUFzd1cjxWuslMUXGV.vhN.R
 RztrxoEhGlLx4IUaTN6dkg1JfzA2fRKYnJ08sAI_p6LGJyNtuoKapstwiLtyS_QL8deM7WCRCeDI
 7Fjv9GOFMLUcJOOwoTN.4vN7e4N13k69OI.jc6djQgnbSSCtAxg7EX8SGzeZGbEBWbdkx9rhUMBp
 yXZG56XtP11UdgBCDDfhmg0tzZOAQLpbt_ZJwPKTzqOm7HY8EGh_T4dOdsQaKRuQdPprn.fiNoAE
 72kyx4bCE7eho9qaVBiKfAxx1PVuTWioOM2Z01PqyhXBuLS1ZB8xSJCrgU6XW5CJNwcdWu5gD23k
 aukZC9YthHe8SuCXcb.Ec1loQ72872E_NQS3mp1EGRvRl2T_u0sggUA1mfGlYWieea7TRLMiiv4r
 eo.zd5mCPxUlbZcfU9Ozz8DGFJhOa5swe6OUbVuF6pvK8ITRHgOf.UvYd
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: a791284e-38df-4ff6-a31a-4522ea5a0e80
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ir2.yahoo.com with HTTP; Thu, 10 Oct 2024 18:52:14 +0000
Received: by hermes--production-ir2-6664f499fc-97g4x (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 7a7b462d09211a1a6528a42ebeb90f61;
          Thu, 10 Oct 2024 18:31:57 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH 1/4] dt-bindings: display: panel: Add Samsung S6E88A0-AMS427AP24 bindings
Date: Thu, 10 Oct 2024 20:31:48 +0200
Message-Id: <3d754a2ee538d4c99ab71340706297d54b767c35.1728582727.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1728582727.git.jahau@rocketmail.com>
References: <cover.1728582727.git.jahau@rocketmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Samsung AMS427AP24 panel with S6E88A0 controller.

Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
---
Patch is based on https://gitlab.freedesktop.org/drm/misc/kernel.git
current branch drm-misc-next.
---
 .../panel/samsung,s6e88a0-ams427ap24.yaml     | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml
new file mode 100644
index 000000000000..7010d3bbd07f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,s6e88a0-ams427ap24.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS427AP24 panel with S6E88A0 controller
+
+maintainers:
+  - Jakob Hauser <jahau@rocketmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,s6e88a0-ams427ap24
+
+  reg:
+    maxItems: 1
+
+  port: true
+  reset-gpios: true
+
+  vdd3-supply:
+    description: core voltage supply
+
+  vci-supply:
+    description: voltage supply for analog circuits
+
+  flip-horizontal:
+    description: boolean to flip image horizontally
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - port
+  - reset-gpios
+  - vdd3-supply
+  - vci-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            panel@0 {
+                    compatible = "samsung,s6e88a0-ams427ap24";
+                    reg = <0>;
+
+                    vdd3-supply = <&pm8916_l17>;
+                    vci-supply = <&pm8916_l6>;
+                    reset-gpios = <&tlmm 25 GPIO_ACTIVE_LOW>;
+                    flip-horizontal;
+
+                    port {
+                            panel_in: endpoint {
+                                    remote-endpoint = <&mdss_dsi0_out>;
+                            };
+                    };
+            };
+    };
-- 
2.39.5


