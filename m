Return-Path: <devicetree+bounces-12176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1E77D83F5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97EC7281DE7
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205A32E408;
	Thu, 26 Oct 2023 13:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35172E3F8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:55:39 +0000 (UTC)
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94986D58
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 06:55:36 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:32d3:3cb9:edce:43ae])
	by michel.telenet-ops.be with bizsmtp
	id 2dva2B0022XL1Wb06dvaV2; Thu, 26 Oct 2023 15:55:34 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qw0pa-007YxK-1z;
	Thu, 26 Oct 2023 15:55:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qw0pi-00HArv-0X;
	Thu, 26 Oct 2023 15:55:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] scripts: dt_to_config: Fix nul-separated compatible values
Date: Thu, 26 Oct 2023 15:55:31 +0200
Message-Id: <7da12517180c0330d96cd0e3d48382191748a1a7.1698328110.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1698328110.git.geert+renesas@glider.be>
References: <cover.1698328110.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When using dt_to_config on a DTB:

    -------------- : /soc/adc@10059000 : renesas,r9a07g043-adc\0renesas,rzg2l-adc : no_driver : no_config : none

When using dt_to_config on a DTS:

    +M------------ : /soc/adc@10059000 : renesas,r9a07g043-adc : no_driver : no_config : none
    +Md-c--------- : /soc/adc@10059000 : renesas,rzg2l-adc : drivers/iio/adc/rzg2l_adc.c : CONFIG_RZG2L_ADC : none

As of commit 32b9c61307629ac7 ("Preserve datatype markers when emitting
dts format") in dtc v1.4.7, "dtc -O dts" no longer outputs compatible
properties containing multiple values as multiple strings.  Instead, it
outputs single strings, where the individual values are internally
separated by an escaped nul character.

Fix this by translating nul-separated compatible values to the
traditional multi-string format before splitting them.

Fixes: f858927fd6ce394a ("scripts/dtc: Update to upstream version v1.4.7-14-gc86da84d30e4")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 scripts/dtc/dt_to_config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/dtc/dt_to_config b/scripts/dtc/dt_to_config
index 299d1c2b20d7785a..563362f363e8cec1 100755
--- a/scripts/dtc/dt_to_config
+++ b/scripts/dtc/dt_to_config
@@ -748,6 +748,7 @@ sub handle_compatible()
        $pn_arg{node}         = $node;
        $pn_arg{node_enabled} = $node_enabled;
 
+       $compatible =~ s/\\0/", "/g;
        my @compatibles = split('", "', $compatible);
 
        $compatibles[0] =~ s/^"//;
-- 
2.34.1


