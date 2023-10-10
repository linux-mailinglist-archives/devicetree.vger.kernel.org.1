Return-Path: <devicetree+bounces-7283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1239D7BFE37
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4366A1C20BD8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FBD1DFEC;
	Tue, 10 Oct 2023 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E251DFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:44:30 +0000 (UTC)
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38B8010E3
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:44:27 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:a251:6312:1f1a:2a48])
	by michel.telenet-ops.be with bizsmtp
	id wDkM2A00P3RY9Je06DkMaF; Tue, 10 Oct 2023 15:44:25 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qqD23-005sV2-Uc;
	Tue, 10 Oct 2023 15:44:21 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qqD25-00Gwnx-F5;
	Tue, 10 Oct 2023 15:44:21 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] arm64: dts: renesas: Apply overlays to base dtbs
Date: Tue, 10 Oct 2023 15:44:19 +0200
Message-Id: <44e5c1781b012a38d07a8d2fc68b26b33c3558b6.1696945404.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Rob Herring <robh@kernel.org>

DT overlays in tree need to be applied to a base DTB to validate they
apply, to run schema checks on them, and to catch any errors at compile
time.

Signed-off-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20230911214623.2201324-1-robh@kernel.org
[geert: Add missing base/overlay combinations]
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Add missing base/overlay combinations.

To be queued in renesas-devel for v6.7.
---
 arch/arm64/boot/dts/renesas/Makefile | 35 ++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 4fd83111b0ffcc5d..8ea68d5827105b76 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -29,21 +29,35 @@ dtb-$(CONFIG_ARCH_R8A774E1) += r8a774e1-hihope-rzg2h-ex-idk-1110wr.dtb
 dtb-$(CONFIG_ARCH_R8A774E1) += r8a774e1-hihope-rzg2h-ex-mipi-2.1.dtb
 
 dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-salvator-x.dtb
+r8a77951-salvator-x-panel-aa104xd12-dtbs := r8a77951-salvator-x.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-salvator-x-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-salvator-xs.dtb
+r8a77951-salvator-xs-panel-aa104xd12-dtbs := r8a77951-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-ulcb-kf.dtb
 
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x.dtb
+r8a77960-salvator-x-panel-aa104xd12-dtbs := r8a77960-salvator-x.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-xs.dtb
+r8a77960-salvator-xs-panel-aa104xd12-dtbs := r8a77960-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-ulcb-kf.dtb
 
 dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-salvator-xs.dtb
+r8a77961-salvator-xs-panel-aa104xd12-dtbs := r8a77961-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-ulcb-kf.dtb
 
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-x.dtb
+r8a77965-salvator-x-panel-aa104xd12-dtbs := r8a77965-salvator-x.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-x-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-xs.dtb
+r8a77965-salvator-xs-panel-aa104xd12-dtbs := r8a77965-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb-kf.dtb
 
@@ -55,8 +69,12 @@ dtb-$(CONFIG_ARCH_R8A77980) += r8a77980-v3hsk.dtb
 dtb-$(CONFIG_ARCH_R8A77980) += r8a77980a-condor-i.dtb
 
 dtb-$(CONFIG_ARCH_R8A77990) += r8a77990-ebisu.dtb
+r8a77990-ebisu-panel-aa104xd12-dtbs := r8a77990-ebisu.dtb draak-ebisu-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77990) += r8a77990-ebisu-panel-aa104xd12.dtb
 
 dtb-$(CONFIG_ARCH_R8A77995) += r8a77995-draak.dtb
+r8a77995-draak-panel-aa104xd12-dtbs := r8a77995-draak.dtb draak-ebisu-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77995) += r8a77995-draak-panel-aa104xd12.dtb
 
 dtb-$(CONFIG_ARCH_R8A779A0) += r8a779a0-falcon.dtb
 
@@ -65,27 +83,44 @@ dtb-$(CONFIG_ARCH_R8A779F0) += r8a779f4-s4sk.dtb
 
 dtb-$(CONFIG_ARCH_R8A779G0) += r8a779g0-white-hawk.dtb
 dtb-$(CONFIG_ARCH_R8A779G0) += r8a779g0-white-hawk-ard-audio-da7212.dtbo
+r8a779g0-white-hawk-ard-audio-da7212-dtbs := r8a779g0-white-hawk.dtb r8a779g0-white-hawk-ard-audio-da7212.dtbo
+dtb-$(CONFIG_ARCH_R8A779G0) += r8a779g0-white-hawk-ard-audio-da7212.dtb
 
 dtb-$(CONFIG_ARCH_R8A77951) += r8a779m1-salvator-xs.dtb
+r8a779m1-salvator-xs-panel-aa104xd12-dtbs := r8a779m1-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77951) += r8a779m1-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77951) += r8a779m1-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77951) += r8a779m1-ulcb-kf.dtb
 
 dtb-$(CONFIG_ARCH_R8A77961) += r8a779m3-salvator-xs.dtb
+r8a779m3-salvator-xs-panel-aa104xd12-dtbs := r8a779m3-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77961) += r8a779m3-salvator-xs-panel-aa104xd12.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a779m3-ulcb.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a779m3-ulcb-kf.dtb
 
 dtb-$(CONFIG_ARCH_R8A77965) += r8a779m5-salvator-xs.dtb
+r8a779m5-salvator-xs-panel-aa104xd12-dtbs := r8a779m5-salvator-xs.dtb salvator-panel-aa104xd12.dtbo
+dtb-$(CONFIG_ARCH_R8A77965) += r8a779m5-salvator-xs-panel-aa104xd12.dtb
 
 dtb-$(CONFIG_ARCH_R9A07G043) += r9a07g043u11-smarc.dtb
 dtb-$(CONFIG_ARCH_R9A07G043) += r9a07g043-smarc-pmod.dtbo
+r9a07g043u11-smarc-pmod-dtbs := r9a07g043u11-smarc.dtb r9a07g043-smarc-pmod.dtbo
+dtb-$(CONFIG_ARCH_R9A07G043) += r9a07g043u11-smarc-pmod.dtb
 
 dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044c2-smarc.dtb
 dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044c2-smarc-cru-csi-ov5645.dtbo
+r9a07g044c2-smarc-cru-csi-ov5645-dtbs := r9a07g044c2-smarc.dtb r9a07g044c2-smarc-cru-csi-ov5645.dtbo
+dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044c2-smarc-cru-csi-ov5645.dtb
+
 dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044l2-smarc.dtb
 dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044l2-smarc-cru-csi-ov5645.dtbo
+r9a07g044l2-smarc-cru-csi-ov5645-dtbs := r9a07g044l2-smarc.dtb r9a07g044l2-smarc-cru-csi-ov5645.dtbo
+dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044l2-smarc-cru-csi-ov5645.dtb
 
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc.dtb
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtbo
+r9a07g054l2-smarc-cru-csi-ov5645-dtbs := r9a07g054l2-smarc.dtb r9a07g054l2-smarc-cru-csi-ov5645.dtbo
+dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtb
 
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc.dtb
 
-- 
2.34.1


