Return-Path: <devicetree+bounces-114419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4EB9AB924
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 23:55:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65898283CBB
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 21:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413B21CF7B5;
	Tue, 22 Oct 2024 21:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="NaLpigaU"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic313-21.consmr.mail.ir2.yahoo.com (sonic313-21.consmr.mail.ir2.yahoo.com [77.238.179.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1121CF5E6
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 21:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.179.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729634045; cv=none; b=HQEnghc4CFVwIpNCDeUKBjMWo/Ret1nI2w9m7OhpoWTWpHAZDQRbpb7514oXeBiqXen8Ebxt2dCDkuobXaQviqQVz3Xn1KRGvTeld569RqAgow0xRrc2Bs+EBnORXUeHfx7Em1rW+NvO/6FviIihEktZCwhLpmzp8U0840000bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729634045; c=relaxed/simple;
	bh=A4JEG/x1eiD5OwarMmoYKLbNX11tvnNQAUqUU0bfEMc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eyf3u87LGYx9LIJCC+/xF+sEG5TQ8KDBS1kXqunVMElq7SQXPD/l0PpUfK39aLfYE/mBJq/vAF/+7AU7z/i5qyNGd+OOTx39l0UBv9qUhlld1ep/N+9aMxkfYJTLIxxgS592JH4YkjeZw0bZFyS+A8iscl85cfaSWE5YFz5Ygas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=NaLpigaU; arc=none smtp.client-ip=77.238.179.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1729634041; bh=d3PSEJTlHbO4B5aoyFLEaPY5Crw8mhVYCvAnnHlRSn8=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=NaLpigaU+hz3jTmMAh7KDu3lt7gY0mpe2R+mT9zJBpG1yXreh78OowTy1QzRQJHAXUYgp3jDBYlvCrbh+p/kCYdDGZc1aW8zKjhAM0oxgVdG0BFIQA//KDv0DlNRMatotgoHGLaj7uA2iGLqS+ro3JntvntqAmHw9b7yIA8v9GLS4niIF9WsCWCkxOpJE8zLbKyH5Po/pqisoODTQr+h2rEIDMedvAQAEAoOivX8m0Q/fRN5A+yGT2mckqkhNEgn1gP4MVFpNJ0dIgww5pJULDJok0IDlcHI3sbjgjTpckRixjh5mqmwQN9rFGLXBVIRnnASexOvqD6En5osYehN9g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1729634041; bh=es7kl20MIEFoLOTOBS3I6lExlRmWHqrHfwoAM0+8VA4=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=a0AayU209dlco6Dmg8nrq9asqgo2cYtIMEL0nnRQaXd+udq/rHU3YOUz4PmeIoH4O5HPSgRsYiiKND1p6NJIA2XaP3jL3/TRavwg7vvPHeeE7KiCfCIvzrrWdjK/XjEMPJ/n6QERu00LyakBCeV3nKurKAfqot7/zFMIb+AefHoA9+UA2sPxddEKIZrB2puKcd01eM3ud5oOT1uOdr8doMdHoqFvuW6lC6LVWk//2fsBaNK7PkNjI3Sn2naBfIX5CBOaQHo9OH+tYeOoCdYivBW+lrien7+7pxxYvaamLw1eDOGetkUOLq1UYDciyqOnijDPsgLLZnaAVtZ6bbpXkg==
X-YMail-OSG: GLsio1IVM1mKs4yXXBRW3KPsMmqnPkjezU.SxLtA_aeZLg_qwVKLRv.Z9sWuOgD
 f.0DMgZBiDjtzCe7N7xuvcZYPu1._HK7E8NPUhzHI_Gx0P2f_pgdUsitPeD3.YvXfskm71C20QNy
 C9.N1cM6rPvpIcH3KX6oLS0oS6gh_lInSKTx5fZzk6KSu6CDNdmuB7slHsLaCWjsNCM14p6mNxpd
 wBph03h98eyOrme7_2190WhuqpgxbEFrhrBcOCZZA81cGB.gW_.fvKzbYTYPEKD5NETIji4UaBq.
 dxcdcI3MA5H.sTsqfCYt597zjd53Buh5WrT1chAfo1walXQg88FGw0Cl3BwJgJSmy3EPjcZBu_a.
 BVDDFydACk0NGD78LHeG0YuKonrqaoozGY13oYdqqJxQ7haQC7meOrxeGwxRohOlESLnN3X5xPZ5
 fFwE0z31oTdbnhz..OTrYFqCpY.sFlLSe8ArrcVsJxylc.4yUnuZ51MCudzfTaitXkDzJ7gNu587
 wjgYWUln_xFikPIOWsPzKJFZPOFQGrpyS25z8eHYZsYWjZGh1typ93BqyJ5hfssOO7sISZrChoy5
 rAN4O9Ef6C_dqeR5OML99MYACS6Fha02STpfjlPqOEfuLycBN.b1iQsvUpmHk_1P8Nxglo.nlWkK
 u9hwB..YlayiHwpMdE9J4OUrdPA3RxC1nfrwldn9DUj96bt5Y51p_UuI0Zj1OFaociYnhrkAl5T8
 WKyjpfyQi.QdKuIBsySJtAiJUp9sYIV1VlQjrhXwLscNjcARGe9u4LVb4WfjDQHz1m4LSF8ChVp0
 O77Bq_tOxGyVByFe9P9O9g5dQbxbFR6rQhgTwLjBgKSOm1zeic6PaskKRePtSiHnrJ4nT4jXz8bw
 Ap4lJ_2cHy8t9mSD.nCsb882DpREOQZ3QBRnq7C41Bom5Sxavi0WkLTIdRLAvySidrSKk8UIzs4J
 SEbibKRJC61uA7ODQDFUvuuk.aRUNS6ewMsgj3Vsmmzirp1vWGJtBe0yQxPtWSp4hGPdIvKTzahu
 JgHbJFjySFb6De6U3Fn2AHscW6x7oUg6tVpmLCm3uTvQtnssRDydegBRtHRP1CEBMpu.OFePuuEq
 1EPf_gcSuPfrwtb8RdT2oBJyDVI3FKzyBFbKnHV9nfluIFTHchmq24Rfil4ZCEKyKUHjTsr5UHsZ
 MkzA5P0Xx1biiPh0ad8U00RW.97UiuwvgjVuk9P0UFQgM1QMTTQ3AEwuAEoAnzz2L_iKm0Eut3LN
 jRho02w5SaGMfobXL1nc95g9ye01fIkd0YLsvmowwesxpbQUfo2PPHXu3MMotQap1hzgTeHg.NLA
 2jMrSPFsEuTMh06jSDbbevUwRxN00hrf2SWBkjXGuZ8iv2AiRNG1i1wGFxxR4N9QiAqzMshso4oi
 jsTjA7skhMiGKaj1nFIUbd1pu6ONhe6isb.NKjVaMM6BQZNtcSiCd5uR6oOb4o8kH9n3wEcEKJDx
 oQit2IuAxdnGjpRXunx8kVU_Vu_LbLEWlXNiXb9J2ICX8fQWLald3tduLZeB_PAPaN1Z7MHu4_mZ
 21JlmzvPsuxq1qD66r1_mxwNotNZsUizBZip4Bw9TwbQu_Ju58CqEGHQeN20SO5QcBFynxuVkLYS
 SLWMlyIlYw.KiLQHsHhE58_K8dL1wnEDnlczBUKGJpPtGD8gwVaV3tC96dxaz1bWMl1WuUxEswXD
 18wrPe8m2lvTJfs0qGlWY1AkFxbDDp3pWXes.qAKDt70rDzGxIPLKddk7B2fxqnNRJQ265Gzt8Q.
 Z_uS_PI4yww0vo841HJx1CiEE2Y8RYZm4hpNYmcdPhXx4GayOpKQu73jWcx5GkCKfXbA27vdyU2R
 K6lyO7s2BwURIZ4pL3cuUoXqEjz40Q5d4S_ZGANcychzJZvfuAv4L95p0wVOjuWXvv9NI.a7wcK2
 vjPnozKRD5TeyHDxWFCwi9jJu1VczDxVt0_a7YC3AtNKBbnFuXDDe40zRkI5Hh9d25levDDFbDkZ
 bd7ldJv97LJq0NxcoqqPiFRoPG3yjOQqt1AbdUgau6gDWXn.pm_REoVp.ryUY51fW7MTHPBScP0V
 F5QD5jq.Lkv3bhYzH1BSNtTN91tvCrCY7oqvGZfjYxuZBWtPzm1E0w5OINGN5Y0G6khH8Qbqysp8
 8kd2GE32d2jW9Ndr0Y7ynUI.CNkXtbrhPjo2WQiCNNIhPF4lyCmzXguyRjBy4kb_Q1lcQa9OaCXy
 V0MGlUvJMhySUjJ59g1qVFsqI_88An8SxrCVUiOx6tHEuNCT83TNKZ.ju4X58W.nOrt300lK_GUG
 y3HL8Gmd2lO.WI_Q_XUY3I96XHqjPxnSzFbywV2RHk0kY9jMh
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: 393e00c1-eac6-48ce-a59e-5499b218adc1
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ir2.yahoo.com with HTTP; Tue, 22 Oct 2024 21:54:01 +0000
Received: by hermes--production-ir2-c694d79d9-qjs6q (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 00a5d0a4af66107c7c1614b6d685cac8;
          Tue, 22 Oct 2024 21:33:44 +0000 (UTC)
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
Subject: [PATCH v2 1/5] dt-bindings: display: panel: Move flip properties to panel-common
Date: Tue, 22 Oct 2024 23:33:35 +0200
Message-Id: <18a0d8787b5714633a574f2e15f0cec1addddcfc.1729630039.git.jahau@rocketmail.com>
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

The flip properties were used by "samsung,s6e8aa0.yaml" only so far. By
introducing "samsung,s6e88a0-ams427ap24.yaml" they become more common.

Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
---
Patch is based on current branch drm-misc-next.
---
 .../bindings/display/panel/panel-common.yaml           |  8 ++++++++
 .../bindings/display/panel/samsung,s6e8aa0.yaml        | 10 ++--------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
index 0a57a31f4f3d..087415753d60 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
@@ -51,6 +51,14 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [0, 90, 180, 270]
 
+  flip-horizontal:
+    description: boolean to flip image horizontally
+    type: boolean
+
+  flip-vertical:
+    description: boolean to flip image vertically
+    type: boolean
+
   # Display Timings
   panel-timing:
     description:
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.yaml
index 4601fa460680..19c8cc83db97 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa0.yaml
@@ -21,6 +21,8 @@ properties:
 
   reset-gpios: true
   display-timings: true
+  flip-horizontal: true
+  flip-vertical: true
 
   vdd3-supply:
     description: core voltage supply
@@ -46,14 +48,6 @@ properties:
   panel-height-mm:
     description: physical panel height [mm]
 
-  flip-horizontal:
-    description: boolean to flip image horizontally
-    type: boolean
-
-  flip-vertical:
-    description: boolean to flip image vertically
-    type: boolean
-
 required:
   - compatible
   - reg
-- 
2.39.5


