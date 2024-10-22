Return-Path: <devicetree+bounces-114416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCA29AB8F5
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 23:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B25FD1C22635
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 21:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0B81CBEA6;
	Tue, 22 Oct 2024 21:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="i0w6FLmN"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic313-21.consmr.mail.ir2.yahoo.com (sonic313-21.consmr.mail.ir2.yahoo.com [77.238.179.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F58C1386BF
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 21:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.179.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729633437; cv=none; b=YTnKnc+kDIlbA60jbcD+KkmTv10TEaX1QGi2vn41PtM6hj76RKBZdSaGLosnOjS1d74N9logdP6nJUPZ93QFaSal3Wwx+A/JZ6wX29x1sSEhlbow1VFGH3gL94eqYa+2XbcEQ+1T+uJxkTWZ8NFxCpig0eOZco1w0vbYFiElFhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729633437; c=relaxed/simple;
	bh=RegJKiBGxwgweFPkPSvVWKX/zlPgHsITBveAyYs1u8M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rlprV82FZh4Vu3WYIMAX8XucpNvo8c2CkWMyWs2RsMNbtSAbBD5VEBvjmcFQYDaQNGt1T3n6wPKlioxHumw2qH/S+u6i3M3OBQk782Tz5W5VhpeLdhD4HHRpqsXHIk1k7XiQBA1Nec4WbCWEiZCfw0NduQMVuBakjx3HAQEreP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=i0w6FLmN; arc=none smtp.client-ip=77.238.179.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1729633434; bh=h1lCgSE/gU2KPLaP5RWKCCeTWknmeiwR4F3guZcmDrA=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=i0w6FLmNmLyMnacGgVHHcrMMhBZA47AA3OUu0qT+qfIpkDr0dZEu/onjAcRGZxN0EhYtIhm/6HKELnw/9EWMZhu5/MyXwceXxp+S/X8iXhiv4LUUlDm0jOgN1cLKq3ophtBWBuoGKrpwyPEKTgSitn7UHzSaYjDwshfrK8+OjbJ1YaF+6zAvyD5qDa1PhIG5XkYFJtJ4+s/ci1H2OP3bUuebsRs4DDczI94CamXZAXC5V6K7W1X1Iz7PwAQNClVNdomS5tKjzYfe4gf9k0kiOpW6SDTkLfhZF0eQMs4jF+EVEmzp7l8P8Q8OwGrVy+GethgFv/UCNLcZ5jy0HV41rw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1729633434; bh=59TFwLsIeYPGPJqGjeDhs5Jf2ZkwxmqQNJF4KB+lDX+=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=jBGfUSBpTMIx8Ua8zQaUZKQ8CnoMQodsnyhGZxiXpkvHHojHDHlg60QUQ3DDoDAxMu0FsG+V/vWOrjKUw86csCOeAE4QvWu4cT1d35rVNox7AhFcMEq5T4apHTPH10T+linhv4ZBa36tnk4KodONp55sTdOop6A1KLkUE+82vs73+SQ+NqyDE1e+i1Nqp34ZtCmT2XGmmRUmmdtoLaRb1jI8o2HPdwAW0HqNakCuGbhGJZDKOiRHPhWzj4dZZr0ueCtzwGSkpNj/9DU8ZFhTd5M1vy+FM/u7o6ykLQyzape3efpV/uDd+KDaYAPtN3s1zXbu6Vf7FRAoNxNthq3Alw==
X-YMail-OSG: uYbzB0QVM1mf1dkM1r4zs7YmR3EcQvTldkkAyoGCJ1L6tw9eLrGuzDyeRmFUpWr
 HVDrPj2_hGi2YdbM_LxPpapgAoQhc6HFt8ZMzEpc_o.fJeQUQqVjBRQbUsGaBdNg176DcLWV8u9A
 FjcjqOBgyHD173eSN41njm_ys_2Xyh_BfGzoPE8bPnPIFeINjd5nYvduHe6ke8Y6KGaWkW1B.guK
 bN93gFIAO8IjaWGu.gKc0EVq22fsn6FU6OKWfb5mOt.1MthzSeLmHJeIbRnYjQCI4czZXvR_C7fg
 p5p62nuGPiaqQNjPgPFZh2skCTLQTKs0ob21Rmjg0TjTgd2up79mTd4EKnIb9DCacFFdj9WMLI2v
 bH4t18BmJ0apy_NFnkSp0gK3cAYOuq42oK7PCMGs_NvFg5DaxdHyEh6ZT527QEFsStciOSS3pQP.
 dv7xVECLgKmyUHsJDT2vwy_LsaSjxoYP9DmVfwQgBkjtugwQycI9BixtQqGLTpPiV81LU4CCRrY5
 0gFSIRKJvStJRi_lGuelIza8xbgKoDh.6zsFfLEGrwttCSig9hTPZOMms2ScRbiuixE73rkahXP0
 ctl7QyCf_VwAK6xcQccSLSAGK3PNjkz7ejRDN6h2SFEZNnbESy4BTB3dPx.SBpds4AYX8cbglY9a
 Oi0sQftcsFgyq8zocoq2VhEgZCgxOx8iBvuOoki92Ood6jRhGv9HaFhU02cHcUK5rvaN0MkdWhQf
 LFn3xYvKozYDukEq2o5lhJ3X6sYbtu_cdEXtsZPjiZrSFw2FA7icSDH3Fcn.X5HazsyS35HXrCva
 mVF07mlP4udE_nl97Yh9sK4XeDVIEG_imfU5xB7DM3FkS4fRF5ie5dsT8JNdLhKulzsc1pHPzbrV
 N0h5P8mnd8.fBgzWYsXmMfPOH512rjLXeyAdZo8xqHN6u4cQZxippgnQFHlKJrTd83NUt15T.7vF
 _1Qtm4Ns8Vxm_9QZybHX2wzKYxum.Up3hoYknxcaypebTuj3leqcBd.DKVvQWNxXz2u6Cm6gvzK1
 JWv_d4Vjig7Svk6m1hbMbMQgffIGAx2q5H5Qvy7CoKcfADIVUZ.jfKsbdmxE.pPlZ0GuOJxUf79f
 mbpPl8M5yd8PfjpR9H_BdrcC0a_AFGhW7ZYptC2eB0fW7JdI36HqvX1P80L1Ap52CXgSwl9fIIdS
 0Hn6xJcKnKPV4hfhPdm.TntqhdhVtxJoutnzmnSgIMqCCkNU6O9DYIyqQEWKzMIvYEZBDhppqzj5
 W2mkMbyhOAmFQl.N7M.C2G5IwVzrTx9RFmQ_VfPgL_N4CGt30LJvx0HyIIE_zGJpDjbHDA5970UM
 dJ6JqavepvGLUZLOw2Ms3OhEexAFLCNesZG021fDQt7gnXjhzU8twjbYi6DZt9TCz0wms.2.tlCl
 jylCSQIF8dLLv206Dx59FGSFrcE6SB1X1XX5xjsskkONzbEbyl9CfMkbdv9V9hMBsB2i1HyzThNq
 VNrDlr2QqoADsJqYZAbniHZpLL.S8aWT3pZtPazM4JcrK6Vt8NTfLpM1FACfAvWRgH5lucXBENcD
 dmEuonndgzsbuWB9NTulxnuOms1z1pyOU.wsBpPKDQ8iCmnyD3qVwrV3yC9SJ8rpLXw8czIC83iY
 E0Ca42o4qyO5FsmP7_vYOm5Zx1OshkvK5RTnAbvsd1I5OIv.IL734nie8jiovy.RXltfkgtt21N.
 x7l4WWL7bIrszu1RnhMQWM2M8IUxyNfcZV8iCawim6LxEi.X4CaorsAOuxpOUML3EFkvotkjm6Td
 B2vlw091Xdql099C9dMeZo_P7IPnpkdgzRPMUv69Llh1Vm6zCEff687YSHN2pUVz7wJsZWe2ihYl
 4jrGJPe4kLBkwkeFgCwBf6PyGifSJubl44NVHMjdaGTg02gzNKzRkg_at0fYeI88Y6nCOWli6l3q
 kXfGdoy13ekbu.IC.jfNcBYZ1OWqMjn7dtTk1eWjq3l4hD67mtZY2fPqIe.pKQXCS04vh62zLSJb
 7C2SM0ujA2.VblWyLnfe4tpfQ33zXFsqunC5zJbxGdhms9O1QacOskq9BIzCb9P20pK5vjjbF9CW
 pFAiId.n02KqhM.Qf2ChEi6_xxM8_pQppv8J_8ddd.j.7ovgicNyyhJMWWw1iEawgMfIbU5_Y8Og
 7tVyDVijPekmBaWlMMxkJYLB6iyloFYLPTietPuGt7bW3MB7B2I_OmoG7Wtf_s5ZoqdvZKFObJ6z
 qXMBSUjCXNSGDCb_CACjYIzyIPJRdFs2W6Mh1lHX77ul_9y2V.ORJdYSdTvIPN2vDyKd03mRb.jF
 h_yIV4Dp9G0ee2NHDDc1TxuLl8Rc0QOjJv7HhOSdH2GHUVrvK
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: eb9a8438-892f-4e82-aa11-b6e2c1ab0dcb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ir2.yahoo.com with HTTP; Tue, 22 Oct 2024 21:43:54 +0000
Received: by hermes--production-ir2-c694d79d9-qjs6q (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 00a5d0a4af66107c7c1614b6d685cac8;
          Tue, 22 Oct 2024 21:33:45 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH v2 2/5] dt-bindings: display: panel: Add Samsung S6E88A0-AMS427AP24 bindings
Date: Tue, 22 Oct 2024 23:33:36 +0200
Message-Id: <25370285451d9c22204dfbaa368d48c22efd1eef.1729630039.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729630039.git.jahau@rocketmail.com>
References: <cover.1729630039.git.jahau@rocketmail.com>
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
Patch is based on current branch drm-misc-next.

Changes in v2:
 - Adapted property "flip-horizontal" to being moved to "panel-common.yaml".
---
 .../panel/samsung,s6e88a0-ams427ap24.yaml     | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml
new file mode 100644
index 000000000000..2677bc578dde
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml
@@ -0,0 +1,65 @@
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
+  flip-horizontal: true
+
+  vdd3-supply:
+    description: core voltage supply
+
+  vci-supply:
+    description: voltage supply for analog circuits
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


