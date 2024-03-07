Return-Path: <devicetree+bounces-48968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 218CA87478C
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 06:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC2631F2327D
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 05:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661AD1B950;
	Thu,  7 Mar 2024 05:12:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-63.sinamail.sina.com.cn (mail78-63.sinamail.sina.com.cn [219.142.78.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691E15672
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 05:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709788357; cv=none; b=CQUQ3LlUA4mD6diQYNJPbwVNMF1Ns5Hx32rv+EwoniU6GgBHaoPhDKWwSGH1RLB2PJWrrzfOu4BsO20SpziaFto2y/2S5T2d9EoajamRarqQKLhxAqJWinv6ZOL4Xryp7j3re9xd7cMDr/EfnDE6rDv2SuY1mJ4SrrbQQA0yzR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709788357; c=relaxed/simple;
	bh=+Ls2GaZ7tW9/6t4tjWCZZFeROOO7dXrvnOWF30JJuM0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=i/lSq6xF5DAtTo3nfDKAbqVnSKzkWgVcf/PvmZqgNrfObWdodDgV4k/MSYkEc6JPfM+Em5wBi6ovmvnaF2ZY2EHZpJFO7LC6e6jcLPBQpnJxJFxtqKpcNJbbpTa0Q7VOUJ4v/ui36vxEjGweaTrKewDwcJKusbP3K/1Jsf4rDP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.239) with ESMTP
	id 65E94CB900013490; Thu, 7 Mar 2024 13:12:30 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 99FA4E22C18D478DA74CC1A355ADB65C
X-SMAIL-UIID: 99FA4E22C18D478DA74CC1A355ADB65C-20240307-131230
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v2 2/2] ASoC: codecs: ES8326: change support for ES8326
Date: Thu,  7 Mar 2024 13:12:22 +0800
Message-Id: <20240307051222.24010-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240307051222.24010-1-zhangyi@everest-semi.com>
References: <20240307051222.24010-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Removed mic1-src and mic2-src. and changed default value
of interrupt-clk

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../devicetree/bindings/sound/everest,es8326.yaml         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
index 07781408e788..8c82d47375ec 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8326.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
@@ -38,6 +38,7 @@ properties:
     default: 0x0f
 
   everest,mic1-src:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint8
     description:
       the value of reg 2A when headset plugged.
@@ -46,6 +47,7 @@ properties:
     default: 0x22
 
   everest,mic2-src:
+    deprecated: true
     $ref: /schemas/types.yaml#/definitions/uint8
     description:
       the value of reg 2A when headset unplugged.
@@ -87,7 +89,7 @@ properties:
        0 means the chip detect jack type again after button released.
     minimum: 0
     maximum: 0x7f
-    default: 0x45
+    default: 0x00
 
 required:
   - compatible
@@ -107,10 +109,8 @@ examples:
         clocks = <&clks 10>;
         clock-names = "mclk";
         #sound-dai-cells = <0>;
-        everest,mic1-src = [22];
-        everest,mic2-src = [44];
         everest,jack-pol = [0e];
         everest,interrupt-src = [08];
-        everest,interrupt-clk = [45];
+        everest,interrupt-clk = [00];
       };
     };
-- 
2.17.1


