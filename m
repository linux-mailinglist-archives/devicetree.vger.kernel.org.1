Return-Path: <devicetree+bounces-42059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CDA856421
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 14:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C41491C22575
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C8612FB3A;
	Thu, 15 Feb 2024 13:14:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0EA12FB27
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708002899; cv=none; b=hNkZrGMMc48byKxLMUFo4ntxG28vlFOWEf/IqM/9PRYFYIRV0QbCxvDeH0ByFnW/L/ZR4tSCUpF1cGNcfxxy3SVWsPs2QJh+d1inDCnjQgvi4aYxhF36NV2BctDuYO7FcuyjYKxRZ3wNscs26ir1Ti0t2/ipmvf6dry2PPTE6Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708002899; c=relaxed/simple;
	bh=zuA81ieNnTJMQOHlWFdDFjQiDPBJSTt19g23unpikP4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=P8C2bzD96nHJr0j8Gv+wnED5JCNayi6mxggyq5Aky+Ba6JS0vX0a91WF5xyrXPtpU92u/EXo81MDPR4ARHCZwkxwG8RtNBR3t/GJ83GtYWpui0hJHcCXg+feHeMx3u5jyI9j+mtMRPylpFwGkxMH8Mvsn9l/5+2FimlpCIImWvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:ac52:3a54:2a84:d65a])
	by michel.telenet-ops.be with bizsmtp
	id nREv2B00J0LVNSS06REvXJ; Thu, 15 Feb 2024 14:14:55 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rabZg-000gyI-4A;
	Thu, 15 Feb 2024 14:14:55 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rabZn-00HZUx-FF;
	Thu, 15 Feb 2024 14:14:55 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] fdtoverlay: Remove bogus type info from help text
Date: Thu, 15 Feb 2024 14:14:54 +0100
Message-Id: <eadf27877f08222b2dae064f10c31930fb182475.1708002793.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"fdtoverlay -h" shows a.o.:

    <type>	s=string, i=int, u=unsigned, x=hex
	    Optional modifier prefix:
		    hh or b=byte, h=2 byte, l=4 byte (default)

However, unlike fdtget and fdtput, fdtoverlay does not support the
"-t"/"--type" option.

Fixes: 42409146f2db22d7 ("fdtoverlay: A tool that applies overlays")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Upstream dtc has Uwe's patch instead commit 2cdf93a6d402a161
("fdtoverlay: Fix usage string to not mention "<type>"")/
---
 scripts/dtc/fdtoverlay.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/scripts/dtc/fdtoverlay.c b/scripts/dtc/fdtoverlay.c
index 5350af65679f7fbd..cac6b6576c289c18 100644
--- a/scripts/dtc/fdtoverlay.c
+++ b/scripts/dtc/fdtoverlay.c
@@ -23,9 +23,7 @@
 /* Usage related data. */
 static const char usage_synopsis[] =
 	"apply a number of overlays to a base blob\n"
-	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]\n"
-	"\n"
-	USAGE_TYPE_MSG;
+	"	fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]";
 static const char usage_short_opts[] = "i:o:v" USAGE_COMMON_SHORT_OPTS;
 static struct option const usage_long_opts[] = {
 	{"input",            required_argument, NULL, 'i'},
-- 
2.34.1


